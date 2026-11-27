-- FuntGuides: class quest chains 30-50 (Horde), built from QuestieDB/Forever ground truth.
-- Switch to the "FuntGuides - Class Quests" group when you hit the right level,
-- then switch back to your leveling route.
-- Priest note: this server has no priest-only quests between level 10 and 60.

RXPGuides.RegisterGuide([[
#classic
#forever
<< Horde Warlock
#name Warlock 30-50 Class Quests
#version 1
#group FuntGuides - Class Quests
#next

step
    .goto Orgrimmar,48.25,45.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gan'rul|r
    .accept 2996 >>Accept Seeking Strahad
    .target Gan'rul Bloodeye
step
    .goto Undercity,85.06,25.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Carendin|r
    .accept 3001 >>Accept Seeking Strahad
    .target Carendin Halgar
step
    .goto The Barrens,62.63,35.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Strahad|r in Ratchet
    .turnin 2996 >>Turn in Seeking Strahad
    .turnin 3001 >>Turn in Seeking Strahad
    .accept 1758 >>Accept Tome of the Cabal << Orc/Troll
    .accept 1801 >>Accept Tome of the Cabal << Undead
    .target Strahad Farsan
step << Orc/Troll
    .goto Ironforge,74.19,9.39
    >>|cRXP_WARN_Deep enemy city run:|r Talk to |cRXP_FRIENDLY_Krom|r in Ironforge
    .turnin 1758 >>Turn in Tome of the Cabal
    .accept 1802 >>Accept Tome of the Cabal
    .target Krom Stoutarm
step << Undead
    .goto Undercity,75.92,37.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jorah|r
    .turnin 1801 >>Turn in Tome of the Cabal
    .accept 1803 >>Accept Tome of the Cabal
    .target Jorah Annison
step
    .goto Hillsbrad Foothills,27.78,72.79
    >>Loot the |cRXP_PICK_Tome of the Cabal|r on the western shore
    .complete 1802,1 --Moldy Tome (1)
    .complete 1803,1 --Moldy Tome (1)
step
    .goto Thousand Needles,43.44,32.69
    >>Loot the |cRXP_PICK_Damaged Chest|r near Whitereach Post for the |cRXP_LOOT_Tattered Manuscript|r
    .complete 1802,2 --Tattered Manuscript (1)
    .complete 1803,2 --Tattered Manuscript (1)
step << Orc/Troll
    .goto Wetlands,48.55,47.10
    >>Kill |cRXP_ENEMY_Dragonmaw Shadowwarders|r and |cRXP_ENEMY_Bonewarders|r. Loot them for the |cRXP_LOOT_Rod of Channeling|r
    .complete 1804,1 --Rod of Channeling (1)
    .mob Dragonmaw Shadowwarder
    .mob Dragonmaw Bonewarder
step << Undead
    .goto Wetlands,48.55,47.10
    >>Kill |cRXP_ENEMY_Dragonmaw Shadowwarders|r and |cRXP_ENEMY_Bonewarders|r. Loot them for the |cRXP_LOOT_Rod of Channeling|r
    .complete 1805,1 --Rod of Channeling (1)
    .mob Dragonmaw Shadowwarder
    .mob Dragonmaw Bonewarder
step << Orc/Troll
    .goto Ironforge,74.19,9.39
    >>Talk to |cRXP_FRIENDLY_Krom|r
    .turnin 1802 >>Turn in Tome of the Cabal
    .accept 1804 >>Accept Tome of the Cabal
    .turnin 1804 >>Turn in Tome of the Cabal
    .target Krom Stoutarm
step << Undead
    .goto Undercity,75.92,37.89
    >>Talk to |cRXP_FRIENDLY_Jorah|r
    .turnin 1803 >>Turn in Tome of the Cabal
    .accept 1805 >>Accept Tome of the Cabal
    .turnin 1805 >>Turn in Tome of the Cabal
    .target Jorah Annison
step
    .goto The Barrens,62.63,35.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Strahad|r. Summon and kill the |cRXP_ENEMY_Felhunter|r
    .turnin 1804 >>Turn in Tome of the Cabal
    .turnin 1805 >>Turn in Tome of the Cabal
    .accept 1795 >>Accept The Binding
    .complete 1795,1 --Summoned Felhunter slain
    .turnin 1795 >>Turn in The Binding
    .target Strahad Farsan
step
    .goto The Barrens,62.51,35.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tClimb the tower. Talk to |cRXP_FRIENDLY_Menara|r
    >>|cRXP_WARN_Buy (or tailor) |cRXP_LOOT_Robes of Arcana|r first|r
    .accept 1796 >>Accept Components for the Enchanted Gold Bloodrobe
    .collect 5770,1,1796,1 --Robes of Arcana (1)
    .target Menara Voidrender
step
    .goto The Barrens,62.51,35.45
    .turnin 1796 >>Turn in Components for the Enchanted Gold Bloodrobe
    .accept 4781 >>Accept Components for the Enchanted Gold Bloodrobe
    .target Menara Voidrender
step
    .goto Stranglethorn Vale,28.71,76.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xizk|r in Booty Bay
    >>|cRXP_WARN_Bring a |cRXP_LOOT_Gold Bar|r (smelter or Auction House)|r
    .turnin 4781 >>Turn in Components for the Enchanted Gold Bloodrobe
    .accept 4782 >>Accept Components for the Enchanted Gold Bloodrobe
    .collect 3577,1,4781,1 --Gold Bar (1)
    .target Xizk Goodstitch
step
    .goto The Barrens,62.51,35.45
    .turnin 4782 >>Turn in Components for the Enchanted Gold Bloodrobe
    .accept 4783 >>Accept Components for the Enchanted Gold Bloodrobe
    .target Menara Voidrender
step
    .goto Desolace,75.29,19.57
    >>Kill |cRXP_ENEMY_Hatefury Satyrs|r in the northeast. Loot them for |cRXP_LOOT_Vials of Hatefury Blood|r
    .complete 4783,1 --Vial of Hatefury Blood (10)
    .mob Hatefury Rogue
    .mob Hatefury Trickster
    .mob Hatefury Felsworn
step
    .goto Desolace,53.20,76.99
    >>Kill |cRXP_ENEMY_Lesser Infernals|r in the south. Loot them for |cRXP_LOOT_Lesser Infernal Stones|r
    .complete 4783,2 --Lesser Infernal Stone (1)
    .mob Lesser Infernal
step
    .goto The Barrens,62.51,35.45
    .turnin 4783 >>Turn in Components for the Enchanted Gold Bloodrobe
    .accept 4784 >>Accept Components for the Enchanted Gold Bloodrobe
    .target Menara Voidrender
step
    .goto Stranglethorn Vale,28.71,76.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xizk|r. Buy the |cRXP_LOOT_Fine Gold Thread|r
    .accept 4785 >>Accept Fine Gold Thread
    .turnin 4785 >>Turn in Fine Gold Thread
    .target Xizk Goodstitch
step
    .goto The Barrens,62.51,35.45
    .turnin 4784 >>Turn in Components for the Enchanted Gold Bloodrobe
    .turnin 4786 >>Turn in The Completed Robe
    .target Menara Voidrender
step
    .goto The Barrens,62.51,35.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Menara|r
    .accept 1799 >>Accept Fragments of the Orb of Orahil
    .target Menara Voidrender
step
    .goto Desolace,67.59,77.81
    >>Kill |cRXP_ENEMY_Burning Blade Summoners|r at the Mannoroc Coven. Loot them for the |cRXP_LOOT_Infernal Orb|r
    .complete 1799,1 --Infernal Orb (1)
    .mob Burning Blade Summoner
step
    .goto Dustwallow Marsh,46.06,57.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tabetha|r
    .turnin 1799 >>Turn in Fragments of the Orb of Orahil
    .accept 4961 >>Accept Cleansing of the Orb of Orahil
    .target Tabetha
step
    .goto Dustwallow Marsh,46.06,57.09
    >>Summon and kill the |cRXP_ENEMY_Demon of the Orb|r
    .complete 4961,1 --Demon of the Orb slain
    .turnin 4961 >>Turn in Cleansing of the Orb of Orahil
    .accept 4976 >>Accept Returning the Cleansed Orb
    .target Tabetha
step
    .goto The Barrens,62.51,35.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Menara|r. Choose your staff
    .turnin 4976 >>Turn in Returning the Cleansed Orb
    .accept 4964 >>Accept The Completed Orb of Dar'Orahil
    .accept 4975 >>Accept The Completed Orb of Noh'Orahil
    .target Menara Voidrender
step
    .goto Orgrimmar,48.47,45.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zevrost|r
    >>|cRXP_WARN_Have ~90g for the mount quest materials, or gather them yourself|r
    .accept 3631 >>Accept Summon Felsteed
    .target Zevrost
step
    .goto The Barrens,62.63,35.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Strahad|r in Ratchet
    .turnin 3631 >>Turn in Summon Felsteed
    .accept 4490 >>Accept Summon Felsteed
    .turnin 4490 >>Turn in Summon Felsteed
    >>|cRXP_WARN_Use the summon to learn your Felsteed|r
    .target Strahad Farsan
step
    .goto Orgrimmar,47.98,45.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grol'dar|r
    .accept 8419 >>Accept An Imp's Request
    .target Grol'dar
step
    .goto Felwood,41.36,45.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Impsy|r
    >>|cRXP_WARN_Bring a |cRXP_LOOT_Felcloth|r (drops from Satyrs in Azshara)|r
    .turnin 8419 >>Turn in An Imp's Request
    .accept 8420 >>Accept Hot and Itchy
    .collect 14256,1,8419,1 --Felcloth (1)
    .target Impsy
step
    .goto Azshara,61.42,20.92
    >>Kill |cRXP_ENEMY_Legashi Satyrs|r in northern Azshara. Loot them for |cRXP_LOOT_Felcloth|r
    .complete 8420,1 --Felcloth (1)
    .mob Legashi Satyr
    .mob Legashi Rogue
    .mob Legashi Hellcaller
step
    .goto Felwood,41.36,45.02
    .turnin 8420 >>Turn in Hot and Itchy
    .accept 8421 >>Accept The Wrong Stuff
    .target Impsy
step
    .goto Felwood,49.56,22.42
    >>Kill |cRXP_ENEMY_Irontree Wanderers|r and |cRXP_ENEMY_Stompers|r. Loot them for |cRXP_LOOT_Rotting Wood|r
    .complete 8421,1 --Rotting Wood (8)
    .mob Irontree Wanderer
    .mob Irontree Stomper
step
    .goto Felwood,40.53,51.65
    >>Kill |cRXP_ENEMY_Tainted Oozes|r. Loot them for |cRXP_LOOT_Bloodvenom Essence|r
    .complete 8421,2 --Bloodvenom Essence (5)
    .mob Tainted Ooze
step
    .goto Felwood,41.36,45.02
    .turnin 8421 >>Turn in The Wrong Stuff
    .accept 8422 >>Accept Trolls of a Feather
    >>|cRXP_WARN_This step needs the Temple of Atal'Hakkar dungeon — bring a group|r
    .target Impsy
step
    .goto Felwood,41.38,44.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Niby|r
    .accept 7601 >>Accept What Niby Commands
    .target Niby the Almighty
step
    .goto Felwood,41.36,45.02
    .turnin 7601 >>Turn in What Niby Commands
    .accept 7602 >>Accept Flawless Fel Essence
    .target Impsy
step
    .goto Azshara,61.42,20.92
    >>Kill |cRXP_ENEMY_Legashi Satyrs|r. Loot the |cRXP_LOOT_Fel Essence of Azshara|r
    .complete 7602,1 --Flawless Fel Essence (Azshara) (1)
    .mob Legashi Satyr
step
    .goto Felwood,37.58,50.21
    >>Kill |cRXP_ENEMY_Jaedenar Legionnaires|r in Jaedenar. Loot the |cRXP_LOOT_Fel Essence of Jaedenar|r
    .complete 7602,2 --Flawless Fel Essence (Jaedenar) (1)
    .mob Jaedenar Legionnaire
step
    .goto Blasted Lands,58.52,51.23
    >>Kill |cRXP_ENEMY_Felguard Sentries|r at the Dark Portal. Loot the |cRXP_LOOT_Fel Essence of the Dark Portal|r
    .complete 7602,3 --Flawless Fel Essence (Dark Portal) (1)
    .mob Felguard Sentry
step
    .goto Felwood,41.36,45.02
    .turnin 7602 >>Turn in Flawless Fel Essence
    >>|cRXP_WARN_Congratulations — you can now summon an Infernal!|r
    .target Impsy
]])

RXPGuides.RegisterGuide([[
#classic
#forever
<< Horde Warrior
#name Warrior 30-40 Whirlwind Weapon
#version 1
#group FuntGuides - Class Quests
#next

step
    .goto Orgrimmar,80.39,32.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sorek|r
    .accept 1718 >>Accept The Islander
    .target Sorek
step
    .goto Thunder Bluff,57.24,87.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Torm|r
    .accept 1718 >>Accept The Islander
    .target Torm Ragetotem
step
    .goto Undercity,47.40,17.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baltus|r
    .accept 1718 >>Accept The Islander
    .target Baltus Fowler
step
    .goto The Barrens,68.62,49.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Klannoc|r on |cRXP_ZONE_Fray Island|r
    .turnin 1718 >>Turn in The Islander
    .accept 1719 >>Accept The Affray
    .target Klannoc Macleod
step
    .goto The Barrens,68.62,49.16
    >>Fight the duel. Kill |cRXP_ENEMY_Big Will|r
    .complete 1719,1 --Big Will slain
    .turnin 1719 >>Turn in The Affray
    .accept 1791 >>Accept The Windwatcher
    .mob Big Will
    .target Klannoc Macleod
step
    .goto Alterac Mountains,80.50,66.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bath'rah|r
    .turnin 1791 >>Turn in The Windwatcher
    .accept 1714 >>Accept Essence of the Exile
    .target Bath'rah the Windwatcher
step
    .goto Arathi Highlands,25.61,30.40
    >>Kill the |cRXP_ENEMY_Burning Exile|r. Loot the |cRXP_LOOT_Burning Charm|r
    .complete 1714,1 --Burning Charm (1)
    .mob Burning Exile
step
    .goto Arathi Highlands,51.89,50.62
    >>Kill the |cRXP_ENEMY_Thundering Exile|r. Loot the |cRXP_LOOT_Thundering Charm|r
    .complete 1714,2 --Thundering Charm (1)
    .mob Thundering Exile
step
    .goto Arathi Highlands,66.65,29.82
    >>Kill the |cRXP_ENEMY_Cresting Exile|r. Loot the |cRXP_LOOT_Cresting Charm|r
    .complete 1714,3 --Cresting Charm (1)
    .mob Cresting Exile
step
    .goto Alterac Mountains,79.32,66.80
    >>Use the three Charms at |cRXP_PICK_Bath'rah's Cauldron|r
    .turnin 1714 >>Turn in Essence of the Exile
step
    .goto Alterac Mountains,80.50,66.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bath'rah|r
    >>|cRXP_WARN_Gather before the fight: 8 |cRXP_LOOT_Liferoot|r (herbalism/AH) and 10 |cRXP_LOOT_Bloodscalp Tusks|r (Bloodscalp Trolls, STV around 24,11)|r
    .accept 1712 >>Accept Cyclonian
    .collect 3357,8,1712,1 --Liferoot (8)
    .collect 3901,10,1712,2 --Bloodscalp Tusk (10)
    .target Bath'rah the Windwatcher
step
    .goto Stranglethorn Vale,24.97,11.17
    >>Kill |cRXP_ENEMY_Bloodscalp Trolls|r northwest of Grom'gol. Loot them for |cRXP_LOOT_Bloodscalp Tusks|r
    .complete 1712,2 --Bloodscalp Tusk (10)
    .mob Bloodscalp Warrior
    .mob Bloodscalp Scout
    .mob Bloodscalp Hunter
step
    .goto Alterac Mountains,79.32,66.80
    >>Bring everything to |cRXP_PICK_Bath'rah's Cauldron|r to receive the |cRXP_LOOT_Essence of the Exile|r
    .complete 1712,3 --Essence of the Exile (1)
step
    .goto Alterac Mountains,80.50,66.92
    >>|cRXP_WARN_Level 40 elite fight — bring a friend or potions|r
    >>Summon and kill |cRXP_ENEMY_Cyclonian|r. Loot the |cRXP_LOOT_Whirlwind Heart|r
    .turnin 1712 >>Turn in Cyclonian
    .accept 1713 >>Accept The Summoning
    .complete 1713,1 --Whirlwind Heart (1)
    .turnin 1713 >>Turn in The Summoning
    .accept 1792 >>Accept Whirlwind Weapon
    .turnin 1792 >>Turn in Whirlwind Weapon
    >>|cRXP_WARN_Choose your Whirlwind weapon!|r
    .target Bath'rah the Windwatcher
]])

RXPGuides.RegisterGuide([[
#classic
#forever
<< Horde Shaman
#name Shaman 30 Call of Air
#version 1
#group FuntGuides - Class Quests
#next

step
    .goto Orgrimmar,37.96,37.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Searn|r
    .accept 1531 >>Accept Call of Air
    .target Searn Firewarder
step
    .goto Thunder Bluff,25.16,20.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xanis|r
    .accept 1532 >>Accept Call of Air
    .target Xanis Flameweaver
step
    .goto Thousand Needles,53.54,42.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prate|r at the |cRXP_ZONE_Whitereach Post|r
    .turnin 1531 >>Turn in Call of Air
    .turnin 1532 >>Turn in Call of Air
    >>|cRXP_WARN_Continue the Air Totem chain from Prate|r
    .target Prate Cloudseer
]])
