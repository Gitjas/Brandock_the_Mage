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
@6 DO ~SetGlobal("C#Brandock_ImoenBG1NPC","GLOBAL",3)
RealSetGlobalTimer("C#BrandockNPCBanterTimer","GLOBAL",3600)~
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
== c#brandJ @14 /* ~You don't... Ah, Imoen, this won't do. You are scaring me! Let me have a look at it...~ */
= @15 /* ~Oh, wow! You created this? This is not one of your tricks? Imoen, this tome will give you even better dexterousness for some amount of time. But... there is also some slight chance of some unwanted outcome - I'm not sure, it looks lie a polymorphing spell... You'll use this at your own risk. I'm not sure you should use it, to be honest. Still, this is... impressive! And scary.~ */
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

CHAIN
IF ~Global("C#Brandock_ImoenBG1NPC","GLOBAL",4)~ THEN c#brandj brandockimoenbg1npc_04
@16 /* ~Imoen, it is imperative that you learn how to handle your magic talent. I feel reminded to the young lad I was, fiddling with magic way over my head - only difference that I didn't know I was actually using magic...~ */
= @17 /* ~My magic talent was found out by mere coincidence. "Magic always finds a way", my first teacher said. And if it is not tamed in time, these "ways" are usually hurtful for oneself or other people around.~ */
= @18 /* ~Untamed magic talent really scares me. <CHARNAME>, we need to let Imoen train magic.~ */
== %IMOEN_JOINED% @19 /* ~Woooo! Ya hear that, <CHARNAME>?~ */
== c#brandj @20 /* ~You did something there, without being trained. We should be careful, <CHARNAME>. Don't let her fiddle with it on her own for too long.~
= @21 /* ~I'll have an eye on your attempts, Imoen, but unless you start training magic on a serious note, there is only so much damage control I can do.~ */
== %IMOEN_JOINED% @22 /* ~"Damage control", huh? My, aren't you a real charmer!~ */
EXIT