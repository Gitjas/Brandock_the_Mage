/* questpath: Lorepoints for Brandock */

/* Brandock will be very interested in studying spellbooks of other mages and libraries the group encounters. 
-For spellbooks of slain enemies or ones the group encounters in fedex quests, Brandock will always have a look into it. 
-For libraries, Brandock will ask for some time to study. The PC has to grant it, and there will be a fade to black (no time increase as this is not possible to script)

For every spellbook, Brandock's Lore will increase by +1

For every library, Brandock's Lore will increase by +2, except Candlekeep

For Candlekeep, Lore will increase by +3

This should somehow be reflected in Brandock - Dynaheir banters, and maybe also Brandock - Jaheira (for BG1)
*/

APPEND c#brandj

/* ------------------------------------------*/
/* Spellbooks or other wise books */

/* Tarnesh's Spellbook ==>inside c#brandj.d */
/* Netherscroll Books ==>inside c#brandj.d */
/* Balduran's Logbook ==>inside c#brandj.d */
/* Tranzik's Spellbook ==>inside c#brandj.d */

/* Zordral's spellbook */
IF ~Global("C#Br_LorePathZordral","GLOBAL",1)~ THEN zordral_spellbook
SAY @1500
IF ~~ THEN DO ~ReallyForceSpellRES("c#brlob1",Myself) IncrementGlobal("C#Br_LorePathIncrease","GLOBAL",1)
SetGlobal("C#Br_LorePathZordral","GLOBAL",2)~ EXIT
END

/* [in the low lantern] Yago's book of curses */
IF ~Global("C#Br_LorePathYagosCurses","GLOBAL",1)~ THEN yago_spellbook
SAY @1501
IF ~~ THEN DO ~ReallyForceSpellRES("c#brlob1",Myself) IncrementGlobal("C#Br_LorePathIncrease","GLOBAL",1)
SetGlobal("C#Br_LorePathYagosCurses","GLOBAL",2)~ EXIT
END

/* Dradeel's spellbook (balduran island) */
IF ~Global("C#Br_LorePathDradeelBG1","GLOBAL",1)~ THEN dradeel_spellbook
SAY @1502
IF ~~ THEN DO ~SetGlobal("C#Br_LorePathDradeelBG1","GLOBAL",2)~ EXIT
END

/* Niemain, Oulam, Wheber, William EBaldursGate_SorcerousSundries_L2 */
IF ~Global("C#Br_LorePathNiemain","GLOBAL",1)~ THEN niemain_lorepath
SAY @1503
IF ~~ THEN DO ~ReallyForceSpellRES("c#brlob2",Myself) IncrementGlobal("C#Br_LorePathIncrease","GLOBAL",1)
SetGlobal("C#Br_LorePathNiemain","GLOBAL",2)~ EXIT
END

/* Delorna's Spell Component for Halruaan's Skyship  */
IF ~Global("C#Br_LorePathHalruaanBG1","GLOBAL",1)
Global("C#Br_LorePathDelornaBG1","GLOBAL",1)~ THEN delorna_spellbook
SAY @1543 /* ~Why did we have to barge in like that and kill those young women... <CHARNAME>, if we do not have the means to snatch things from under people's noses without them feeling like defending them with their lives then *maybe* we shouldn't accept such tasks.~ */
= @1536 /* ~(sigh) Despite the fact how we achieved this, this is definitely a very interesting book. I don't think I'll be able to build a skyship, but reading about it is most enlightning. Still... I'd prefer I wouldn't have had the chance to go through these spellbooks...~ */
IF ~~ THEN DO ~ReallyForceSpellRES("c#brlob1",Myself) IncrementGlobal("C#Br_LorePathIncrease","GLOBAL",1) SetGlobal("C#Br_LorePathHalruaanBG1","GLOBAL",2)~ EXIT
END

IF ~Global("C#Br_LorePathHalruaanBG1","GLOBAL",1)
Global("C#Br_LorePathDelornaBG1","GLOBAL",0)~ THEN delorna_spellbook_01
SAY @1544 /* ~This is definitely a very interesting book. I don't think I'll be able to build a skyship, but reading about it is most enlightning.~ */
IF ~~ THEN DO ~ReallyForceSpellRES("c#brlob1",Myself) IncrementGlobal("C#Br_LorePathIncrease","GLOBAL",1) SetGlobal("C#Br_LorePathHalruaanBG1","GLOBAL",2)~ EXIT
END

/* Narcillicus Harwilliger Neen (green slimes) */
IF ~Global("C#Br_LorePathNarcillicusBG1","GLOBAL",1)~ THEN narcillicus_spellbook
SAY @1537
IF ~~ THEN DO ~ReallyForceSpellRES("c#brlob1",Myself) IncrementGlobal("C#Br_LorePathIncrease","GLOBAL",1) SetGlobal("C#Br_LorePathNarcillicusBG1","GLOBAL",2)~ EXIT
END

/* Mutamin */
IF ~Global("C#Br_LorePathMutaminBG1","GLOBAL",1)~ THEN mutamin_spellbook
SAY @1538
IF ~~ THEN DO ~ReallyForceSpellRES("c#brlob1",Myself) IncrementGlobal("C#Br_LorePathIncrease","GLOBAL",1) SetGlobal("C#Br_LorePathMutaminBG1","GLOBAL",2)~ EXIT
END

/* 4 Wizards from Thay: Denak, Lasala, Diana, Brendan */
IF ~Global("C#Br_LorePathThayMagesBG1","GLOBAL",1)~ THEN thaymages_lorepath
SAY @1539
IF ~~ THEN DO ~ReallyForceSpellRES("c#brlob2",Myself) IncrementGlobal("C#Br_LorePathIncrease","GLOBAL",1)
SetGlobal("C#Br_LorePathThayMagesBG1","GLOBAL",2)~ EXIT
END

/* Sunin */
IF ~Global("C#Br_LorePathSuninBG1","GLOBAL",1)~ THEN sunin
SAY @1542
IF ~~ THEN DO ~ReallyForceSpellRES("c#brlob1",Myself) IncrementGlobal("C#Br_LorePathIncrease","GLOBAL",1)
SetGlobal("C#Br_LorePathSuninBG1","GLOBAL",2)~ EXIT
END

/* ------------------------------------------*/
/* Libraries and homes with bookshelves etc. */

/* Ulcaster school - in dungeon ==>inside c#brandj.d */

/* Davaeorn library ==>inside c#brandj.d */

/* Candlekeep Library */
IF ~Global("C#Brandock_LorePathCKLibrary","GLOBAL",1)
Global("C#Br_InsideCandlekeep","GLOBAL",0)~ THEN candlekeep_library
SAY @1504
+ ~GlobalGT("C#Br_BookRestore","GLOBAL",5)~ + @1505 + candlekeep_library_02
+ ~!GlobalGT("C#Br_BookRestore","GLOBAL",5)~ + @1505 + candlekeep_library_03
++ @1506 + candlekeep_library_01
END

IF ~Global("C#Brandock_LorePathCKLibrary","GLOBAL",1)
GlobalGT("C#Br_InsideCandlekeep","GLOBAL",0)~ THEN candlekeep_library_00
SAY @1507
++ @1505 + candlekeep_library_02
++ @1508 + candlekeep_library_01
++ @1506 + candlekeep_library_01
END

IF ~~ THEN candlekeep_library_01
SAY @1509
IF ~~ THEN DO ~SetGlobal("C#Brandock_LorePathCKLibrary","GLOBAL",2)~ EXIT
END

IF ~~ THEN candlekeep_library_02
SAY @1510
IF ~~ THEN DO ~ReallyForceSpellRES("c#brlob3",Myself) IncrementGlobal("C#Br_LorePathIncrease","GLOBAL",1)
SetGlobal("C#Brandock_LorePathCKLibrary","GLOBAL",2) ClearAllActions() StartCutSceneMode() StartCutScene("c#brftb")~ EXIT
END

IF ~~ THEN candlekeep_library_03
SAY @1511
IF ~~ THEN DO ~ReallyForceSpellRES("c#brlob3",Myself) IncrementGlobal("C#Br_LorePathIncrease","GLOBAL",1)
SetGlobal("C#Brandock_LorePathCKLibrary","GLOBAL",2) ClearAllActions() StartCutSceneMode() StartCutScene("c#brftb")~ EXIT
END

END //APPEND


/* Firebead Elvenhair's Home */
/* not triggered by script, when player clicks on Elvenhair's desk */
CHAIN
IF WEIGHT #-1
~Global("C#Br_LorePathElvenhair","GLOBAL",1)~ THEN FIREBE brandock_visits_elvenhair
@1512
== c#brandj @1513
== FIREBE @1514
== c#brandj @1515 
== c#brandj IF ~GlobalGT("C#Brandock_Possessions","GLOBAL",1)~ THEN @1516
== c#brandj @1517 
END
++ @1518 EXTERN c#brandj brandock_visits_elvenhair_01
++ @1519 EXTERN c#brandj brandock_visits_elvenhair_02

CHAIN
IF ~~ THEN c#brandj brandock_visits_elvenhair_01
@1520
== FIREBE IF ~%BG1_BEFORE_TRANSITION% GlobalGT("C#Br_ScribeScrollQuest","GLOBAL",0)~ @1540
== c#brandj IF ~%BG1_BEFORE_TRANSITION% GlobalGT("C#Br_ScribeScrollQuest","GLOBAL",0)~ @1541
END
IF ~~ THEN DO ~ReallyForceSpellRES("c#brlob2",Myself) 
IncrementGlobal("C#Br_LorePathIncrease","GLOBAL",1) SetGlobal("C#Br_LorePathElvenhair","GLOBAL",2) ClearAllActions() StartCutSceneMode() StartCutScene("c#brftb")~ EXIT

CHAIN
IF ~~ THEN c#brandj brandock_visits_elvenhair_02
@1521
== FIREBE IF ~%BG1_BEFORE_TRANSITION% GlobalGT("C#Br_ScribeScrollQuest","GLOBAL",0)~ @1540
END
IF ~~ THEN DO ~SetGlobal("C#Br_LorePathElvenhair","GLOBAL",2)~ EXIT




/* Ragefast's home WBaldursGate_RagefastsHouse */
CHAIN
IF ~Global("C#Br_LorePathRagefast","GLOBAL",1)~ THEN c#brandj lorepath_ragefast
@1522
== c#brandj IF ~!Dead("Ragefast") InMyArea("Ragefast") !StateCheck("Ragefast",CD_STATE_NOTVALID)~ THEN @1523
== RAGEFA IF ~!Dead("Ragefast") InMyArea("Ragefast") !StateCheck("Ragefast",CD_STATE_NOTVALID)~ THEN @1524
== c#brandj IF ~OR(3) Dead("Ragefast") !InMyArea("Ragefast") StateCheck("Ragefast",CD_STATE_NOTVALID)~ THEN @1525
END
++ @1526 + lorepath_ragefast_02
++ @1527 + lorepath_ragefast_01

APPEND c#brandj


IF ~~ THEN lorepath_ragefast_01
SAY @1509
IF ~~ THEN DO ~SetGlobal("C#Br_LorePathRagefast","GLOBAL",2)~ EXIT
END

IF ~~ THEN lorepath_ragefast_02
SAY @1528
IF ~~ THEN DO ~ReallyForceSpellRES("c#brlob2",Myself) IncrementGlobal("C#Br_LorePathIncrease","GLOBAL",1)
SetGlobal("C#Br_LorePathRagefast","GLOBAL",2) ClearAllActions() StartCutSceneMode() StartCutScene("c#brftb")~ EXIT
END

/* Ramazith's home NBaldursGate_RamazithsTower_L6 */
IF ~Global("C#Br_LorePathRamazith","GLOBAL",1)~ THEN lorepath_ramatithstower
SAY @1529
++ @1530 + lorepath_ramatithstower_02
++ @1531 + lorepath_ramatithstower_01
END

IF ~~ THEN lorepath_ramatithstower_01
SAY @1509
IF ~~ THEN DO ~SetGlobal("C#Br_LorePathRamazith","GLOBAL",2)~ EXIT
END

IF ~~ THEN lorepath_ramatithstower_02
SAY @1528
IF ~~ THEN DO ~ReallyForceSpellRES("c#brlob2",Myself) IncrementGlobal("C#Br_LorePathIncrease","GLOBAL",1)
SetGlobal("C#Br_LorePathRamazith","GLOBAL",2) ClearAllActions() StartCutSceneMode() StartCutScene("c#brftb")~ EXIT
END



/* Durlag's Tower DurlagsTower_L3 */

IF ~Global("C#Br_LorePathDurlagsTower","GLOBAL",1)~ THEN lorepath_durlagstower
SAY @1532
++ @1533 + lorepath_durlagstower_02
++ @1534 + lorepath_durlagstower_01
END

IF ~~ THEN lorepath_durlagstower_01
SAY @1509
IF ~~ THEN DO ~SetGlobal("C#Br_LorePathDurlagsTower","GLOBAL",2)~ EXIT
END

IF ~~ THEN lorepath_durlagstower_02
SAY @1535
IF ~~ THEN DO ~ReallyForceSpellRES("c#brlob2",Myself) IncrementGlobal("C#Br_LorePathIncrease","GLOBAL",1)
SetGlobal("C#Br_LorePathDurlagsTower","GLOBAL",2) ClearAllActions() StartCutSceneMode() StartCutScene("c#brftb")~ EXIT
END


END //APPEND




/* ------------------------------------------*/
/* evtl. banter with Dynaheir, Edwin..., Xzar... */

