/* Imoen: efforts to become a wizard */


/* Brandock - Imoen after her look into Tarnesh's spell book */

/* banter started by Brandock: activated by "bg1npc.baf" */
CHAIN
IF WEIGHT #-1
~Global("C#Brandock_ImoenBG1NPC","GLOBAL",1)~ THEN c#brandj brandockimoenbg1npc
@0 DO ~SetGlobal("C#Brandock_ImoenBG1NPC","GLOBAL",2)~
== c#brandj IF ~Global("X#IMGetsSpellbook","GLOBAL",1)~ THEN @1
== %IMOEN_JOINED% @2
== c#brandj @3
== %IMOEN_JOINED% @4
== c#brandj @5
EXIT

/* Brandock - Imoen "teach me magic " follow up */


CHAIN
IF WEIGHT #-1 
~%BG1_BEFORE_TRANSITION%
CombatCounter(0) !See([ENEMY]) 
OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2)
See("C#Brandock") See(Player1)
!StateCheck("C#Brandock",CD_STATE_NOTVALID)
!StateCheck(Myself,CD_STATE_NOTVALID)
InParty(Myself)
Global("C#Brandock_ImoenBG1NPC","GLOBAL",2)~ THEN %IMOEN_BANTER% brandockimoenbg1npc_02
@6 DO ~SetGlobal("C#Brandock_ImoenBG1NPC","GLOBAL",3)~
== c#brandJ @7
EXIT


/* Brandock - Imoen after she created her tome */

CHAIN
IF WEIGHT #-1
~Global("C#Brandock_ImoenBG1NPCTome","GLOBAL",1)~ THEN c#brandj brandockimoenbg1npc_03
@8 DO ~SetGlobal("C#Brandock_ImoenBG1NPCTome","GLOBAL",2)~
== %IMOEN_JOINED% @9
== c#brandJ @10
== %IMOEN_JOINED% @11
== c#brandJ IF ~OR(30)
AreaCheck("%FireLeafForest%") //Cloud Peaks - Amnish soil
AreaCheck("%Nashkel%")
AreaCheck("%NashkelMines%")
AreaCheck("%NashkelMines_L1%")
AreaCheck("%NashkelMines_L2%")
AreaCheck("%NashkelMines_L3%")
AreaCheck("%NashkelMines_L4%")
AreaCheck("%NashkelMines_MulaheysCave%")
AreaCheck("%NashkelMines_Cabin%")
AreaCheck("%Nashkel_Inn%")
AreaCheck("%Nashkel_TempleofHelm%")
AreaCheck("%Nashkel_Store%")
AreaCheck("%Nashkel_ManorHouse_L1%")
AreaCheck("%Nashkel_ManorHouse_L2%")
AreaCheck("%Nashkel_JosephsHouse%")
AreaCheck("%Nashkel_House1%")
AreaCheck("%Nashkel_House2%")
AreaCheck("%Nashkel_BelchingDragonTavern%")
AreaCheck("%Nashkel_Garrison%")
AreaCheck("%NashkelCarnival%")
AreaCheck("%NashkelCarnival_ArmorTent%")
AreaCheck("%NashkelCarnival_LotusTent%")
AreaCheck("%NashkelCarnival_VitiaresTent%")
AreaCheck("%NashkelCarnival_GamblingTent%")
AreaCheck("%NashkelCarnival_PotionTent%")
AreaCheck("%NashkelCarnival_ZordralsTent%")
AreaCheck("%NashkelCarnival_MagicItemsTent%")
AreaCheck("%NashkelCarnival_MeleeWeaponsTent%")
AreaCheck("%NashkelCarnival_RangedWeaponsTent%")
AreaCheck("%GibberlingMountains%") //East of Nashkel, would be Amnish, too?
~ THEN @12
== c#brandJ IF ~
!AreaCheck("%FireLeafForest%") //Cloud Peaks - Amnish soil
!AreaCheck("%Nashkel%")
!AreaCheck("%NashkelMines%")
!AreaCheck("%NashkelMines_L1%")
!AreaCheck("%NashkelMines_L2%")
!AreaCheck("%NashkelMines_L3%")
!AreaCheck("%NashkelMines_L4%")
!AreaCheck("%NashkelMines_MulaheysCave%")
!AreaCheck("%NashkelMines_Cabin%")
!AreaCheck("%Nashkel_Inn%")
!AreaCheck("%Nashkel_TempleofHelm%")
!AreaCheck("%Nashkel_Store%")
!AreaCheck("%Nashkel_ManorHouse_L1%")
!AreaCheck("%Nashkel_ManorHouse_L2%")
!AreaCheck("%Nashkel_JosephsHouse%")
!AreaCheck("%Nashkel_House1%")
!AreaCheck("%Nashkel_House2%")
!AreaCheck("%Nashkel_BelchingDragonTavern%")
!AreaCheck("%Nashkel_Garrison%")
!AreaCheck("%NashkelCarnival%")
!AreaCheck("%NashkelCarnival_ArmorTent%")
!AreaCheck("%NashkelCarnival_LotusTent%")
!AreaCheck("%NashkelCarnival_VitiaresTent%")
!AreaCheck("%NashkelCarnival_GamblingTent%")
!AreaCheck("%NashkelCarnival_PotionTent%")
!AreaCheck("%NashkelCarnival_ZordralsTent%")
!AreaCheck("%NashkelCarnival_MagicItemsTent%")
!AreaCheck("%NashkelCarnival_MeleeWeaponsTent%")
!AreaCheck("%NashkelCarnival_RangedWeaponsTent%")
!AreaCheck("%GibberlingMountains%") //East of Nashkel, would be Amnish, too?
~ THEN @13
EXIT