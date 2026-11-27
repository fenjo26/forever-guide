-- FuntGuides: custom Forever quests (id >= 60000), generated from the decoded
-- QuestieDB baked store. v2: quests are clustered by camp like the original
-- WoW Forever guides — one trip picks up everything at a spot, clears nearby
-- targets, and hands in what is handed in there.
local faction = UnitFactionGroup("player")
if faction == "Alliance" then return end

local L = GetLocale() if L and RXP.enabledLocale[L] then return end

RXPGuides.RegisterGuide([[
#classic
#forever
<< Horde
#name Custom Forever 30-36 Desolace
#version 2
#group FuntGuides - Forever Custom
#next

step
    .goto Desolace,25.32,67.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aka'rai|r (level 28+)
    .accept 97265 >>Accept Hate the Hatefury
    .target Aka'rai

step
    .goto Desolace,25.32,67.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHand in at the camp
    .turnin 97265 >>Turn in Hate the Hatefury

step
    .goto Desolace,62.33,38.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bibbly F'utzbuckle|r (level 30+)
    .accept 79235 >>Accept On the Lam
    .target Bibbly F'utzbuckle

step
    .goto Desolace,62.33,38.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHand in at the camp
    .turnin 79229 >>Turn in Highway Robbery

step
    .goto Desolace,26.98,77.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tokal|r (level 30+)
    .accept 79236 >>Accept Cherry for Your Thoughts?
    .accept 79242 >>Accept No Honor Among Thieves
    .target Tokal

step
    .goto Desolace,74.97,68.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Warug|r (level 30+)
    .accept 92743 >>Accept A Conqueror's Crown
    .target Warug

step
    .goto Desolace,74.97,68.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHand in at the camp
    .turnin 92743 >>Turn in A Conqueror's Crown

step
    .goto Desolace,70.47,70.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mirda|r (level 30+)
    .accept 92754 >>Accept A New Need for Shadow Protection
    .target Mirda

step
    .goto Desolace,70.47,70.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHand in at the camp
    .turnin 93196 >>Turn in Khan Jehn

step
    .goto Desolace,69.83,77.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Halea|r, |cRXP_FRIENDLY_Grolkar|r (level 30+)
    .accept 92755 >>Accept Mysterious Mysticism
    .accept 92818 >>Accept Big, No, MASSIVE Iron Axes
    .target Halea
    .target Grolkar

step
    .goto Desolace,69.83,77.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHand in at the camp
    .turnin 92755 >>Turn in Mysterious Mysticism
    .turnin 92818 >>Turn in Big, No, MASSIVE Iron Axes
    .turnin 94872 >>Turn in Buying Friendship: Magram

step
    .goto Desolace,35.68,92.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Molkar|r (level 30+)
    .accept 92814 >>Accept I Need a Tailor
    .target Molkar

step
    .goto Desolace,35.68,92.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHand in at the camp
    .turnin 92814 >>Turn in I Need a Tailor
    .turnin 94873 >>Turn in Buying Friendship: Gelkis

step
    .goto Desolace,34.46,86.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talra|r (level 30+)
    .accept 92817 >>Accept Leather Technique
    .target Talra

step
    .goto Desolace,34.46,86.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHand in at the camp
    .turnin 92817 >>Turn in Leather Technique

step
    .goto Desolace,36.22,79.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Uthek the Wise|r (level 30+)
    .accept 93045 >>Accept Test Your Theory
    .accept 93044 >>Accept A Cleansing Cry
    .target Uthek the Wise

step
    .goto Desolace,36.22,79.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHand in at the camp
    .turnin 93044 >>Turn in A Cleansing Cry

step
    .goto Desolace,56.29,59.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gurda Wildmane|r (level 30+)
    .accept 93225 >>Accept Carved Centaur Totems
    .accept 94872 >>Accept Buying Friendship: Magram
    .accept 94873 >>Accept Buying Friendship: Gelkis
    .target Gurda Wildmane

step
    .goto Desolace,56.29,59.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHand in at the camp
    .turnin 93225 >>Turn in Carved Centaur Totems

step
    .goto Desolace,38.88,27.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Azore Aldamort|r (level 30+)
    .accept 93465 >>Accept Notes on Draenethyst
    .accept 93678 >>Accept Abridged Notes on Draenethyst
    .target Azore Aldamort

step
    .goto Desolace,38.88,27.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHand in at the camp
    .turnin 93465 >>Turn in Notes on Draenethyst

step
    .goto Desolace,65.4,84.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orgrul|r (level 35+)
    .accept 93196 >>Accept Khan Jehn
    .target Orgrul

step
    .goto Desolace,43.48,78.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Umarak|r (level 35+)
    .accept 96222 >>Accept Khan Hratha
    .target Umarak

step
    .goto Desolace,43.48,78.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHand in at the camp
    .turnin 96222 >>Turn in Khan Hratha

step
    .goto Desolace,76.36,21.02
    >>Kill |cRXP_ENEMY_Hatefury Trickster|r (|cRXP_WARN_L31-32|r)
    .complete 97265,1 --for Hate the Hatefury
    .mob Hatefury Trickster

step
    .goto Desolace,75.59,18.93
    >>Kill |cRXP_ENEMY_Hatefury Hellcaller|r (|cRXP_WARN_L32-33|r) |cRXP_WARN_[HARD — skip if it hurts]|r
    .complete 97265,1 --for Hate the Hatefury
    .mob Hatefury Hellcaller

step
    .goto Desolace,76.29,20.75
    >>Kill |cRXP_ENEMY_Hatefury Shadowstalker|r (|cRXP_WARN_L32-33|r) |cRXP_WARN_[HARD — skip if it hurts]|r
    .complete 97265,1 --for Hate the Hatefury
    .mob Hatefury Shadowstalker

step
    .goto Desolace,75.29,19.57
    >>Kill |cRXP_ENEMY_Hatefury Felsworn|r (|cRXP_WARN_L31-32|r)
    .complete 97265,1 --for Hate the Hatefury
    .mob Hatefury Felsworn

step
    .goto Desolace,74.7,17.82
    >>Kill |cRXP_ENEMY_Hatefury Rogue|r (|cRXP_WARN_L31-32|r)
    .complete 97265,1 --for Hate the Hatefury
    .mob Hatefury Rogue

step
    >>Level 30+:|cRXP_WARN_Quest starts from an object (id 417353)|r
    .accept 79229 >>Accept Highway Robbery

step
    >>Level 36+:|cRXP_WARN_Quest starts from an object (id 658115)|r
    .accept 94895 >>Accept Lost Shipping Crate

step
    .goto Stranglethorn Vale,26.98,77.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tokal|r
    .turnin 79235 >>Turn in On the Lam
    .target Tokal

step
    .goto Stranglethorn Vale,26.98,77.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tokal|r
    .turnin 79236 >>Turn in Cherry for Your Thoughts?
    .target Tokal

step
    >>|cRXP_WARN_Turn in No Honor Among Thieves at its giver|r
    .turnin 79242 >>Turn in No Honor Among Thieves

step
    >>|cRXP_WARN_Turn in A New Need for Shadow Protection at its giver|r
    .turnin 92754 >>Turn in A New Need for Shadow Protection

step
    >>|cRXP_WARN_Turn in Test Your Theory at its giver|r
    .turnin 93045 >>Turn in Test Your Theory

step
    .goto Swamp of Sorrows,25.98,31.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magtoor|r
    .turnin 93678 >>Turn in Abridged Notes on Draenethyst
    .target Magtoor

step
    >>|cRXP_WARN_Turn in Lost Shipping Crate at its giver|r
    .turnin 94895 >>Turn in Lost Shipping Crate

]])

RXPGuides.RegisterGuide([[
#classic
#forever
<< Horde
#name Custom Forever 32-36 Arathi Highlands
#version 2
#group FuntGuides - Forever Custom
#next

step
    .goto Arathi Highlands,73.85,36.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Doctor Gregory Victor|r, |cRXP_FRIENDLY_Tor'gan|r (level 30+)
    .accept 92519 >>Accept Ward Restocking
    .accept 97539 >>Accept Silky Sutures
    .accept 95143 >>Accept Finding Tan'jani
    .target Doctor Gregory Victor
    .target Tor'gan

step
    .goto Arathi Highlands,73.85,36.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHand in at the camp
    .turnin 92519 >>Turn in Ward Restocking
    .turnin 97539 >>Turn in Silky Sutures

step
    .goto Arathi Highlands,27,57.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Groundskeeper Lomar|r (level 32+)
    .accept 92867 >>Accept Ground to Keep
    .target Groundskeeper Lomar

step
    .goto Arathi Highlands,27.25,63.75
    >>Kill |cRXP_ENEMY_Syndicate Conjuror|r (|cRXP_WARN_L35-36|r)
    .complete 92867,1 --for Ground to Keep
    .mob Syndicate Conjuror

step
    .goto Arathi Highlands,27.65,63.79
    >>Kill |cRXP_ENEMY_Syndicate Prowler|r (|cRXP_WARN_L36-37|r) |cRXP_WARN_[HARD — skip if it hurts]|r
    .complete 92867,1 --for Ground to Keep
    .mob Syndicate Prowler

step
    .goto Arathi Highlands,27,57.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHand in at the camp
    .turnin 92867 >>Turn in Ground to Keep

step
    .goto Arathi Highlands,21.68,66.54
    >>Kill |cRXP_ENEMY_Boulderfist Mauler|r (|cRXP_WARN_L37-38|r) |cRXP_WARN_[HARD — skip if it hurts]|r
    .complete 92867,1 --for Ground to Keep
    .mob Boulderfist Mauler

step
    .goto Arathi Highlands,23.75,65.51
    >>Kill |cRXP_ENEMY_Witherbark Berserker|r (|cRXP_WARN_L36-37|r) |cRXP_WARN_[HARD — skip if it hurts]|r
    .complete 92867,1 --for Ground to Keep
    .mob Witherbark Berserker

step
    >>Level 32+:|cRXP_WARN_Quest starts from an item (id 213422)|r
    .accept 79624 >>Accept Anyone Can Cook

step
    .goto Arathi Highlands,57.68,74.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Skonk|r
    .turnin 79624 >>Turn in Anyone Can Cook
    .target Skonk

step
    >>|cRXP_WARN_Turn in Finding Tan'jani at its giver|r
    .turnin 95143 >>Turn in Finding Tan'jani

]])

RXPGuides.RegisterGuide([[
#classic
#forever
<< Horde
#name Custom Forever 32-48 Dustwallow Marsh
#version 2
#group FuntGuides - Forever Custom
#next

step
    .goto Dustwallow Marsh,55.44,26.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Swamp Eye" Jarl|r (level 30+)
    .accept 81570 >>Accept Jarl Needs a Blade
    .target "Swamp Eye" Jarl

step
    .goto Dustwallow Marsh,55.44,26.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHand in at the camp
    .turnin 81570 >>Turn in Jarl Needs a Blade

step
    .goto Dustwallow Marsh,35.8,30.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krak|r, |cRXP_FRIENDLY_Nazeer Bloodpike|r (level 38+)
    .accept 98192 >>Accept Skin Careful, Skin Sharp
    .accept 95284 >>Accept The Elite of the Elite
    .target Krak
    .target Nazeer Bloodpike

step
    .goto Dustwallow Marsh,35.8,30.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHand in at the camp
    .turnin 98192 >>Turn in Skin Careful, Skin Sharp
    .turnin 95283 >>Turn in The Missing Kor'kron

step
    .goto Dustwallow Marsh,34.28,39.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eitrigg|r (level 48+)
    .accept 95283 >>Accept The Missing Kor'kron
    .target Eitrigg

step
    .goto Dustwallow Marsh,70.3,18.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergeant Ulka|r (level 48+)
    .accept 95285 >>Accept Right Place, Wrong Time
    .target Sergeant Ulka

step
    .goto Dustwallow Marsh,70.3,18.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHand in at the camp
    .turnin 95284 >>Turn in The Elite of the Elite
    .turnin 95285 >>Turn in Right Place, Wrong Time

]])

RXPGuides.RegisterGuide([[
#classic
#forever
<< Horde
#name Custom Forever 30-55 Stranglethorn Vale
#version 2
#group FuntGuides - Forever Custom
#next

step
    .goto Stranglethorn Vale,32.3,28.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kin'weelay|r, |cRXP_FRIENDLY_Commander Aggro'gosh|r, |cRXP_FRIENDLY_Gemmil|r (level 30+)
    .accept 95748 >>Accept The Gurubashi Legends of Old
    .accept 95770 >>Accept Locating the Lost City
    .accept 95773 >>Accept Enemies in the Water
    .accept 96078 >>Accept A Tale Spun Around the Fire
    .accept 97453 >>Accept Weed Whacked
    .accept 95141 >>Accept Report to Rog'mar
    .accept 97386 >>Accept The Offense of Grom'gol
    .target Kin'weelay
    .target Commander Aggro'gosh
    .target Gemmil

step
    .goto Stranglethorn Vale,34.35,28.79
    >>Kill |cRXP_ENEMY_Carnivorous Weed|r (|cRXP_WARN_L36-38|r) |cRXP_WARN_[HARD — skip if it hurts]|r
    .complete 97453,1 --for Weed Whacked
    .mob Carnivorous Weed

step
    .goto Stranglethorn Vale,32.3,28.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHand in at the camp
    .turnin 95748 >>Turn in The Gurubashi Legends of Old
    .turnin 95770 >>Turn in Locating the Lost City
    .turnin 95773 >>Turn in Enemies in the Water
    .turnin 97453 >>Turn in Weed Whacked
    .turnin 97386 >>Turn in The Offense of Grom'gol

step
    .goto Stranglethorn Vale,44.27,7.9
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wendel Mathers|r (level 30+)
    .accept 97048 >>Accept Returning to Port
    .target Wendel Mathers

step
    .goto Stranglethorn Vale,23.46,12.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zimmix Sputterspark|r (level 30+)
    .accept 97331 >>Accept Zimmix's Great Escape
    .target Zimmix Sputterspark

step
    .goto Stranglethorn Vale,27.44,74.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wharfmaster Lozgil|r, |cRXP_FRIENDLY_Pix Xizzix|r (level 36+)
    .accept 97332 >>Accept Twice Misplaced Trust
    .accept 83934 >>Accept Show Me the Money!
    .target Wharfmaster Lozgil
    .target Pix Xizzix

step
    .goto Stranglethorn Vale,27.44,74.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHand in at the camp
    .turnin 97048 >>Turn in Returning to Port
    .turnin 97328 >>Turn in Anything of Value
    .turnin 97331 >>Turn in Zimmix's Great Escape
    .turnin 83934 >>Turn in Show Me the Money!

step
    .goto Stranglethorn Vale,51.44,27.94
    >>Kill |cRXP_ENEMY_Mosh'Ogg Spellcrafter|r (|cRXP_WARN_L43-44|r) |cRXP_WARN_[HARD — skip if it hurts]|r
    .complete 97386,1 --for The Offense of Grom'gol
    .mob Mosh'Ogg Spellcrafter

step
    .goto Stranglethorn Vale,48.82,28.86
    >>Kill |cRXP_ENEMY_Mosh'Ogg Warmonger|r (|cRXP_WARN_L41-42|r)
    .complete 97386,1 --for The Offense of Grom'gol
    .mob Mosh'Ogg Warmonger

step
    .goto Stranglethorn Vale,51.24,27.68
    >>Kill |cRXP_ENEMY_Mosh'Ogg Mauler|r (|cRXP_WARN_L43-44|r) |cRXP_WARN_[HARD — skip if it hurts]|r
    .complete 97386,1 --for The Offense of Grom'gol
    .mob Mosh'Ogg Mauler

step
    .goto Stranglethorn Vale,50.75,28.79
    >>Kill |cRXP_ENEMY_Mosh'Ogg Shaman|r (|cRXP_WARN_L43-44|r) |cRXP_WARN_[HARD — skip if it hurts]|r
    .complete 97386,1 --for The Offense of Grom'gol
    .mob Mosh'Ogg Shaman

step
    >>Level 30+:|cRXP_WARN_Quest starts from an object (id 661516)|r
    .accept 97328 >>Accept Anything of Value

step
    >>|cRXP_WARN_Turn in A Tale Spun Around the Fire at its giver|r
    .turnin 96078 >>Turn in A Tale Spun Around the Fire

step
    >>|cRXP_WARN_Turn in Report to Rog'mar at its giver|r
    .turnin 95141 >>Turn in Report to Rog'mar

step
    >>|cRXP_WARN_Turn in Twice Misplaced Trust at its giver|r
    .turnin 97332 >>Turn in Twice Misplaced Trust

]])

RXPGuides.RegisterGuide([[
#classic
#forever
<< Horde
#name Custom Forever 30-30 Alterac Mountains
#version 2
#group FuntGuides - Forever Custom
#next

step
    .goto Alterac Mountains,61.6,20.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magus Wordeen Voidglare|r (level 30+)
    .accept 92434 >>Accept Blood in the Streets
    .accept 93680 >>Accept Key to the City
    .target Magus Wordeen Voidglare

step
    .goto Alterac Mountains,14.3,59.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Image of Archmage Modera|r
    .turnin 92434 >>Turn in Blood in the Streets
    .target Image of Archmage Modera

step
    .goto Hillsbrad Foothills,61.6,20.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magus Wordeen Voidglare|r
    .turnin 93680 >>Turn in Key to the City
    .target Magus Wordeen Voidglare

]])

RXPGuides.RegisterGuide([[
#classic
#forever
<< Horde
#name Custom Forever 30-30 Swamp of Sorrows
#version 2
#group FuntGuides - Forever Custom
#next

step
    .goto Swamp of Sorrows,25.74,31.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Karana|r, |cRXP_FRIENDLY_Pelluk|r, |cRXP_FRIENDLY_Magtoor|r (level 30+)
    .accept 93429 >>Accept Blood of My Blood
    .accept 93430 >>Accept Taking the Bait Back
    .accept 93464 >>Accept The Visiting Mage
    .target Karana
    .target Pelluk
    .target Magtoor

step
    .goto Swamp of Sorrows,25.74,31.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHand in at the camp
    .turnin 93429 >>Turn in Blood of My Blood
    .turnin 93430 >>Turn in Taking the Bait Back
    .turnin 93663 >>Turn in Lost in Transit

step
    .goto Swamp of Sorrows,44.7,57.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dar|r (level 30+)
    .accept 93663 >>Accept Lost in Transit
    .target Dar

step
    .goto Desolace,38.88,27.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Azore Aldamort|r
    .turnin 93464 >>Turn in The Visiting Mage
    .target Azore Aldamort

]])

RXPGuides.RegisterGuide([[
#classic
#forever
<< Horde
#name Custom Forever 36-36 Feralas
#version 2
#group FuntGuides - Forever Custom
#next

step
    .goto Feralas,74.91,44.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Blaise Montgomery|r (level 36+)
    .accept 92878 >>Accept Lost for Words
    .target Blaise Montgomery

step
    .goto Feralas,74.91,44.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHand in at the camp
    .turnin 92878 >>Turn in Lost for Words

]])

RXPGuides.RegisterGuide([[
#classic
#forever
<< Horde
#name Custom Forever 36-36 Thousand Needles
#version 2
#group FuntGuides - Forever Custom
#next

step
    >>Level 36+:|cRXP_WARN_Quest starts from an object (id 658117)|r
    .accept 94930 >>Accept Lost Shipping Crate

step
    >>|cRXP_WARN_Turn in Lost Shipping Crate at its giver|r
    .turnin 94930 >>Turn in Lost Shipping Crate

]])

RXPGuides.RegisterGuide([[
#classic
#forever
<< Horde
#name Custom Forever 38-40 Tanaris
#version 2
#group FuntGuides - Forever Custom
#next

step
    .goto Tanaris,51.81,27.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Fizzgrimble|r, |cRXP_FRIENDLY_Quinn|r (level 36+)
    .accept 95144 >>Accept Overseas Delivery
    .accept 97534 >>Accept Gritty Business
    .target Innkeeper Fizzgrimble
    .target Quinn

step
    .goto Tanaris,51.81,27.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHand in at the camp
    .turnin 97534 >>Turn in Gritty Business

step
    .goto Tanaris,67.06,23.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Security Chief Bilgewhizzle|r (level 40+)
    .accept 97530 >>Accept Dunemaul Dues
    .target Security Chief Bilgewhizzle

step
    .goto Tanaris,67.06,23.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHand in at the camp
    .turnin 97530 >>Turn in Dunemaul Dues

step
    >>|cRXP_WARN_Turn in Overseas Delivery at its giver|r
    .turnin 95144 >>Turn in Overseas Delivery

]])

RXPGuides.RegisterGuide([[
#classic
#forever
<< Horde
#name Custom Forever 42-58 Orgrimmar
#version 2
#group FuntGuides - Forever Custom
#next

step
    .goto Orgrimmar,69.39,12.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ogunaro Wolfrunner|r, |cRXP_FRIENDLY_Kildar|r (level 40+)
    .accept 96994 >>Accept Your First Riding Wolf
    .accept 97194 >>Accept Learning to Ride
    .target Ogunaro Wolfrunner
    .target Kildar

step
    .goto Orgrimmar,69.65,12.38
    >>Kill |cRXP_ENEMY_Brown Riding Wolf|r (|cRXP_WARN_L1-1|r)
    .complete 96994,1 --for Your First Riding Wolf
    .mob Brown Riding Wolf

step
    .goto Orgrimmar,69.61,12.13
    >>Kill |cRXP_ENEMY_Dire Riding Wolf|r (|cRXP_WARN_L1-1|r)
    .complete 96994,1 --for Your First Riding Wolf
    .mob Dire Riding Wolf

step
    .goto Orgrimmar,69.52,12.61
    >>Kill |cRXP_ENEMY_Timber Riding Wolf|r (|cRXP_WARN_L1-1|r)
    .complete 96994,1 --for Your First Riding Wolf
    .mob Timber Riding Wolf

step
    .goto Orgrimmar,69.48,11.92
    >>Kill |cRXP_ENEMY_Black Riding Wolf|r (|cRXP_WARN_L1-1|r)
    .complete 96994,1 --for Your First Riding Wolf
    .mob Black Riding Wolf

step
    .goto Orgrimmar,69.39,12.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHand in at the camp
    .turnin 96994 >>Turn in Your First Riding Wolf
    .turnin 97194 >>Turn in Learning to Ride

step
    .goto Orgrimmar,22.26,51.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ag'tor Bloodfist|r (level 44+)
    .accept 91531 >>Accept Revenge Exacted
    .target Ag'tor Bloodfist

step
    .goto Orgrimmar,34.91,38.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mokvar|r (level 58+)
    .accept 84155 >>Accept An Earnest Proposition
    .accept 84156 >>Accept An Earnest Proposition
    .accept 84157 >>Accept An Earnest Proposition
    .accept 84158 >>Accept An Earnest Proposition
    .accept 84159 >>Accept An Earnest Proposition
    .accept 84160 >>Accept An Earnest Proposition
    .accept 84161 >>Accept An Earnest Proposition
    .accept 84162 >>Accept An Earnest Proposition
    .target Mokvar

step
    .goto Orgrimmar,34.91,38.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHand in at the camp
    .turnin 84155 >>Turn in An Earnest Proposition
    .turnin 84156 >>Turn in An Earnest Proposition
    .turnin 84157 >>Turn in An Earnest Proposition
    .turnin 84158 >>Turn in An Earnest Proposition
    .turnin 84159 >>Turn in An Earnest Proposition
    .turnin 84160 >>Turn in An Earnest Proposition
    .turnin 84161 >>Turn in An Earnest Proposition
    .turnin 84162 >>Turn in An Earnest Proposition

step
    .goto Orgrimmar,75.23,34.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Belgrom Rockmaul|r
    .turnin 91531 >>Turn in Revenge Exacted
    .target Belgrom Rockmaul

]])

RXPGuides.RegisterGuide([[
#classic
#forever
<< Horde
#name Custom Forever 40-40 Tirisfal Glades
#version 2
#group FuntGuides - Forever Custom
#next

step
    .goto Tirisfal Glades,59.97,52.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zachariah Post|r, |cRXP_FRIENDLY_Velma Warnam|r (level 40+)
    .accept 96997 >>Accept A Steed in Death as They Were in Life
    .accept 97203 >>Accept Learning to Ride
    .target Zachariah Post
    .target Velma Warnam

step
    .goto Tirisfal Glades,59.95,52.64
    >>Kill |cRXP_ENEMY_Red Skeletal Horse|r (|cRXP_WARN_L1-1|r)
    .complete 96997,1 --for A Steed in Death as They Were in Life
    .mob Red Skeletal Horse

step
    .goto Tirisfal Glades,59.88,52.57
    >>Kill |cRXP_ENEMY_Brown Skeletal Horse|r (|cRXP_WARN_L1-1|r)
    .complete 96997,1 --for A Steed in Death as They Were in Life
    .mob Brown Skeletal Horse

step
    .goto Tirisfal Glades,59.91,52.75
    >>Kill |cRXP_ENEMY_Blue Skeletal Horse|r (|cRXP_WARN_L1-1|r)
    .complete 96997,1 --for A Steed in Death as They Were in Life
    .mob Blue Skeletal Horse

step
    .goto Tirisfal Glades,59.95,52.35
    >>Kill |cRXP_ENEMY_Black Skeletal Horse|r (|cRXP_WARN_L1-1|r)
    .complete 96997,1 --for A Steed in Death as They Were in Life
    .mob Black Skeletal Horse

step
    .goto Tirisfal Glades,59.97,52.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHand in at the camp
    .turnin 96997 >>Turn in A Steed in Death as They Were in Life
    .turnin 97203 >>Turn in Learning to Ride

]])

RXPGuides.RegisterGuide([[
#classic
#forever
<< Horde
#name Custom Forever 45-45 Blasted Lands
#version 2
#group FuntGuides - Forever Custom
#next

step
    .goto Blasted Lands,48.47,45.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zevrost|r (level 44+)
    .accept 91548 >>Accept Vek'zol
    .target Zevrost

step
    .goto Blasted Lands,50.64,14.3
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bloodmage Lynnore|r (level 45+)
    .accept 81917 >>Accept Chains That Bind
    .accept 81919 >>Accept Brought to Heel
    .target Bloodmage Lynnore

step
    .goto Blasted Lands,50.64,14.3
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHand in at the camp
    .turnin 81917 >>Turn in Chains That Bind
    .turnin 81919 >>Turn in Brought to Heel

step
    .goto Orgrimmar,48.47,45.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zevrost|r
    .turnin 91548 >>Turn in Vek'zol
    .target Zevrost

]])

RXPGuides.RegisterGuide([[
#classic
#forever
<< Horde
#name Custom Forever 45-50 Azshara
#version 2
#group FuntGuides - Forever Custom
#next

step
    .goto Azshara,59.52,31.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sin'dorei Tome of Summoning|r (level 44+)
    .accept 91497 >>Accept Seals of the Sin'dorei
    .accept 91500 >>Accept An Explosive Gambit
    .accept 91538 >>Accept Sin'dorei Tome of Summoning
    .target Sin'dorei Tome of Summoning

step
    .goto Azshara,59.52,31.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHand in at the camp
    .turnin 91497 >>Turn in Seals of the Sin'dorei

step
    .goto Azshara,22.22,51.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jediga|r, |cRXP_FRIENDLY_Kurll|r, |cRXP_FRIENDLY_Izvi Gildfizz|r (level 44+)
    .accept 91547 >>Accept Sin'dorei Tome of Summoning
    .accept 91488 >>Accept Home on the Range
    .accept 91568 >>Accept Long Walks on the Beach
    .accept 91569 >>Accept Blue Gold
    .accept 91608 >>Accept Gettin' Buzzed
    .accept 91610 >>Accept Winter Frontier Fishery
    .accept 91685 >>Accept Ley of the Land
    .accept 92346 >>Accept Beneath Nordrassil
    .accept 91611 >>Accept Deadliest Catch
    .target Jediga
    .target Kurll
    .target Izvi Gildfizz

step
    .goto Azshara,22.22,51.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHand in at the camp
    .turnin 91500 >>Turn in An Explosive Gambit
    .turnin 91538 >>Turn in Sin'dorei Tome of Summoning
    .turnin 91734 >>Turn in Remote Contact
    .turnin 91735 >>Turn in Remote Contact
    .turnin 91737 >>Turn in Remote Contact
    .turnin 91488 >>Turn in Home on the Range
    .turnin 91568 >>Turn in Long Walks on the Beach
    .turnin 91569 >>Turn in Blue Gold
    .turnin 91608 >>Turn in Gettin' Buzzed
    .turnin 91610 >>Turn in Winter Frontier Fishery
    .turnin 91685 >>Turn in Ley of the Land
    .turnin 91611 >>Turn in Deadliest Catch

step
    .goto Azshara,54.81,76.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Andron Gant|r (level 44+)
    .accept 91734 >>Accept Remote Contact
    .target Andron Gant

step
    .goto Azshara,55.52,34.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jes'rimon|r (level 44+)
    .accept 91735 >>Accept Remote Contact
    .target Jes'rimon

step
    .goto Azshara,69.85,30.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magatha Grimtotem|r (level 44+)
    .accept 91737 >>Accept Remote Contact
    .target Magatha Grimtotem

step
    .goto Orgrimmar,48.47,45.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zevrost|r
    .turnin 91547 >>Turn in Sin'dorei Tome of Summoning
    .target Zevrost

step
    .goto Thunder Bluff,75.65,31.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nara Wildmane|r
    .turnin 92346 >>Turn in Beneath Nordrassil
    .target Nara Wildmane

]])

RXPGuides.RegisterGuide([[
#classic
#forever
<< Horde
#name Custom Forever 45-45 Badlands
#version 2
#group FuntGuides - Forever Custom
#next

step
    >>Level 45+:|cRXP_WARN_Quest starts from an object (id 441061)|r
    .accept 81900 >>Accept The Burning Beast

step
    .goto Blasted Lands,50.64,14.3
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bloodmage Lynnore|r
    .turnin 81900 >>Turn in The Burning Beast
    .target Bloodmage Lynnore

]])

RXPGuides.RegisterGuide([[
#classic
#forever
<< Horde
#name Custom Forever 45-45 The Hinterlands
#version 2
#group FuntGuides - Forever Custom
#next

step
    .goto The Hinterlands,77.95,77.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Qujo|r (level 45+)
    .accept 98203 >>Accept Witch Doctor Ti'ik
    .target Qujo

step
    .goto The Hinterlands,77.95,77.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHand in at the camp
    .turnin 98203 >>Turn in Witch Doctor Ti'ik

]])

RXPGuides.RegisterGuide([[
#classic
#forever
<< Horde
#name Custom Forever 48-48 Felwood
#version 2
#group FuntGuides - Forever Custom
#next

step
    >>Level 48+:|cRXP_WARN_Quest starts from an object (id 661778)|r
    .accept 86612 >>Accept Stag Lord's Bauble

step
    .goto Felwood,34.21,52.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Winna Hazzard|r
    .turnin 86612 >>Turn in Stag Lord's Bauble
    .target Winna Hazzard

]])

RXPGuides.RegisterGuide([[
#classic
#forever
<< Horde
#name Custom Forever 55-55 Western Plaguelands
#version 2
#group FuntGuides - Forever Custom
#next

step
    .goto Western Plaguelands,83.19,68.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Argent Officer Garush|r (level 55+)
    .accept 97319 >>Accept A Cousin Abroad
    .target Argent Officer Garush

step
    >>|cRXP_WARN_Turn in A Cousin Abroad at its giver|r
    .turnin 97319 >>Turn in A Cousin Abroad

]])
