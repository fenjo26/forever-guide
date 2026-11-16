#!/usr/bin/env python3
"""Translate the guide files into every supported client locale.

The steps' texts name quests, NPCs and places in English prose. This tool keeps
those names OFF the machine translator and swaps them for the official localized
names from the WoW: Forever quest database (the same data the Questie addon and
RestedXP-Traslation use), so the translated guides show the names exactly as the
localized client does - which is also what keeps QuestLogSync.lua working, since
it matches step text against QuestIDs.lua titles.

Pipeline per locale:
  1. protect every known quest / NPC / object / zone name in a >> line with a
     ZXQPHnnnnnnQXZ token (the token format Google Translate leaves alone)
  2. translate what is left of the line (glue phrases) with Google Translate,
     falling back to MyMemory, then to the untouched line; results are cached
     per locale in tools/loccache/
  3. put the official localized names back in place of the tokens

Only >> lines are touched: .goto/.xp/step/#name/<< ... pass through unchanged.
Guides_<locale>.lua is written for each locale, gated on GetLocale() so only the
client's language registers its guides; the English originals are gated on
WoWForeverGuide_UseEnglish (see LocaleGate.lua).

Usage:
  python3 tools/translate-locales.py \
      --db /path/to/questiedb_forever.json \
      --zones-dir /path/to/RestedXP-Traslation/database \
      [--locales ruRU deDE ...] [--force]

Requires: pip install deep-translator   (optional; without it only the rules
fallback runs and glue phrases stay English)
"""

from __future__ import annotations

import argparse
import json
import re
import sys
import time
import urllib.error
import urllib.parse
import urllib.request
from pathlib import Path

REPO = Path(__file__).resolve().parent.parent
ADDON = REPO / "RXP_WoWForeverGuide"
GUIDE_FILES = [
    "Human.lua", "Dwarf.lua", "NightElf.lua", "Gnome.lua", "Orc.lua", "Undead.lua",
    "Tauren.lua", "Troll.lua", "HighOrderSkyborne.lua", "WindshaperSkyborne.lua",
    "StartAnywhereAlliance.lua", "StartAnywhereHorde.lua",
]

# client locale -> Google Translate target (same mapping as RestedXP-Traslation)
LOCALES = {
    "esES": "es", "esMX": "es", "ptBR": "pt", "deDE": "de", "frFR": "fr",
    "ruRU": "ru", "koKR": "ko", "zhCN": "zh-CN", "zhTW": "zh-TW",
}

ROMAN_PARTS = {"ii", "iii", "iv", "vi", "vii", "viii", "ix", "xi", "xii"}
TOKEN_RE = re.compile(r"ZXQPH\d{6}QXZ")
WORD_BOUNDARY = r"(?<![\w']){}(?![\w'])"


def load_db(path: Path) -> dict:
    return json.loads(path.read_text(encoding="utf-8"))


def localized(data: dict, locale: str) -> str | None:
    """Best localized value for a DB entry; None if the locale is missing."""
    value = data.get(locale)
    if isinstance(value, str) and value.strip():
        return value.strip()
    return None


class TokenStore:
    def __init__(self):
        self.values: dict[str, str] = {}
        self.counter = 0

    def add(self, value: str) -> str:
        token = f"ZXQPH{self.counter:06d}QXZ"
        self.counter += 1
        self.values[token] = value
        return token

    def restore(self, text: str) -> str:
        return TOKEN_RE.sub(lambda m: self.values.get(m.group(0), m.group(0)), text)


class EntityIndex:
    """English entity names that actually occur in the guide texts, per kind."""

    def __init__(self, db: dict, zones: dict[str, str], texts_words: set[str]):
        def wanted(names):
            # keep only names whose first capitalized word appears in the texts
            out = []
            for name in names:
                if not name or len(name) < 3:
                    continue
                first = re.split(r"[\s'\"]+", name.strip())[0].lower().strip(".,!?:")
                if first and first.isalpha() and first in texts_words:
                    out.append(name)
            return out

        self.quests = wanted({q["en"].strip() for q in db["quests"].values()
                              if isinstance(q.get("en"), str)})
        self.npcs = wanted({q["en"].strip() for q in db["npcs"].values()
                            if isinstance(q.get("en"), str)})
        self.objects = wanted({q["en"].strip() for q in db["objects"].values()
                               if isinstance(q.get("en"), str)})
        self.zones = wanted(set(zones.keys()))

    def compile(self):
        """(kind, pattern, replacement-source) tuples, longest names first."""
        entries = []
        for kind, names in (("quest", self.quests), ("npc", self.npcs),
                            ("object", self.objects), ("zone", self.zones)):
            for name in names:
                core = name.rstrip(".!?")
                if not core:
                    continue
                pattern = re.compile(
                    WORD_BOUNDARY.format(re.escape(core)) + r"(?:[.!?]+)?",
                    re.IGNORECASE,
                )
                entries.append((kind, name, pattern))
        entries.sort(key=lambda e: len(e[1]), reverse=True)
        return entries


def protect_line(text: str, entries, resolve, store: TokenStore) -> str:
    """Replace entity names with tokens; resolve(name, kind) -> localized str."""
    result = text
    for kind, name, pattern in entries:
        def repl(m, _name=name, _kind=kind):
            # "Foo II" in the text is a different quest than "Foo"
            if _kind == "quest":
                rest = result[m.end():].lstrip()
                head = re.match(r"[!.,:; ]*([A-Za-z0-9]+)", rest)
                if head and (head.group(1).lower() in ROMAN_PARTS or head.group(1) in ("2", "3")):
                    return m.group(0)
            return store.add(resolve(_name, _kind))

        new = pattern.sub(repl, result)
        if new != result:
            result = new
    return result


class GlueTranslator:
    """Google/MyMemory translation of the glue phrases, cached per locale.

    Talks to the free translate.googleapis.com endpoint directly (the same one
    deep-translator uses) so the calls carry a timeout; MyMemory is the fallback.
    """

    UA = "Mozilla/5.0 (WoWForeverGuide locale build)"

    def __init__(self, locale: str, cache_path: Path, force: bool = False):
        self.cache_path = cache_path
        self.cache: dict[str, str] = {}
        if cache_path.exists() and not force:
            try:
                self.cache = json.loads(cache_path.read_text(encoding="utf-8"))
            except Exception:
                self.cache = {}
        self.target = LOCALES[locale]
        self.mymemory_pair = f"en|{locale[:2]}-{locale[2:]}"
        self.stats = {"cache": 0, "google": 0, "mymemory": 0, "plain": 0}

    def _google(self, text: str) -> str | None:
        # primary endpoint; on failure (usually HTTP 429 rate limiting) the
        # Chrome-extension endpoint has its own quota bucket and often answers
        try:
            url = ("https://translate.googleapis.com/translate_a/single?client=gtx&sl=en&tl="
                   + urllib.parse.quote(self.target) + "&dt=t&q=" + urllib.parse.quote(text))
            with urllib.request.urlopen(urllib.request.Request(url), timeout=15) as resp:
                data = json.loads(resp.read().decode("utf-8"))
            return "".join(seg[0] for seg in data[0] if seg and seg[0])
        except urllib.error.HTTPError as err:
            if err.code == 429:
                raise  # let the caller back off, then retry the same endpoint
        except Exception:
            pass
        return self._google_alt(text)

    def _google_alt(self, text: str) -> str | None:
        url = ("https://clients5.google.com/translate_a/t?client=dict-chrome-ex&sl=en&tl="
               + urllib.parse.quote(self.target) + "&q=" + urllib.parse.quote(text))
        with urllib.request.urlopen(urllib.request.Request(url), timeout=15) as resp:
            data = json.loads(resp.read().decode("utf-8"))
        if isinstance(data, list):
            if data and isinstance(data[0], list) and isinstance(data[0][0], str):
                return data[0][0]  # [source, translation] pairs variant
            if data and isinstance(data[0], str):
                return data[0]
        return None

    def _mymemory(self, text: str) -> str | None:
        url = ("https://api.mymemory.translated.net/get?q=" + urllib.parse.quote(text)
               + "&langpair=" + urllib.parse.quote(self.mymemory_pair))
        req = urllib.request.Request(url)
        with urllib.request.urlopen(req, timeout=8) as resp:
            data = json.loads(resp.read().decode("utf-8"))
        value = data.get("responseData", {}).get("translatedText")
        if isinstance(value, str) and value.strip() and "MYMEMORY WARNING" not in value:
            return value
        return None

    def translate_batch(self, keys: list[str]) -> dict[str, str]:
        """Translate many glue phrases in a few requests: Google's free endpoint
        keeps \\n boundaries, so lines are batched into one call; a batch whose
        line count comes back wrong falls back to per-line calls."""
        results: dict[str, str] = {}
        pending = [k for k in keys if k.strip() and k not in self.cache]
        i = 0
        while i < len(pending):
            batch: list[str] = []
            size = 0
            while i < len(pending) and len(batch) < 25:
                k = pending[i]
                if batch and size + len(k) > 900:
                    break
                batch.append(k)
                size += len(k) + 1
                i += 1
            joined = "\n".join(batch)
            translated = None
            for attempt in range(4):
                try:
                    translated = self._google(joined)
                    if translated:
                        self.stats["google"] += len(batch)
                        break
                except urllib.error.HTTPError as err:
                    # rate limited: the quota window clears after a quiet minute
                    time.sleep(45 if err.code == 429 else 5 * (attempt + 1))
                except Exception:
                    time.sleep(5 * (attempt + 1))
            parts = translated.split("\n") if translated else []
            if len(parts) == len(batch):
                for src, dst in zip(batch, parts):
                    results[src] = dst
                    self.cache[src] = dst
            else:
                for src in batch:  # batch came back mangled: one call per line
                    out = None
                    try:
                        out = self._google(src)
                    except Exception:
                        out = None
                    if not out:
                        try:
                            out = self._mymemory(src)
                            self.stats["mymemory"] += 1
                        except Exception:
                            out = None
                    if not out:
                        out = src
                        self.stats["plain"] += 1
                    else:
                        self.stats["google"] += 1
                    results[src] = out
                    self.cache[src] = out
            time.sleep(0.5)  # be polite to the free endpoint
        for k in keys:  # cached entries
            if k in self.cache and k not in results:
                results[k] = self.cache[k]
                self.stats["cache"] += 1
        return results

    def translate(self, text: str) -> str:
        key = text.strip()
        if not key:
            return text
        if key in self.cache:
            self.stats["cache"] += 1
            return self.cache[key]
        out = None
        for attempt in range(3):
            try:
                out = self._google(text)
                if out:
                    self.stats["google"] += 1
                    break
            except Exception:
                time.sleep(1.5 * (attempt + 1))
        if not out:
            try:
                out = self._mymemory(text)
                if out:
                    self.stats["mymemory"] += 1
            except Exception:
                out = None
        if not out:
            out = text
            self.stats["plain"] += 1
        self.cache[key] = out
        time.sleep(0.1)  # be polite to the free endpoint
        return out

    def save(self):
        self.cache_path.write_text(
            json.dumps(self.cache, ensure_ascii=False, indent=1, sort_keys=True),
            encoding="utf-8")


def translate_guides(locale: str, db: dict, zones: dict, force: bool):
    sources = []
    for name in GUIDE_FILES:
        path = ADDON / name
        lines = path.read_text(encoding="utf-8").splitlines()
        # the English originals are wrapped in the locale gate on disk; the
        # translated copy lives inside its own GetLocale() block, so strip it
        if lines and lines[0].strip() == "if WoWForeverGuide_UseEnglish then":
            lines = lines[1:]
            if lines and lines[-1].strip() == "end":
                lines = lines[:-1]
        sources.append((name, lines))

    # words that occur in the texts, to keep the entity index small
    words = set()
    for _, lines in sources:
        for line in lines:
            words.update(w.lower().strip(".,!?:()\"'") for w in line.split())
    words.discard("")

    index = EntityIndex(db, zones, words)
    entries = index.compile()

    quest_by_lower = {}
    for q in db["quests"].values():
        en = q.get("en")
        if isinstance(en, str):
            quest_by_lower.setdefault(en.strip().lower(), []).append(q)
    npc_by_lower, obj_by_lower = {}, {}
    for q in db["npcs"].values():
        if isinstance(q.get("en"), str):
            npc_by_lower.setdefault(q["en"].strip().lower(), q)
    for q in db["objects"].values():
        if isinstance(q.get("en"), str):
            obj_by_lower.setdefault(q["en"].strip().lower(), q)

    def resolve(name: str, kind: str) -> str:
        low = name.lower()
        if kind == "quest":
            variants = quest_by_lower.get(low)
            if variants:
                # prefer the variant that HAS this locale, then the first one
                for q in variants:
                    value = localized(q, locale)
                    if value:
                        return value
                return variants[0]["en"].strip()
        elif kind == "npc":
            q = npc_by_lower.get(low)
            if q:
                return localized(q, locale) or name
        elif kind == "object":
            q = obj_by_lower.get(low)
            if q:
                return localized(q, locale) or name
        elif kind == "zone":
            return zones.get(name) or zones.get(name.title()) or name
        return name

    cache_dir = REPO / "tools" / "loccache"
    cache_dir.mkdir(exist_ok=True)
    glue = GlueTranslator(locale, cache_dir / f"glue_{locale}.json", force=force)

    out_path = ADDON / f"Guides_{locale}.lua"

    # pass 1: protect every >> line (identical lines share their tokens)
    per_line: dict[str, tuple[str, TokenStore]] = {}
    for _, lines in sources:
        for raw in lines:
            stripped = raw.lstrip()
            if not stripped.startswith(">>") or raw in per_line:
                continue
            store = TokenStore()
            protected = protect_line(stripped[2:], entries, resolve, store)
            per_line[raw] = (protected, store)

    # pass 2: translate all the unique protected lines in a few batched calls
    translations = glue.translate_batch(
        [p for p, _ in per_line.values() if p.strip()])

    out_lines = [
        f"-- WoW Forever Guide: the guide texts translated into {locale}.",
        "-- Generated by tools/translate-locales.py: quest/NPC/place names are the official",
        "-- localized names from the WoW: Forever quest database, only the connecting prose",
        "-- went through a machine translator. Only loads on a " + locale + " client.",
        "",
        f'if GetLocale() == "{locale}" then',
    ]
    for name, lines in sources:
        out_lines.append(f"-- == {name} ==")
        for raw in lines:
            entry = per_line.get(raw)
            if entry is None:
                out_lines.append(raw)
                continue
            protected, store = entry
            done = store.restore(translations.get(protected, protected))
            out_lines.append("    >>" + done)
    out_lines.append("end")
    out_lines.append("")

    glue.save()
    out_path.write_text("\n".join(out_lines), encoding="utf-8")
    print(f"{locale}: wrote {out_path.name} "
          f"({out_path.stat().st_size} bytes, entities: "
          f"q={len(index.quests)} npc={len(index.npcs)} "
          f"obj={len(index.objects)} zone={len(index.zones)}; "
          f"glue: {glue.stats})")


def write_locale_gate():
    listed = ", ".join(f'["{loc}"] = true' for loc in LOCALES)
    (ADDON / "LocaleGate.lua").write_text(
        "-- WoW Forever Guide: client-language gate.\n"
        "-- The Guides_<locale>.lua files register their guides only on a matching client;\n"
        "-- on any other language the English originals load instead (they follow this file\n"
        "-- in the .toc, wrapped in \"if WoWForeverGuide_UseEnglish then ... end\").\n"
        f"WoWForeverGuide_TranslatedLocales = {{{listed}}}\n"
        "WoWForeverGuide_UseEnglish = not WoWForeverGuide_TranslatedLocales[GetLocale()]\n",
        encoding="utf-8")
    print("wrote LocaleGate.lua")


def wrap_english_originals(unwrap=False):
    gate = "if WoWForeverGuide_UseEnglish then"
    for name in GUIDE_FILES:
        path = ADDON / name
        lines = path.read_text(encoding="utf-8").splitlines()
        if unwrap:
            if lines and lines[0] == gate:
                lines = lines[1:]
                while lines and lines[-1].strip() == "end":
                    lines = lines[:-1]
                    break
                path.write_text("\n".join(lines) + "\n", encoding="utf-8")
            continue
        if lines and lines[0] == gate:
            continue  # already wrapped
        path.write_text("\n".join([gate] + lines + ["end"]) + "\n", encoding="utf-8")
        print(f"wrapped {name}")


def main() -> int:
    ap = argparse.ArgumentParser()
    ap.add_argument("--db", required=True, help="path to questiedb_forever.json")
    ap.add_argument("--zones-dir", required=True,
                    help="directory with zones_<locale>.json files")
    ap.add_argument("--locales", nargs="*", choices=sorted(LOCALES),
                    default=None, help="subset of locales (default: all)")
    ap.add_argument("--force", action="store_true", help="retranslate glue phrases")
    args = ap.parse_args()

    db = load_db(Path(args.db))
    zones_dir = Path(args.zones_dir)
    locales = args.locales or sorted(LOCALES)

    write_locale_gate()
    wrap_english_originals()

    for locale in locales:
        zpath = zones_dir / f"zones_{locale}.json"
        zones = {}
        if zpath.exists():
            zones = json.loads(zpath.read_text(encoding="utf-8")).get("zones", {})
        translate_guides(locale, db, zones, args.force)
    return 0


if __name__ == "__main__":
    sys.exit(main())
