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
IF ~~ THEN DO ~ReallyForceSpellRES("c#brlob1",Myself) AddJournalEntry(@10030,QUEST)
SetGlobal("C#Br_LorePathZordral","GLOBAL",2)~ UNSOLVED_JOURNAL @10033 EXIT
END

/* [in the low lantern] Yago's book of curses */
IF ~Global("C#Br_LorePathYagosCurses","GLOBAL",1)~ THEN yago_spellbook
SAY @1501
IF ~~ THEN DO ~ReallyForceSpellRES("c#brlob1",Myself) AddJournalEntry(@10030,QUEST)
SetGlobal("C#Br_LorePathYagosCurses","GLOBAL",2)~ UNSOLVED_JOURNAL @10034 EXIT
END

/* Dradeel's spellbook (balduran island) */
IF ~Global("C#Br_LorePathDradeelBG1","GLOBAL",1)~ THEN dradeel_spellbook
SAY @1502
IF ~~ THEN DO ~SetGlobal("C#Br_LorePathDradeelBG1","GLOBAL",2)~ UNSOLVED_JOURNAL @10035 EXIT
END

/* Niemain, Oulam, Wheber, William EBaldursGate_SorcerousSundries_L2 */
IF ~Global("C#Br_LorePathNiemain","GLOBAL",1)~ THEN niemain_lorepath
SAY @1503
IF ~~ THEN DO ~ReallyForceSpellRES("c#brlob2",Myself) AddJournalEntry(@10030,QUEST)
SetGlobal("C#Br_LorePathNiemain","GLOBAL",2)~ UNSOLVED_JOURNAL @10041 EXIT
END

/* Delorna's Spell Component for Halruaan's Skyship  */
IF ~Global("C#Br_LorePathDelornaBG1","GLOBAL",1)~ THEN delorna_spellbook
SAY @1536
IF ~~ THEN DO ~ReallyForceSpellRES("c#brlob1",Myself) AddJournalEntry(@10030,QUEST) SetGlobal("C#Br_LorePathDelornaBG1","GLOBAL",2)~ UNSOLVED_JOURNAL @10045 EXIT
END

/* Narcillicus Harwilliger Neen (green slimes) */
IF ~Global("C#Br_LorePathNarcillicusBG1","GLOBAL",1)~ THEN narcillicus_spellbook
SAY @1537
IF ~~ THEN DO ~ReallyForceSpellRES("c#brlob1",Myself) AddJournalEntry(@10030,QUEST) SetGlobal("C#Br_LorePathNarcillicusBG1","GLOBAL",2)~ UNSOLVED_JOURNAL @10046 EXIT
END

/* Mutamin */
IF ~Global("C#Br_LorePathMutaminBG1","GLOBAL",1)~ THEN mutamin_spellbook
SAY @1538
IF ~~ THEN DO ~ReallyForceSpellRES("c#brlob1",Myself) AddJournalEntry(@10030,QUEST) SetGlobal("C#Br_LorePathMutaminBG1","GLOBAL",2)~ UNSOLVED_JOURNAL @10047 EXIT
END

/* 4 Wizards from Thay: Denak, Lasala, Diana, Brendan */
IF ~Global("C#Br_LorePathThayMagesBG1","GLOBAL",1)~ THEN thaymages_lorepath
SAY @1539
IF ~~ THEN DO ~ReallyForceSpellRES("c#brlob2",Myself) AddJournalEntry(@10030,QUEST)
SetGlobal("C#Br_LorePathThayMagesBG1","GLOBAL",2)~ UNSOLVED_JOURNAL @10048 EXIT
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
IF ~~ THEN DO ~ReallyForceSpellRES("c#brlob3",Myself) AddJournalEntry(@10030,QUEST)
SetGlobal("C#Brandock_LorePathCKLibrary","GLOBAL",2) ClearAllActions() StartCutSceneMode() StartCutScene("c#brftb")~ UNSOLVED_JOURNAL @10027 /* ~Brandock's Lore increased

Brandock increased his lore wisdom by having a good look around Candlekeep library.~ */ EXIT
END

IF ~~ THEN candlekeep_library_03
SAY @1511
IF ~~ THEN DO ~ReallyForceSpellRES("c#brlob3",Myself) AddJournalEntry(@10030,QUEST)
SetGlobal("C#Brandock_LorePathCKLibrary","GLOBAL",2) ClearAllActions() StartCutSceneMode() StartCutScene("c#brftb")~ UNSOLVED_JOURNAL @10027 /* ~Brandock's Lore increased

Brandock increased his lore wisdom by having a good look around Candlekeep library.~ */ EXIT
END

END //APPEND


/* Firebead Elvenhair's Home */
/* not triggered by script, only when player clicks on Elvenhair */
/* Brandock increases his lore score - not if next step of restore book is active */
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
== FIREBE IF ~GlobalGT("C#Brandock_ScrollscribingElvenhair","GLOBAL",0)~ @1540
== c#brandj IF ~GlobalGT("C#Brandock_ScrollscribingElvenhair","GLOBAL",0)~ @1541
END
IF ~~ THEN DO ~ReallyForceSpellRES("c#brlob2",Myself) 
AddJournalEntry(@10030,QUEST) SetGlobal("C#Br_LorePathElvenhair","GLOBAL",2) ClearAllActions() StartCutSceneMode() StartCutScene("c#brftb")~ UNSOLVED_JOURNAL @10024 /* ~Brandock's Lore increased

Brandock found interesting books at Elvenhair's home and increased his lore wisdom with them.~ */ EXIT

CHAIN
IF ~~ THEN c#brandj brandock_visits_elvenhair_02
@1521
== FIREBE IF ~GlobalGT("C#Brandock_ScrollscribingElvenhair","GLOBAL",0)~ @1540
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
IF ~~ THEN DO ~ReallyForceSpellRES("c#brlob2",Myself) AddJournalEntry(@10030,QUEST)
SetGlobal("C#Br_LorePathRagefast","GLOBAL",2) ClearAllActions() StartCutSceneMode() StartCutScene("c#brftb")~ UNSOLVED_JOURNAL @10039 EXIT
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
IF ~~ THEN DO ~ReallyForceSpellRES("c#brlob2",Myself) AddJournalEntry(@10030,QUEST)
SetGlobal("C#Br_LorePathRamazith","GLOBAL",2) ClearAllActions() StartCutSceneMode() StartCutScene("c#brftb")~ UNSOLVED_JOURNAL @10038 EXIT
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
IF ~~ THEN DO ~ReallyForceSpellRES("c#brlob2",Myself) AddJournalEntry(@10030,QUEST)
SetGlobal("C#Br_LorePathDurlagsTower","GLOBAL",2) ClearAllActions() StartCutSceneMode() StartCutScene("c#brftb")~ UNSOLVED_JOURNAL @10037 EXIT
END


END //APPEND




/* ------------------------------------------*/
/* evtl. banter with Dynaheir, Edwin..., Xzar... */



/* ------------------------------------------*/
/* SoD */

/* Teleri -> inside brandock_sod.d */
/*
bdmisc53.itm -This massive, leatherbound tome is written in some ancient, unknown language beyond your ability to decipher. 

Inscribed on a small, weathered piece of parchment pressed inside the front cover are words that are at least comprehensible, if not necessarily helpful: "Sometimes it is wise to think backwards."



-bdalnt01-06.itm -> silly notes of first level mage how to survive adventuring 

-bdbook01.itm - On Magical Entrapments

-bdshbhr.itm Bhaal Research - This collection of arcane tomes, history books, and religious texts focuses on necromancy and Bhaal's religion and prophecy. There is much information here, but nothing of particular relevance to you.


*/