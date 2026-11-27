local faction = UnitFactionGroup("player")
if faction == "Alliance" then return end

local L = GetLocale() if L and RXP.enabledLocale[L] then return end

-- RestedXP Forever Guide (H): Horde 30-45 speedrun
-- Built from QuestieDB/Forever ground-truth data (quest IDs, NPC/object coordinates)
RXPGuides.RegisterGuide([[
#forever
#disabledungeons
<< Horde
#name 30-33 Hillsbrad / Arathi / Shimmering Flats
#version 1
#group RestedXP Horde 30-45
#next 33-35 Arathi / Stranglethorn Vale

step
    #completewith KravelD
    .goto Thousand Needles,78.06,77.13,40,0
    >>Return to the |cRXP_FRIENDLY_Mirage Raceway|r in the |cRXP_ZONE_Shimmering Flats|r
step
    #label KravelD
    .goto Thousand Needles,77.79,77.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kravel|r
    .accept 1114 >>Accept Delivery to the Gnomes
    .target Kravel Koalbeard
step
    .goto Thousand Needles,78.06,77.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fizzle|r
    .turnin 1114 >>Turn in Delivery to the Gnomes
    .target Fizzle Brassbolts
step
    .goto Thousand Needles,77.79,77.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kravel|r
    .accept 1115 >>Accept The Rumormonger
    >>|cRXP_WARN_Keep this quest, we will turn it in at Booty Bay later|r
    .target Kravel Koalbeard
step
    #completewith next
    .goto Thousand Needles,45.14,49.11,60,0
    >>Run north to |cRXP_ZONE_Freewind Post|r
step
    .goto Thousand Needles,45.14,49.11
    .fly Orgrimmar >>Fly to Orgrimmar
step
    #completewith next
    .goto Durotar,50.44,13.79,40,0
    >>Go to the Zeppelin tower
step
    .goto Durotar,50.44,13.79
    >>Take the |cRXP_WARN_Zeppelin to Tirisfal Glades|r
step
    .goto Undercity,48.82,69.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Faranell|r
    .accept 515 >>Accept Elixir of Agony
    >>|cRXP_WARN_Buy (or brew) a |cRXP_LOOT_Strong Troll's Blood Potion|r from the Auction House|r
    .collect 3388,1,515,1 --Strong Troll's Blood Potion (1)
    .target Master Apothecary Faranell
step
    .goto Undercity,63.25,48.56
    .fly Tarren Mill >>Fly to Tarren Mill
step
    .goto Hillsbrad Foothills,62.33,20.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darthalia|r
    .accept 527 >>Accept Battle of Hillsbrad
    .target High Executor Darthalia
step
    .goto Hillsbrad Foothills,62.76,20.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Humbert|r
    .accept 547 >>Accept Humbert's Sword
    .target Deathguard Humbert
step
    .goto Hillsbrad Foothills,63.88,19.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thaivand|r
    .accept 552 >>Accept Helcular's Revenge
    .target Novice Thaivand
step
    .goto Hillsbrad Foothills,61.60,20.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wordeen|r
    .accept 544 >>Accept Prison Break In
    .target Magus Wordeen Voidglare
step
    .goto Hillsbrad Foothills,61.50,20.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bel'varil|r
    .accept 556 >>Accept Stone Tokens
    .target Keeper Bel'varil
step
    .goto Hillsbrad Foothills,63.24,20.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krusk|r
    .accept 533 >>Accept Infiltration
    .target Krusk
step
    .goto Hillsbrad Foothills,61.87,19.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tallow|r
    .accept 676 >>Accept The Hammer May Fall
    .target Tallow
step
    #label BoH1
    .goto Hillsbrad Foothills,33.39,39.29
    >>Kill |cRXP_ENEMY_Hillsbrad Farmers|r and |cRXP_ENEMY_Farmhands|r. Kill |cRXP_ENEMY_Farmer Ray|r and |cRXP_ENEMY_Farmer Getz|r
    .complete 527,1 --Hillsbrad Farmer (6)
    .complete 527,2 --Hillsbrad Farmhand (6)
    .complete 527,3 --Farmer Ray (1)
    .complete 527,4 --Farmer Getz (1)
    .mob Hillsbrad Farmer
    .mob Hillsbrad Farmhand
    .mob Farmer Ray
    .mob Farmer Getz
step
    .goto Hillsbrad Foothills,62.33,20.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darthalia|r
    .turnin 527 >>Turn in Battle of Hillsbrad
    .accept 528 >>Accept Battle of Hillsbrad
    .target High Executor Darthalia
step
    .goto Hillsbrad Foothills,33.43,44.53
    >>Kill |cRXP_ENEMY_Hillsbrad Peasants|r around the Fields
    .complete 528,1 --Hillsbrad Peasant slain
    .mob Hillsbrad Peasant
step
    .goto Hillsbrad Foothills,62.33,20.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darthalia|r
    .turnin 528 >>Turn in Battle of Hillsbrad
    .accept 529 >>Accept Battle of Hillsbrad
    .target High Executor Darthalia
step
    .goto Hillsbrad Foothills,32.11,44.42
    >>Kill |cRXP_ENEMY_Blacksmith Verringtan|r and the |cRXP_ENEMY_Apprentice Blacksmiths|r
    >>Loot the |cRXP_PICK_Shipment of Iron|r inside the smithy
    .complete 529,1 --Blacksmith Verringtan (1)
    .complete 529,2 --Hillsbrad Apprentice Blacksmith (4)
    .complete 529,3 --Shipment of Iron (1)
    .mob Blacksmith Verringtan
    .mob Hillsbrad Apprentice Blacksmith
step
    .goto Hillsbrad Foothills,62.33,20.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darthalia|r
    .turnin 529 >>Turn in Battle of Hillsbrad
    .accept 532 >>Accept Battle of Hillsbrad
    .target High Executor Darthalia
step
    .goto Hillsbrad Foothills,29.67,41.64
    >>Kill |cRXP_ENEMY_Magistrate Burnside|r and the |cRXP_ENEMY_Councilmen|r in the Town Hall
    >>Destroy the |cRXP_PICK_Hillsbrad Proclamation|r and loot the |cRXP_PICK_Town Registry|r
    .complete 532,1 --Magistrate Burnside (1)
    .complete 532,2 --Hillsbrad Councilman (3)
    .complete 532,3 --Hillsbrad Proclamation destroyed
    .complete 532,4 --Hillsbrad Town Registry (1)
    .mob Magistrate Burnside
    .mob Hillsbrad Councilman
step
    .goto Hillsbrad Foothills,62.33,20.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darthalia|r
    .turnin 532 >>Turn in Battle of Hillsbrad
    .accept 539 >>Accept Battle of Hillsbrad
    .target High Executor Darthalia
step
    .goto Hillsbrad Foothills,31.21,56.01
    >>Kill |cRXP_ENEMY_Foreman Bonds|r and the |cRXP_ENEMY_Hillsbrad Miners|r at |cRXP_ZONE_Azureload Mine|r
    .complete 539,1 --Foreman Bonds (1)
    .complete 539,2 --Hillsbrad Miner (5)
    .mob Foreman Bonds
    .mob Hillsbrad Miner
step
    .goto Hillsbrad Foothills,62.33,20.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darthalia|r
    .turnin 539 >>Turn in Battle of Hillsbrad
    .accept 541 >>Accept Battle of Hillsbrad
    .target High Executor Darthalia
step
    #label TornFin
    .goto Hillsbrad Foothills,27.01,70.54
    >>Kill |cRXP_ENEMY_Torn Fin Murlocs|r on the western shore. Loot them for |cRXP_LOOT_Torn Fin Eyes|r
    .complete 515,3 --Torn Fin Eye (10)
    .mob Torn Fin Muckdweller
    .mob Torn Fin Coastrunner
    .mob Torn Fin Oracle
    .mob Torn Fin Tidehunter
step
    .goto Hillsbrad Foothills,64.56,80.93
    >>Kill |cRXP_ENEMY_Daggerspine Naga|r on the eastern shore. Loot them for |cRXP_LOOT_Daggerspine Scales|r
    .complete 515,2 --Daggerspine Scale (10)
    .mob Daggerspine Shorestalker
    .mob Daggerspine Shorehunter
    .mob Daggerspine Screamer
    .mob Daggerspine Siren
step
    .goto Hillsbrad Foothills,61.44,19.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lydon|r
    .turnin 515 >>Turn in Elixir of Agony
    .accept 517 >>Accept Elixir of Agony
    .target Apothecary Lydon
step
    #label DunGarok
    .goto Hillsbrad Foothills,71.30,79.29
    >>Kill |cRXP_ENEMY_Dun Garok soldiers|r. Loot them for |cRXP_LOOT_Humbert's Sword|r
    .complete 541,1 --Dun Garok Mountaineer (10)
    .complete 541,2 --Dun Garok Rifleman (10)
    .complete 541,3 --Dun Garok Priest (10)
    .complete 547,1 --Humbert's Sword (1)
    .mob Dun Garok Mountaineer
    .mob Dun Garok Rifleman
    .mob Dun Garok Priest
step
    .goto Hillsbrad Foothills,72.19,79.82
    >>Kill |cRXP_ENEMY_Captain Ironhill|r inside the barracks
    .complete 541,4 --Captain Ironhill (1)
    .mob Captain Ironhill
step
    .goto Hillsbrad Foothills,71.98,80.50
    >>Loot the |cRXP_PICK_Keg of Shindigger Stout|r
    .complete 517,1 --Keg of Shindigger Stout (1)
step
    .goto Hillsbrad Foothills,62.33,20.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darthalia|r
    .turnin 541 >>Turn in Battle of Hillsbrad
    .accept 550 >>Accept Battle of Hillsbrad
    .target High Executor Darthalia
step
    .goto Hillsbrad Foothills,62.76,20.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Humbert|r
    .turnin 547 >>Turn in Humbert's Sword
    .target Deathguard Humbert
step
    .goto Hillsbrad Foothills,61.44,19.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lydon|r
    .turnin 517 >>Turn in Elixir of Agony
    .accept 524 >>Accept Elixir of Agony
    .target Apothecary Lydon
step
    .goto Hillsbrad Foothills,62.81,18.73
    >>Loot the |cRXP_PICK_Dusty Rug|r next to the inn
    .complete 524,1 --Dusty Rug investigated
step
    .goto Hillsbrad Foothills,61.44,19.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lydon|r
    .turnin 524 >>Turn in Elixir of Agony
    .target Apothecary Lydon
step
    .goto Hillsbrad Foothills,44.86,31.13
    >>Kill |cRXP_ENEMY_Cave Yetis|r and |cRXP_ENEMY_Ferocious Yetis|r at |cRXP_ZONE_Darrow Hill|r. Loot them for the |cRXP_LOOT_Helcular's Rod|r
    .complete 552,1 --Helcular's Rod (1)
    .mob Cave Yeti
    .mob Ferocious Yeti
step
    .goto Hillsbrad Foothills,63.88,19.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thaivand|r
    .turnin 552 >>Turn in Helcular's Revenge
    .accept 553 >>Accept Helcular's Revenge
    .target Novice Thaivand
step
    .goto Hillsbrad Foothills,43.89,28.06
    >>Charge the |cRXP_PICK_Flame of Azel|r
    .complete 553,1 --Flame of Azel charged
step
    .goto Hillsbrad Foothills,44.05,26.55
    >>Charge the |cRXP_PICK_Flame of Veraz|r
    .complete 553,2 --Flame of Veraz charged
step
    #label Alterac1
    .goto Alterac Mountains,37.55,66.24
    >>Charge the |cRXP_PICK_Flame of Uzel|r at the |cRXP_ZONE_Uzel's|r farmstead
    .complete 553,3 --Flame of Uzel charged
step
    .goto Alterac Mountains,54.46,72.31
    >>Kill |cRXP_ENEMY_Syndicate Footpads|r and |cRXP_ENEMY_Thieves|r around |cRXP_ZONE_Strahnbrad|r. Loot them for the |cRXP_LOOT_Syndicate Missive|r
    .complete 533,1 --Syndicate Missive (1)
    .mob Syndicate Footpad
    .mob Syndicate Thief
step
    .goto Alterac Mountains,57.17,69.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Valik|r
    .accept 535 >>Accept Valik
    .target Henchman Valik
step
    .goto Alterac Mountains,58.98,68.48
    >>Kill the |cRXP_ENEMY_Drunken Footpads|r. Loot them for the |cRXP_LOOT_Southshore Stout|r
    .complete 535,1 --Southshore Stout (1)
    .mob Drunken Footpad
step
    .goto Alterac Mountains,57.17,69.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Valik|r
    .turnin 535 >>Turn in Valik
    .target Henchman Valik
step
    .goto Alterac Mountains,20.16,84.28
    >>Kill the |cRXP_ENEMY_Dalaran mages|r inside the internment lodge. Loot the |cRXP_LOOT_bloodstones|r from each
    .complete 544,1 --Bloodstone Wedge (1)
    .complete 544,2 --Bloodstone Marble (1)
    .complete 544,3 --Bloodstone Shard (1)
    .complete 544,4 --Bloodstone Oval (1)
    .mob Ricter
    .mob Alina
    .mob Dermot
    .mob Kegan Darkmar
step
    .goto Alterac Mountains,19.16,82.75
    >>Kill |cRXP_ENEMY_Dalaran forces|r around the lodge. Loot them for |cRXP_LOOT_Worn Stone Tokens|r
    .complete 556,1 --Worn Stone Token (10)
    .mob Dalaran Shield Guard
    .mob Dalaran Theurgist
    .mob Dalaran Summoner
    .mob Dalaran Worker
step
    .goto Hillsbrad Foothills,63.24,20.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krusk|r
    .turnin 533 >>Turn in Infiltration
    .target Krusk
step
    .goto Hillsbrad Foothills,61.60,20.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wordeen|r
    .turnin 544 >>Turn in Prison Break In
    .target Magus Wordeen Voidglare
step
    .goto Hillsbrad Foothills,61.50,20.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bel'varil|r
    .turnin 556 >>Turn in Stone Tokens
    .accept 557 >>Accept Bracers of Binding
    .target Keeper Bel'varil
step
    .goto Alterac Mountains,18.34,66.84
    >>Kill the |cRXP_ENEMY_Elemental Slaves|r south of the lodge. Loot them for |cRXP_LOOT_Bracers of Earth Binding|r
    .complete 557,1 --Bracers of Earth Binding (8)
    .mob Elemental Slave
step
    .goto Hillsbrad Foothills,61.50,20.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bel'varil|r
    .turnin 557 >>Turn in Bracers of Binding
    .target Keeper Bel'varil
step
    .goto Hillsbrad Foothills,52.75,53.37
    >>|cRXP_WARN_In the |cRXP_ZONE_Southshore|r graveyard:|r charge |cRXP_PICK_Helcular's Grave|r
    >>|cRXP_WARN_Beware the Alliance guards, charge the grave and run|r
    .turnin 553 >>Turn in Helcular's Revenge
step
    .goto Arathi Highlands,32.73,44.76
    >>Kill |cRXP_ENEMY_Boulderfist Ogres|r and |cRXP_ENEMY_Enforcers|r at the |cRXP_ZONE_Boulderfist Outpost|r
    .complete 676,1 --Boulderfist Ogre (10)
    .complete 676,2 --Boulderfist Enforcer (10)
    .mob Boulderfist Ogre
    .mob Boulderfist Enforcer
step
    .goto Arathi Highlands,27.65,63.79
    >>Kill the |cRXP_ENEMY_Syndicate|r in |cRXP_ZONE_Stromgarde|r. Loot them for the |cRXP_LOOT_Bloodstone Amulet|r
    .complete 671,1 --Bloodstone Amulet (1)
    .mob Syndicate Prowler
    .mob Syndicate Conjuror
    .mob Syndicate Magus
step
    .goto Arathi Highlands,74.24,33.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Drum Fel|r
    .turnin 676 >>Turn in The Hammer May Fall
    .accept 677 >>Accept Call to Arms
    .target Drum Fel
step
    .goto Arathi Highlands,72.64,33.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gor'mul|r
    .accept 655 >>Accept Hammerfall
    .target Gor'mul
step
    .goto Arathi Highlands,74.72,36.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tor'gan|r
    .turnin 655 >>Turn in Hammerfall
    .accept 672 >>Accept Raising Spirits
    .accept 671 >>Accept Foul Magics
    .target Tor'gan
step
    .goto Arathi Highlands,73.60,32.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Flight Master|r
    .fp Hammerfall >> Get the Hammerfall flight path
step
    .goto Arathi Highlands,66.56,66.84
    >>Kill |cRXP_ENEMY_Witherbark Trolls|r around the |cRXP_ZONE_Witherbark Village|r
    .complete 677,1 --Witherbark Axe Thrower (10)
    .complete 677,2 --Witherbark Headhunter (5)
    .complete 677,3 --Witherbark Witch Doctor (5)
    .mob Witherbark Axe Thrower
    .mob Witherbark Headhunter
    .mob Witherbark Witch Doctor
step
    .goto Arathi Highlands,47.76,43.16
    >>Kill |cRXP_ENEMY_Highland Striders|r and |cRXP_ENEMY_Thrashers|r. Loot them for |cRXP_LOOT_Highland Raptor Eyes|r
    .complete 672,1 --Highland Raptor Eye (10)
    .mob Highland Strider
    .mob Highland Thrasher
step
    .goto Arathi Highlands,74.24,33.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Drum Fel|r
    .turnin 677 >>Turn in Call to Arms
    .target Drum Fel
step
    .goto Arathi Highlands,74.72,36.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tor'gan|r
    .turnin 672 >>Turn in Raising Spirits
    .accept 674 >>Accept Raising Spirits
    .turnin 671 >>Turn in Foul Magics
    .target Tor'gan
step
    .goto Arathi Highlands,72.64,33.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gor'mul|r
    .turnin 674 >>Turn in Raising Spirits
    .accept 675 >>Accept Raising Spirits
    .target Gor'mul
step
    .goto Arathi Highlands,74.72,36.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tor'gan|r
    .turnin 675 >>Turn in Raising Spirits
    .target Tor'gan
step
    .goto Arathi Highlands,73.60,32.60
    .fly Undercity >>Fly to Undercity
step
    .goto Undercity,56.25,92.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Varimathras|r
    .turnin 550 >>Turn in Battle of Hillsbrad
    .target Varimathras
]])

RXPGuides.RegisterGuide([[
#forever
#disabledungeons
<< Horde
#name 33-35 Arathi / Stranglethorn Vale
#version 1
#group RestedXP Horde 30-45
#next 35-37 Stranglethorn Vale

step
    #completewith next
    .goto Tirisfal Glades,60.53,58.75,40,0
    >>Go to the Zeppelin tower outside |cRXP_ZONE_Undercity|r
step
    .goto Tirisfal Glades,60.53,58.75
    >>Take the |cRXP_WARN_Zeppelin to Stranglethorn Vale|r (Grom'gol)
step
    .goto Stranglethorn Vale,32.35,29.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thysta|r
    .fp Grom'gol >> Get the Grom'gol Base Camp flight path
    .target Thysta
step
    .goto Stranglethorn Vale,32.17,28.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aggro'gosh|r
    .accept 568 >>Accept The Defense of Grom'gol
    .target Commander Aggro'gosh
step
    .goto Stranglethorn Vale,32.12,29.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mok'thardin|r
    .accept 570 >>Accept Mok'thardin's Enchantment
    .target Far Seer Mok'thardin
step
    .goto Stranglethorn Vale,32.16,27.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nimboya|r
    .accept 581 >>Accept Hunt for Yenniku
    .accept 638 >>Accept Trollbane
    .target Nimboya
step
    .goto Stranglethorn Vale,35.66,10.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Barnil|r
    .accept 583 >>Accept Welcome to the Jungle
    .target Barnil Stonepot
step
    .goto Stranglethorn Vale,35.66,10.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hemet Nesingwary|r
    .turnin 583 >>Turn in Welcome to the Jungle
    .accept 194 >>Accept Raptor Mastery
    .target Hemet Nesingwary
step
    .goto Stranglethorn Vale,35.80,10.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ajeck|r
    .accept 185 >>Accept Tiger Mastery
    .target Ajeck Rouack
step
    .goto Stranglethorn Vale,35.70,10.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sir S. J. Erlgadin|r
    .accept 190 >>Accept Panther Mastery
    .target Sir S. J. Erlgadin
step
    .goto Stranglethorn Vale,35.36,12.11
    >>Kill |cRXP_ENEMY_Young Stranglethorn Tigers|r
    .complete 185,1 --Young Stranglethorn Tiger slain
    .mob Young Stranglethorn Tiger
step
    .goto Stranglethorn Vale,40.11,11.46
    >>Kill |cRXP_ENEMY_Young Panthers|r
    .complete 190,1 --Young Panther slain
    .mob Young Panther
step
    .goto Stranglethorn Vale,25.77,16.13
    >>Kill |cRXP_ENEMY_Stranglethorn Raptors|r
    .complete 194,1 --Stranglethorn Raptor slain
    .mob Stranglethorn Raptor
step
    .goto Stranglethorn Vale,32.26,17.17
    >>Kill |cRXP_ENEMY_Bloodscalp Trolls|r. Loot them for |cRXP_LOOT_Bloodscalp Tusks|r
    .complete 581,1 --Bloodscalp Tusk (9)
    .mob Bloodscalp Warrior
    .mob Bloodscalp Scout
    .mob Bloodscalp Hunter
step
    .goto Stranglethorn Vale,35.05,23.35
    >>Kill the |cRXP_ENEMY_Lashtail Raptors|r east of Grom'gol
    .complete 568,1 --Lashtail Raptor slain
    .mob Lashtail Raptor
step
    .goto Stranglethorn Vale,32.17,28.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aggro'gosh|r
    .turnin 568 >>Turn in The Defense of Grom'gol
    .accept 569 >>Accept The Defense of Grom'gol
    .target Commander Aggro'gosh
step
    .goto Stranglethorn Vale,32.16,27.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nimboya|r
    .turnin 581 >>Turn in Hunt for Yenniku
    .accept 582 >>Accept Headhunting
    .target Nimboya
step
    .goto Stranglethorn Vale,42.53,32.37
    >>Kill |cRXP_ENEMY_Shadowmaw Panthers|r and |cRXP_ENEMY_Stranglethorn Tigresses|r. Loot them for |cRXP_LOOT_claws|r and |cRXP_LOOT_fangs|r
    .complete 570,1 --Shadowmaw Claw (8)
    .complete 570,2 --Pristine Tigress Fang (1)
    .mob Shadowmaw Panther
    .mob Stranglethorn Tigress
step
    .goto Stranglethorn Vale,37.03,30.98
    >>Kill |cRXP_ENEMY_Mosh'Ogg Ogres|r on the road east of Grom'gol
    .complete 569,1 --Mosh'Ogg Brute (10)
    .complete 569,2 --Mosh'Ogg Witch Doctor (5)
    .mob Mosh'Ogg Brute
    .mob Mosh'Ogg Witch Doctor
step
    .goto Stranglethorn Vale,32.12,29.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mok'thardin|r
    .turnin 570 >>Turn in Mok'thardin's Enchantment
    .accept 572 >>Accept Mok'thardin's Enchantment
    .target Far Seer Mok'thardin
step
    .goto Stranglethorn Vale,32.17,28.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aggro'gosh|r
    .turnin 569 >>Turn in The Defense of Grom'gol
    .target Commander Aggro'gosh
step
    .goto Stranglethorn Vale,28.94,44.94
    >>Kill |cRXP_ENEMY_Jungle Stalkers|r. Loot them for |cRXP_LOOT_Jungle Stalker Feathers|r
    .complete 572,1 --Jungle Stalker Feather (10)
    .mob Jungle Stalker
step
    .goto Stranglethorn Vale,22.97,10.13
    >>Kill |cRXP_ENEMY_Bloodscalp Headhunters|r around the |cRXP_ZONE_Tkashi Ruins|r. Loot them for |cRXP_LOOT_Shrunken Heads|r
    .complete 582,1 --Shrunken Head (10)
    .mob Bloodscalp Headhunter
    .mob Bloodscalp Berserker
    .mob Bloodscalp Witch Doctor
step
    .goto Stranglethorn Vale,32.12,29.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mok'thardin|r
    .turnin 572 >>Turn in Mok'thardin's Enchantment
    .accept 571 >>Accept Mok'thardin's Enchantment
    .target Far Seer Mok'thardin
step
    .goto Stranglethorn Vale,32.16,27.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nimboya|r
    .turnin 582 >>Turn in Headhunting
    .target Nimboya
step
    .goto Stranglethorn Vale,32.89,64.63
    >>Kill |cRXP_ENEMY_Elder Mistvale Gorillas|r south of Grom'gol. Loot them for |cRXP_LOOT_Aged Gorilla Sinews|r
    .complete 571,1 --Aged Gorilla Sinew (1)
    .mob Elder Mistvale Gorilla
step
    .goto Stranglethorn Vale,32.12,29.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mok'thardin|r
    .turnin 571 >>Turn in Mok'thardin's Enchantment
    .target Far Seer Mok'thardin
step
    #completewith next
    .goto Stranglethorn Vale,38.85,50.35,50,0
    >>Run back to Grom'gol
step
    .goto Stranglethorn Vale,38.85,50.35
    >>Take the |cRXP_WARN_Zeppelin to Undercity|r
step
    .goto Undercity,63.25,48.56
    .fly Tarren Mill >>Fly to Tarren Mill
step
    .goto Hillsbrad Foothills,60.14,18.62
    .fly Hammerfall >>Fly to Hammerfall
step
    .goto Arathi Highlands,73.80,33.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zengu|r
    .turnin 638 >>Turn in Trollbane
    .accept 639 >>Accept Sigil of Strom
    .target Zengu
step
    .goto Arathi Highlands,74.24,33.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Drum Fel|r
    .accept 678 >>Accept Call to Arms
    .target Drum Fel
step
    .goto Arathi Highlands,74.72,36.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tor'gan|r
    .accept 701 >>Accept Guile of the Raptor
    .target Tor'gan
step
    .goto Arathi Highlands,27.65,63.79
    >>Kill the |cRXP_ENEMY_Syndicate|r in |cRXP_ZONE_Stromgarde|r. Loot them for the |cRXP_LOOT_Sigil of Strom|r
    .complete 639,1 --Sigil of Strom (1)
    .mob Syndicate Prowler
    .mob Syndicate Conjuror
    .mob Syndicate Magus
step
    .goto Arathi Highlands,24.61,59.38
    >>Kill |cRXP_ENEMY_Stromgarde Defenders|r in the |cRXP_ZONE_troll section|r of Stromgarde. Loot them for the |cRXP_LOOT_Sigil Fragment|r
    .complete 640,1 --Sigil Fragment (1)
    .mob Stromgarde Troll Hunter
    .mob Stromgarde Defender
    .mob Stromgarde Vindicator
step
    .goto Arathi Highlands,73.80,33.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zengu|r
    .turnin 639 >>Turn in Sigil of Strom
    .accept 640 >>Accept The Broken Sigil
    .target Zengu
step
    .goto Arathi Highlands,74.72,36.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tor'gan|r
    .turnin 640 >>Turn in The Broken Sigil
    .accept 641 >>Accept Sigil of Thoradin
    .target Tor'gan
step
    .goto Arathi Highlands,73.80,33.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zengu|r
    .turnin 641 >>Turn in Sigil of Thoradin
    .target Zengu
step
    .goto Arathi Highlands,50.00,71.31
    >>Kill |cRXP_ENEMY_Highland Fleshstalkers|r south of Boulderfist. Loot them for |cRXP_LOOT_Raptor Hearts|r
    .complete 701,1 --Raptor Heart (10)
    .mob Highland Fleshstalker
step
    .goto Arathi Highlands,52.87,75.90
    >>Kill |cRXP_ENEMY_Boulderfist Brutes|r and |cRXP_ENEMY_Magi|r at the southern |cRXP_ZONE_Boulderfist camp|r
    .complete 678,1 --Boulderfist Brute (10)
    .complete 678,2 --Boulderfist Magus (5)
    .mob Boulderfist Brute
    .mob Boulderfist Magus
step
    .goto Arathi Highlands,74.24,33.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Drum Fel|r
    .turnin 678 >>Turn in Call to Arms
    .accept 679 >>Accept Call to Arms
    .target Drum Fel
step
    .goto Arathi Highlands,19.96,67.41
    >>Kill |cRXP_ENEMY_Boulderfist Shamans|r and |cRXP_ENEMY_Lords|r at the western |cRXP_ZONE_Boulderfist camp|r
    .complete 679,1 --Boulderfist Shaman (10)
    .complete 679,2 --Boulderfist Lord (5)
    .mob Boulderfist Shaman
    .mob Boulderfist Lord
step
    .goto Arathi Highlands,74.72,36.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tor'gan|r
    .turnin 701 >>Turn in Guile of the Raptor
    .accept 702 >>Accept Guile of the Raptor
    .target Tor'gan
step
    .goto Arathi Highlands,72.64,33.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gor'mul|r
    .turnin 702 >>Turn in Guile of the Raptor
    .accept 847 >>Accept Guile of the Raptor
    .target Gor'mul
step
    .goto Arathi Highlands,74.72,36.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tor'gan|r
    .turnin 847 >>Turn in Guile of the Raptor
    .turnin 679 >>Turn in Call to Arms
    .target Tor'gan
step
    .goto Arathi Highlands,73.60,32.60
    .fly Undercity >>Fly to Undercity
]])

RXPGuides.RegisterGuide([[
#forever
#disabledungeons
<< Horde
#name 35-37 Stranglethorn Vale
#version 1
#group RestedXP Horde 30-45
#next 37-39 Badlands / Swamp of Sorrows

step
    #completewith next
    .goto Tirisfal Glades,60.53,58.75,40,0
    >>Go to the Zeppelin tower outside |cRXP_ZONE_Undercity|r
step
    .goto Tirisfal Glades,60.53,58.75
    >>Take the |cRXP_WARN_Zeppelin to Stranglethorn Vale|r (Grom'gol)
step
    .goto Stranglethorn Vale,35.66,10.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hemet Nesingwary|r
    .turnin 194 >>Turn in Raptor Mastery
    .accept 195 >>Accept Raptor Mastery
    .target Hemet Nesingwary
step
    .goto Stranglethorn Vale,35.62,10.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ajeck|r
    .turnin 185 >>Turn in Tiger Mastery
    .accept 186 >>Accept Tiger Mastery
    .target Ajeck Rouack
step
    .goto Stranglethorn Vale,35.55,10.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sir S. J. Erlgadin|r
    .turnin 190 >>Turn in Panther Mastery
    .accept 191 >>Accept Panther Mastery
    .target Sir S. J. Erlgadin
step
    .goto Stranglethorn Vale,41.44,14.02
    >>Kill |cRXP_ENEMY_Stranglethorn Tigers|r
    .complete 186,1 --Stranglethorn Tiger (10)
    .mob Stranglethorn Tiger
step
    .goto Stranglethorn Vale,31.56,12.61
    >>Kill |cRXP_ENEMY_Panthers|r
    .complete 191,1 --Panther (10)
    .mob Panther
step
    .goto Stranglethorn Vale,40.30,23.46
    >>Kill |cRXP_ENEMY_Snapjaw Crocolisks|r. Loot them for |cRXP_LOOT_Snapjaw Crocolisk Skins|r
    .complete 577,1 --Snapjaw Crocolisk Skin (2)
    .mob Snapjaw Crocolisk
step
    .goto Stranglethorn Vale,35.05,23.35
    >>Kill |cRXP_ENEMY_Lashtail Raptors|r
    .complete 195,1 --Lashtail Raptor (10)
    .mob Lashtail Raptor
step
    .goto Stranglethorn Vale,35.62,10.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ajeck|r
    .turnin 186 >>Turn in Tiger Mastery
    .accept 187 >>Accept Tiger Mastery
    .target Ajeck Rouack
step
    .goto Stranglethorn Vale,35.66,10.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hemet Nesingwary|r
    .turnin 195 >>Turn in Raptor Mastery
    .target Hemet Nesingwary
step
    .goto Stranglethorn Vale,35.55,10.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sir S. J. Erlgadin|r
    .turnin 191 >>Turn in Panther Mastery
    .target Sir S. J. Erlgadin
step
    .goto Stranglethorn Vale,33.36,18.50
    >>Kill |cRXP_ENEMY_Elder Stranglethorn Tigers|r
    .complete 187,1 --Elder Stranglethorn Tiger (10)
    .mob Elder Stranglethorn Tiger
step
    .goto Stranglethorn Vale,32.16,27.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nimboya|r
    .accept 584 >>Accept Bloodscalp Clan Heads
    .target Nimboya
step
    .goto Stranglethorn Vale,23.44,8.12
    >>Kill |cRXP_ENEMY_Gan'zulah|r at the |cRXP_ZONE_Ruins of Zul'Kunda|r. Loot his |cRXP_LOOT_Head|r
    >>Kill |cRXP_ENEMY_Nezzliok the Dire|r nearby. Loot his |cRXP_LOOT_Head|r
    >>|cRXP_WARN_Both are level 40+, bring a friend or be careful|r
    .complete 584,1 --Gan'zulah's Head (1)
    .complete 584,2 --Nezzliok's Head (1)
    .mob Gan'zulah
    .mob Nezzliok the Dire
step
    .goto Stranglethorn Vale,32.22,27.60
    >>Use the |cRXP_PICK_Bubbling Cauldron|r next to |cRXP_FRIENDLY_Nimboya|r
    .turnin 584 >>Turn in Bloodscalp Clan Heads
step
    .goto Stranglethorn Vale,45.57,36.64
    >>Kill |cRXP_ENEMY_Skullsplitter Trolls|r around the |cRXP_ZONE_Mizjah Ruins|r. Loot them for |cRXP_LOOT_Skullsplitter Tusks|r
    .complete 209,1 --Skullsplitter Tusk (18)
    .mob Skullsplitter Warrior
    .mob Skullsplitter Hunter
    .mob Skullsplitter Witch Doctor
    .mob Skullsplitter Axe Thrower
step
    #completewith next
    .goto Stranglethorn Vale,29.48,24.88,60,0
    >>Run south along the river
step
    .goto Stranglethorn Vale,29.48,24.88
    >>Kill |cRXP_ENEMY_Elder Saltwater Crocolisks|r. Loot them for |cRXP_LOOT_Elder Crocolisk Skins|r
    .complete 628,1 --Elder Crocolisk Skin (1)
    .mob Elder Saltwater Crocolisk
step
    #completewith BBarrival
    .goto Stranglethorn Vale,28.10,76.22,60,0
    >>Run south to |cRXP_ZONE_Booty Bay|r
step
    #label BBarrival
    .goto Stranglethorn Vale,28.10,76.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crazz|r
    .accept 595 >>Accept The Bloodsail Buccaneers
    .target First Mate Crazz
step
    .goto Stranglethorn Vale,27.28,69.52
    >>Loot the |cRXP_PICK_Bloodsail Correspondence|r at the Wild Shore
    .turnin 595 >>Turn in The Bloodsail Buccaneers
step
    .goto Stranglethorn Vale,28.10,76.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crazz|r
    .accept 599 >>Accept The Bloodsail Buccaneers
    .target First Mate Crazz
step
    .goto Stranglethorn Vale,26.94,77.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krazek|r
    .turnin 1115 >>Turn in The Rumormonger
    .accept 1116 >>Accept Dream Dust in the Swamp
    .target Krazek
step
    .goto Stranglethorn Vale,27.78,77.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_MacKinley|r
    .accept 606 >>Accept Scaring Shaky
    .target "Sea Wolf" MacKinley
step
    .goto Stranglethorn Vale,28.29,77.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Drizzlik|r
    .turnin 577 >>Turn in Some Assembly Required
    .accept 628 >>Accept Excelsior
    .target Drizzlik
step
    .goto Stranglethorn Vale,26.90,73.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shaky|r
    .turnin 606 >>Turn in Scaring Shaky
    .accept 607 >>Accept Return to MacKinley
    .target "Shaky" Phillipe
step
    .goto Stranglethorn Vale,32.89,64.63
    >>Kill |cRXP_ENEMY_Elder Mistvale Gorillas|r. Loot them for |cRXP_LOOT_Mistvale Giblets|r
    .complete 606,1 --Mistvale Giblets (10)
    .mob Elder Mistvale Gorilla
step
    .goto Stranglethorn Vale,27.17,77.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Seahorn|r
    .turnin 599 >>Turn in The Bloodsail Buccaneers
    .target Fleet Master Seahorn
step
    .goto Stranglethorn Vale,27.78,77.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_MacKinley|r
    .turnin 607 >>Turn in Return to MacKinley
    .target "Sea Wolf" MacKinley
step
    .goto Stranglethorn Vale,28.29,77.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Drizzlik|r
    .turnin 628 >>Turn in Excelsior
    .target Drizzlik
step
    .goto Stranglethorn Vale,27.12,77.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crank|r
    .accept 621 >>Accept Zanzil's Secret
    .target Crank Fizzlebub
step
    .goto Stranglethorn Vale,26.92,77.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deeg|r
    .accept 587 >>Accept Up to Snuff
    .target Deeg
step
    .goto Stranglethorn Vale,28.59,75.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dizzy|r
    .accept 576 >>Accept Keep An Eye Out
    .target Dizzy One-Eye
step
    .goto Stranglethorn Vale,27.00,77.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gyll|r
    .fp Booty Bay >> Get the Booty Bay flight path
    .target Gyll
step
    .goto Stranglethorn Vale,27.43,73.21
    >>Kill |cRXP_ENEMY_Bloodsail Buccaneers|r on the |cRXP_ZONE_Shores|r. Loot them for |cRXP_LOOT_Snuff|r and |cRXP_LOOT_Dizzy's Eye|r
    .complete 587,1 --Snuff (15)
    .complete 576,1 --Dizzy's Eye (1)
    .mob Bloodsail Raider
    .mob Bloodsail Mage
    .mob Bloodsail Swashbuckler
    .mob Bloodsail Warlock
step
    .goto Stranglethorn Vale,28.16,82.21
    >>Loot the |cRXP_PICK_Bloodsail Charts|r and the |cRXP_PICK_Bloodsail Orders|r on the |cRXP_ZONE_Corsair's Cove|r beach
    .complete 604,1 --Bloodsail Charts (1)
    .complete 604,2 --Bloodsail Orders (1)
step
    .goto Stranglethorn Vale,26.92,77.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deeg|r
    .turnin 587 >>Turn in Up to Snuff
    .target Deeg
step
    .goto Stranglethorn Vale,28.59,75.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dizzy|r
    .turnin 576 >>Turn in Keep An Eye Out
    .target Dizzy One-Eye
step
    .goto Stranglethorn Vale,27.17,77.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Seahorn|r
    .accept 604 >>Accept The Bloodsail Buccaneers
    .target Fleet Master Seahorn
step
    .goto Stranglethorn Vale,38.25,55.87
    >>Kill |cRXP_ENEMY_Zanzil Trolls|r at the |cRXP_ZONE_Ruins of Aboraz|r. Loot them for |cRXP_LOOT_Zanzil's Mixture|r
    .complete 621,1 --Zanzil's Mixture (10)
    .mob Zanzil Zombie
    .mob Zanzil Hunter
    .mob Zanzil Witch Doctor
step
    .goto Stranglethorn Vale,26.23,62.02
    >>Kill |cRXP_ENEMY_Naga Explorers|r in the southern |cRXP_ZONE_coves|r. Loot them for |cRXP_LOOT_Akiris Reeds|r
    .complete 617,1 --Akiris Reed (10)
    .mob Naga Explorer
step
    .goto Stranglethorn Vale,27.12,77.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crank|r
    .turnin 621 >>Turn in Zanzil's Secret
    .target Crank Fizzlebub
step
    .goto Stranglethorn Vale,26.76,76.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bloads|r
    .accept 617 >>Accept Akiris by the Bundle
    .turnin 617 >>Turn in Akiris by the Bundle
    .target Privateer Bloads
step
    .goto Stranglethorn Vale,27.00,77.00
    .fly Undercity >>Fly to Undercity
step
    .goto Undercity,63.25,48.56
    .fly Tarren Mill >>Fly to Tarren Mill
step
    .goto Hillsbrad Foothills,60.14,18.62
    .fly Hammerfall >>Fly to Hammerfall
step
    #completewith KargathFP
    .goto Wetlands,11.54,43.81,60,0
    >>Run east through |cRXP_ZONE_Wetlands|r along the road
step
    .goto Loch Modan,46.50,71.00,60,0
    >>Run south through |cRXP_ZONE_Loch Modan|r toward the |cRXP_ZONE_South Gate Pass|r
    #completewith KargathFP
step
    #label KargathFP
    .goto Badlands,4.40,44.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Flight Master|r
    .fp Kargath >> Get the Kargath flight path
]])

RXPGuides.RegisterGuide([[
#forever
#disabledungeons
<< Horde
#name 37-39 Badlands / Swamp of Sorrows
#version 1
#group RestedXP Horde 30-45
#next 39-41 Dustwallow Marsh / Stranglethorn Vale

step
    .goto Badlands,2.42,46.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jarkal|r
    .accept 2258 >>Accept Badlands Reagent Run
    .target Jarkal Mossmeld
step
    .goto Badlands,6.49,47.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Neeka|r
    .accept 1419 >>Accept Coyote Thieves
    .target Neeka Bloodscar
step
    .goto Badlands,42.39,52.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rigglefuzz|r
    .accept 703 >>Accept Barbecued Buzzard Wings
    .target Rigglefuzz
step
    .goto Badlands,25.95,44.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lotwil|r
    .accept 710 >>Accept Study of the Elements: Rock
    .accept 713 >>Accept Coolant Heads Prevail
    >>|cRXP_WARN_Buy a |cRXP_LOOT_Frost Oil|r and a |cRXP_LOOT_Gyrochronatom|r from the Auction House for these chains|r
    .collect 3829,1,713,1 --Frost Oil (1)
    .collect 4389,1,714,1 --Gyrochronatom (1)
    .target Lotwil Veriatus
step
    .goto Badlands,18.77,43.00
    >>Kill |cRXP_ENEMY_Lesser Rock Elementals|r. Loot them for |cRXP_LOOT_Small Stone Shards|r
    .complete 710,1 --Small Stone Shard (10)
    .mob Lesser Rock Elemental
step
    .goto Badlands,51.13,38.61
    >>Kill |cRXP_ENEMY_Crag Coyotes|r. Loot them for |cRXP_LOOT_Jawbones|r
    .complete 1419,1 --Coyote Jawbone (8)
    .mob Crag Coyote
    .mob Feral Crag Coyote
step
    .goto Badlands,56.84,27.31
    >>Kill |cRXP_ENEMY_Starving Buzzards|r. Loot them for |cRXP_LOOT_Buzzard Wings|r and |cRXP_LOOT_Gizzards|r
    .complete 703,1 --Buzzard Wing (4)
    .complete 2258,2 --Buzzard Gizzard (5)
    .mob Starving Buzzard
    .mob Buzzard
step
    .goto Badlands,54.67,83.91
    >>Kill |cRXP_ENEMY_Enraged Rock Elementals|r and |cRXP_ENEMY_Rock Elementals|r in the south. Loot them for |cRXP_LOOT_Rock Elemental Shards|r
    .complete 2258,3 --Rock Elemental Shard (5)
    .mob Rock Elemental
    .mob Enraged Rock Elemental
step
    .goto Badlands,2.42,46.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jarkal|r
    .turnin 2258 >>Turn in Badlands Reagent Run
    .target Jarkal Mossmeld
step
    .goto Badlands,6.49,47.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Neeka|r
    .turnin 1419 >>Turn in Coyote Thieves
    .target Neeka Bloodscar
step
    .goto Badlands,42.39,52.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rigglefuzz|r
    .turnin 703 >>Turn in Barbecued Buzzard Wings
    .target Rigglefuzz
step
    .goto Badlands,25.95,44.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lotwil|r
    .turnin 710 >>Turn in Study of the Elements: Rock
    .accept 711 >>Accept Study of the Elements: Rock
    .turnin 713 >>Turn in Coolant Heads Prevail
    .accept 714 >>Accept Gyro... What?
    .target Lotwil Veriatus
step
    .goto Badlands,25.82,44.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lucien|r
    .turnin 714 >>Turn in Gyro... What?
    .accept 715 >>Accept Liquid Stone
    >>|cRXP_WARN_Buy a |cRXP_LOOT_Healing Potion|r and a |cRXP_LOOT_Lesser Invisibility Potion|r|r
    .collect 929,1,715,1 --Healing Potion (1)
    .collect 3823,1,715,2 --Lesser Invisibility Potion (1)
    .target Lucien Tosselwrench
step
    .goto Badlands,35.15,69.36
    >>Kill |cRXP_ENEMY_Rock Elementals|r in the southwest. Loot them for |cRXP_LOOT_Large Stone Slabs|r
    .complete 711,1 --Large Stone Slab (3)
    .mob Rock Elemental
step
    .goto Badlands,25.95,44.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lotwil|r
    .turnin 711 >>Turn in Study of the Elements: Rock
    .target Lotwil Veriatus
step
    .goto Badlands,25.82,44.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lucien|r
    .turnin 715 >>Turn in Liquid Stone
    .target Lucien Tosselwrench
step
    #completewith StonardFP
    .goto Badlands,58.31,40.61,60,0
    >>Run east to the |cRXP_ZONE_Swamp of Sorrows|r
step
    #label StonardFP
    .goto Swamp of Sorrows,48.00,55.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Flight Master|r
    .fp Stonard >> Get the Stonard flight path
step
    .goto Swamp of Sorrows,47.93,54.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fel'zerul|r
    .accept 1424 >>Accept Pool of Tears
    .target Fel'zerul
step
    .goto Swamp of Sorrows,44.70,57.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dar|r
    .accept 698 >>Accept Lack of Surplus
    .accept 1430 >>Accept Fresh Meat
    .target Dar
step
    .goto Swamp of Sorrows,55.70,34.37
    >>Kill |cRXP_ENEMY_Noboru the Cudgel|r. Loot his |cRXP_LOOT_Cudgel|r and start the quest
    .complete 1392,1 --Noboru's Cudgel (1)
    .mob Noboru the Cudgel
step
    .goto Swamp of Sorrows,58.11,39.36
    >>Kill |cRXP_ENEMY_Sawtooth Crocolisks|r. Loot them for |cRXP_LOOT_Sawtooth Flanks|r
    .complete 698,1 --Unprepared Sawtooth Flank (6)
    .mob Sawtooth Crocolisk
step
    .goto Swamp of Sorrows,13.42,60.13
    >>Kill |cRXP_ENEMY_Dreaming Whelps|r. Loot them for |cRXP_LOOT_Dream Dust|r
    .complete 1116,1 --Speck of Dream Dust (10)
    .mob Adolescent Whelp
    .mob Dreaming Whelp
step
    .goto Swamp of Sorrows,65.47,18.16
    >>|cRXP_WARN_Escort quest:|r Talk to |cRXP_FRIENDLY_Galen|r and escort him to his strongbox
    .accept 1393 >>Accept Galen's Escape
    .target Galen Goodward
step
    .goto Swamp of Sorrows,47.81,39.76
    >>Open |cRXP_PICK_Galen's Strongbox|r
    .complete 1393,1 --Galen's Strongbox Looted
step
    .goto Swamp of Sorrows,70.61,53.53
    >>Loot the |cRXP_PICK_Atal'ai Artifacts|r at the bottom of the |cRXP_ZONE_Pool of Tears|r
    .complete 1424,1 --Atal'ai Artifact (4)
step
    .goto Swamp of Sorrows,81.32,80.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tok'Kar|r
    .turnin 698 >>Turn in Lack of Surplus
    .accept 699 >>Accept Lack of Surplus
    .target Tok'Kar
step
    .goto Swamp of Sorrows,80.75,39.41
    >>Kill |cRXP_ENEMY_Sawtooth Snappers|r. Loot them for |cRXP_LOOT_Snapper Claws|r
    .complete 699,1 --Sawtooth Snapper Claw (4)
    .mob Sawtooth Snapper
step
    .goto Swamp of Sorrows,81.32,80.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tok'Kar|r
    .turnin 699 >>Turn in Lack of Surplus
    .accept 1422 >>Accept Threat From the Sea
    .target Tok'Kar
step
    .goto Swamp of Sorrows,83.76,80.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Katar|r
    .turnin 1422 >>Turn in Threat From the Sea
    .target Katar
step
    .goto Swamp of Sorrows,89.24,50.14
    >>Kill |cRXP_ENEMY_Monstrous Crawlers|r on the eastern shore. Loot them for |cRXP_LOOT_Crawler Legs|r
    .complete 1430,1 --Monstrous Crawler Leg (8)
    .mob Monstrous Crawler
step
    .goto Swamp of Sorrows,44.70,57.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dar|r
    .turnin 1430 >>Turn in Fresh Meat
    .target Dar
step
    .goto Swamp of Sorrows,47.93,54.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fel'zerul|r
    .turnin 1424 >>Turn in Pool of Tears
    .target Fel'zerul
step
    .goto Swamp of Sorrows,25.98,31.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magtoor|r
    .turnin 1392 >>Turn in Noboru the Cudgel
    .target Magtoor
step
    .goto Swamp of Sorrows,48.00,55.40
    .fly Grom'gol >>Fly to Grom'gol Base Camp
step
    .goto Stranglethorn Vale,26.94,77.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krazek|r
    .turnin 1116 >>Turn in Dream Dust in the Swamp
    .target Krazek
step
    .goto Stranglethorn Vale,38.85,50.35
    >>Take the |cRXP_WARN_Zeppelin to Undercity|r
]])

RXPGuides.RegisterGuide([[
#forever
#disabledungeons
<< Horde
#name 39-41 Dustwallow Marsh / Stranglethorn Vale
#version 1
#group RestedXP Horde 30-45
#next 41-43 Tanaris

step
    .goto Undercity,63.25,48.56
    .fly Orgrimmar >>Fly to Orgrimmar
step
    .goto Orgrimmar,45.12,63.88
    .fly Thunder Bluff >>Fly to Thunder Bluff
step
    .goto Thunder Bluff,61.54,80.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Melor|r
    .accept 1205 >>Accept Deadmire
    .target Melor Stonehoof
step
    .goto Thunder Bluff,47.00,49.82
    .fly Camp Taurajo >>Fly to Camp Taurajo
step
    #completewith BrackenwallFP
    .goto The Barrens,44.50,59.20,60,0
    >>Run south through |cRXP_ZONE_The Barrens|r into |cRXP_ZONE_Dustwallow Marsh|r
step
    #label BrackenwallFP
    .goto Dustwallow Marsh,35.57,31.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shardi|r
    .fp Brackenwall >> Get the Brackenwall Village flight path
    .target Shardi
step
    .goto Dustwallow Marsh,36.29,31.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mok'Morokk|r
    .accept 1166 >>Accept Overlord Mok'Morokk's Concern
    .target Overlord Mok'Morokk
step
    .goto Dustwallow Marsh,37.37,31.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tharg|r
    .accept 1168 >>Accept Army of the Black Dragon
    .target Tharg
step
    .goto Dustwallow Marsh,37.15,33.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Draz'Zilb|r
    .accept 1169 >>Accept Identifying the Brood
    .target Draz'Zilb
step
    .goto Dustwallow Marsh,35.15,38.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mudcrush|r
    .accept 1177 >>Accept Hungry!
    .target Mudcrush Durtfeet
step
    .goto Dustwallow Marsh,44.53,66.04
    >>Loot |cRXP_PICK_Mok'Morokk's Snuff|r at the |cRXP_ZONE_Dragonmaw Gate|r area
    .complete 1166,1 --Mok'Morokk's Snuff (1)
step
    .goto Dustwallow Marsh,38.66,65.57
    >>Loot |cRXP_PICK_Mok'Morokk's Grog|r
    .complete 1166,2 --Mok'Morokk's Grog (1)
step
    .goto Dustwallow Marsh,36.64,69.57
    >>Loot |cRXP_PICK_Mok'Morokk's Strongbox|r
    .complete 1166,3 --Mok'Morokk's Strongbox (1)
step
    .goto Dustwallow Marsh,46.39,73.46
    >>Kill |cRXP_ENEMY_Searing Whelps|r and |cRXP_ENEMY_Hatchlings|r. Loot them for |cRXP_LOOT_Searing Tongues|r and |cRXP_LOOT_Hearts|r
    .complete 1169,1 --Searing Tongue (5)
    .complete 1169,2 --Searing Heart (5)
    .mob Searing Hatchling
    .mob Searing Whelp
step
    .goto Dustwallow Marsh,42.87,67.76
    >>Kill |cRXP_ENEMY_Firemane Whelps|r around the |cRXP_ZONE_Firebog|r
    .complete 1168,1 --Firemane Scout (4)
    .complete 1168,2 --Firemane Ash Tail (4)
    .complete 1168,3 --Firemane Scalebane (4)
    .mob Firemane Scout
    .mob Firemane Ash Tail
    .mob Firemane Scalebane
step
    .goto Dustwallow Marsh,48.81,56.75
    >>Kill |cRXP_ENEMY_Deadmire|r (|cRXP_WARN_level 45 elite crocolisk|r). Loot his |cRXP_LOOT_Tooth|r
    .complete 1205,1 --Deadmire's Tooth (1)
    .mob Deadmire
step
    .goto Dustwallow Marsh,52.56,77.23
    >>Destroy the |cRXP_PICK_Egg of Onyxia|r in the |cRXP_ZONE_Swamplight Manor|r area
    .complete 1172,1 --Egg of Onyxia destroyed
step
    .goto Dustwallow Marsh,56.75,15.63
    >>Kill |cRXP_ENEMY_Mirefin Murlocs|r on the |cRXP_ZONE_northeastern shore|r. Loot them for |cRXP_LOOT_Mirefin Heads|r
    .complete 1177,1 --Mirefin Head (10)
    .mob Mirefin Murloc
    .mob Mirefin Muckdweller
    .mob Mirefin Coastrunner
    .mob Mirefin Oracle
step
    .goto Dustwallow Marsh,36.29,31.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mok'Morokk|r
    .turnin 1166 >>Turn in Overlord Mok'Morokk's Concern
    .target Overlord Mok'Morokk
step
    .goto Dustwallow Marsh,37.15,33.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Draz'Zilb|r
    .turnin 1169 >>Turn in Identifying the Brood
    .accept 1170 >>Accept The Brood of Onyxia
    .target Draz'Zilb
step
    .goto Dustwallow Marsh,36.29,31.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mok'Morokk|r
    .turnin 1170 >>Turn in The Brood of Onyxia
    .accept 1171 >>Accept The Brood of Onyxia
    .target Overlord Mok'Morokk
step
    .goto Dustwallow Marsh,37.15,33.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Draz'Zilb|r
    .turnin 1171 >>Turn in The Brood of Onyxia
    .accept 1172 >>Accept The Brood of Onyxia
    .target Draz'Zilb
step
    .goto Dustwallow Marsh,37.15,33.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Draz'Zilb|r
    .turnin 1172 >>Turn in The Brood of Onyxia
    .accept 1173 >>Accept Challenge Overlord Mok'Morokk
    >>|cRXP_WARN_He runs away at low health, just stay alive|r
    .target Draz'Zilb
step
    .goto Dustwallow Marsh,36.29,31.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tChallenge |cRXP_ENEMY_Mok'Morokk|r and drive him off
    .complete 1173,1 --Overlord Mok'Morokk defeated
    .target Overlord Mok'Morokk
step
    .goto Dustwallow Marsh,37.15,33.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Draz'Zilb|r
    .turnin 1173 >>Turn in Challenge Overlord Mok'Morokk
    .turnin 1168 >>Turn in Army of the Black Dragon
    .target Draz'Zilb
step
    .goto Dustwallow Marsh,35.15,38.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mudcrush|r
    .turnin 1177 >>Turn in Hungry!
    .target Mudcrush Durtfeet
step
    .goto Dustwallow Marsh,35.57,31.87
    .fly Thunder Bluff >>Fly to Thunder Bluff
step
    .goto Thunder Bluff,61.54,80.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Melor|r
    .turnin 1205 >>Turn in Deadmire
    .target Melor Stonehoof
step
    .goto Thunder Bluff,47.00,49.82
    .fly Orgrimmar >>Fly to Orgrimmar
step
    #completewith next
    .goto Durotar,50.44,13.79,40,0
    >>Go to the Zeppelin tower
step
    .goto Durotar,50.44,13.79
    >>Take the |cRXP_WARN_Zeppelin to Stranglethorn Vale|r (Grom'gol)
]])

RXPGuides.RegisterGuide([[
#forever
#disabledungeons
<< Horde
#name 41-43 Tanaris
#version 1
#group RestedXP Horde 30-45
#next 43-45 Feralas

step
    .goto Stranglethorn Vale,27.17,77.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Seahorn|r
    .turnin 604 >>Turn in The Bloodsail Buccaneers
    .target Fleet Master Seahorn
step
    .goto Stranglethorn Vale,27.78,77.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_MacKinley|r
    .accept 609 >>Accept Voodoo Dues
    .accept 2872 >>Accept Stoley's Debt
    .target "Sea Wolf" MacKinley
step
    .goto Stranglethorn Vale,35.26,51.27
    >>Kill |cRXP_ENEMY_Maury "Club Foot" Wilkins|r, |cRXP_ENEMY_Jon-Jon the Crow|r and |cRXP_ENEMY_Chucky "Ten Thumbs"|r at the |cRXP_ZONE_Ruins of Aboraz|r
    .complete 609,1 --Maury's Clubbed Foot (1)
    .complete 609,2 --Jon-Jon's Golden Spyglass (1)
    .complete 609,3 --Chucky's Huge Ring (1)
    .mob Maury "Club Foot" Wilkins
    .mob Jon-Jon the Crow
    .mob Chucky "Ten Thumbs"
step
    .goto Stranglethorn Vale,51.24,27.68
    >>Kill |cRXP_ENEMY_Mosh'Ogg Ogres|r at the |cRXP_ZONE_Mosh'Ogg Ogre Mound|r. Loot them for |cRXP_LOOT_Maury's Key|r
    .complete 613,1 --Maury's Key (1)
    .mob Mosh'Ogg Mauler
    .mob Mosh'Ogg Shaman
step
    .goto Stranglethorn Vale,27.78,77.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_MacKinley|r
    .turnin 609 >>Turn in Voodoo Dues
    .accept 613 >>Accept Cracking Maury's Foot
    .turnin 613 >>Turn in Cracking Maury's Foot
    .target "Sea Wolf" MacKinley
step
    .goto Stranglethorn Vale,27.00,77.00
    .fly Grom'gol >>Fly to Grom'gol Base Camp
step
    .goto Stranglethorn Vale,38.85,50.35
    >>Take the |cRXP_WARN_Zeppelin to Undercity|r
step
    .goto Undercity,63.25,48.56
    .fly Tarren Mill >>Fly to Tarren Mill
step
    .goto Hillsbrad Foothills,60.14,18.62
    .fly Hammerfall >>Fly to Hammerfall
step
    .goto Arathi Highlands,73.60,32.60
    .fly Undercity >>Fly to Undercity
step
    #completewith GadgetzanFP
    .goto Undercity,63.25,48.56,30,0
    >>Prepare for a long trip: |cRXP_ZONE_Undercity|r to |cRXP_ZONE_Tanaris|r
step
    #label GadgetzanFP
    .goto Tanaris,51.60,25.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bulkrek|r
    .fp Gadgetzan >> Get the Gadgetzan flight path
    .target Bulkrek
step
    .goto Tanaris,52.46,28.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bilgewhizzle|r
    .accept 1690 >>Accept Wastewander Justice
    .target Chief Engineer Bilgewhizzle
step
    .goto Tanaris,52.49,28.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Luglunket|r
    .accept 1707 >>Accept Water Pouch Bounty
    .target Spigot Operator Luglunket
step
    .goto Tanaris,62.77,29.18
    >>Kill |cRXP_ENEMY_Wastewander Bandits|r and |cRXP_ENEMY_Thieves|r. Loot them for |cRXP_LOOT_Water Pouches|r
    .complete 1690,1 --Wastewander Bandit (8)
    .complete 1690,2 --Wastewander Thief (8)
    .complete 1707,1 --Wastewander Water Pouch (5)
    .mob Wastewander Bandit
    .mob Wastewander Thief
step
    .goto Tanaris,52.46,28.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bilgewhizzle|r
    .turnin 1690 >>Turn in Wastewander Justice
    .accept 1691 >>Accept More Wastewander Justice
    .target Chief Engineer Bilgewhizzle
step
    .goto Tanaris,52.49,28.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Luglunket|r
    .turnin 1707 >>Turn in Water Pouch Bounty
    .target Spigot Operator Luglunket
step
    .goto Tanaris,61.83,37.05
    >>Kill |cRXP_ENEMY_Wastewander Rogues|r, |cRXP_ENEMY_Assassins|r and |cRXP_ENEMY_Shadow Mages|r at the |cRXP_ZONE_Waterspring Field|r
    .complete 1691,1 --Wastewander Rogue (8)
    .complete 1691,2 --Wastewander Assassin (8)
    .complete 1691,3 --Wastewander Shadow Mage (8)
    .mob Wastewander Rogue
    .mob Wastewander Assassin
    .mob Wastewander Shadow Mage
step
    .goto Tanaris,52.46,28.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bilgewhizzle|r
    .turnin 1691 >>Turn in More Wastewander Justice
    .target Chief Engineer Bilgewhizzle
step
    #completewith Steamwheedle
    .goto Tanaris,67.06,23.89,60,0
    >>Run east along the road to |cRXP_ZONE_Steamwheedle Port|r
step
    #label Steamwheedle
    .goto Tanaris,67.11,23.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Stoley|r
    .turnin 2872 >>Turn in Stoley's Debt
    .accept 2873 >>Accept Stoley's Shipment
    .target Stoley
step
    .goto Tanaris,67.06,23.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bilgewhizzle|r (the Security Chief)
    .accept 8366 >>Accept Southsea Shakedown
    .target Security Chief Bilgewhizzle
step
    .goto Tanaris,66.82,22.29
    >>Take |cRXP_PICK_WANTED: Andre Firebeard|r from the poster
    .accept 2875 >>Accept WANTED: Andre Firebeard
step
    .goto Tanaris,66.99,22.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yeh'kinya|r
    .accept 3520 >>Accept Screecher Spirits
    >>|cRXP_WARN_Keep this, we complete it in Feralas|r
    .target Yeh'kinya
step
    .goto Tanaris,73.37,47.14
    >>Kill |cRXP_ENEMY_Andre Firebeard|r at |cRXP_ZONE_Lost Rigger Cove|r. Loot his |cRXP_LOOT_Head|r
    >>Loot the |cRXP_PICK_Stolen Cargo|r on the beach
    .complete 2875,1 --Firebeard's Head (1)
    .complete 2873,1 --Stoley's Shipment (1)
    .mob Andre Firebeard
step
    .goto Tanaris,72.41,46.00
    >>Kill |cRXP_ENEMY_Southsea Pirates|r around |cRXP_ZONE_Lost Rigger Cove|r
    .complete 8366,1 --Southsea Pirate (8)
    .complete 8366,2 --Southsea Freebooter (8)
    .complete 8366,3 --Southsea Dock Worker (8)
    .complete 8366,4 --Southsea Swashbuckler (8)
    .mob Southsea Pirate
    .mob Southsea Freebooter
    .mob Southsea Dock Worker
    .mob Southsea Swashbuckler
step
    .goto Tanaris,67.06,23.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bilgewhizzle|r (the Security Chief)
    .turnin 2875 >>Turn in WANTED: Andre Firebeard
    .turnin 8366 >>Turn in Southsea Shakedown
    .target Security Chief Bilgewhizzle
step
    .goto Tanaris,67.11,23.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Stoley|r
    .turnin 2873 >>Turn in Stoley's Shipment
    .accept 2874 >>Accept Deliver to MacKinley
    .target Stoley
step
    .goto Tanaris,51.60,25.40
    .fly Orgrimmar >>Fly to Orgrimmar
step
    .goto Orgrimmar,45.12,63.88
    .fly Thunder Bluff >>Fly to Thunder Bluff
step
    .goto Thunder Bluff,47.00,49.82
    .fly Camp Taurajo >>Fly to Camp Taurajo
step
    #completewith MojacheFP
    .goto The Barrens,44.50,59.20,60,0
    >>Run south through |cRXP_ZONE_The Barrens|r and |cRXP_ZONE_Feralas|r
step
    .goto Feralas,88.90,41.20,50,0
    >>Follow the road west into |cRXP_ZONE_Feralas|r
    #completewith MojacheFP
step
    #label MojacheFP
    .goto Feralas,75.45,44.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shyn|r
    .fp Camp Mojache >> Get the Camp Mojache flight path
    .target Shyn
]])

RXPGuides.RegisterGuide([[
#forever
#disabledungeons
<< Horde
#name 43-45 Feralas
#version 1
#group RestedXP Horde 30-45
#next

step
    .goto Feralas,75.80,43.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rok Orhan|r
    .accept 2975 >>Accept The Ogres of Feralas
    .target Rok Orhan
step
    .goto Feralas,75.70,44.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orwin|r
    .accept 2987 >>Accept Gordunni Cobalt
    .target Orwin Gizzmick
step
    .goto Feralas,74.91,42.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hadoken|r
    .accept 2862 >>Accept War on the Woodpaw
    .target Hadoken Swiftstrider
step
    .goto Feralas,74.42,43.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Uzer'i|r
    .accept 3121 >>Accept A Strange Request
    .target Witch Doctor Uzer'i
step
    .goto Feralas,72.51,46.70
    >>Kill |cRXP_ENEMY_Woodpaw Gnolls|r south of camp. Loot them for |cRXP_LOOT_Manes|r
    .complete 2862,1 --Woodpaw Gnoll Mane (11)
    .mob Woodpaw Mongrel
    .mob Woodpaw Trapper
    .mob Woodpaw Brute
step
    .goto Feralas,76.00,30.41
    >>Kill |cRXP_ENEMY_Gordunni Ogres|r at the |cRXP_ZONE_Ruins of Ravenwind|r
    .complete 2975,1 --Gordunni Ogre (7)
    .complete 2975,2 --Gordunni Ogre Mage (7)
    .complete 2975,3 --Gordunni Brute (7)
    .mob Gordunni Ogre
    .mob Gordunni Ogre Mage
    .mob Gordunni Brute
step
    .goto Feralas,69.50,33.50
    >>Loot the |cRXP_PICK_Gordunni Dirt Mounds|r in the ruins for |cRXP_LOOT_Gordunni Cobalt|r
    .complete 2987,1 --Gordunni Cobalt (4)
step
    .goto Feralas,75.80,43.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rok Orhan|r
    .turnin 2975 >>Turn in The Ogres of Feralas
    .accept 2980 >>Accept The Ogres of Feralas
    .target Rok Orhan
step
    .goto Feralas,75.70,44.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orwin|r
    .turnin 2987 >>Turn in Gordunni Cobalt
    .target Orwin Gizzmick
step
    .goto Feralas,74.91,42.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hadoken|r
    .turnin 2862 >>Turn in War on the Woodpaw
    .accept 2863 >>Accept Alpha Strike
    .target Hadoken Swiftstrider
step
    .goto Feralas,70.37,54.73
    >>Kill the |cRXP_ENEMY_Woodpaw Alphas|r at the |cRXP_ZONE_Woodpaw Hills|r
    .complete 2863,1 --Woodpaw Alpha (5)
    .mob Woodpaw Alpha
step
    .goto Feralas,74.91,42.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hadoken|r
    .turnin 2863 >>Turn in Alpha Strike
    .accept 2902 >>Accept Woodpaw Investigation
    .target Hadoken Swiftstrider
step
    .goto Feralas,71.63,55.92
    >>Loot the |cRXP_PICK_Woodpaw Battle Map|r in the gnoll camp
    .turnin 2902 >>Turn in Woodpaw Investigation
    .accept 2903 >>Accept The Battle Plans
step
    .goto Feralas,74.91,42.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hadoken|r
    .turnin 2903 >>Turn in The Battle Plans
    .accept 7730 >>Accept Zukk'ash Infestation
    .target Hadoken Swiftstrider
step
    .goto Feralas,74.78,60.87
    >>Kill |cRXP_ENEMY_Zukk'ash Insects|r around the |cRXP_ZONE_Hive'|r in the south. Loot them for |cRXP_LOOT_Carapaces|r
    .complete 7730,1 --Zukk'ash Carapace (5)
    .mob Zukk'ash Wasp
    .mob Zukk'ash Worker
    .mob Zukk'ash Tunneler
step
    .goto Feralas,60.62,58.15
    >>Kill |cRXP_ENEMY_Gordunni Maulers|r, |cRXP_ENEMY_Shamans|r and |cRXP_ENEMY_Warlocks|r at the |cRXP_ZONE_Ruins of Isildien|r
    .complete 2980,1 --Gordunni Shaman (7)
    .complete 2980,2 --Gordunni Warlock (7)
    .complete 2980,3 --Gordunni Mauler (7)
    .mob Gordunni Shaman
    .mob Gordunni Warlock
    .mob Gordunni Mauler
step
    .goto Feralas,58.28,58.52
    >>Kill |cRXP_ENEMY_Vale Screechers|r. Use the |cRXP_LOOT_Yeh'kinya's Hammer|r on their corpses
    .complete 3520,1 --Screecher Spirit (3)
    .mob Vale Screecher
    .mob Rogue Vale Screecher
step
    .goto Feralas,75.94,42.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krueg|r
    .accept 2973 >>Accept A New Cloak's Sheen
    .target Krueg Skullsplitter
step
    .goto Feralas,68.02,47.49
    >>Kill |cRXP_ENEMY_Sprite Darters|r. Loot them for |cRXP_LOOT_Darter Wings|r
    .complete 2973,1 --Iridescent Sprite Darter Wing (8)
    .mob Sprite Darter
step
    .goto Feralas,74.91,42.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hadoken|r
    .turnin 7730 >>Turn in Zukk'ash Infestation
    .target Hadoken Swiftstrider
step
    .goto Feralas,75.80,43.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rok Orhan|r
    .turnin 2980 >>Turn in The Ogres of Feralas
    .target Rok Orhan
step
    .goto Feralas,75.94,42.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krueg|r
    .turnin 2973 >>Turn in A New Cloak's Sheen
    .target Krueg Skullsplitter
step
    .goto Feralas,75.45,44.36
    .fly Orgrimmar >>Fly to Orgrimmar
step
    .goto Orgrimmar,49.47,50.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Neeru|r
    .turnin 3121 >>Turn in A Strange Request
    .accept 3122 >>Accept Return to Witch Doctor Uzer'i
    .target Neeru Fireblade
step
    .goto Orgrimmar,45.12,63.88
    .fly Gadgetzan >>Fly to Gadgetzan
step
    .goto Tanaris,66.99,22.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yeh'kinya|r
    .turnin 3520 >>Turn in Screecher Spirits
    .target Yeh'kinya
step
    .goto Tanaris,51.60,25.40
    .fly Orgrimmar >>Fly to Orgrimmar
step
    .goto Orgrimmar,45.12,63.88
    .fly Undercity >>Fly to Undercity
step
    .goto Undercity,63.25,48.56
    .fly Tarren Mill >>Fly to Tarren Mill
step
    .goto Hillsbrad Foothills,60.14,18.62
    .fly Hammerfall >>Fly to Hammerfall
step
    .goto Arathi Highlands,73.60,32.60
    .fly Undercity >>Fly to Undercity
step
    >>|cRXP_WARN_This concludes the Horde 30-45 guide. Continue questing in Tanaris, the Hinterlands and Un'Goro Crater towards level 50!|r
]])
