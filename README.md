# FuntGuides – leveling pack for WoW: Forever (all races & classes, 1-60)

**FuntGuides** (formerly **RXP_WoWForeverGuide**) is a leveling pack for **World of Warcraft: Forever** that runs in the **RestedXP Guides** addon. It bundles:

- the full **WoW Forever routes 1-60** for every race and class you can pick in Forever, including the Skyborne race, plus start-anywhere routes so any class can level through any starting zone of its faction. Each route is split into zone brackets (for example **14-17 Darkshore**, **24-28 Wetlands**), grouped by class, and each bracket loads the next one when you finish it;
- **RestedXP Horde 30-45**, a Horde speedrun that bridges the free RestedXP Forever guides (1-30, shipped with the engine) up to level 45;
- **FuntGuides - Class Quests**, the Horde class quest chains (Warlock 30-50, Warrior 30-40, Shaman 30);
- **FuntGuides - Forever Custom**, the server's custom quests (ID ≥ 60000) grouped by camp, levels 30-58.

The class routes ship in **ten languages**: English plus Español (esES/esMX), Português, Deutsch, Français, Русский, 한국어, 简体中文 and 繁體中文. The client's language is detected automatically (`GetLocale()`); quest, NPC and place names use the official localized names, so they match what you see in your quest log, and quest-log sync works in every language.

## Download & install

Two archives ship with each release:

| Archive | Contents |
|---|---|
| **FuntGuides_Portable.zip** | everything in one: the RestedXP Guides engine (v4.11.36 build with the free RestedXP Forever guides and the Forever quest DB) + FuntGuides + an install note |
| **FuntGuides.zip** | just the FuntGuides addon, if you already run that engine build |

1. Go to **[Releases](../../releases/latest)** and download **FuntGuides_Portable.zip** (or **FuntGuides.zip** if you already have the engine).
2. Close WoW.
3. Unzip it into your WoW: Forever AddOns folder so you end up with:
   ```
   ...\Interface\AddOns\FuntGuides\
   ...\Interface\AddOns\RXPGuides\   (portable zip only)
   ```
   (In the Battle.net app: pick WoW: Forever, click the cog next to **Play**, **Show in Explorer**, then open `Interface\AddOns`.)
4. On the character screen click **AddOns** and make sure **FuntGuides** and **RXPGuides** are ticked. If you still have the old **RXP_WoWForeverGuide** installed, untick it (or delete the folder) — otherwise every guide loads twice.
5. In game, open RestedXP's guide list and pick **WoW Forever - (your class)**, then your route (your race, or **Start in ...**) and the bracket for your level. Or type **/wfg** to get the brackets that fit your level straight away.

## Guides

| Race | Classes |
|---|---|
| Human | Warrior, Hunter, Mage, Rogue, Priest, Warlock, Retribution Paladin |
| Dwarf | Warrior, Hunter, Rogue, Priest, Retribution Paladin, Shaman |
| Night Elf | Warrior, Hunter, Rogue, Priest, Druid |
| Gnome | Warrior, Mage, Rogue, Priest, Warlock |
| Orc | Warrior, Hunter, Mage, Rogue, Warlock, Shaman |
| Undead | Warrior, Mage, Rogue, Priest, Warlock, Retribution Paladin |
| Tauren | Warrior, Hunter, Druid, Shaman |
| Troll | Warrior, Hunter, Mage, Rogue, Priest, Warlock, Shaman |
| High Order Skyborne (Alliance) | Warrior, Hunter, Rogue, Mage, Druid |
| Windshaper Skyborne (Horde) | Warrior, Hunter, Rogue, Shaman, Druid |

### Start anywhere

Want to level somewhere other than your race's home? Every class has a **Start in ...** route through each starting
zone of its faction:

| Faction | Starting zones |
|---|---|
| Alliance | Elwynn Forest (Northshire), Dun Morogh (Coldridge Valley), Teldrassil (Shadowglen) |
| Horde | Durotar (Valley of Trials), Tirisfal Glades (Deathknell), Mulgore (Camp Narache) |

So a Night Elf Druid can pick **WoW Forever - Druid > Start in Elwynn Forest** and quest through Northshire, Westfall and onwards.
Each one starts with a "getting there" step that tells you how to travel to that zone from your own starting area.

### Beyond the class routes

Three more guide groups ship in the pack, all built from QuestieDB/Forever ground-truth data (quest IDs, NPC and object coordinates):

- **RestedXP Horde 30-45** — a Horde speedrun from 30 to 45 that picks up where the free RestedXP Forever guides stop:
  30-33 Hillsbrad / Arathi / Shimmering Flats, 33-37 Stranglethorn Vale, 37-39 Badlands / Swamp of Sorrows,
  39-41 Dustwallow Marsh / Stranglethorn Vale, 41-43 Tanaris, 43-45 Feralas. The engine's free 20-30 guide chains
  straight into it.
- **FuntGuides - Class Quests** — the Horde class chains the class routes don't cover at level: Warlock 30-50
  (Seeking Strahad / Tome of the Cabal), Warrior 30-40 (Whirlwind Weapon), Shaman 30 (Call of Air). Switch to the
  group when you hit the level, then switch back to your route. (This server has no priest-only quests between
  level 10 and 60.)
- **FuntGuides - Forever Custom** — the server's own custom quests (IDs ≥ 60000), clustered by camp so one trip
  picks up everything at a spot, clears the nearby targets and hands in there. Seventeen guides covering 30-58:
  Desolace, Arathi Highlands, Dustwallow Marsh, Stranglethorn Vale, Alterac Mountains, Tanaris, Orgrimmar,
  Azshara, Blasted Lands, the Hinterlands and more.

### How the guides work

Each route follows its starting zones, then the Alliance or Horde route to 60, with the class
quests (stances, demons, totems, pet taming, druid forms, mounts...) shown at the level you need them.
The route is cut into one guide per zone bracket; each bracket ends with a level checkpoint, then loads the next bracket.
Click a step to tick it off once it's done.

For example, **WoW Forever - Druid > Night Elf route**: 1-14 Teldrassil/Darkshore, 14-17 Darkshore, 17-20 Darkshore,
20-24 Ashenvale, 24-28 Wetlands, 28-31 Duskwood, 31-33 Hillsbrad Foothills, 33-35 Desolace, 35-38 Stranglethorn Vale,
38-40 Dustwallow Marsh, 40-42 Tanaris, 42-45 Feralas, 45-48 The Hinterlands, 48-52 Un'Goro Crater, 52-54 Felwood,
54-56 Western Plaguelands, 56-58 Winterspring, 58-60 Eastern Plaguelands.

### Quest log sync

- **Empty your quest log** (abandon everything) and a window asks which guide you want to do: one button per route for
  your class, each on the bracket for your level.
- **Opening a guide** (from that window or from RestedXP's list) skips what you've done and jumps to the quests in your
  quest log. Steps are matched by quest ID, or by the quest names written in the step. With an empty log it skips the
  steps whose quests you've already handed in: quest titles are looked up in `QuestIDs.lua` (~4000 WoW: Forever titles)
  and checked against the game with `IsQuestFlaggedCompleted`, so picking up a guide mid-route — say, a Horde druid
  arriving at level 10 — lands on the first quest you haven't done yet. A title that maps to several IDs (faction or
  zone variants) only counts as done when every ID is completed.
- **/wfg** opens the guide picker any time; **/wfg sync** jumps the open guide to your quest log again. Sync works for
  every guide group in the pack — the WoW Forever routes, **RestedXP Horde 30-45**, **FuntGuides - Class Quests**,
  **FuntGuides - Forever Custom** — and for the engine's own **RestedXP Forever Guide (A)/(H)** guides.

### Rebuilding the brackets

The brackets are made from the full routes by `tools/split-brackets.cjs` (Node.js). It cuts at every `.xp` level
checkpoint and names each bracket after the zones it visits.

`FuntGuides/QuestIDs.lua` (quest title → ID, used by the sync) is generated data: the quest titles and IDs
of WoW: Forever, titles that several quests share kept as a list. Regenerate it whenever new quests are mapped out.

### Regenerating the translations

`tools/translate-locales.py` regenerates the `Guides_<locale>.lua` files. Quest, NPC, object and zone names are
swapped for the official localized names from the WoW: Forever quest database (the same Questie/QuestieDB data the
[RestedXP-Traslation](https://github.com/eygelias/RestedXP-Traslation) project uses); only the connecting prose goes
through Google Translate (batched, cached in `tools/loccache/`). `LocaleGate.lua` picks the client's language, and
the English originals are wrapped in `if WoWForeverGuide_UseEnglish then ... end` so no language registers twice:

```
python3 tools/translate-locales.py \
    --db /path/to/questiedb_forever.json \
    --zones-dir /path/to/RestedXP-Traslation/database \
    [--locales ruRU deDE ...] [--force]
```

## Notes

- Before v1.4 this project shipped as the **RXP_WoWForeverGuide** addon; it is now **FuntGuides** — the same guides
  plus the extras above, with the `#forever` tag on every guide so the engine uses the Forever server data.
  When upgrading from an older release, delete the old `RXP_WoWForeverGuide` folder (or untick it in the addon list)
  so guides don't load twice.
- The RXPGuides engine bundled in the portable zip is [RestedXP's](https://www.restedxp.com) free addon
  (CC BY-NC-SA 4.0), distributed here unchanged except for its free Forever guide set; FuntGuides is not
  affiliated with RestedXP.
- WoW: Forever is new, so some quests may have changed. Steps name the quests and the hub rather than
  relying on quest IDs, and waypoints are approximate.
- The Skyborne start on Zephras Isle. Its quests are new, so that part of their guides gives general directions until the isle is mapped out; from level 12 they follow the full Alliance (Westfall) or Horde (Barrens) route.
- Quest log sync can only line up with steps that name a quest. Travel and grinding steps don't, so if the guide lands
  a step early, click the step you're on (or type **/wfg sync** after picking up the next quest).
- If a step doesn't match the game, open an **[issue](../../issues)** with the guide name and the step.
