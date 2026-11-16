-- WoW Forever Guide: client-language gate.
-- The Guides_<locale>.lua files register their guides only on a matching client;
-- on any other language the English originals load instead (they follow this file
-- in the .toc, wrapped in "if WoWForeverGuide_UseEnglish then ... end").
WoWForeverGuide_TranslatedLocales = {["esES"] = true, ["esMX"] = true, ["ptBR"] = true, ["deDE"] = true, ["frFR"] = true, ["ruRU"] = true, ["koKR"] = true, ["zhCN"] = true, ["zhTW"] = true}
WoWForeverGuide_UseEnglish = not WoWForeverGuide_TranslatedLocales[GetLocale()]
