/* BG1 content */

ADD_TRANS_ACTION ~%tutu_var%TAMOKO~ BEGIN 14 15 16 17 18 END BEGIN END
~SetGlobal("C#BR_KnowOfBhaalTamoko","GLOBAL",1)~

/* Joseph's wife, If help is offered */
ADD_TRANS_ACTION ~%tutu_scriptbg%FTOWN2~ BEGIN 3 END BEGIN END
~SetGlobal("C#Brandock_JosephsWife","GLOBAL",1)~


/* Narcillicus Harwilliger Neen (green slimes) */
I_C_T ~%tutu_var%NARCIL~ 0 C#Brandock_NARCIL_0
== ~c#brandj~ IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN @465
== ~%tutu_var%NARCIL~ IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN @466
END

I_C_T ~%tutu_var%NARCIL~ 3 C#Brandock_NARCIL_3
== ~c#brandj~ IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN @467
== ~%tutu_var%NARCIL~ IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN @468
END



/* Bassilus */
I_C_T ~%tutu_var%BASSIL~ 0 C#Brandock_Bassilus
== ~c#brandj~ IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN @1
END

/* Lothander */
I_C_T ~%tutu_var%LOTHAN~ 1 C#Brandock_Bassilus
== ~c#brandj~ IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN @2
END


/* Brage: I_C_T into Nalin 4 */
I_C_T ~%tutu_var%Nalin~ 4 C#Brandock_Brage
== ~c#brandj~ IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN @3
== ~%tutu_var%BRAGE~ IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN @4
END


/* Ulcaster - first interjections should only play once */
I_C_T ~%tutu_var%ULCAST~ 0 C#Brandock_ULCAST_0
== ~c#brandj~ IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN @479
END

I_C_T ~%tutu_var%ULCAST~ 1 C#Brandock_ULCAST_0
== ~c#brandj~ IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN @479
END

I_C_T ~%tutu_var%ULCAST~ 2 C#Brandock_ULCAST_0
== ~c#brandj~ IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN @479
END

I_C_T ~%tutu_var%ULCAST~ 4 C#Brandock_ULCAST_4
== ~c#brandj~ IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN @480
END

I_C_T ~%tutu_var%ULCAST~ 5 C#Brandock_ULCAST_5
== ~c#brandj~ IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN @481
== ~%tutu_var%ULCAST~ IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN @482
END

/* Sendai */
I_C_T3 ~%tutu_var%Sendai~ 0 C#Brandock_SENDAI_0
== ~c#brandj~ IF ~GlobalGT("C#Brandock_Dialog","GLOBAL",4)
OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN @484
== ~c#brandj~ IF ~!GlobalGT("C#Brandock_Dialog","GLOBAL",4)
OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN @485
END

I_C_T ~%tutu_var%Sendai~ 3 C#Brandock_SENDAI_3
== ~c#brandj~ IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN @486
END

I_C_T ~%tutu_var%Sendai~ 5 C#Brandock_SENDAI_5
== ~c#brandj~ IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN @487
END





/* Prism dead */
CHAIN
IF 
~%BG1_BEFORE_TRANSITION%
CombatCounter(0) !See([ENEMY]) 
OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2)
Dead("Prism")
!See("Prism") See(Player1)
!StateCheck(Player1,CD_STATE_NOTVALID)
!StateCheck(Myself,CD_STATE_NOTVALID)
Global("C#Brandock_PrismBG1","GLOBAL",1)~ THEN C#BrandB prism
@488
DO ~SetGlobal("C#Brandock_PrismBG1","GLOBAL",2)~
= @489
END
++ @490 EXTERN C#BrandJ prism_01
++ @491 EXTERN C#BrandJ prism_02
++ @492 EXTERN C#BrandJ prism_03  
++ @493 EXTERN C#BrandJ prism_03 


APPEND c#brandj

IF ~~ THEN prism_01
SAY @494
++ @491 + prism_02
++ @492 + prism_03  
++ @493 + prism_03 
END

IF ~~ THEN prism_02
SAY @495
IF ~~ THEN + prism_04
END

IF ~~ THEN prism_03
SAY @496
IF ~~ THEN + prism_04
END

IF ~~ THEN prism_04
SAY @497
++ @498 + prism_06
++ @499 + prism_05
++ @500 + prism_07
++ @501 + prism_12
END

IF ~~ THEN prism_05
SAY @502
IF ~~ THEN + prism_07
END

IF ~~ THEN prism_06
SAY @503
IF ~~ THEN + prism_07
END

END //APPEND

CHAIN
IF ~~ THEN C#BrandJ prism_07
@504
== C#BrandJ IF ~GlobalGT("C#Br_BookRestore","GLOBAL",4)~ THEN @505
== C#BrandJ IF ~!GlobalGT("C#Br_BookRestore","GLOBAL",4)~ THEN @506
== C#BrandJ @507
END
++ @508 + prism_09
++ @514 + prism_11
++ @509 + prism_09
++ @510 + prism_11
++ @511 + prism_10
++ @512 + prism_08 
++ @513 + prism_12

APPEND C#BrandJ 

IF ~~ THEN prism_08
SAY @515
++ @508 + prism_09
++ @514 + prism_11
++ @509 + prism_09
++ @510 + prism_11
++ @511 + prism_10
++ @513 + prism_12
END

IF ~~ THEN prism_09
SAY @516
IF ~~ THEN + prism_11
END

IF ~~ THEN prism_10
SAY @517
IF ~~ THEN + prism_11
END

IF ~~ THEN prism_11
SAY @518
IF ~~ THEN + prism_12
END

IF ~~ THEN prism_12
SAY @519
IF ~~ THEN EXIT
END


/* Ulcaster school - outside */
IF ~Global("C#Brandock_UlcasterSchool","GLOBAL",1)~ THEN ulcaster_school
SAY @475
IF ~~ THEN DO ~SetGlobal("C#Brandock_UlcasterSchool","GLOBAL",2)~ EXIT
END

END //APPEND c#brandj

/* Ulcaster school - in dungeon */
CHAIN
IF ~Global("C#Brandock_InsideUlcasterSchool","GLOBAL",1)~ THEN c#brandj ulcaster_school
@476
== c#brandj IF ~Global("C#Brandock_ULCAST_4","GLOBAL",1)~ THEN @477
== c#brandj @478
END
IF ~~ THEN DO ~ReallyForceSpellRES("c#brlob1",Myself) AddJournalEntry(@10030,QUEST) SetGlobal("C#Brandock_InsideUlcasterSchool","GLOBAL",2)~ UNSOLVED_JOURNAL @10049 EXIT



APPEND c#brandj

/* after defeating Sarevok (BGT / EE+EBG1) */

IF ~Global("C#Brando_BG1SarevokDefeated","GLOBAL",1)~ THEN sarevok_defeated
SAY @5
IF ~~ THEN DO ~SetGlobal("C#Brando_BG1SarevokDefeated","GLOBAL",2)~ EXIT
END

/* Sarevok dead, after leaving the ThievesGuild -> in brandock_bookrestore.d*/

END //APPEND c#brandj

/* brandock's book(s) not in his inventory. Warning - no action */
CHAIN
IF ~OR(2)
Global("C#Brandock_BookWarningLokal1","GLOBAL",1)
Global("C#Brandock_BookWarningLokal2","GLOBAL",1)~ THEN c#brandj my_book
@469
== c#brandj IF ~OR(2) HasItem("c#br0001",Player2) HasItem("c#br0007",Player2)~ THEN @470
== c#brandj IF ~OR(2) HasItem("c#br0001",Player3) HasItem("c#br0007",Player3)~ THEN @471
== c#brandj IF ~OR(2) HasItem("c#br0001",Player4) HasItem("c#br0007",Player4)~ THEN @472
== c#brandj IF ~OR(2) HasItem("c#br0001",Player5) HasItem("c#br0007",Player5)~ THEN @473
== c#brandj IF ~OR(2) HasItem("c#br0001",Player6) HasItem("c#br0007",Player6)~ THEN @474
END
IF ~Global("C#Brandock_BookWarningLokal2","GLOBAL",1)~ THEN DO ~SetGlobal("C#Brandock_BookWarningLokal2","GLOBAL",2)~ EXIT
IF ~Global("C#Brandock_BookWarningLokal1","GLOBAL",1)~ THEN DO ~SetGlobal("C#Brandock_BookWarningLokal1","GLOBAL",2)~ EXIT


APPEND c#brandj


/* destroyed book gone - talk one 
GlobalGT("C#Brandock_Possessions","GLOBAL",1) 
!GlobalGT("C#Br_BookRestore","GLOBAL",4)
!PartyHasItem("c#br0001") */

IF ~Global("C#Brandock_BookWarning","GLOBAL",1)~ THEN book_gone
SAY @6
IF ~~ THEN DO ~SetGlobal("C#Brandock_BookWarning","GLOBAL",3)~ EXIT
END

/* restored book gone - talk one 
GlobalGT("C#Br_BookRestore","GLOBAL",4)
!PartyHasItem("c#br0007") */

IF ~Global("C#Brandock_BookWarning","GLOBAL",2)~ THEN book_gone_01
SAY @7
IF ~~ THEN DO ~SetGlobal("C#Brandock_BookWarning","GLOBAL",4)~ EXIT
END

/* either book gone - talk two (Brandock leaves) */
IF ~Global("C#Brandock_BookWarning","GLOBAL",5)~ THEN book_gone_02
SAY @8
IF ~Global("C#BrandockJoined","GLOBAL",1)~ THEN DO ~SetInterrupt(FALSE)
SetGlobal("C#Brandock_BookWarning","GLOBAL",6)
GivePartyAllEquipment()
TakePartyItem("c#br0001") DestroyItem("c#br0001")
TakePartyItem("c#br0007") DestroyItem("c#br0007")
SetGlobal("C#Brandock_Gone","GLOBAL",1)
SetGlobal("C#BrandockJoined","GLOBAL",0) ChangeAIScript("",DEFAULT)
SetLeavePartyDialogFile() LeaveParty() EscapeArea() SetInterrupt(TRUE)~ EXIT
IF ~Global("C#BrandockJoined","GLOBAL",2)~ THEN DO ~SetInterrupt(FALSE)
SetGlobal("C#Brandock_BookWarning","GLOBAL",6)
GivePartyAllEquipment()
SetGlobal("C#Brandock_Gone","GLOBAL",1)
SetGlobal("C#BrandockJoined","GLOBAL",0)
RemoveFamiliar()
ChangeAIScript("",DEFAULT)
ChangeEnemyAlly(Myself,NEUTRAL)
TakePartyItem("c#br0001") DestroyItem("c#br0001")
TakePartyItem("c#br0007") DestroyItem("c#br0007")
EscapeArea() SetInterrupt(TRUE)~ EXIT
END

END //APPEND c#brandj
/* dead assassin in Beregost Red Sheaf */

CHAIN
IF ~Global("C#Brandock_BeregostAssassin","GLOBAL",1)~ THEN c#brandj assassin_beregost
@9
== c#brandj IF ~OR(2) !See("GV#MOID") Dead("GV#MOID")~ THEN @463
END
IF ~~ THEN DO ~SetGlobal("C#Brandock_BeregostAssassin","GLOBAL",2)~ EXIT





/* after meeting Nashkel mayor */

CHAIN
IF ~Global("C#Brandock_NashkelMines","GLOBAL",1)~ THEN c#brandj nashkel_mines
@10 DO ~SetGlobal("C#Brandock_NashkelMines","GLOBAL",2)~
== c#brandj IF ~Global("C#Brandock_ValerieBG1","GLOBAL",0)~ THEN @11
== c#brandj @12
== c#brandj IF ~OR(2)
InParty("t2val")
GlobalGT("C#Brandock_ValerieBG1","GLOBAL",0)~ THEN @13
EXIT

/* dead assassin in Nashkel inn */

CHAIN
IF ~Global("C#Brandock_NashkelAssassin","GLOBAL",1)~ THEN c#brandj nashkel_inn_assassin
@14 DO ~SetGlobal("C#Brandock_NashkelAssassin","GLOBAL",2)~
= @15
== c#brandj IF ~Global("C#Brandock_Tarnesh","GLOBAL",0)
Global("C#Brandock_BeregostAssassin","GLOBAL",0)~ THEN @16
== c#brandj IF ~Global("C#Brandock_BountyNote","GLOBAL",2)~ THEN @17
== c#brandj IF ~OR(2)
GlobalGT("C#Brandock_Tarnesh","GLOBAL",0)
GlobalGT("C#Brandock_BeregostAssassin","GLOBAL",0)~ THEN @18
EXIT

/* Vivienne in Blushing Mermaid */

I_C_T ~%tutu_var%VIVIEN~ 1 C#BrandockVIVIEN1
== ~c#brandj~ IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN @19
== ~c#brandj~ IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID) GlobalGT("C#Brandock_TaintedOre","GLOBAL",3)~ THEN @20
== ~%tutu_var%VIVIEN~ IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN @21
END


/* Tartusse in BG city */

I_C_T ~%tutu_var%TARTUS~ 0 C#BrandockTARTUS0
== ~c#brandj~ IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN @22
END

/* Whelp in FAI */

I_C_T ~%tutu_var%WHELP~ 0 C#BrandockWHELP0
== ~c#brandj~ IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN @23
END

/* comment on shattered armor /weapon 
MISC56 Broken Weapon
MISC57 Broken Sjield
MISC58 Broken Armor */

CHAIN
IF ~Global("C#Brandock_WeaponBroke","GLOBAL",1)~ THEN c#brandj broken_armor
@24 DO ~SetGlobal("C#Brandock_WeaponBroke","GLOBAL",2)~
EXIT 

/* UNSHEY - is "Brandock's Ogre", as well */
I_C_T ~UNSHEY~ 1 C#BrandockUNSHEY1
== ~c#brandj~ IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)
!GlobalGT("C#Brandock_Possessions","GLOBAL",1)~ THEN @25
END



/* Mendas, when hiring the PC for ship trip */

I_C_T ~%tutu_var%MENDA1~ 5 C#BrandockMendas5
== ~c#brandj~ IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN @26
END

I_C_T ~%tutu_var%MENDA1~ 8 C#BrandockMendas8
== ~c#brandj~ IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN @27
END




/* on the werwolf island, dialogue with Dradeel */

INTERJECT ~%tutu_var%DRADEE~ 6 C#BrandockDradeel6
== ~c#brandj~ IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN @28
END
++ @29 GOTO 12
COPY_TRANS ~%tutu_var%DRADEE~ 6



APPEND c#brandj

/* on the island */

IF ~Global("C#Brandock_WerewolfIsland","GLOBAL",1)~ THEN werewolf_island
SAY @30
++ @31 + werewolf_island_01 
++ @32 + werewolf_island_01
++ @33 + werewolf_island_01
++ @34 + werewolf_island_01
++ @35 + werewolf_island_01
END

IF ~~ THEN werewolf_island_01
SAY @36
IF ~~ THEN DO ~SetGlobal("C#Brandock_WerewolfIsland","GLOBAL",2)~ EXIT
END

END //APPEND c#brandj

/* Dradeel told his tale 
Global("OHDradeelInfo","GLOBAL",1)
Global("DraQuest","GLOBAL",1) */

CHAIN
IF ~Global("C#Brandock_WerewolfIsland","GLOBAL",3)~ THEN c#brandj dradeels_tale
@37
== c#brandj IF ~GlobalGT("C#Brandock_1stTutor","GLOBAL",1)~ THEN @38
== c#brandj IF ~Dead("Dradeel")~ THEN @39
END
++ @40 + dradeels_tale_01
++ @41 + dradeels_tale_02
++ @42 + dradeels_tale_03
++ @43 + dradeels_tale_04
++ @44 + dradeels_tale_03

CHAIN
IF ~~ THEN c#brandj dradeels_tale_01
@45
== c#brandj IF ~!Dead("Dradeel")~ THEN @46
== c#brandj IF ~Dead("Dradeel")~ THEN @47
== c#brandj @48
END
IF ~~ THEN + dradeels_tale_04

APPEND c#brandj

IF ~~ THEN dradeels_tale_02
SAY @49
IF ~~ THEN + dradeels_tale_04
END

IF ~~ THEN dradeels_tale_03
SAY @50
IF ~~ THEN + dradeels_tale_04
END

IF ~~ THEN dradeels_tale_04
SAY @51 
IF ~~ THEN DO ~SetGlobal("C#Brandock_WerewolfIsland","GLOBAL",4)~ EXIT
END



/* Dradeel dead */

IF ~Global("C#Brandock_DradeelDead","GLOBAL",1)~ THEN dradeel_dead
SAY @52
IF ~~ THEN DO ~SetGlobal("C#Brandock_DradeelDead","GLOBAL",2)~ EXIT
END

END //APPEND c#brandj






/* werewolf island, party finds Balduran's Logbook (can also trigger later) 
BOOK87 */

CHAIN
IF ~Global("C#Brandock_BalduransBook","GLOBAL",1)~ THEN c#brandj baldurans_book
@53 DO ~SetGlobal("C#Brandock_BalduransBook","GLOBAL",2)~
== c#brandj IF ~!HasItem("BOOK87","C#Brandock")~ THEN @54
== c#brandj @55
END
IF ~Global("C#Brandock_ValuableBookComment","GLOBAL",0)~ THEN DO ~ReallyForceSpellRES("c#brlob1",Myself) AddJournalEntry(@10030,QUEST) AddJournalEntry(@10032,QUEST)~ + baldurans_book_01
IF ~Global("C#Brandock_ValuableBookComment","GLOBAL",1)~ THEN DO ~ReallyForceSpellRES("c#brlob1",Myself) AddJournalEntry(@10030,QUEST) AddJournalEntry(@10032,QUEST)~ + baldurans_book_02


/* valuable book 'History of the Nether Scrolls' - entrance fee to Candlekeep - Brandock wants to have a peek */
CHAIN
IF ~Global("C#Brandock_CandlekeepBook","GLOBAL",1)~ THEN c#brandj valuable_book
@56 DO ~SetGlobal("C#Brandock_CandlekeepBook","GLOBAL",2)~
== c#brandj IF ~!HasItem("BOOK68","C#Brandock")~ THEN @57
== c#brandj @58
END
IF ~Global("C#Brandock_ValuableBookComment","GLOBAL",0)~ THEN DO ~ReallyForceSpellRES("c#brlob1",Myself) AddJournalEntry(@10030,QUEST) AddJournalEntry(@10031,QUEST)~ + baldurans_book_01
IF ~Global("C#Brandock_ValuableBookComment","GLOBAL",1)~ THEN DO ~ReallyForceSpellRES("c#brlob1",Myself) AddJournalEntry(@10030,QUEST) AddJournalEntry(@10031,QUEST)~ + baldurans_book_02




CHAIN
IF ~~ THEN c#brandj baldurans_book_01
@59 DO ~SetGlobal("C#Brandock_ValuableBookComment","GLOBAL",1)~
== c#brandj IF ~OR(2) HasItem("BOOK87","C#Brandock") HasItem("BOOK68","C#Brandock")
Global("C#Brandock_AjantisBOOKBG1","GLOBAL",1) InParty("Ajantis") See("Ajantis")~ THEN @60 DO ~SetGlobal("C#Brandock_AjantisBOOKBG1","GLOBAL",2)~
== c#brandj IF ~OR(2) HasItem("BOOK87","C#Brandock") HasItem("BOOK68","C#Brandock")
Global("C#Brandock_AjantisBOOKBG1","GLOBAL",2) InParty("Ajantis") See("Ajantis")~ THEN @61
EXIT


CHAIN
IF ~~ THEN c#brandj baldurans_book_02
@62
EXIT


/* player placed the book into Brandock's inventory 
 also for BOOK68 'History of the Nether Scrolls' - entrance fee to Candlekeep */

CHAIN
IF ~Global("C#Brandock_BookInventory","GLOBAL",1)~ THEN c#brandj valuable_book_inventory
@63 DO ~SetGlobal("C#Brandock_BookInventory","GLOBAL",3)~ 
== c#brandj IF ~Global("C#Brandock_AjantisBOOKBG1","GLOBAL",1) InParty("Ajantis")
See("Ajantis")~ THEN @60 DO ~SetGlobal("C#Brandock_AjantisBOOKBG1","GLOBAL",2)~
== c#brandj IF ~Global("C#Brandock_AjantisBOOKBG1","GLOBAL",2) InParty("Ajantis")
See("Ajantis")~ THEN @61
== c#brandj @64
EXIT





/* werewolf island, in case of shapeshifting quest */
/* follow up, after M. is defeated 

Dead("Mendas3") */

CHAIN
IF ~Global("C#Brandock_WerewolfIsland","GLOBAL",5)~ THEN c#brandj werewolf_followup
@65
== c#brandj IF ~Kit(Player1,SHAPESHIFTER)~ THEN @66
== c#brandj @67
/* traces of a quest that was cut... 
== c#brandj IF ~GlobalGT("C#Brandock_Shapeshift","GLOBAL",19)~ THEN ~And... I already *have* an unwanted form I am in danger of changing into! I have no interest in adding to the count. And I was thinking... What if I am in halfoger form when the lycantrophy kicks in, would I be a halfoger-werewolf?~
*/
== c#brandj @68
== c#brandj IF ~Kit(Player1,SHAPESHIFTER)~ THEN @69
END
++ @70 + werewolf_followup_01
+ ~Kit(Player1,SHAPESHIFTER)~ + @71 + werewolf_followup_02
++ @72 + werewolf_followup_01
++ @73 + werewolf_followup_02
++ @74 + werewolf_followup_02


APPEND c#brandj

IF ~~ THEN werewolf_followup_01
SAY @75
IF ~~ THEN DO ~SetGlobal("C#Brandock_WerewolfIsland","GLOBAL",6)~ EXIT
END

IF ~~ THEN werewolf_followup_02
SAY @76
IF ~~ THEN + werewolf_followup_01
END


/* TotSC (Bg1), Ice Island */

IF ~Global("C#Brandock_1stTutor","GLOBAL",1)~ THEN island
SAY @77
+ ~!Class(Player1,MAGE_ALL)~ + @78+ island_01 
+ ~Class(Player1,MAGE_ALL)~ + @79 + island_01
+ ~GlobalGT("TransformedChicken","GLOBAL",0)~ + @80 + island_04
+ ~Global("TransformedChicken","GLOBAL",0)~ + @80 + island_05
++ @81 + island_01
++ @82 + island_02
END

IF ~~ THEN island_01
SAY @83
IF ~~ THEN + island_05
IF ~GlobalGT("TransformedChicken","GLOBAL",0)~ THEN + island_04
END

IF ~~ THEN island_02
SAY @84
IF ~~ THEN + island_03
END

IF ~~ THEN island_03
SAY @85
= @86
IF ~~ THEN DO ~SetGlobal("C#Brandock_1stTutor","GLOBAL",2)~ EXIT
END

IF ~~ THEN island_04
SAY @87
IF ~~ THEN + island_05
END

END //APPEND c#brandj

CHAIN
IF ~~ THEN c#brandj island_05
@462
== c#brandj IF ~Global("C#Brandock_Shapeshift","GLOBAL",11)~ THEN @88
== c#brandj @89
== c#brandj IF ~Global("C#Brandock_HowMagePID","LOCALS",1)~ THEN @90
== c#brandj @91
END
IF ~~ THEN + island_03


APPEND c#brandj

/* ponders about his first teacher */
/* opens PID options */

IF ~Global("C#Brandock_1stTutor","GLOBAL",3)~ THEN first_tutor
SAY @92
++ @93 + first_tutor_01
++ @94 + first_tutor_02
++ @95+ first_tutor_07
END

IF ~~ THEN first_tutor_01
SAY @96
= @97
++ @98 + first_tutor_03
++ @99 + first_tutor_04
++ @100 + first_tutor_05
++ @101 + first_tutor_07
END

IF ~~ THEN first_tutor_02
SAY @102
IF ~~ THEN + first_tutor_01
END

IF ~~ THEN first_tutor_03
SAY @103
IF ~~ THEN + first_tutor_06
END

IF ~~ THEN first_tutor_04
SAY @104
IF ~~ THEN + first_tutor_06
END

IF ~~ THEN first_tutor_05
SAY @105
IF ~~ THEN + first_tutor_06
END

IF ~~ THEN first_tutor_06
SAY @106
IF ~~ THEN + first_tutor_08
END

IF ~~ THEN first_tutor_07
SAY @107
IF ~~ THEN + first_tutor_08
END

IF ~~ THEN first_tutor_08
SAY @108
= @109
IF ~~ THEN DO ~SetGlobal("C#Brandock_1stTutor","GLOBAL",4)~ EXIT
END

/* Comment on PC's dreams  */

IF ~Global("C#Brandock_PCDream","GLOBAL",1)~ THEN pc_dream
SAY @110
+ ~!GlobalGT("C#Brandock_KnowBhaal","GLOBAL",1)~ + @111 + pc_dream_01
+ ~!GlobalGT("C#Brandock_KnowBhaal","GLOBAL",1)~ + @112 + pc_dream_01
+ ~!GlobalGT("C#Brandock_KnowBhaal","GLOBAL",1)~ + @113 + pc_dream_01
+ ~GlobalGT("C#Brandock_KnowBhaal","GLOBAL",1)~ + @111 + pc_dream_02
+ ~GlobalGT("C#Brandock_KnowBhaal","GLOBAL",1)~ + @112 + pc_dream_02
+ ~GlobalGT("C#Brandock_KnowBhaal","GLOBAL",1)~ + @113 + pc_dream_02
END


IF ~~ THEN pc_dream_01
SAY @114
IF ~~ THEN DO ~SetGlobal("C#Brandock_PCDream","GLOBAL",2)~ EXIT
END

IF ~~ THEN pc_dream_02
SAY @115
IF ~~ THEN DO ~SetGlobal("C#Brandock_PCDream","GLOBAL",2)~ EXIT
END


/* Tarnesh dead */
IF ~Global("C#Brandock_Tarnesh","GLOBAL",1)~ THEN tarnesh
SAY @116
= @117
IF ~~ THEN DO ~ReallyForceSpellRES("c#brlob1",Myself) AddJournalEntry(@10030,QUEST)
SetGlobal("C#Brandock_Tarnesh","GLOBAL",2)~ JOURNAL @10023 /* ~Brandock's Lore increased

Brandock studied the spell book of the mage who attacked me in front of the Friendly Arm and increased his lore wisdom with it.~ */ EXIT
END

/* Player made Brandock drunk - I really don't think anyone will make him drunk 5 times but these lines just more or less wrote themselves */

IF ~RandomNum(5,1) Global("C#Brandock_Drunk","GLOBAL",1)
GlobalLT("C#Brandock_Shapeshift","GLOBAL",16)~ THEN drunk
SAY @118
IF ~~ THEN DO ~SetGlobal("C#Brandock_Drunk","GLOBAL",0)~ EXIT
END

IF ~RandomNum(5,2) Global("C#Brandock_Drunk","GLOBAL",1)
GlobalLT("C#Brandock_Shapeshift","GLOBAL",16)~ THEN drunk_02
SAY @119
IF ~~ THEN DO ~SetGlobal("C#Brandock_Drunk","GLOBAL",0)~ EXIT
END

IF ~RandomNum(5,3) Global("C#Brandock_Drunk","GLOBAL",1)
GlobalLT("C#Brandock_Shapeshift","GLOBAL",16)~ THEN drunk_03
SAY @120
IF ~~ THEN DO ~SetGlobal("C#Brandock_Drunk","GLOBAL",0)~ EXIT
END

IF ~RandomNum(5,4) Global("C#Brandock_Drunk","GLOBAL",1)
GlobalLT("C#Brandock_Shapeshift","GLOBAL",16)~ THEN drunk_04
SAY @121
IF ~~ THEN DO ~SetGlobal("C#Brandock_Drunk","GLOBAL",0)~ EXIT
END

IF ~RandomNum(5,5) Global("C#Brandock_Drunk","GLOBAL",1)
GlobalLT("C#Brandock_Shapeshift","GLOBAL",16)~ THEN drunk_04
SAY @122
IF ~~ THEN DO ~SetGlobal("C#Brandock_Drunk","GLOBAL",0)~ EXIT
END

/* traces of a quest removed */
IF ~Global("C#Brandock_Drunk","GLOBAL",1)
GlobalGT("C#Brandock_Shapeshift","GLOBAL",15)~ THEN drunk_after
SAY @123
IF ~~ THEN DO ~SetGlobal("C#Brandock_Drunk","GLOBAL",0)~ EXIT
END

/* Inside Flaming Fist Headquarters */
IF ~Global("C#Brandock_FF","GLOBAL",1)~ THEN inside_ff
SAY @124
= @125
IF ~~ THEN DO ~SetGlobal("C#Brandock_FF","GLOBAL",2)~ EXIT
END


/* On Nashkel Carnival: Brandock recalls how he earned the gold for the book */
// unlocks PID comments ~You worked on a Carnival?~

IF ~Global("C#Brandock_Carnival","GLOBAL",2)~ THEN carnival
SAY @126
= @127
IF ~~ THEN DO ~SetGlobal("C#Brandock_Carnival","GLOBAL",3)~ EXIT
END


/* Brage */
IF ~Global("C#Brandock_Brage","GLOBAL",2)~ THEN brage
SAY @128
= @129
++ @130 + brage_01
++ @131 + brage_02
++ @132 + brage_01
END

IF ~~ THEN brage_01
SAY @133
IF ~~ THEN + brage_02
END

IF ~~ THEN brage_02
SAY @134
IF ~~ THEN DO ~SetGlobal("C#Brandock_Brage","GLOBAL",3)~ EXIT
END


/* Sorcerous Sundries */

IF ~Global("C#Brandock_SorSundries","GLOBAL",1)~ THEN sorsun
SAY @135
IF ~~ THEN DO ~SetGlobal("C#Brandock_SorSundries","GLOBAL",2)~ EXIT
END

IF ~Global("C#Brandock_SorSundries","GLOBAL",3)~ THEN sorsun_inside
SAY @136
= @137
IF ~~ THEN DO ~SetGlobal("C#Brandock_SorSundries","GLOBAL",4)~ EXIT
END

/* Joseph's wife */

IF ~Global("C#Brandock_JosephsWife","GLOBAL",2)~ THEN josephs_wife
SAY @138
IF ~~ THEN DO ~SetGlobal("C#Brandock_JosephsWife","GLOBAL",3)~ EXIT
END

/* Dopplegangers in Duke's palace */
IF ~Global("C#Brandock_NobleDopple","GLOBAL",1)~ THEN noble_doppelgangers
SAY @139
IF ~~ THEN DO ~SetGlobal("C#Brandock_NobleDopple","GLOBAL",2)~ EXIT
END


/* in Nashkel mine. PC found letter about "Tazok"  */
IF ~Global("C#Brandock_OrganisationLevel","GLOBAL",1)~ THEN organisation_level
SAY @140
IF ~~ THEN DO ~SetGlobal("C#Brandock_OrganisationLevel","GLOBAL",2)~ EXIT
END


/* After being to Nashkel mines: tainted ore */
//[sets PID options "You wanted to say more about the tainted ore?"]

IF ~Global("C#Brandock_TaintedOre","GLOBAL",1)~ THEN tainted_ore
SAY @141
IF ~~ THEN DO ~SetGlobal("C#Brandock_TaintedOre","GLOBAL",2)~ EXIT
END

END //APPEND

/* after defeating Tranzig in Beregost */
CHAIN
IF ~Global("C#Brandock_OrganisationLevel","GLOBAL",3)~ THEN c#brandj c#brandjtranzig_defeated
@142
== c#brandj IF ~Dead("Tranzig")~ THEN @143 DO ~ReallyForceSpellRES("c#brlob1",Myself) AddJournalEntry(@10030,QUEST) AddJournalEntry(@10040,QUEST)~
END
IF ~~ THEN DO ~SetGlobal("C#Brandock_OrganisationLevel","GLOBAL",4)~ EXIT


APPEND c#brandj
/* after bandit camp, chapter 4 */

IF ~Global("C#Brandock_OrganisationLevel","GLOBAL",5)~ THEN organisation_level_01
SAY @144
= @145
IF ~~ THEN DO ~SetGlobal("C#Brandock_OrganisationLevel","GLOBAL",6)~ EXIT
END


/* bounty note */
IF ~Global("C#Brandock_BountyNote","GLOBAL",1)~ THEN bounty_note
SAY @146
IF ~Global("C#BR_KnowGorionsDeath","GLOBAL",1)~ THEN + bounty_note_03
IF ~!Global("C#BR_KnowGorionsDeath","GLOBAL",1)~ THEN + bounty_note_02
END

/* didn't talk about Gorion before */
IF ~~ THEN bounty_note_01
SAY @147
++ @148 DO ~SetGlobal("C#BR_bounty_note2","LOCALS",1)~ + bounty_note_04
++ @149 DO ~SetGlobal("C#BR_KnowGorionsDeath","GLOBAL",1)~ + bounty_note_09
++ @150 DO ~SetGlobal("C#BR_KnowGorionsDeath","GLOBAL",1)~ + bounty_note_09
++ @151 DO ~SetGlobal("C#BR_bounty_note2","LOCALS",1)~ + bounty_note_04
END

IF ~~ THEN bounty_note_02
SAY @152
++ @153 + bounty_note_13
++ @154 + bounty_note_01
++ @82 + bounty_note_14
END

END //APPEND

/* talked about Gorion before */
CHAIN
IF ~~ THEN c#brandj bounty_note_03
@155
= @156
== c#brandj  IF ~Global("C#BR_bounty_note_noinfo","LOCALS",0)~ THEN @157
END
IF ~~ THEN DO ~SetGlobal("C#Brandock_BountyNote","GLOBAL",2)~ EXIT

CHAIN
IF ~~ THEN c#brandj  bounty_note_04
@158
== ~%XZAR_JOINED%~ IF ~InParty("Xzar")
See("Xzar") !StateCheck("Xzar",CD_STATE_NOTVALID)~ THEN @159
== c#brandj IF ~InParty("Xzar")
See("Xzar") !StateCheck("Xzar",CD_STATE_NOTVALID)~ THEN @160
== c#brandj @161
END
IF ~~ THEN + bounty_note_08
IF ~Global("C#BR_KnowGorionsDeath","GLOBAL",1)~ THEN + bounty_note_07


//IF ~~ THEN bounty_note_05

APPEND c#brandj

IF ~~ THEN bounty_note_06
SAY @162
+ ~Global("C#BR_bounty_note3","LOCALS",0)~ + @163 DO ~SetGlobal("C#BR_bounty_note3","LOCALS",1)~ + bounty_note_07
+ ~Global("C#BR_bounty_note2","LOCALS",0)~ + @148 DO ~SetGlobal("C#BR_bounty_note2","LOCALS",1)~ + bounty_note_04
++ @149 DO ~SetGlobal("C#BR_KnowGorionsDeath","GLOBAL",1)~ + bounty_note_09
++ @150 DO ~SetGlobal("C#BR_KnowGorionsDeath","GLOBAL",1)~ + bounty_note_09
END

IF ~~ THEN bounty_note_07
SAY @164
IF ~!Global("C#BR_bounty_note4","LOCALS",1)~ THEN + bounty_note_06

+ ~Global("C#BR_bounty_note4","LOCALS",1)~ + @165 + bounty_note_11
+ ~Global("C#BR_bounty_note4","LOCALS",1)~ + @166 + bounty_note_11

END

IF ~~ THEN bounty_note_08
SAY @167
IF ~~ THEN + bounty_note_06
END

IF ~~ THEN bounty_note_09
SAY @168
++ @169 + bounty_note_12
++ @165 + bounty_note_11
+ ~Global("C#BR_bounty_note2","LOCALS",0)~ + @148 DO ~SetGlobal("C#BR_bounty_note4","LOCALS",1)~ + bounty_note_04
++ @166 + bounty_note_11
END

IF ~~ THEN bounty_note_10
SAY @170
IF ~~ THEN + bounty_note_07
END

IF ~~ THEN bounty_note_11
SAY @171
IF ~~ THEN + bounty_note_03
END

IF ~~ THEN bounty_note_12
SAY @172
++ @165 + bounty_note_11
+ ~Global("C#BR_bounty_note2","LOCALS",0)~ + @148 DO ~SetGlobal("C#BR_bounty_note4","LOCALS",1)~ + bounty_note_04
++ @166 + bounty_note_11
END

IF ~~ THEN bounty_note_13
SAY @173
++ @154 + bounty_note_01
++ @82 + bounty_note_14
++ @174 DO ~SetGlobal("C#BR_bounty_note_noinfo","LOCALS",1)~ + bounty_note_03
END

IF ~~ THEN bounty_note_14
SAY @175
++ @154 + bounty_note_01
++ @176 DO ~SetGlobal("C#BR_bounty_note_noinfo","LOCALS",1)~ + bounty_note_15
END

IF ~~ THEN bounty_note_15
SAY @177
IF ~~ THEN + bounty_note_03
END


/* Gorion's deathsite */
IF ~Global("C#BrandockGorionDS","GLOBAL",2)~ THEN gorion_deathsite
SAY @178
IF ~~ THEN + gorion_deathsite_02
IF ~Global("C#BR_KnowGorionsDeath","GLOBAL",1)~ THEN + gorion_deathsite_01
END

END //APPEND

CHAIN
IF ~~ THEN c#brandj gorion_deathsite_01
@179
== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%")
See("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @180
END
++ @181 + gorion_deathsite_03
++ @182 + gorion_deathsite_03

CHAIN
IF ~~ THEN c#brandj gorion_deathsite_02
@183
== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%")
See("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @184 
END
++ @185 + gorion_deathsite_04
++ @186 + gorion_deathsite_04
++ @187 + gorion_deathsite_02_b

CHAIN
IF ~~ THEN c#brandj gorion_deathsite_02_b
@188
== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%")
See("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @189
EXIT

APPEND c#brandj

IF ~~ THEN gorion_deathsite_03
SAY @190
IF ~~ THEN DO ~SetGlobal("C#BrandockGorionDS","GLOBAL",3) ActionOverride("c#brspy1",DestroySelf())~ EXIT
END

IF ~~ THEN gorion_deathsite_04
SAY @191
++ @150 DO ~SetGlobal("C#BR_KnowGorionsDeath","GLOBAL",1)~ + gorion_deathsite_05
++ @192 DO ~SetGlobal("C#BR_gorion_deathsite_04","LOCALS",1)~ + gorion_deathsite_06
++ @82 DO ~SetGlobal("C#BR_KnowGorionsDeath","GLOBAL",1)~ + gorion_deathsite_08
END

IF ~~ THEN gorion_deathsite_05
SAY @193
IF ~~ THEN + gorion_deathsite_09
END

IF ~~ THEN gorion_deathsite_06
SAY @170
IF ~~ THEN + gorion_deathsite_07
IF ~Global("C#BR_KnowGorionsDeath","GLOBAL",1)~ THEN + gorion_deathsite_03
END

IF ~~ THEN gorion_deathsite_07
SAY @162
++ @150 DO ~SetGlobal("C#BR_KnowGorionsDeath","GLOBAL",1)~ + gorion_deathsite_05
+ ~Global("C#BR_gorion_deathsite_04","LOCALS",0)~ + @192 + gorion_deathsite_06
++ @82 DO ~SetGlobal("C#BR_KnowGorionsDeath","GLOBAL",1)~ + gorion_deathsite_08
END

IF ~~ THEN gorion_deathsite_08
SAY @194
IF ~~ THEN + gorion_deathsite_09
END

IF ~~ THEN gorion_deathsite_09
SAY @195
+ ~Global("C#BR_gorion_deathsite_04","LOCALS",0)~ + @165 + gorion_deathsite_10
+ ~Global("C#BR_gorion_deathsite_04","LOCALS",1)~ + @165 + gorion_deathsite_03
+ ~Global("C#BR_gorion_deathsite_04","LOCALS",0)~ + @192 + gorion_deathsite_06
++ @196 + gorion_deathsite_03
END

IF ~~ THEN gorion_deathsite_10
SAY @197
++ @192 + gorion_deathsite_06
++ @196 + gorion_deathsite_03
END





/* after the first visit to Thalantyr AND after possessions are found */
IF ~Global("C#Brandock_Thalantyr","GLOBAL",2)~ THEN thalantyr
SAY @198
= @199
IF ~~ THEN DO ~SetGlobal("C#Brandock_Thalantyr","GLOBAL",3)~ EXIT
END


/* BG1, after defeating Deveaorn */


IF ~Global("C#Brandock_Davaeorn","GLOBAL",1)~ THEN davaeorn
SAY @200
++ @201 + davaeorn_01
++ @202 + davaeorn_02
+ ~GlobalGT("C#Brandock_Shapeshift","GLOBAL",10)~ + @203 + davaeorn_01
END

IF ~~ THEN davaeorn_01
SAY @204
IF ~~ THEN + davaeorn_02
END

IF ~~ THEN davaeorn_02
SAY @205
++ @206 + davaeorn_04
++ @207 + davaeorn_03
END

IF ~~ THEN davaeorn_03
SAY @208
IF ~~ THEN DO ~SetGlobal("C#Brandock_Davaeorn","GLOBAL",2)~ EXIT
END

IF ~~ THEN davaeorn_04
SAY @209 
IF ~~ THEN DO ~ReallyForceSpellRES("c#brlob2",Myself) 
AddJournalEntry(@10030,QUEST) SetGlobal("C#Brandock_Davaeorn","GLOBAL",2)~ UNSOLVED_JOURNAL @10036 EXIT
END

/* ponders about Daveaorn */

IF ~Global("C#Brandock_Davaeorn","GLOBAL",3)~ THEN davaeorn_mage
SAY @210
IF ~~ THEN DO ~SetGlobal("C#Brandock_Davaeorn","GLOBAL",4)~ EXIT
END


/* inside seven suns */

IF ~Global("C#Brandock_Sevensuns","GLOBAL",1)~ THEN seven_suns
SAY @211
IF ~~ THEN DO ~SetGlobal("C#Brandock_Sevensuns","GLOBAL",2)~ EXIT
END

/* Cloakwood mines */

IF ~Global("C#Brandock_CloakwoodMines","GLOBAL",1)~ THEN cloakwood_mines
SAY @212
IF ~~ THEN DO ~SetGlobal("C#Brandock_CloakwoodMines","GLOBAL",2)~ EXIT
END


/* after being arrested - BG prison */

IF ~Global("C#Brandock_Arrested","GLOBAL",1)~ THEN arrested
SAY @213
= @214
++ @215 + arrested_01
++ @216 + arrested_02
++ @217 + arrested_01
++ @218 + arrested_01
++ @219 + arrested_01
END

IF ~~ THEN arrested_01
SAY @220
= @221
IF ~~ THEN DO ~SetGlobal("C#Brandock_Arrested","GLOBAL",2)~ EXIT
END

IF ~~ THEN arrested_02
SAY @222
IF ~~ THEN + arrested_01
END


/* before entering Durlag's Tower */

IF ~Global("C#Brandock_DurlagT","GLOBAL",1)~ THEN durlags_tower
SAY @223
= @224
IF ~~ THEN DO ~SetGlobal("C#Brandock_DurlagT","GLOBAL",2)~ EXIT
END
 
END //APPEND

/* Inside Durlag's Tower */

CHAIN
IF ~Global("C#Brandock_DurlagT","GLOBAL",3)~ THEN c#brandj durlags_tower_01
@225 DO ~SetGlobal("C#Brandock_DurlagT","GLOBAL",4)~
= @226
== c#brandj IF ~GlobalGT("C#Brandock_CKeepDoppelgangers","GLOBAL",1)~ THEN @227
== c#brandj @228
EXIT

/* Clair inside Durlag's Tower */
I_C_T ~%tutu_var%CLAIRD~ 21 C#Brandock_CLAIRD
== ~c#brandj~ IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN @464
END

I_C_T ~%tutu_var%CLAIRD~ 23 C#Brandock_CLAIRD
== ~c#brandj~ IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN @464
END

I_C_T ~%tutu_var%CLAIRD~ 26 C#Brandock_CLAIRD
== ~c#brandj~ IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN @464
END





APPEND c#brandj


/* somewhere near the end, before confronting Sarevok, in or after chapter 6 */

IF ~Global("C#Brandock_InvitationDP","GLOBAL",1)~ resumee
SAY @229
= @230
= @231
IF ~~ THEN DO ~SetGlobal("C#Brandock_InvitationDP","GLOBAL",2)~ EXIT
END



/* After Sarevok's scheme is revealed */

IF ~Global("C#Brandock_SarevoksScheme","GLOBAL",1)~ THEN sarevoks_scheme1
SAY @232
++ @233 + sarevoks_scheme1_01
++ @234 + sarevoks_scheme1_01
++ @235 + sarevoks_scheme1_01
++ @236 + sarevoks_scheme1_02
END

IF ~~ THEN sarevoks_scheme1_01
SAY @237
IF ~~ THEN DO ~SetGlobal("C#Brandock_SarevoksScheme","GLOBAL",2)~ EXIT
END

IF ~~ THEN sarevoks_scheme1_02
SAY @238
IF ~~ THEN + sarevoks_scheme1_01
END

END //APPEND



/* side quest: shoes */

BEGIN c#brserv

IF ~Global("C#Brandock_Shoequest","GLOBAL",1)~ THEN shoes
SAY @239
IF ~~ THEN DO ~SetGlobal("C#Brandock_Shoequest","GLOBAL",2)~ UNSOLVED_JOURNAL @10002 /* ~A Fine Pair of Boots

A pair of boots was taken from Travenhurst Manor in Beregost. The servant thinks that they are not stolen but only misplaced by someone making a joke.~ */ EXIT
END

IF ~Global("C#Brandock_Shoequest","GLOBAL",2)
!PartyHasItem("c#br0002")~ THEN shoes_01
SAY @240
IF ~~ THEN EXIT
END

IF ~Global("C#Brandock_Shoequest","GLOBAL",2)
PartyHasItem("c#br0002")~ THEN shoes_01
SAY @241
IF ~~ THEN DO ~SetGlobal("C#Brandock_Shoequest","GLOBAL",3) 
EraseJournalEntry(@10003)
EraseJournalEntry(@10004)
EraseJournalEntry(@10002)
TakePartyItem("c#br0002")
GiveItemCreate("c#br0006",[PC],1,0,0)
AddExperienceParty(100)
EscapeArea()~ SOLVED_JOURNAL @10011 /* ~A Fine Pair of Boots

I returned the pair of boots to Travenhurst Manor. The servant was quite happy they were in such good condition.~ */ EXIT
END


/* quest: possessions! -I didn't put this into a separate .d from the start and now it stays here. */


CHAIN
IF 
~Global("C#BrandockSpawn","GLOBAL",3)~ THEN c#brandj ogre_dead
@242 DO ~SetGlobal("C#BrandockSpawn","GLOBAL",4)~ 
== c#brandj IF ~See("OGREUNSH")~ THEN @243
== c#brandj IF ~!See("OGREUNSH")~ THEN @244
== c#brandj @245
EXIT

APPEND c#brandj

IF ~Global("C#Brandock_Possessions","GLOBAL",1)~ THEN book
SAY @246
= @247
++ @248 + book_01
++ @249 + book_01
END

IF ~~ THEN book_01
SAY @250
= @251
= @252
++ @253 + book_04
++ @254 + book_03
++ @255 + book_02
++ @256 DO ~SetGlobal("C#BR_FoxPID","LOCALS",1)~ + book_15
END

IF ~~ THEN book_02
SAY @257
IF ~~ THEN + book_05
END

IF ~~ THEN book_03
SAY @258
IF ~~ THEN + book_05
END

IF ~~ THEN book_04
SAY @259
++ @260 + book_05
++ @254 + book_03
++ @255 + book_02
END

END //APPEND

CHAIN
IF ~~ THEN c#brandj book_05
@261
= @262
== c#brandj @263
= @264
END
IF ~~ THEN DO ~SetGlobal("C#Brandock_Possessions","GLOBAL",2)
EraseJournalEntry(@10000)
RealSetGlobalTimer("C#BrandockDialogTimer","GLOBAL",C#BRANDOCK_TIMERLONG)~ UNSOLVED_JOURNAL @10003 /* ~A Fine Pair of Boots

I found a fine pair of boots in a fox cave near Beregost. I assume they could be returned to their owner. Judging by the looks, they belong to a wealthy man.~ */ EXIT
IF ~Global("C#Brandock_Shoequest","GLOBAL",2)~ THEN DO ~SetGlobal("C#Brandock_Possessions","GLOBAL",2)
EraseJournalEntry(@10002)
EraseJournalEntry(@10000)
RealSetGlobalTimer("C#BrandockDialogTimer","GLOBAL",C#BRANDOCK_TIMERLONG)~ UNSOLVED_JOURNAL @10004 /* ~A Fine Pair of Boots

I found Master Travenhurst's fine pair of boots in a fox cave near Beregost. I assume they could be returned to the servant at Travenhurst Manor.~ */ EXIT


APPEND c#brandj

IF ~Global("C#Brandock_Possessions","GLOBAL",3)~ THEN book_06
SAY @265
IF ~~ THEN DO ~SetGlobal("C#Brandock_Possessions","GLOBAL",4)~ + book_07
END

IF ~~ THEN book_07
SAY @266
++ @267 + book_10
+ ~!Global("C#BR_KnowGorionsDeath","GLOBAL",1)~ + @268 + book_08
+ ~Global("C#BR_KnowGorionsDeath","GLOBAL",1)~ + @269 + book_09
++ @270 + book_11
END

IF ~~ THEN book_08
SAY @271
++ @272 + book_16
++ @273 + book_13
++ @270 + book_11
END

IF ~~ THEN book_09
SAY @274
= @275
IF ~~ THEN + book_17
END

IF ~~ THEN book_10
SAY @276
+ ~!Global("C#BR_KnowGorionsDeath","GLOBAL",1)~ + @268 + book_08
+ ~Global("C#BR_KnowGorionsDeath","GLOBAL",1)~ + @269 + book_09
++ @270 + book_11
END

IF ~~ THEN book_11
SAY @277
IF ~~ THEN + book_12
END

IF ~~ THEN book_12
SAY @278
IF ~~ THEN + book_14_01
//IF ~GlobalGT("C#Brandock_Shapeshift","GLOBAL",0)~ THEN SOLVED_JOURNAL @10009 + what_now_07
IF ~Global("C#Brandock_Reward","GLOBAL",1)~ THEN + book_14
END

IF ~~ THEN book_13
SAY @279
IF ~~ THEN + book_14_01
//IF ~GlobalGT("C#Brandock_Shapeshift","GLOBAL",0)~ THEN SOLVED_JOURNAL @10009 + what_now_07
IF ~Global("C#Brandock_Reward","GLOBAL",1)~ THEN + book_14
END

IF ~~ THEN book_14
SAY @280 
IF ~~ THEN DO ~SetGlobal("C#Brandock_Reward","GLOBAL",2) GiveGoldForce(150)~ + book_14_01
//IF ~GlobalGT("C#Brandock_Shapeshift","GLOBAL",0)~ THEN DO ~SetGlobal("C#Brandock_Reward","GLOBAL",2) GiveGoldForce(150)~ SOLVED_JOURNAL @10009 + what_now_07
END

IF ~~ THEN book_14_01
SAY @281
IF ~~ THEN SOLVED_JOURNAL @10009 EXIT
END

IF ~~ THEN book_15
SAY @282
IF ~~ THEN + book_05
END

IF ~~ THEN book_16
SAY @283 
++ @149 DO ~SetGlobal("C#BR_KnowGorionsDeath","GLOBAL",1)~ + book_18
++ @150 DO ~SetGlobal("C#BR_KnowGorionsDeath","GLOBAL",1)~ + book_18
++ @192 + book_19
++ @82 DO ~SetGlobal("C#BR_KnowGorionsDeath","GLOBAL",1)~ + book_21
END

IF ~~ THEN book_17
SAY @284
++ @285 + book_12
++ @273 + book_13
++ @270 + book_11
END

IF ~~ THEN book_18
SAY @286
++ @165 + book_17
++ @273 + book_13
END

IF ~~ THEN book_19
SAY @170
IF ~~ THEN + book_20
END

IF ~~ THEN book_20
SAY @162
++ @149 DO ~SetGlobal("C#BR_KnowGorionsDeath","GLOBAL",1)~ + book_18
++ @150 DO ~SetGlobal("C#BR_KnowGorionsDeath","GLOBAL",1)~ + book_18
++ @82 DO ~SetGlobal("C#BR_KnowGorionsDeath","GLOBAL",1)~ + book_21 
END

IF ~~ THEN book_21
SAY @194
IF ~~ THEN + book_17
END

END //APPEND

/* Am I unlucky or just plain clumsy? */
/* happens after book and Melicamp incident both! */

CHAIN
IF ~Global("C#Brandock_PondersBadLuck","GLOBAL",1)~ THEN c#brandj badluck
@287
== c#brandj IF ~GlobalLT("C#Brandock_Shapeshift","GLOBAL",15)~ THEN @288
/*
== c#brandj IF ~GlobalGT("C#Brandock_Shapeshift","GLOBAL",15)~ THEN ~And then there is that... incident including a half-ogre, after I cast magic on someone I didn't know anything about, ruining my reputation as a mage around these lands for time to come, and changing something inside me - changing me, *literally* - in a way I haven't yet understood...~
*/
= @289
END
++ @290 + badluck_02
++ @291 + badluck_03
++ @292 + badluck_02
++ @293 + badluck_01


APPEND c#brandj

IF ~~ THEN badluck_01
SAY @294
= @295
IF ~~ THEN + badluck_04
END

IF ~~ THEN badluck_02
SAY @296
IF ~~ THEN + badluck_04
END

IF ~~ THEN badluck_03
SAY @297
IF ~~ THEN + badluck_04
END

IF ~~ THEN badluck_04
SAY @298
IF ~~ THEN DO ~SetGlobal("C#Brandock_PondersBadLuck","GLOBAL",2)~ EXIT
END

END //APPEND




/* first dialogue: Gorion */

/* Brandock doesn't know about Gorion and Candlekeep yet */
CHAIN
IF ~Global("C#Brandock_Dialog","GLOBAL",2) !Global("C#BR_KnowGorionsDeath","GLOBAL",1)~ THEN c#brandj gorion_00
@299
== c#brandj IF ~InParty("%IMOEN_DV%")
See("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @300
== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%")
See("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @301
== c#brandj @302
END
++ @303 DO ~SetGlobal("C#BR_KnowGorionsDeath","GLOBAL",1)~ + gorion_07
++ @304 + gorion_08
++ @305 DO ~SetGlobal("C#BR_KnowGorionsDeath","GLOBAL",1)~ + gorion_07
++ @306 + gorion_06


APPEND c#brandj

/* Brandock knows about Gorion's death */
IF ~Global("C#Brandock_Dialog","GLOBAL",2) Global("C#BR_KnowGorionsDeath","GLOBAL",1)~ THEN gorion
SAY @307
++ @308 + gorion_02
++ @309 + gorion_01
END

IF ~~ THEN gorion_01
SAY @310
IF ~~ THEN + gorion_05
END

IF ~~ THEN gorion_02
SAY @311
++ @312 + gorion_03_a
++ @313 + gorion_03_a
++ @314 + gorion_03
++ @315 + gorion_05
END

IF ~~ THEN gorion_03
SAY @316
IF ~~ THEN + gorion_03_a
END

IF ~~ THEN gorion_03_a
SAY @317
= @318
IF ~~ THEN + gorion_04
END

IF ~~ THEN gorion_04
SAY @319
= @320
IF ~~ THEN + gorion_05
END

IF ~~ THEN gorion_05
SAY @321
IF ~~ THEN DO ~IncrementGlobal("C#Brandock_Dialog","GLOBAL",1)~ EXIT
END

IF ~~ THEN gorion_06
SAY @322
++ @303 DO ~SetGlobal("C#BR_KnowGorionsDeath","GLOBAL",1)~ + gorion_07
++ @305 DO ~SetGlobal("C#BR_KnowGorionsDeath","GLOBAL",1)~ + gorion_07
++ @323 + gorion_09
END

IF ~~ THEN gorion_07
SAY @324
++ @192 + gorion_12
++ @325 + gorion_11
++ @326 + gorion_11
++ @327 + gorion_10
END

IF ~~ THEN gorion_08
SAY @328
++ @303 DO ~SetGlobal("C#BR_KnowGorionsDeath","GLOBAL",1)~ + gorion_07
++ @305 DO ~SetGlobal("C#BR_KnowGorionsDeath","GLOBAL",1)~ + gorion_07
++ @329 + gorion_06
END

IF ~~ THEN gorion_09
SAY @330
IF ~~ THEN DO ~SetGlobal("C#Brandock_Dialog","GLOBAL",99)~ EXIT
END

IF ~~ THEN gorion_10
SAY @331
IF ~~ THEN + gorion_11
END

IF ~~ THEN gorion_11
SAY @332
IF ~~ THEN + gorion
END

IF ~~ THEN gorion_12
SAY @170
= @333
++ @325 + gorion_11
++ @326 + gorion_11
++ @327 + gorion_10
END



/* Nashkel */

IF ~Global("C#Brandock_Nashkel","GLOBAL",1)~ THEN nashkel
SAY @334
+ ~GlobalLT("C#Brandock_Dialog","GLOBAL",5)~ + @93 DO ~SetGlobal("C#Brandock_Nashkel","GLOBAL",2)~ + nashkel_01
+ ~GlobalLT("C#Brandock_Dialog","GLOBAL",5)~ + @335 DO ~SetGlobal("C#Brandock_Nashkel","GLOBAL",2)~ + nashkel_13
+ ~GlobalLT("C#Brandock_Dialog","GLOBAL",5)~ + @336 DO ~SetGlobal("C#Brandock_Nashkel","GLOBAL",2)~ + nashkel_13

+ ~!GlobalLT("C#Brandock_Dialog","GLOBAL",5)~ + @93 DO ~SetGlobal("C#Brandock_Nashkel","GLOBAL",2)~ + nashkel_11

++ @236 DO ~SetGlobal("C#Brandock_Nashkel","GLOBAL",2)~ + nashkel_15
END

IF ~~ THEN nashkel_01
SAY @337
+ ~Global("C#BR_KnowGorionsDeath","GLOBAL",1)~ + @338 + nashkel_12
+ ~!Global("C#BR_KnowGorionsDeath","GLOBAL",1)~ + @338 + nashkel_03
+ ~Global("C#BR_KnowGorionsDeath","GLOBAL",1)~ + @0 /* ~I grew up in the greatest library of Faer�n, you know.~ */ + nashkel_12
+ ~!Global("C#BR_KnowGorionsDeath","GLOBAL",1)~ + @0 /* ~I grew up in the greatest library of Faer�n, you know.~ */ + nashkel_02
++ @236 + nashkel_15
END

IF ~~ THEN nashkel_02
SAY @339
IF ~~ THEN + nashkel_07
END


IF ~~ THEN nashkel_03
SAY @340
++ @0 /* ~I grew up in the greatest library of Faer�n, you know.~ */ + nashkel_02
++ @236 + nashkel_15
END

IF ~~ THEN nashkel_04
SAY @341
++ @325 + nashkel_08
++ @326 + nashkel_08
++ @342 + nashkel_08
END

IF ~~ THEN nashkel_05
SAY @343
IF ~~ THEN + nashkel_07
END

IF ~~ THEN nashkel_06
SAY @344
IF ~~ THEN + nashkel_07
END

IF ~~ THEN nashkel_07
SAY @345
+ ~Global("C#BR_nashkel_06","LOCALS",0)~ + @192 DO ~SetGlobal("C#BR_nashkel_06","LOCALS",1)~ + nashkel_06
+ ~Global("C#BR_nashkel_05","LOCALS",0)~ + @346 DO ~SetGlobal("C#BR_nashkel_05","LOCALS",1)~ + nashkel_05
++ @303 DO ~SetGlobal("C#BR_KnowGorionsDeath","GLOBAL",1)~ + nashkel_04
++ @305 DO ~SetGlobal("C#BR_KnowGorionsDeath","GLOBAL",1)~ + nashkel_04
++ @323 + gorion_09
END

IF ~~ THEN nashkel_08
SAY @347
++ @165 + nashkel_09
+ ~Global("C#BR_nashkel_06","LOCALS",0)~ + @192 DO ~SetGlobal("C#BR_nashkel_06","LOCALS",1)~ + nashkel_10
+ ~GlobalLT("C#Brandock_Dialog","GLOBAL",5)~ + @348 + nashkel_13
++ @349 + nashkel_15
END

IF ~~ THEN nashkel_09
SAY @197
+ ~Global("C#BR_nashkel_06","LOCALS",0) GlobalLT("C#Brandock_Dialog","GLOBAL",5)~ + @192 DO ~SetGlobal("C#BR_nashkel_06","LOCALS",1)~ + nashkel_10
+ ~GlobalLT("C#Brandock_Dialog","GLOBAL",5)~ + @348 + nashkel_13
+ ~OR(2) Global("C#BR_nashkel_06","LOCALS",0) GlobalLT("C#Brandock_Dialog","GLOBAL",5)~ + @349 + nashkel_15

IF ~!GlobalLT("C#Brandock_Dialog","GLOBAL",5)~ THEN + nashkel_14
END

IF ~~ THEN nashkel_10
SAY @170
++ @165 + nashkel_09
+ ~GlobalLT("C#Brandock_Dialog","GLOBAL",5)~ + @348 + nashkel_13
++ @349 + nashkel_15
END

IF ~~ THEN nashkel_11
SAY @350
+ ~GlobalLT("C#Brandock_Dialog","GLOBAL",5)~ + @335 DO ~SetGlobal("C#Brandock_Nashkel","GLOBAL",2)~ + nashkel_13
+ ~GlobalLT("C#Brandock_Dialog","GLOBAL",5)~ + @336 DO ~SetGlobal("C#Brandock_Nashkel","GLOBAL",2)~ + nashkel_13
+ ~GlobalLT("C#Brandock_Dialog","GLOBAL",5)~ + @236 DO ~SetGlobal("C#Brandock_Nashkel","GLOBAL",2)~ + nashkel_15

IF ~!GlobalLT("C#Brandock_Dialog","GLOBAL",5)~ THEN + nashkel_14
END

IF ~~ THEN nashkel_12
SAY @351
IF ~~ THEN + nashkel_11
END

IF ~~ THEN nashkel_13
SAY @352
IF ~~ THEN DO ~SetGlobal("C#BR_KnowsAmn","GLOBAL",1)~ + from_amn_00
END

IF ~~ THEN nashkel_14
SAY @353
IF ~~ THEN EXIT
END

IF ~~ THEN nashkel_15
SAY @354
IF ~~ THEN EXIT
END





/* second dialogue: Well, yes, I am from Amn. But I am not a spy! */

IF ~Global("C#Brandock_Dialog","GLOBAL",4) Global("C#BR_KnowsAmn","GLOBAL",0)~ THEN from_amn
SAY @355
IF ~~ THEN DO ~IncrementGlobal("C#Brandock_Dialog","GLOBAL",1) SetGlobal("C#BR_KnowsAmn","GLOBAL",1)~ + from_amn_00
END

IF ~~ THEN from_amn_00
SAY @356 
= @357
++ @358 + from_amn_05
++ @359 + from_amn_01
++ @360 + from_amn_02_a
++ @361 + from_amn_02
++ @362 + from_amn_04 
END

IF ~~ THEN from_amn_01
SAY @363
++ @358 + from_amn_05
++ @360 + from_amn_02_a
++ @361 + from_amn_02
++ @362 + from_amn_04 
END

IF ~~ THEN from_amn_02
SAY @364
IF ~~ THEN + from_amn_03
END

IF ~~ THEN from_amn_02_a
SAY @365
IF ~~ THEN + from_amn_03
END

IF ~~ THEN from_amn_03
SAY @366
= @367
IF ~~ THEN + from_amn_06
IF ~Global("C#BR_KnowsAmn","GLOBAL",0)~ THEN + from_amn2
END

IF ~~ THEN from_amn_04
SAY @368
IF ~~ THEN EXIT
END

IF ~~ THEN from_amn_05
SAY @369
++ @360 + from_amn_02_a
++ @361 + from_amn_02
++ @362 + from_amn_04 
END

IF ~~ THEN from_amn_06
SAY @370
IF ~~ THEN EXIT
END

IF ~Global("C#Brandock_Dialog","GLOBAL",4) Global("C#BR_KnowsAmn","GLOBAL",1)~ from_amn2
SAY @371
++ @372 DO ~IncrementGlobal("C#Brandock_Dialog","GLOBAL",1)~ + from_amn2_01
++ @373 DO ~IncrementGlobal("C#Brandock_Dialog","GLOBAL",1) SetGlobal("C#BR_KnowsAmn","GLOBAL",1)~ + from_amn2_02
+ ~Global("C#BR_KnowsAmn","GLOBAL",0)~ + @374 DO ~IncrementGlobal("C#Brandock_Dialog","GLOBAL",1) SetGlobal("C#BR_KnowsAmn","GLOBAL",1)~ + from_amn2_03
+ ~Global("C#BR_KnowsAmn","GLOBAL",1)~ + @375 DO ~IncrementGlobal("C#Brandock_Dialog","GLOBAL",1) SetGlobal("C#BR_KnowsAmn","GLOBAL",1)~ + from_amn2_03
++ @376 DO ~IncrementGlobal("C#Brandock_Dialog","GLOBAL",1) SetGlobal("C#BR_KnowsAmn","GLOBAL",1)~ + from_amn2_04
++ @377 DO ~IncrementGlobal("C#Brandock_Dialog","GLOBAL",1) SetGlobal("C#BR_KnowsAmn","GLOBAL",1)~ + from_amn2_05
END

IF ~~ THEN from_amn2_01
SAY @378
IF ~~ THEN + from_amn2_02
END

IF ~~ THEN from_amn2_02
SAY @379
IF ~~ THEN + from_amn2_06
END

IF ~~ THEN from_amn2_03
SAY @380
IF ~~ THEN + from_amn2_06
END

IF ~~ THEN from_amn2_04
SAY @381
IF ~~ THEN + from_amn2_06
END

IF ~~ THEN from_amn2_05
SAY @382
IF ~~ THEN + from_amn2_06
END

IF ~~ THEN from_amn2_06
SAY @383
++ @384 + from_amn2_10
++ @385 + from_amn2_08
++ @386 + from_amn2_08
+ ~OR(2) InParty("ajantis") InParty("C#Brage")~ + @387 + from_amn2_08
++ @388 + from_amn2_07
++ @389 + from_amn2_09
END

IF ~~ THEN from_amn2_07
SAY @390
IF ~~ THEN + from_amn2_08
END

IF ~~ THEN from_amn2_08
SAY @391
= @392
IF ~~ THEN + from_amn2_11
END

IF ~~ THEN from_amn2_09
SAY @393
IF ~~ THEN + from_amn_06
END

IF ~~ THEN from_amn2_10
SAY @394
++ @385 + from_amn2_08
++ @386 + from_amn2_08
+ ~OR(2) InParty("ajantis") InParty("C#Brage")~ + @387 + from_amn2_08
++ @388 + from_amn2_07
++ @389 + from_amn2_09
END

IF ~~ THEN from_amn2_11
SAY @395
IF ~~ THEN EXIT
END

/* third dialogue: going back to Candlekeep - are the monks thoughtless or evil? Or scared? */

IF ~Global("C#Brandock_Dialog","GLOBAL",6) Global("C#Brandock_SeeCandlekeep","GLOBAL",0)~ THEN going_back
SAY @396
++ @397 + going_back_02
++ @398+ going_back_02
++ @399 + going_back_01
++ @82 + going_back_04
END

IF ~~ THEN going_back_01
SAY @400
++ @401 + going_back_02
++ @402 + going_back_02
++ @403 + going_back_02
++ @82 + going_back_04
END

IF ~~ THEN going_back_02
SAY @404
++ @405 + going_back_05
++ @406 + going_back_05
++ @407 + going_back_05
++ @408 + going_back_05
++ @409 + going_back_05
++ @410 + going_back_03
++ @82 + going_back_04
END

IF ~~ THEN going_back_03
SAY @411
IF ~~ THEN DO ~IncrementGlobal("C#Brandock_Dialog","GLOBAL",1)~ EXIT
END

IF ~~ THEN going_back_04
SAY @412
IF ~~ THEN DO ~IncrementGlobal("C#Brandock_Dialog","GLOBAL",1)~ EXIT
END

IF ~~ THEN going_back_05
SAY @413
IF ~~ THEN DO ~IncrementGlobal("C#Brandock_Dialog","GLOBAL",1)~ EXIT
END

IF ~Global("C#Brandock_Dialog","GLOBAL",6) GlobalGT("C#Brandock_SeeCandlekeep","GLOBAL",0)~ THEN going_back_06
SAY @414
IF ~~ THEN + going_back_02
END


/* fourth dialogue: Candlekeep (works in chapter 6 or after the player was in CC?) */

IF ~Global("C#Brandock_Dialog","GLOBAL",8)~ THEN candlekeep
SAY @415
+ ~Global("C#Brandock_CandlekeepPID","LOCALS",2)~ + @416 + candlekeep_01
+ ~!Global("C#Brandock_CandlekeepPID","LOCALS",2)~ + @417 + candlekeep_01
++ @418 + candlekeep_09
END

IF ~~ THEN candlekeep_01
SAY @419
IF ~~ THEN + candlekeep_03
IF ~GlobalGT("C#Brandock_Possessions","GLOBAL",1)~ THEN + candlekeep_02
END

IF ~~ THEN candlekeep_02
SAY @420
IF ~~ THEN + candlekeep_03
END

IF ~~ THEN candlekeep_03
SAY @421
++ @422 + candlekeep_04
++ @423 + candlekeep_05
++ @424 + candlekeep_05
++ @418 + candlekeep_09
END

IF ~~ THEN candlekeep_04
SAY @425
IF ~~ THEN + candlekeep_06
END

IF ~~ THEN candlekeep_05
SAY @426
IF ~~ THEN + candlekeep_06
END

IF ~~ THEN candlekeep_06
SAY @427
++ @428 + candlekeep_07
++ @429 + candlekeep_08
++ @418 + candlekeep_09
END

IF ~~ THEN candlekeep_07
SAY @430
IF ~~ THEN + candlekeep_08
END

IF ~~ THEN candlekeep_08
SAY @431
++ @432 + candlekeep_11
++ @433 + candlekeep_10
++ @434 + candlekeep_12
END

IF ~~ THEN candlekeep_09
SAY @435
IF ~~ THEN + candlekeep_12
END

IF ~~ THEN candlekeep_10
SAY @436
IF ~~ THEN + candlekeep_12
END

IF ~~ THEN candlekeep_11
SAY @437
IF ~~ THEN + candlekeep_12
END

IF ~~ THEN candlekeep_12
SAY @438
IF ~~ THEN DO ~IncrementGlobal("C#Brandock_Dialog","GLOBAL",1)~ EXIT
END


/* fifth dialogue: who is hunting you? */

IF ~Global("C#Brandock_Dialog","GLOBAL",10)~ THEN hunted_pc
SAY @439
++ @440 + hunted_pc_01
++ @441 + hunted_pc_02
++ @442 + hunted_pc_03
++ @443 + hunted_pc_02
++ @418 + hunted_pc_09
END

IF ~~ THEN hunted_pc_01
SAY @444
IF ~~ THEN + hunted_pc_04
END

IF ~~ THEN hunted_pc_02
SAY @445
IF ~~ THEN + hunted_pc_04
END

IF ~~ THEN hunted_pc_03
SAY @446
IF ~~ THEN + hunted_pc_04
END

IF ~~ THEN hunted_pc_04
SAY @447
++ @448 + hunted_pc_07
++ @449 + hunted_pc_06
++ @450 + hunted_pc_05
++ @451 + hunted_pc_09
END

IF ~~ THEN hunted_pc_05
SAY @452
IF ~~ THEN + hunted_pc_07
END

IF ~~ THEN hunted_pc_06
SAY @453
IF ~~ THEN + hunted_pc_07
END

IF ~~ THEN hunted_pc_07
SAY @454
= @455
+ ~OR(2) Dead("SHANK") DEAD("CARBOS")~ + @483 + hunted_pc_08
++ @456 + hunted_pc_09
++ @457 + hunted_pc_08
++ @458 + hunted_pc_08
++ @459 + hunted_pc_09
END

IF ~~ THEN hunted_pc_08
SAY @460
IF ~~ THEN + hunted_pc_09
END

IF ~~ THEN hunted_pc_09
SAY @461
IF ~~ THEN DO ~IncrementGlobal("C#Brandock_Dialog","GLOBAL",1)~ EXIT
END


END //APPEND
