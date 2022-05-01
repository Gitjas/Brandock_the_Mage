APPEND c#brandj

/* PID management: SoD evtl. von den BG1 - PIDs ausschließen */

/* one ID in case Brandock is half-ogre - he doesn't like to talk in this state! */
IF ~IsGabber(Player1)
Global("c#brisog","GLOBAL",1) //Brandock is half-ogre
~ THEN pid_half_ogre
SAY @469 /* ~Was ist?~ */
+ ~RandomNumLT(7,3)~ + @470 /* ~Wie fühlt Ihr Euch?~ */ + feel_halfogre_03
+ ~OR(2) RandomNum(7,4) RandomNum(7,5)~ + @470 /* ~Wie fühlt Ihr Euch?~ */ + feel_halfogre_01
+ ~RandomNumGT(7,4)~ + @470 /* ~Wie fühlt Ihr Euch?~ */ + feel_halfogre_02
+ ~RandomNum(7,7)~ + @470 /* ~Wie fühlt Ihr Euch?~ */ + feel_halfogre_04
+ ~Global("c#Brando_OgreTalk1","LOCALS",0)~ + @471 /* ~Ich würde mich gerne mit Euch unterhalten, Brandock.~ */ DO ~SetGlobal("c#Brando_OgreTalk1","LOCALS",1)~ + prefer_notalk_halfogre

/* inventory management.  - if Brandock is not in party but following as companion Brandock has to join the group so the player has access to the inventory. */

+ ~!InParty(Myself) Global("C#BrandockJoined","GLOBAL",2) NumInPartyLT(6)~ + @50 DO ~RemoveFamiliar()
SetGlobal("C#BrandockJoined","GLOBAL",1)
JoinParty()~ EXIT

+ ~!InParty(Myself) Global("C#BrandockJoined","GLOBAL",2) NumInParty(6)~ + @50 + join

+ ~Global("C#Brandock_HPAlarm","GLOBAL",0) Global("C#BrandockJoined","GLOBAL",2)~ + @51 + hp_alarm_on
+ ~Global("C#Brandock_HPAlarm","GLOBAL",1) Global("C#BrandockJoined","GLOBAL",2)~ + @52 + hp_alarm_off

++ @53 EXIT
END

IF ~~ THEN prefer_notalk_halfogre
SAY @472 /* ~In diesem Zustand möchte ich nicht viel reden, <CHARNAME>. Wenn Ihr quatschen wollt, dann muss das warten, bis ich wieder Menschengestalt angenommen habe.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN feel_halfogre_01
SAY @473 /* ~Strong.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN feel_halfogre_02
SAY @474 /* ~Relaxed.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN feel_halfogre_03
SAY @475 /* ~Hungry.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN feel_halfogre_04
SAY @476 /* ~I need to use the bushes... I probably shouldn't have said that.~ */
IF ~~ THEN EXIT
END

///////////////////////////////////////////////////
/* normale PIDs BG1 + SoD */
///////////////////////////////////////////////////
IF ~%BGT_VAR% IsGabber(Player1)
Global("c#brisog","GLOBAL",0) //Brandock is not half-ogre
~ THEN pid
SAY @0


/* SoD (put the more recent reply options on top) */

/* SoD game events */
//##

/* half-ogre shapeshift quest */
/* quest was not finished in BG1 - bring quest to same level: SoD */
+ ~%IT_IS_SOD%
GlobalGT("C#Brandock_Shapeshift","GLOBAL",2)
GlobalLT("C#Brandock_Shapeshift","GLOBAL",21)
Global("C#Brandock_UpdateShapeshift","LOCALS",0)~ + @1004 /* ~About your attempt to help Melicamp 'the chicken' with a spell out of your magic book...~ */ DO ~SetGlobal("C#Brandock_UpdateShapeshift","LOCALS",1)~ + update_shapeshift
+ ~%IT_IS_SOD%
Global("C#Brandock_Shapeshift","GLOBAL",21)
GlobalLT("C#Brando_VisitedMalm","GLOBAL",2)
Global("C#Brandock_UpdateShapeshift","LOCALS",0)~ + @1005 /* ~We didn't have time to go to the half-ogre as you requested. Did you see him in the meantime?~ */ DO ~SetGlobal("C#Brandock_UpdateShapeshift","LOCALS",1)~ + update_shapeshift_03

/* book restore quest: is continuous game and quest was not finished in BG1 ("restored" book was never received in BG1) */
+ ~%IT_IS_SOD%
Global("SOD_fromimport","GLOBAL",1)
Global("C#Br_BookRestoreAlone","GLOBAL",1)
GlobalLT("C#Br_BookRestore","GLOBAL",13)
OR(2)
HasItem("C#br0007","C#Brandock")
PartyHasItem("C#br0007")~ + @1000 /* ~What happened to your destroyed book? I see an empty book in your backpack, instead.~ */ + bookrestore_alone_sod
/* new game - what is that book? */
+ ~%IT_IS_SOD%
Global("SOD_fromimport","GLOBAL",0)
GlobalLT("C#Br_BookRestore","GLOBAL",13)
OR(2)
HasItem("C#br0007","C#Brandock")
PartyHasItem("C#br0007")~ + @1006 /* ~I see an empty book in your backpack. Remind me why it is so important to you?~ */ + bookrestore_alone_sod_00


/* BG1 (some for SoD in case of a continuous game) */

/* crossmod with bgqe: unbaked egg c#q04001.itm */

+ ~OR(5)
		PartyHasItem("c#q04001") 
		HasItem("c#q04001","C#Solaufein")
		HasItem("c#q04001","C#Grey")
		HasItem("c#q04001","C#Husam1")
		HasItem("c#q04001","C#Brandock")
	OR(3)
		!HasItem("c#q04001","C#Solaufein")
		Global("C#SolauJoined","GLOBAL",2)
		InParty("C#Solaufein")
	OR(3)
		!HasItem("c#q04001","C#Grey")
		Global("C#GreyJoined","GLOBAL",2)
		InParty("C#Grey")
	OR(3)
		!HasItem("c#q04001","C#Husam1")
		Global("C#HusamJoined","GLOBAL",2)
		InParty("C#Husam")
	OR(3)
		!HasItem("c#q04001","C#Brandock")
		Global("C#BrandockJoined","GLOBAL",2)
		InParty("C#Brandock")
Global("C#Brandock_c#q04001PID","LOCALS",0)
Global("c#q04_SpiderTimer","GLOBAL",0)
Global("C#BR_C#Q04007_3","GLOBAL",0)~ + @336 DO ~SetGlobal("C#Brandock_BhaalPID","LOCALS",1)~ + bgqe_nashkelmonster_egg


/* comments on game-related happenings */

/* half-ogre change */
+ ~Global("C#Brandock_Shapeshift","GLOBAL",19)~ + @439 /* ~You turned into a half-ogre! Do you have any idea what happened there?~ */ + halfogre_shift_01
+ ~GlobalGT("C#Brandock_Shapeshift","GLOBAL",19)
!GlobalGT("C#Brando_ShapeFollowup","LOCALS",4)
Global("C#Brando_ShapeshiftPID1","LOCALS",0)~ + @440 /* ~How do you cope with your half-ogre shape?~ */ DO ~SetGlobal("C#Brando_ShapeshiftPID1","LOCALS",1)~ + halfogre_shift_02
+ ~Global("C#Brandock_Shapeshift","GLOBAL",20)
Global("C#Brando_ShapeshiftPID","LOCALS",0)~ + @441 /* ~Do you want to talk about your half-ogre shapeshifting ability?~ */ DO ~SetGlobal("C#Brando_ShapeshiftPID","LOCALS",1)~ + halfogre_shift_03
+ ~//GlobalGT("C#Brando_ShapeFollowup","LOCALS",4)
GlobalGT("C#Brandock_Shapeshift","GLOBAL",20)
GlobalLT("C#Brando_ShapeshiftPID","LOCALS",2)~ + @442 /* ~Do you want to talk about your half-ogre shapeshifting ability now?~ */ DO ~SetGlobal("C#Brando_ShapeshiftPID","LOCALS",2)~ + halfogre_shift_04
+ ~Global("C#Brando_ShapeshiftPID","LOCALS",2)~ + @443 /* ~Do you want to talk more about your half-ogre shapeshifting ability?~ */ DO ~IncrementGlobal("C#Brando_ShapeshiftPID","LOCALS",1)~ + halfogre_shift_09
+ ~Global("C#Brando_ShapeshiftPID","LOCALS",3)~ + @443 /* ~Do you want to talk more about your half-ogre shapeshifting ability?~ */ DO ~IncrementGlobal("C#Brando_ShapeshiftPID","LOCALS",1)~ + halfogre_shift_10
+ ~Global("C#Brando_ShapeshiftPID","LOCALS",4)~ + @443 /* ~Do you want to talk more about your half-ogre shapeshifting ability?~ */ DO ~IncrementGlobal("C#Brando_ShapeshiftPID","LOCALS",1)~ + halfogre_shift_11
+ ~Global("C#Brando_ShapeshiftPID","LOCALS",5)~ + @443 /* ~Do you want to talk more about your half-ogre shapeshifting ability?~ */ DO ~IncrementGlobal("C#Brando_ShapeshiftPID","LOCALS",1)~ + halfogre_shift_12


+ ~GlobalLT("Chapter","GLOBAL",%tutu_chapter_6%)
Global("C#Br_ScribeScrollQuest","GLOBAL",4)
Global("C#Br_ScrollScribePID1","LOCALS",0)~ + @416 /* ~Scroll scribing with Elvanhair is great, but when will you be able to scribe them without his help?~ */ DO ~SetGlobal("C#Br_ScrollScribePID1","LOCALS",1)~ + scroll_scribing_alone_pid

+ ~Global("Chapter","GLOBAL",%tutu_chapter_7%)
!Global("DukeThanks","GLOBAL",1)
Global("C#Br_ScribeScrollQuest","GLOBAL",4)~ + @417 /* ~Scribing scrolls at Elvenhair's might be out of the question for some time, but I need scrolls, Brandock. Make it happen.~ */ + scroll_scribing_alone_pid_01
+ ~OR(2)
  GlobalGT("Chapter","GLOBAL",%tutu_chapter_7%)
  Global("DukeThanks","GLOBAL",1)
Global("C#Br_ScribeScrollQuest","GLOBAL",4)~ + @418 /* ~Scribing scrolls at Elvenhair's is not a solution for eternity. I need you to scribe scrolls elsewhere, too. Make it happen.~ */ + scroll_scribing_alone_pid_01

+ ~GlobalGT("C#Brandock_KnowBhaal","GLOBAL",0) Global("C#Brandock_BhaalPID","LOCALS",0)~ + @1 DO ~SetGlobal("C#Brandock_BhaalPID","LOCALS",1)~ + child_bhaal

/* friendly mage who would help Brandock with his book? */

+ ~%BG1_BEFORE_TRANSITION%
OR(2)
	!Global("Chapter","GLOBAL",%tutu_chapter_7%)
	!Global("DukeThanks","GLOBAL",0)
GlobalGT("C#Brandock_Possessions","GLOBAL",15)
Global("C#Br_BookRestore","GLOBAL",0)
!Dead("FIREB1")
!Dead("FIREBE")~ + @3 + elvenhair_pid

+ ~%BG1_BEFORE_TRANSITION%
Global("Chapter","GLOBAL",%tutu_chapter_7%)
Global("DukeThanks","GLOBAL",0)
GlobalGT("C#Brandock_Possessions","GLOBAL",15)
Global("C#Br_BookRestore","GLOBAL",0)
Global("C#Br_BookRestoreCH7","LOCALS",0)
!Dead("FIREB1")
!Dead("FIREBE")~ + @414 /* ~Brandock, I might know a friendly mage who could help with restoring the book: Firebead Elvenhair. But, considering we are being searched for murder currently, I guess we need to clear our names before this option gets realistic.~ */ DO ~SetGlobal("C#Br_BookRestoreCH7","LOCALS",1)~ + elvenhair_pid

+ ~%BG1_BEFORE_TRANSITION%
OR(2)
	!Global("Chapter","GLOBAL",%tutu_chapter_7%)
	!Global("DukeThanks","GLOBAL",0)
GlobalGT("C#Brandock_Possessions","GLOBAL",15)
Global("C#Br_BookRestore","GLOBAL",0)
Global("C#Br_BookRestoreCH7","LOCALS",1)
!Dead("FIREB1")
!Dead("FIREBE")~ + @415 /* ~So - our names are cleared. Time to go to Elvenhair and ask him for help with your book!~ */ + elvenhair_pid_00

+ ~%BG1_BEFORE_TRANSITION%
Global("C#Br_BookRestore","GLOBAL",4)
Global("C#Br_OctopusInkPID","LOCALS",0)~ + @4 DO ~SetGlobal("C#Br_OctopusInkPID","LOCALS",1)~ + where_octopus_ink
+ ~%BG1_BEFORE_TRANSITION%
Global("C#Br_BookRestore","GLOBAL",4)
Global("C#Br_OctopusInkPID","LOCALS",0)~ + @5 DO ~SetGlobal("C#Br_OctopusInkPID","LOCALS",1)~ + where_octopus_ink
+ ~%BG1_BEFORE_TRANSITION%
Global("C#Br_BookRestore","GLOBAL",4)
Global("C#Br_OctopusInkPID","LOCALS",0)~ + @6 DO ~SetGlobal("C#Br_OctopusInkPID","LOCALS",1)~ + where_octopus_ink


/* comments on what Brandock did or said */

/* scroll scribing - after Elvenhair helped Brandock and if PC didn't ask this in friendship dialogue */
+ ~Global("C#Br_AskedScrollScribingPID","LOCALS",0) 
OR(2)
GlobalGT("C#Br_ScribeScrollQuest","GLOBAL",2)
GlobalGT("C#BR_AlisarholdPID","LOCALS",2)~ + @163 /* ~Wait a moment - you could scribe scrolls already? Why didn't you do it then?~ */ DO ~SetGlobal("C#Br_AskedScrollScribingPID","LOCALS",1)~ + scribe_scrolls_asklate
+ ~%BG1_BEFORE_TRANSITION%
Global("C#Br_AskedScrollScribingPID2","LOCALS",1)
GlobalGT("C#Br_ScribeScrollQuest","GLOBAL",2)
GlobalGT("C#BR_AlisarholdPID","LOCALS",2)
!Global("C#Brando_BookquestHold","GLOBAL",1)~ + @477 /* ~Seems like you found a quiet place for scroll scribing!~ */ DO ~SetGlobal("C#Br_AskedScrollScribingPID2","LOCALS",2)~ + scribe_scrolls_asklate_01

/* Brandock's Time in Alisarhold */

+ ~Global("C#BR_FireTablePID","LOCALS",1)~ + @7 DO ~SetGlobal("C#BR_FireTablePID","LOCALS",2)~ + tableonfire
+ ~Global("C#BR_AlisarholdPID","LOCALS",1)~ + @8 + alisarhold_pid

+ ~Global("C#BR_AlisarholdPID","LOCALS",2)~ + @9 + in_alisarhold_pid

+ ~GlobalGT("C#BR_AlisarholdPID","LOCALS",0) Global("C#BR_LeaveAlisarholdPID","LOCALS",0)~ + @10 + leave_alisarhold_pid


/* valuable book and Brandock's plans concerning Candlekeep */
+ ~OR(2)
	%BG1_BEFORE_TRANSITION% 
	Global("SOD_fromimport","GLOBAL",1)
GlobalGT("C#Brandock_Possessions","GLOBAL",1)
Global("C#Brandock_BookDispearPID","LOCALS",0)~ + @11 DO ~SetGlobal("C#Brandock_BookDispearPID","LOCALS",1)~ + newbook
+ ~OR(2)
	%BG1_BEFORE_TRANSITION% 
	Global("SOD_fromimport","GLOBAL",1)
GlobalGT("C#Brandock_Possessions","GLOBAL",1)
Global("C#Brandock_BookDispearPID","LOCALS",0)~ + @12 DO ~SetGlobal("C#Brandock_BookDispearPID","LOCALS",1)~ + newbook_01


+ ~OR(2)
	%BG1_BEFORE_TRANSITION% 
	Global("SOD_fromimport","GLOBAL",1)
GlobalGT("C#Brandock_Possessions","GLOBAL",1)
!GlobalGT("C#Br_BookRestore","GLOBAL",1)
Global("C#BR_KnowGorionsDeath","GLOBAL",1)
OR(2) PartyHasItem("c#br0001") HasItem("c#br0001","C#Brandock")
Global("C#Brandock_EnterCandlekeepPID","LOCALS",0)~ + @13 DO ~SetGlobal("C#Brandock_EnterCandlekeepPID","LOCALS",2)~ + enter_candlekeep_06
+ ~OR(2)
	%BG1_BEFORE_TRANSITION% 
	Global("SOD_fromimport","GLOBAL",1)
GlobalGT("C#Brandock_Possessions","GLOBAL",1)
!GlobalGT("C#Br_BookRestore","GLOBAL",1)
Global("C#BR_KnowGorionsDeath","GLOBAL",1)
OR(2) PartyHasItem("c#br0001") HasItem("c#br0001","C#Brandock")
Global("C#Brandock_EnterCandlekeepPID","LOCALS",0)~ + @14 DO ~SetGlobal("C#Brandock_EnterCandlekeepPID","LOCALS",1)~ + enter_candlekeep

+ ~OR(2)
	%BG1_BEFORE_TRANSITION% 
	Global("SOD_fromimport","GLOBAL",1)
GlobalGT("C#Brandock_Possessions","GLOBAL",1)
!GlobalGT("C#Br_BookRestore","GLOBAL",5)
Global("C#Brandock_BookPID","LOCALS",0)~ + @15 DO ~SetGlobal("C#Brandock_BookPID","LOCALS",1)~ + book
+ ~OR(2)
	%BG1_BEFORE_TRANSITION% 
	Global("SOD_fromimport","GLOBAL",1)
GlobalGT("C#Brandock_Possessions","GLOBAL",1)
!GlobalGT("C#Br_BookRestore","GLOBAL",5)
Global("C#Brandock_BookPID","LOCALS",0)~ + @16 DO ~SetGlobal("C#Brandock_BookPID","LOCALS",1)~ + book_02

+ ~OR(2)
	%BG1_BEFORE_TRANSITION% 
	Global("SOD_fromimport","GLOBAL",1)
GlobalGT("C#Brandock_Possessions","GLOBAL",1)
Global("C#Brandock_IntoCKPID","LOCALS",0)~ + @17 DO ~SetGlobal("C#Brandock_IntoCKPID","LOCALS",1)~ + work_out_01
+ ~OR(2)
	%BG1_BEFORE_TRANSITION% 
	Global("SOD_fromimport","GLOBAL",1)
GlobalGT("C#Brandock_Possessions","GLOBAL",1)
Global("C#Brandock_IntoCKPID","LOCALS",0)~ + @18 DO ~SetGlobal("C#Brandock_IntoCKPID","LOCALS",1)~ + work_out_01

+ ~OR(2)
	%BG1_BEFORE_TRANSITION% 
	Global("SOD_fromimport","GLOBAL",1)
GlobalGT("C#Brandock_Possessions","GLOBAL",1)
Global("C#BR_KnowGorionsDeath","GLOBAL",1)
Global("C#Brandock_ValuableBookPID","LOCALS",0)~ + @19 DO ~SetGlobal("C#Brandock_ValuableBookPID","LOCALS",1)~ + valuable_book
+ ~OR(2)
	%BG1_BEFORE_TRANSITION% 
	Global("SOD_fromimport","GLOBAL",1)
GlobalGT("C#Brandock_Possessions","GLOBAL",1)
Global("C#BR_KnowGorionsDeath","GLOBAL",1)
Global("C#Brandock_ValuableBookPID","LOCALS",0)~ + @20 DO ~SetGlobal("C#Brandock_ValuableBookPID","LOCALS",1)~ + valuable_book_01

+ ~OR(2)
	%BG1_BEFORE_TRANSITION% 
	Global("SOD_fromimport","GLOBAL",1)
GlobalGT("C#Brandock_Possessions","GLOBAL",1)
Global("C#BR_KnowGorionsDeath","GLOBAL",1)
Global("C#Brandock_ValuableBookPID2","LOCALS",0)~ + @21 DO ~SetGlobal("C#Brandock_ValuableBookPID2","LOCALS",1)~ + valuable_book_02

+ ~OR(2)
	%BG1_BEFORE_TRANSITION% 
	Global("SOD_fromimport","GLOBAL",1)
GlobalGT("C#Brandock_Possessions","GLOBAL",1)
Global("C#Brandock_BookPricePID","LOCALS",0)~ + @22 DO ~SetGlobal("C#Brandock_BookPricePID","LOCALS",1)~ + book_source

+ ~%BG1_BEFORE_TRANSITION% 
GlobalGT("C#Brandock_Possessions","GLOBAL",1)
Global("C#BE_PCKnewCandlekeepPID","LOCALS",1)~ + @23 DO ~SetGlobal("C#BE_PCKnewCandlekeepPID","LOCALS",2)~ + book_already



/* ask him about Candlekeep, after the news of Gorion's death, before finding his possessions */

+ ~%BG1_BEFORE_TRANSITION% Global("C#BR_KnowGorionsDeath","GLOBAL",1) 
Global("C#Brandock_CandlekeepPID","LOCALS",0)
!GlobalGT("C#Brandock_Possessions","GLOBAL",1)~ + @24 DO ~SetGlobal("C#Brandock_CandlekeepPID","LOCALS",1)~ + study_candlekeep



/* upon rejoining after Half-ogre change */
+ ~OR(2)
	%BG1_BEFORE_TRANSITION% 
	Global("SOD_fromimport","GLOBAL",1)
Global("C#Br_PIDPuppiesNGrannies","LOCALS",1)~ + @25 DO ~SetGlobal("C#Br_PIDPuppiesNGrannies","LOCALS",2)~ + puppies
+ ~OR(2)
	%BG1_BEFORE_TRANSITION% 
	Global("SOD_fromimport","GLOBAL",1)
Global("C#Br_PIDPuppiesNGrannies","LOCALS",1)~ + @26 DO ~SetGlobal("C#Br_PIDPuppiesNGrannies","LOCALS",2)~ + puppies_01


/* book restored itself - not translated yet */
/* So, your book is a book again? What happened back there? */
+ ~%BG1_BEFORE_TRANSITION%
Global("C#Br_BookRestore","GLOBAL",6)
Global("C#Br_BookRestorePID","LOCALS",0)~ + @2 + transformed_book_pid

/* Want to talk more about how you feel with your restored book? */
+ ~%BG1_BEFORE_TRANSITION% //still BG1
Global("C#BRPID_HappyNewBook","LOCALS",0)
Global("C#Br_BookRestore","GLOBAL",10)
Global("C#Brandock_Expelled","GLOBAL",0)~ + @34 DO ~IncrementGlobal("C#BRPID_HappyNewBook","LOCALS",1)~ + transformed_book3
+ ~%BG1_BEFORE_TRANSITION% //still BG1
Global("C#BRPID_HappyNewBook","LOCALS",1)
Global("C#Br_BookRestore","GLOBAL",10)
Global("C#Brandock_Expelled","GLOBAL",0)~ + @34 DO ~IncrementGlobal("C#BRPID_HappyNewBook","LOCALS",1)~ + transformed_book3_01

/* after the note in the book is translated - Brandock gets very quiet about it until after they were in the temple of Oghma in Athkatla */
/* ~Want to talk more about your retored book and the note from Bowegentle in it?~ */
+ ~OR(2)
	%BG1_BEFORE_TRANSITION% //still BG1
	Global("SOD_fromimport","GLOBAL",1) //SoD AFTER transition from BG1
Global("C#BRPID_TranslatedNewBook","LOCALS",0)
GlobalGT("C#Br_BookRestore","GLOBAL",10)
Global("C#Brandock_Expelled","GLOBAL",0)~ + @479 /* ~Want to talk more about your retored book and the note from Bowegentle in it?~ */ DO ~IncrementGlobal("C#BRPID_TranslatedNewBook","LOCALS",1)~ + book_translated_note
+ ~OR(2)
	%BG1_BEFORE_TRANSITION% //still BG1
	Global("SOD_fromimport","GLOBAL",1) //SoD AFTER transition from BG1
Global("C#BRPID_TranslatedNewBook","LOCALS",1)
GlobalGT("C#Br_BookRestore","GLOBAL",10)
Global("C#Brandock_Expelled","GLOBAL",0)~ + @479 /* ~Want to talk more about your retored book and the note from Bowegentle in it?~ */ DO ~IncrementGlobal("C#BRPID_TranslatedNewBook","LOCALS",1)~ + book_translated_note_01
+ ~OR(2)
	%BG1_BEFORE_TRANSITION% //still BG1
	Global("SOD_fromimport","GLOBAL",1) //SoD AFTER transition from BG1
Global("C#BRPID_TranslatedNewBook","LOCALS",2)
GlobalGT("C#Br_BookRestore","GLOBAL",10)
Global("C#Brandock_Expelled","GLOBAL",0)~ + @479 /* ~Want to talk more about your retored book and the note from Bowegentle in it?~ */ DO ~IncrementGlobal("C#BRPID_TranslatedNewBook","LOCALS",1)~ + book_translated_note_02

/* ~Want to talk more about being expelled from Candlekeep?~ */
+ ~OR(2)
	%BG1_BEFORE_TRANSITION% //still BG1
	Global("SOD_fromimport","GLOBAL",1) //SoD AFTER transition from BG1
Global("C#BRPID_ExpelledCandlekeep","LOCALS",0)
GlobalGT("C#Brandock_Expelled","GLOBAL",1)~ + @35 DO ~IncrementGlobal("C#BRPID_ExpelledCandlekeep","LOCALS",1)~ + pid_expelled_candlekeep
+ ~OR(2)
	%BG1_BEFORE_TRANSITION% //still BG1
	Global("SOD_fromimport","GLOBAL",1) //SoD AFTER transition from BG1
Global("C#BRPID_ExpelledCandlekeep","LOCALS",1)
GlobalGT("C#Brandock_Expelled","GLOBAL",1)~ + @35 DO ~IncrementGlobal("C#BRPID_ExpelledCandlekeep","LOCALS",1)~ + pid_expelled_candlekeep_01
+ ~OR(2)
	%BG1_BEFORE_TRANSITION% //still BG1
	Global("SOD_fromimport","GLOBAL",1) //SoD AFTER transition from BG1
Global("C#BRPID_ExpelledCandlekeep","LOCALS",2)
GlobalGT("C#Brandock_Expelled","GLOBAL",1)~ + @35 DO ~IncrementGlobal("C#BRPID_ExpelledCandlekeep","LOCALS",1)~ + pid_expelled_candlekeep_02
+ ~OR(2)
	%BG1_BEFORE_TRANSITION% //still BG1
	Global("SOD_fromimport","GLOBAL",1) //SoD AFTER transition from BG1
Global("C#BRPID_ExpelledCandlekeep","LOCALS",3)
GlobalGT("C#Brandock_Expelled","GLOBAL",1)~ + @35 DO ~IncrementGlobal("C#BRPID_ExpelledCandlekeep","LOCALS",1)~ + pid_expelled_candlekeep_03


/* first teacher */

+ ~OR(2)
	%BG1_BEFORE_TRANSITION% 
	Global("SOD_fromimport","GLOBAL",1)
Global("C#Brandock_1stTutor","GLOBAL",4) Global("C#Brandock_TutorPID","LOCALS",0)~ + @36 DO ~IncrementGlobal("C#Brandock_TutorPID","LOCALS",1)~ + first_tutor_PID
+ ~OR(2)
	%BG1_BEFORE_TRANSITION% 
	Global("SOD_fromimport","GLOBAL",1)
Global("C#Brandock_1stTutor","GLOBAL",4) Global("C#Brandock_TutorPID","LOCALS",1)~ + @36 DO ~IncrementGlobal("C#Brandock_TutorPID","LOCALS",1)~ + first_tutor_PID2
+ ~OR(2)
	%BG1_BEFORE_TRANSITION% 
	Global("SOD_fromimport","GLOBAL",1)
Global("C#Brandock_1stTutor","GLOBAL",4) Global("C#Brandock_TutorPID","LOCALS",2)~ + @36 DO ~IncrementGlobal("C#Brandock_TutorPID","LOCALS",1)~ + first_tutor_PID3



/* Carnival */

+ ~OR(2)
	%BG1_BEFORE_TRANSITION% 
	Global("SOD_fromimport","GLOBAL",1)
Global("C#Brandock_Carnival","GLOBAL",3) Global("C#Brandock_CarnivalPID","LOCALS",0)~ + @37 DO ~SetGlobal("C#Brandock_CarnivalPID","LOCALS",1)~ + carneval
+ ~OR(2)
	%BG1_BEFORE_TRANSITION% 
	Global("SOD_fromimport","GLOBAL",1)
Global("C#BR_KnowsAmn","GLOBAL",1) Global("C#Brandock_CarnivalPID","LOCALS",1)~ + @38 DO ~SetGlobal("C#Brandock_CarnivalPID","LOCALS",2)~ + carneval_01
+ ~OR(2)
	%BG1_BEFORE_TRANSITION% 
	Global("SOD_fromimport","GLOBAL",1)
Global("C#BR_KnowsAmn","GLOBAL",1) Global("C#Brandock_CarnivalPID","LOCALS",2)~ + @38 DO ~SetGlobal("C#Brandock_CarnivalPID","LOCALS",3)~ + carneval_02
+ ~OR(2)
	%BG1_BEFORE_TRANSITION% 
	Global("SOD_fromimport","GLOBAL",1)
Global("C#BR_KnowsAmn","GLOBAL",1) Global("C#Brandock_CarnivalPID","LOCALS",3)~ + @38 DO ~SetGlobal("C#Brandock_CarnivalPID","LOCALS",4)~ + carneval_03



/* time as half-ogre */
+ ~GlobalGT("C#Brandock_Shapeshift","GLOBAL",10) Global("C#BRPID_TimeAsHalfogre","LOCALS",0)~ + @39 DO ~IncrementGlobal("C#BRPID_TimeAsHalfogre","LOCALS",1)~ + time_as_halfogre_01
+ ~GlobalGT("C#Brandock_Shapeshift","GLOBAL",10) Global("C#BRPID_TimeAsHalfogre","LOCALS",1)~ + @40 DO ~IncrementGlobal("C#BRPID_TimeAsHalfogre","LOCALS",1)~ + time_as_halfogre_02
+ ~GlobalGT("C#Brandock_Shapeshift","GLOBAL",10) Global("C#BRPID_TimeAsHalfogre","LOCALS",2)~ + @40 DO ~IncrementGlobal("C#BRPID_TimeAsHalfogre","LOCALS",1)~ + time_as_halfogre_03
+ ~GlobalGT("C#Brandock_Shapeshift","GLOBAL",10) Global("C#BRPID_TimeAsHalfogre","LOCALS",3)~ + @40 DO ~IncrementGlobal("C#BRPID_TimeAsHalfogre","LOCALS",1)~ + time_as_halfogre_04
+ ~GlobalGT("C#Brandock_Shapeshift","GLOBAL",10) Global("C#BRPID_TimeAsHalfogre","LOCALS",4)~ + @40 DO ~IncrementGlobal("C#BRPID_TimeAsHalfogre","LOCALS",1)~ + time_as_halfogre_05
+ ~GlobalGT("C#Brandock_Shapeshift","GLOBAL",10) Global("C#BRPID_TimeAsHalfogre","LOCALS",5)~ + @40 DO ~IncrementGlobal("C#BRPID_TimeAsHalfogre","LOCALS",1)~ + time_as_halfogre_06
+ ~GlobalGT("C#Brandock_Shapeshift","GLOBAL",10) Global("C#BRPID_TimeAsHalfogre","LOCALS",6)~ + @40 DO ~IncrementGlobal("C#BRPID_TimeAsHalfogre","LOCALS",1)~ + time_as_halfogre_07

/* tainted ore */

+ ~OR(2)
	%BG1_BEFORE_TRANSITION% 
	Global("SOD_fromimport","GLOBAL",1)
Global("C#Brandock_TaintedOre","GLOBAL",2)~ + @41 DO ~IncrementGlobal("C#Brandock_TaintedOre","GLOBAL",1)~ + tainted_ore_01
+ ~OR(2)
	%BG1_BEFORE_TRANSITION% 
	Global("SOD_fromimport","GLOBAL",1)
Global("C#Brandock_TaintedOre","GLOBAL",3)~ + @41 DO ~IncrementGlobal("C#Brandock_TaintedOre","GLOBAL",1)~ + tainted_ore_02
+ ~OR(2)
	%BG1_BEFORE_TRANSITION% 
	Global("SOD_fromimport","GLOBAL",1)
Global("C#Brandock_TaintedOre","GLOBAL",4)~ + @41 DO ~IncrementGlobal("C#Brandock_TaintedOre","GLOBAL",1)~ + tainted_ore_03
+ ~OR(2)
	%BG1_BEFORE_TRANSITION% 
	Global("SOD_fromimport","GLOBAL",1)
Global("C#Brandock_TaintedOre","GLOBAL",5)~ + @41 DO ~IncrementGlobal("C#Brandock_TaintedOre","GLOBAL",1)~ + tainted_ore_04
+ ~OR(2)
	%BG1_BEFORE_TRANSITION% 
	Global("SOD_fromimport","GLOBAL",1)
Global("C#Brandock_TaintedOre","GLOBAL",6)~ + @41 DO ~IncrementGlobal("C#Brandock_TaintedOre","GLOBAL",1)~ + tainted_ore_05
+ ~OR(2)
	%BG1_BEFORE_TRANSITION% 
	Global("SOD_fromimport","GLOBAL",1)
Global("C#Brandock_TaintedOre","GLOBAL",7)~ + @41 DO ~IncrementGlobal("C#Brandock_TaintedOre","GLOBAL",1)~ + tainted_ore_06



/* self */
+ ~OR(2)
	%BG1_BEFORE_TRANSITION% 
	Global("SOD_fromimport","GLOBAL",1)
Global("C#Brandock_Possessions","GLOBAL",0) Global("C#Brandock_YouselfPID","LOCALS",0)~ + @42 DO ~SetGlobal("C#Brandock_YouselfPID","LOCALS",1)~ + yourself
+ ~OR(2)
	%BG1_BEFORE_TRANSITION% 
	Global("SOD_fromimport","GLOBAL",1)
Global("C#BR_KnowsAmn","GLOBAL",0) Global("C#Brandock_Youself2PID","LOCALS",0)~ + @43 DO ~SetGlobal("C#Brandock_Youself2PID","LOCALS",1)~ + where_from
+ ~OR(2)
	%BG1_BEFORE_TRANSITION% 
	Global("SOD_fromimport","GLOBAL",1)
Global("C#Brandock_Possessions","GLOBAL",0)
Global("C#Brandock_BeHerePID","LOCALS",0)~ + @44 DO ~SetGlobal("C#Brandock_BeHerePID","LOCALS",1)~ + sword_coast

/* before the knowledge that he is from Amn */
+ ~OR(2)
	%BG1_BEFORE_TRANSITION% 
	Global("SOD_fromimport","GLOBAL",1)
Global("C#BR_KnowsAmn","GLOBAL",0) Global("C#Brandock_HowMage1PID","LOCALS",0)~ + @45 DO ~SetGlobal("C#Brandock_HowMage1PID","LOCALS",1)~ + mage_first

/* after knowing that ne is from Amn */
+ ~OR(2)
	%BG1_BEFORE_TRANSITION% 
	Global("SOD_fromimport","GLOBAL",1)
Global("C#BR_KnowsAmn","GLOBAL",1) Global("C#Brandock_HowMagePID","LOCALS",0)~ + @46 DO ~SetGlobal("C#Brandock_HowMagePID","LOCALS",1)~ + became_mage_in_amn


/* Want to talk more about how you became a mage in Amn? */
+ ~Global("C#Brandock_HowMagePID","LOCALS",1) Global("C#BR_KnowsAmn","GLOBAL",1)~ + @47 DO ~IncrementGlobal("C#Brandock_HowMagePID","LOCALS",1)~ + mage_longversion_01
+ ~Global("C#Brandock_HowMagePID","LOCALS",2) Global("C#BR_KnowsAmn","GLOBAL",1)~ + @47 DO ~IncrementGlobal("C#Brandock_HowMagePID","LOCALS",1)~ + mage_longversion_02
+ ~Global("C#Brandock_HowMagePID","LOCALS",3) Global("C#BR_KnowsAmn","GLOBAL",1)~ + @47 DO ~IncrementGlobal("C#Brandock_HowMagePID","LOCALS",1)~ + mage_longversion_03
+ ~Global("C#Brandock_HowMagePID","LOCALS",4) Global("C#BR_KnowsAmn","GLOBAL",1)~ + @47 DO ~IncrementGlobal("C#Brandock_HowMagePID","LOCALS",1)~ + mage_longversion_04
+ ~Global("C#Brandock_HowMagePID","LOCALS",5) Global("C#BR_KnowsAmn","GLOBAL",1)~ + @47 DO ~IncrementGlobal("C#Brandock_HowMagePID","LOCALS",1)~ + mage_longversion_05
+ ~Global("C#Brandock_HowMagePID","LOCALS",6) Global("C#BR_KnowsAmn","GLOBAL",1)~ + @47 DO ~IncrementGlobal("C#Brandock_HowMagePID","LOCALS",1)~ + mage_longversion_06


+ ~OR(2)
	%BG1_BEFORE_TRANSITION% 
	Global("SOD_fromimport","GLOBAL",1)
Global("C#BR_KnowsAmn","GLOBAL",1) Global("C#Brandock_MageInAmnPID","LOCALS",0)~ + @48 + amn_and_mages
+ ~OR(2)
	%BG1_BEFORE_TRANSITION% 
	Global("SOD_fromimport","GLOBAL",1)
Global("C#BR_KnowsAmn","GLOBAL",1) Global("C#Brandock_MageInAmnPID","LOCALS",1)~ + @49 DO ~IncrementGlobal("C#Brandock_MageInAmnPID","LOCALS",1)~ + amn_and_mages2
+ ~OR(2)
	%BG1_BEFORE_TRANSITION% 
	Global("SOD_fromimport","GLOBAL",1)
Global("C#BR_KnowsAmn","GLOBAL",1) Global("C#Brandock_MageInAmnPID","LOCALS",2)~ + @49 DO ~IncrementGlobal("C#Brandock_MageInAmnPID","LOCALS",1)~ + amn_and_mages3

/* general things */

+ ~GlobalGT("C#Br_BookRestore","GLOBAL",9) Global("C#Brandock_PID_BookRestore10","LOCALS",0)~ + @27 DO ~SetGlobal("C#Brandock_PID_BookRestore10","LOCALS",1)~ + bookrestore10_followup
+ ~GlobalGT("C#Br_BookRestore","GLOBAL",9) Global("C#Brandock_PID_BookRestore10","LOCALS",0)~ + @28 DO ~SetGlobal("C#Brandock_PID_BookRestore10","LOCALS",1)~ + bookrestore10_followup1
+ ~GlobalGT("C#Br_BookRestore","GLOBAL",9) Global("C#Brandock_PID_BookRestore10","LOCALS",0)~ + @29 DO ~SetGlobal("C#Brandock_PID_BookRestore10","LOCALS",1)~ + bookrestore10_followup2


+ ~OR(2)
	%BG1_BEFORE_TRANSITION% 
	Global("SOD_fromimport","GLOBAL",1)
GlobalGT("C#Brandock_Possessions","GLOBAL",3) Global("C#Brandock_PID_01","LOCALS",0)~ + @30 DO ~SetGlobal("C#Brandock_PID_01","LOCALS",1)~ + happy_be_here_01
+ ~OR(2)
	%BG1_BEFORE_TRANSITION% 
	Global("SOD_fromimport","GLOBAL",1)
GlobalGT("C#Brandock_Possessions","GLOBAL",3) Global("C#Brandock_PID_01","LOCALS",0)~ + @31 DO ~SetGlobal("C#Brandock_PID_01","LOCALS",1)~ + happy_be_here_01
+ ~OR(2)
	%BG1_BEFORE_TRANSITION% 
	Global("SOD_fromimport","GLOBAL",1)
GlobalGT("C#Brandock_Possessions","GLOBAL",3) Global("C#Brandock_PID_01","LOCALS",0)~ + @32 DO ~SetGlobal("C#Brandock_PID_01","LOCALS",1)~ + happy_be_here_02





/* Something on your mind? */

/* SoD content */

/* burnt inn in bd1000 */
+ ~%IT_IS_SOD% 
GlobalGT("bd_plot","global",150)
OR(2)
	Global("SOD_fromimport","GLOBAL",0)
	Global("C#BRPID_OnYourMind","LOCALS",2)
Global("C#BRPID_OnYourMindSoD","LOCALS",0)~ + @33 DO ~IncrementGlobal("C#BRPID_OnYourMindSoD","LOCALS",1)~ + burnt_inn_bd1000

+ ~%IT_IS_SOD% 
OR(2)
	Global("SOD_fromimport","GLOBAL",0)
	Global("C#BRPID_OnYourMind","LOCALS",2)
Global("C#BRPID_OnYourMindSoD","LOCALS",1)~ + @33 DO ~IncrementGlobal("C#BRPID_OnYourMindSoD","LOCALS",2)~ + burnt_inn_bd1000_follow_up

/* Elandro and the Feyr */
+ ~%IT_IS_SOD% Dead("bdfeyr")
OR(2)
	Global("SOD_fromimport","GLOBAL",0)
	Global("C#BRPID_OnYourMind","LOCALS",2)
Global("C#BRPID_OnYourMindSoD","LOCALS",2)~ + @33 DO ~IncrementGlobal("C#BRPID_OnYourMindSoD","LOCALS",3)~ + on_your_mind_sod_01

+ ~OR(2)
	%BG1_BEFORE_TRANSITION% //still BG1
	Global("SOD_fromimport","GLOBAL",1) //SoD AFTER transition from BG1
Global("C#BRPID_OnYourMind","LOCALS",0)
Global("C#Brandock_Thalantyr","GLOBAL",1)
GlobalGT("C#Brandock_Possessions","GLOBAL",3)~ + @33 DO ~IncrementGlobal("C#BRPID_OnYourMind","LOCALS",1)~ + on_your_mind_03
+ ~OR(2)
	%BG1_BEFORE_TRANSITION% 
	Global("SOD_fromimport","GLOBAL",1)
Global("C#BRPID_OnYourMind","LOCALS",1)
GlobalGT("C#Brandock_Possessions","GLOBAL",3)
GlobalGT("C#Brandock_Shapeshift","GLOBAL",10)~ + @33 DO ~IncrementGlobal("C#BRPID_OnYourMind","LOCALS",1)~ + on_your_mind_04



/* inventory management.  - if Brandock is not in party but following as companion Brandock has to join the group so the player has access to the inventory.
This is what usually is dealt with by the kicked out "P" dialogue for re-joining */

+ ~!InParty(Myself) Global("C#BrandockJoined","GLOBAL",2) NumInPartyLT(6)~ + @50 DO ~RemoveFamiliar()
SetGlobal("C#BrandockJoined","GLOBAL",1)
JoinParty()~ EXIT

+ ~!InParty(Myself) Global("C#BrandockJoined","GLOBAL",2) NumInParty(6)~ + @50 + join


+ ~Global("C#Brandock_HPAlarm","GLOBAL",0) Global("C#BrandockJoined","GLOBAL",2)~ + @51 + hp_alarm_on
+ ~Global("C#Brandock_HPAlarm","GLOBAL",1) Global("C#BrandockJoined","GLOBAL",2)~ + @52 + hp_alarm_off


++ @53 EXIT
END

IF ~~ THEN sure_end
SAY @57
IF ~~ THEN EXIT
END

/* scroll skribing - late question */

IF ~~ THEN scribe_scrolls_asklate
SAY @164  /* ~Because I'd need papyrus, magic ink, and a quiet place to do so, <CHARNAME>. And a spell to copy on top of it. And... and the courage to do it in a surrounding that is not magically protected against fire.~ */ 
IF ~~ THEN EXIT
IF ~GlobalGT("C#Br_ScribeScrollQuest","GLOBAL",2)~ THEN DO ~SetGlobal("C#Br_AskedScrollScribingPID2","LOCALS",2)~ + scribe_scrolls_asklate_01
END

IF ~~ THEN scribe_scrolls_asklate_01
SAY @413 /* Master Elvenhair's desk is perfect. His presence while I do it is even better. He'll know how to handle a fire if I cause another one - and he probably already protected his home against it.~ */
IF ~~ THEN EXIT
END


/* magic and Amn */
IF ~~ THEN amn_and_mages
SAY @58
++ @59 + amn_and_mages_01
++ @60 + amn_and_mages_02
++ @61 + amn_and_mages_03
++ @62 + sure_end
END

IF ~~ THEN amn_and_mages_01
SAY @63
IF ~~ THEN + amn_and_mages_03
END

IF ~~ THEN amn_and_mages_02
SAY @64
IF ~~ THEN + amn_and_mages_03
END

IF ~~ THEN amn_and_mages_03
SAY @65 
= @66
IF ~~ THEN DO ~SetGlobal("C#Brandock_MageInAmnPID","LOCALS",1)~ EXIT
END

IF ~~ THEN amn_and_mages2
SAY @67
= @68
IF ~~ THEN EXIT
END

IF ~~ THEN amn_and_mages3
SAY @69
IF ~~ THEN EXIT
END



/* follow-up after being expelled from Candlekeep */

IF ~~ THEN pid_expelled_candlekeep
SAY @70
= @71
IF ~~ THEN EXIT
END

IF ~~ THEN pid_expelled_candlekeep_01
SAY @72
= @73
IF ~~ THEN EXIT
END

IF ~~ THEN pid_expelled_candlekeep_02
SAY @74
= @75
= @76
IF ~~ THEN EXIT
END

IF ~~ THEN pid_expelled_candlekeep_03
SAY @77
= @78
= @79
= @80
= @81
IF ~~ THEN EXIT
END

/* Octopus ink */
IF ~~ THEN where_octopus_ink
SAY @82
IF ~~ THEN EXIT
END

/* follow up: book restoration */
IF ~~ THEN bookrestore10_followup
SAY @83
++ @84 + bookrestore10_followup_02
++ @85 + bookrestore10_followup_01
++ @86 + bookrestore10_followup_03
++ @87 + sure_end
END

IF ~~ THEN bookrestore10_followup_01
SAY @88 
++ @84 + bookrestore10_followup_02
++ @86 + bookrestore10_followup_03
++ @87 + sure_end
END

IF ~~ THEN bookrestore10_followup_02
SAY @89
IF ~~ THEN + bookrestore10_followup_04
END

IF ~~ THEN bookrestore10_followup_03
SAY @90
IF ~~ THEN + bookrestore10_followup_04
END

IF ~~ THEN bookrestore10_followup_04
SAY @91
IF ~~ THEN EXIT
END

IF ~~ THEN bookrestore10_followup1
SAY @92
++ @84 + bookrestore10_followup_02
++ @86 + bookrestore10_followup_03
++ @87 + sure_end
END

IF ~~ THEN bookrestore10_followup2
SAY @93
IF ~~ THEN EXIT
END


IF ~~ THEN transformed_book_pid
SAY @94
++ @95 + transformed_book_pid_02
++ @96 + transformed_book_pid_01
++ @97 + transformed_book_pid_01
END

IF ~~ THEN transformed_book_pid_01
SAY @98
IF ~~ THEN + transformed_book_pid_02
END

IF ~~ THEN transformed_book_pid_02
SAY @99
IF ~~ THEN DO ~SetGlobal("C#Br_BookRestorePID","LOCALS",1)~ EXIT
END



IF ~~ THEN book_translated_note
SAY @480 /* ~It's... it's hilarious, <CHARNAME>. I don't even know where to start. I don't know what to think - I'm not even sure whether I should feel blessed, cursed - or mocked by the gods. But thanks for asking.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN book_translated_note_01
SAY @481 /* ~I'm still trying to pretend this empty, accusing book in my backpack is not my problem... I am *so* glad there is basicaly nothing I can do about it currently, this whole affair just blows my mind. And yet, I am *so* excited about bringing this to the monks in Oghma's Temple in Athkatla. I am sure they'll know what to do with it - they'll have to know.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN book_translated_note_02
SAY @482 /* ~Only, that I will guard this like my eyeballs until I can bring it to the temple. This book will not come to harm again, and I will see to it. Everything else - time will tell.~ */
IF ~~ THEN EXIT
END


IF ~~ THEN scroll_scribing_alone_pid
SAY @419 /* ~Oh... I'm not sure. I set the table of my parents on fire when I tampered with this alone. That was the spells from the De Simplex Magicae, of course, but still - you don't just shake something like this. Well, I don't, at least. Plus - I am still really very young for this, <CHARNAME>. I'm excited it works so well with Master Elvenhair's guidance. Give me a little time, please.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN scroll_scribing_alone_pid_01
SAY @420 /* ~Gladly. Do you know a nearby fire proof desk and a friendly mage to assist me?~ */
++ @421 /* ~No, I don't. Neither do you. That's why you need to overcome your fear and start scribing them on your own.~ */ + scroll_scribing_alone_pid_03
++ @422 /* ~That's exactly the point, Brandock, that you learn to scribe scrolls *away* from "fire proof desks".~ */ + scroll_scribing_alone_pid_03
++ @423 /* ~So much spite! I didn't know you had it in you.~ */ + scroll_scribing_alone_pid_02
END

IF ~~ THEN scroll_scribing_alone_pid_02
SAY @424 /* ~That was not addressed against you, <CHARNAME>... I am sorry.~ */
IF ~~ THEN + scroll_scribing_alone_pid_03
END

END //APPEND

CHAIN
IF ~~ THEN c#brandj scroll_scribing_alone_pid_03
@425 /* ~I already started a fire when I tried this alone. Plus, it could hurt people. Us. You! I really don't want to put you into danger.~ */
== c#brandj IF ~!Global("DukeThanks","GLOBAL",1)~ THEN @483 /* ~We are wanted for murder - in Baldur' Gate, anyway. Starting bonfires now is probably not such a good idea if we try to keep a low profile!~ */
== c#brandj IF ~GlobalGT("C#Brandock_Shapeshift","GLOBAL",17)~ THEN @426 /* ~And... and I could turn into a half-ogre half the way through...~ */
END
++ @427 /* ~I'm sorry I'm putting so much pressure on you. But it went fine with Elvenhair, and all he did was watch over your shoulder, if at all. You can do this.~ */ + scroll_scribing_alone_pid_05
++ @428 /* ~I'll be here, ready with a bucket full of water if it helps. Please, Brandock. I want you to scribe scrolls for me.~ */ + scroll_scribing_alone_pid_05
++ @429 /* ~I am already in danger. We need scrolls to fight off our foes.~ */ + scroll_scribing_alone_pid_05
++ @437 /* ~Setting your first scroll on fire really got to you, didn't it?~ */ + scroll_scribing_alone_pid_06
++ @431 /* ~You are exaggerating and you know it. Even if your scroll would burst into fire, we aren't talking about a huge blast. It will hardly do any harm.~ */ + scroll_scribing_alone_pid_05
++ @432 /* ~Don't you take me as an excuse for shying away from overcoming your fear!~ */ + scroll_scribing_alone_pid_05
++ @433 /* ~A mage who's greatest interest is to learn and conserve knowledge is too afraid to write scrolls. Don't you think that's a little bit rediculous?~ */ + scroll_scribing_alone_pid_04
++ @434 /* ~Wow, you are complicated. Sure, let's just wait until *everything* is settled before making use of a helpful skill, then.~ */ + scroll_scribing_alone_pid_05

APPEND c#brandj

IF ~~ THEN scroll_scribing_alone_pid_04
SAY @435 /* ~I would have said "ironic" but... I guess it is rediculous, as well. (sigh)~ */
IF ~~ THEN + scroll_scribing_alone_pid_05
END

IF ~~ THEN scroll_scribing_alone_pid_05
SAY @436 /* ~(Brandock exhales audibly.) Fine. Be my doom. Or let me be yours, to be precise, when the guards will rush in after I set a fire to our resting place. Assuming we will be able to keep ourselves safe from it. Gnahhh... Very well. The next rest it is, <CHARNAME>. I will do it, or at least try. Now, if you'll excuse me, I feel like I need to puke.~ */
IF ~~ THEN DO ~SetGlobal("C#Br_ScribeScrollQuest","GLOBAL",5)~ UNSOLVED_JOURNAL @10063 EXIT
END

IF ~~ THEN scroll_scribing_alone_pid_06
SAY @438 /* ~It... really did.~ */
IF ~~ THEN + scroll_scribing_alone_pid_05
END

END //APPEND

CHAIN
IF ~~ THEN c#brandj elvenhair_pid
@100 
== c#brandj IF ~GlobalGT("C#Br_LorePathElvenhair","GLOBAL",0)~ THEN @101
== c#brandj IF ~Global("C#Br_LorePathElvenhair","GLOBAL",0)~ THEN @102
END
IF ~~ THEN + elvenhair_pid_00
IF ~Global("Chapter","GLOBAL",%tutu_chapter_7%)
Global("DukeThanks","GLOBAL",0)~ THEN + elvenhair_pid_07

CHAIN
IF ~~ THEN c#brandj elvenhair_pid_00
@103
END
++ @104 + elvenhair_pid_01
++ @105 + elvenhair_pid_02
++ @106 + elvenhair_pid_02
++ @107 + elvenhair_pid_02
++ @108 + elvenhair_pid_05

APPEND c#brandj

IF ~~ THEN elvenhair_pid_01
SAY @109
IF ~~ THEN + elvenhair_pid_03
END

IF ~~ THEN elvenhair_pid_02
SAY @110
IF ~~ THEN + elvenhair_pid_01
END

IF ~~ THEN elvenhair_pid_03
SAY @111
++ @112 + elvenhair_pid_06
++ @113 + elvenhair_pid_04
++ @108 + elvenhair_pid_05
END

IF ~~ THEN elvenhair_pid_04
SAY @114
++ @112 + elvenhair_pid_06
++ @108 + elvenhair_pid_05
END

IF ~~ THEN elvenhair_pid_05
SAY @115
IF ~~ THEN DO ~
EraseJournalEntry(@10019)
SetGlobal("C#Br_BookRestore","GLOBAL",50)~ SOLVED_JOURNAL @10020 /* ~Brandock Wants to Restore his Book

I decided I don't care. Brandock will find a way by himself to deal with his destroyed book.~ */ EXIT
END

IF ~~ THEN elvenhair_pid_06
SAY @116
IF ~~ THEN DO ~
EraseJournalEntry(@10019)
SetGlobal("C#Br_BookRestore","GLOBAL",1)~ SOLVED_JOURNAL @10021 /* ~Brandock Wants to Restore his Book

I promised Brandock that we'd go to Firebead Elvenhair in Beregost. Brandock wants to ask him for help with retoring his destroyed book.~ */ EXIT
END

IF ~~ THEN elvenhair_pid_07
SAY @478
IF ~~ THEN EXIT
END


/* half-ogre change */
IF ~~ THEN halfogre_shift_01
SAY @430 /* ~<CHARNAME>, I don't know what to say... this is so overwhelming. Let's just go to Thalantyr and hope that he has an explanation for what happened.. and a cure, If I'm allowed to make a wish.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN halfogre_shift_02
SAY @444 /* ~Ich... ich habe es nicht wahrhaben wollen, aber seit dem Vorfall mit Melicamp fühlte ich mich mit der Form als Halboger verbunden. So, als würde ich mir nur schnell einen anderen Mantel anziehen. Ich... ich habe es verdrängt und ignoriert weil ich hoffte, es würde vorbei gehen. Aber das tat es nicht, und wird es auch nicht...~ */
IF ~~ THEN EXIT
END

IF ~~ THEN halfogre_shift_03
SAY @445 /* ~Oh yes, a lot... But I need to sort some thoughts, first. Thank you for asking, <CHARNAME>.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN halfogre_shift_04
SAY @446 /* ~When I turned into a half-ogre, it was not fear that overwhelmed me or anything, <CHARNAME>. I... I was angry and wanted to be strong. That is why I turned...~ */
= @447 /* ~So, in a moment full of boldness, strength, and determination, I didn't use my real strength - magic! - but chose to be a half-ogre. This is... this is so pathetic, I don't know where to start...~ */
++ @448 /* ~Why is it pathetic? You needed to be strong, so you became strong.~ */ + halfogre_shift_05
++ @449 /* ~On the contrary! You found a way to help yourself. That is great! Not everyone can do that.~ */ + halfogre_shift_05
++ @450 /* ~Brandock, last time I checked, turning into a half-ogre *was* magic.~ */+ halfogre_shift_06
++ @451 /* ~I regret I asked. Let's just move on.~ */ EXIT
END

IF ~~ THEN halfogre_shift_05
SAY @452 /* ~[Brandock]Ah, I so wish I would be able to focus on the positive things like you do. Seeing this as me being clever to reach my goals is not how I see it.~ */
IF ~~ THEN + halfogre_shift_06
END

IF ~~ THEN halfogre_shift_06
SAY @453 /* ~Of course turning into a half-ogre is magic. It's not what I meant - I think it's pathetic that I need a half-ogre shape to be "strong", obviously, because I am convinced I can't be while being "Brandock"!~ */
= @454 /* ~I... well, yearned for just being sure of what I do - not to *think* about every damn decision over and over again. When I felt it while being in the half-ogre body I knew it would be good for me could I hold on to it. And then, the first moment I did - I could only do it as a half-ogre, not as "Brandock".~ */
= @455 /* ~And now I... I am anxious. That "Brandock" will never be able to be like that, but will always be the babbling idiot the half-ogre turned into while being in my body. While I smash everything as a happy, stupid half-ogre the other half of the day.~ */
++ @456 /* ~Really? Because I don't see any sign for this to happen, for none of the two shapes.~ */ + halfogre_shift_07
++ @457 /* ~Hmm, you seem to work yourself up on this thought, giving in to fear you only feel while being in human shape. If you start using the half-ogre form to "flee" from these fears then the negative cycle would be complete.~ */ + halfogre_shift_07_b
++ @460 /* ~Is there anything I can do to help you snap out of it?~ */ + halfogre_shift_07
++ @458 /* ~That's a great exaggeration, and you know it.~ */ + halfogre_shift_08
++ @459 /* ~Yes, hearing you talk like this makes me think you were the babbling idiot, indeed. Get it together!~ */ + halfogre_shift_07_b
++ @451 /* ~I regret I asked. Let's just move on.~ */ EXIT
END

IF ~~ THEN halfogre_shift_07
SAY @461 /* ~Thank you for your support, <CHARNAME>. I have no idea how you stand through my various nervous breakdowns without developping the urge to strangle me.~ */
IF ~~ THEN + halfogre_shift_08
END

IF ~~ THEN halfogre_shift_07_b
SAY @462 /* ~You mean this is like a self-fulfilling prophecy? You do have a point there.~ */
IF ~~ THEN + halfogre_shift_08
END

IF ~~ THEN halfogre_shift_08
SAY @463 /* ~I am exaggerating when painting my half-ogre picture, of course. Which is exactly my point. It's what I do! Aaaand - here goes my brain again - the next train of anxious thoughts is starting. I will spare you the details, you listened long enough. Thank you for that, <CHARNAME>. It means a lot to me.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN halfogre_shift_09
SAY @464 /* ~Wer bin ich jetzt eigentlich, bin ich der schmächtige Mensch oder der Halboger? Oder beides? Bin ich jetzt ein Halb-Halboger? Oder ein Halbmensch? Oder nur eine billige Kopie eines lebenden Halbogers... eine Art Doppelgänger?~ */
IF ~~ THEN EXIT
END

IF ~~ THEN halfogre_shift_10
SAY @465 /* ~Ich frage mich, wie die Leute aus meinem näheren Umfeld darauf reagieren werden. Nunja - wie meine Familie darauf reagiern würde ist klar. Mutter wird einen Herzinfarkt erleiden und meine Brüder die Mistgabeln holen...~ */
= @466 /* ~Aber zum Beispiel meine Freunde in der Bibliothek in Alisarhold. Würden sie es akzeptieren oder mich als Gefahr sehen? Wobei ich nicht denke, dass sie allzu große Probleme damit hätten. Wir *sind* schließlich Magieanwender. Ich kann mir aber vorstellen, dass sie es nicht lustig fänden, wenn ich in der Form durch die eng stehenden Bücherreihen gehe...~ */
IF ~~ THEN EXIT
END

IF ~~ THEN halfogre_shift_11
SAY @467 /* ~Irgendwie bleibt das Gefühl, dass mir das peinlich sein sollte. Spätestens wenn gefragt wird "He, Brandock - wie kam es denn dazu?" wird es ziemlich peinlich. (seufz)~ */
IF ~~ THEN EXIT
END

IF ~~ THEN halfogre_shift_12
SAY @468 /* ~Man mag sich fragen, warum mich das ganze so fertig macht, Schließlich gibt es diverse Möglichkeiten für Magier, Gestalwandlung zu vollziehen. Was mich so verunsichert ist das bereits häufiger angesprochene Gefühl, dass die Halbogerform nun ein Teil von mir ist - der mir in mancherlei Hinsicht sogar viel zu gut gefällt...~ */
IF ~~ THEN EXIT
END

IF ~~ THEN mage_first
SAY @117
++ @118 + mage_first_01
++ @119 + mage_first_02
++ @120 + sure_end
END

IF ~~ THEN mage_first_01
SAY @121 
IF ~~ THEN + mage_first_02
END

IF ~~ THEN mage_first_02
SAY @122 
IF ~~ THEN EXIT
END





IF ~~ THEN became_mage_in_amn
SAY @123
+ ~OR(2)
GlobalGT("C#Brandock_Possessions","GLOBAL",1)
GlobalGT("C#Brandock_Shapeshift","GLOBAL",10)~ + @124 + became_mage_in_amn_02
++ @125 + became_mage_in_amn_01
++ @126 + became_mage_in_amn_03
++ @127 + became_mage_in_amn_05
++ @128 + sure_end
END

IF ~~ THEN became_mage_in_amn_01
SAY @129
IF ~~ THEN + became_mage_in_amn_03
END

IF ~~ THEN became_mage_in_amn_02
SAY @130
IF ~~ THEN + became_mage_in_amn_03
END

IF ~~ THEN became_mage_in_amn_03
SAY @131
IF ~~ THEN + became_mage_in_amn_04
END

IF ~~ THEN became_mage_in_amn_04
SAY @132
IF ~~ THEN + became_mage_in_amn_05
END

IF ~~ THEN became_mage_in_amn_05
SAY @133
IF ~~ THEN EXIT
END

IF ~~ THEN mage_longversion_01
SAY @134
IF ~~ THEN EXIT
END

IF ~~ THEN mage_longversion_02
SAY @135
= @136
= @137
IF ~~ THEN EXIT
END

IF ~~ THEN mage_longversion_03
SAY @138
= @139
= @140
= @141
IF ~~ THEN EXIT
END

IF ~~ THEN mage_longversion_04
SAY @142
= @143
IF ~~ THEN EXIT
END

IF ~~ THEN mage_longversion_05
SAY @144
= @145
= @146
IF ~~ THEN EXIT
END

IF ~~ THEN mage_longversion_06
SAY @147
= @148
= @149
IF ~~ THEN EXIT
END


IF ~~ THEN leave_alisarhold_pid
SAY @150
++ @151 + leave_alisarhold_pid_01
++ @152 + leave_alisarhold_pid_01
++ @153 + sure_end
END

IF ~~ THEN leave_alisarhold_pid_01
SAY @154
++ @155 + leave_alisarhold_pid_02
++ @156 + leave_alisarhold_pid_02
++ @157 + leave_alisarhold_pid_03
++ @153 + sure_end
END

IF ~~ THEN leave_alisarhold_pid_02
SAY @158
IF ~~ THEN + leave_alisarhold_pid_03
END

IF ~~ THEN leave_alisarhold_pid_03
SAY @159
IF ~~ THEN DO ~SetGlobal("C#BR_LeaveAlisarholdPID","LOCALS",1)~ EXIT
END

IF ~~ THEN in_alisarhold_pid
SAY @160
++ @161 + in_alisarhold_pid_01
++ @157 + in_alisarhold_pid_03
++ @153 + sure_end
END

IF ~~ THEN in_alisarhold_pid_01
SAY @162
+ ~Global("C#Br_AskedScrollScribingPID","LOCALS",0)~ + @163 DO ~SetGlobal("C#Br_AskedScrollScribingPID","LOCALS",1)~ + in_alisarhold_pid_02
++ @157 + in_alisarhold_pid_03
END

IF ~~ THEN in_alisarhold_pid_02
SAY @164
IF ~~ THEN + in_alisarhold_pid_03
END

IF ~~ THEN in_alisarhold_pid_03
SAY @165
IF ~~ THEN DO ~SetGlobal("C#BR_AlisarholdPID","LOCALS",3)~ EXIT
END

IF ~~ THEN alisarhold_pid
SAY @166
++ @167 + alisarhold_pid_01
++ @168 + alisarhold_pid_02
++ @153 + sure_end
END

IF ~~ THEN alisarhold_pid_01
SAY @169
= @170
++ @171 + alisarhold_pid_03
++ @168 + alisarhold_pid_02
++ @153 + sure_end
END

IF ~~ THEN alisarhold_pid_02
SAY @172
IF ~~ THEN DO ~SetGlobal("C#BR_AlisarholdPID","LOCALS",2)~ EXIT
END

IF ~~ THEN alisarhold_pid_03
SAY @173 
++ @171 + alisarhold_pid_04
++ @168 + alisarhold_pid_02
++ @153 + sure_end
END

IF ~~ THEN alisarhold_pid_04
SAY @174
++ @175 + alisarhold_pid_05
++ @168 + alisarhold_pid_02
++ @153 + sure_end
END

IF ~~ THEN alisarhold_pid_05
SAY @176
++ @177 + alisarhold_pid_06
++ @178 + alisarhold_pid_07
++ @168 + alisarhold_pid_02
++ @153 + sure_end
END

IF ~~ THEN alisarhold_pid_06
SAY @179
++ @180 + alisarhold_pid_07
++ @168 + alisarhold_pid_02
++ @153 + sure_end
END

IF ~~ THEN alisarhold_pid_07
SAY @181
IF ~~ THEN DO ~SetGlobal("C#BR_AlisarholdPID","LOCALS",2)~ EXIT
END

IF ~~ THEN tableonfire
SAY @182
++ @183 + tableonfire_01
++ @184 + tableonfire_03
++ @185 + tableonfire_02
END

IF ~~ THEN tableonfire_01
SAY @186
++ @184 + tableonfire_03
++ @185 + tableonfire_02
END

IF ~~ THEN tableonfire_02
SAY @187
IF ~~ THEN + tableonfire_03
END 

IF ~~ THEN tableonfire_03
SAY @188
IF ~~ THEN DO ~SetGlobal("C#BR_AlisarholdPID","LOCALS",2)~ EXIT
END



IF ~~ THEN newbook
SAY @189
IF ~~ THEN EXIT
END

IF ~~ THEN newbook_01
SAY @190
IF ~~ THEN EXIT
END


/* reenter Candlekeep with the detroyed book? */

IF ~~ THEN enter_candlekeep
SAY @191
++ @192 + enter_candlekeep_01
++ @13 + enter_candlekeep_01
++ @193 + enter_candlekeep_02
END

IF ~~ THEN enter_candlekeep_00
SAY @194
IF ~~ THEN + enter_candlekeep_03
IF ~GlobalGT("C#Brandock_Possessions","GLOBAL",7)~ THEN + enter_candlekeep_02_01
END

IF ~~ THEN enter_candlekeep_01
SAY @195
IF ~~ THEN + enter_candlekeep_03
END

IF ~~ THEN enter_candlekeep_02
SAY @196
IF ~~ THEN + enter_candlekeep_03
END

IF ~~ THEN enter_candlekeep_02_01
SAY @197
++ @198 DO ~SetGlobal("C#BR_TryBookCKPID","LOCALS",1)~ + enter_candlekeep_05
++ @199 + enter_candlekeep_04
++ @200 + enter_candlekeep_05
END

IF ~~ THEN enter_candlekeep_03
SAY @201
++ @198 DO ~SetGlobal("C#BR_TryBookCKPID","LOCALS",1)~ + enter_candlekeep_05
++ @199 + enter_candlekeep_04
++ @200 + enter_candlekeep_05
END

IF ~~ THEN enter_candlekeep_04
SAY @202
IF ~~ THEN + enter_candlekeep_05
END

IF ~~ THEN enter_candlekeep_05
SAY @203
= @204
IF ~~ THEN EXIT
END

IF ~~ THEN enter_candlekeep_06
SAY @339
= @338
IF ~~ THEN + enter_candlekeep_05
END




/* plans to study in Candlekeep, before finding his possessions */
IF ~~ THEN study_candlekeep
SAY @205
= @206
= @207
++ @208 DO ~SetGlobal("C#Brandock_CandlekeepPID","LOCALS",2)~ + study_candlekeep_02
++ @209 + study_candlekeep_01
END

IF ~~ THEN study_candlekeep_01
SAY @210
IF ~~ THEN EXIT
END

IF ~~ THEN study_candlekeep_02
SAY @211
++ @212 + study_candlekeep_03
++ @213 + study_candlekeep_04
++ @214 + study_candlekeep_04
END

IF ~~ THEN study_candlekeep_03
SAY @215
IF ~~ THEN + study_candlekeep_04
END

IF ~~ THEN study_candlekeep_04
SAY @216
IF ~~ THEN + study_candlekeep_01
END



IF ~~ THEN book_source
SAY @217
++ @218 + book_source_02
++ @219 + book_source_03
++ @220 + book_source_03
++ @221 + book_source_01
END

IF ~~ THEN book_source_01
SAY @222
= @223
IF ~~ THEN + book_source_04
END

IF ~~ THEN book_source_02
SAY @224
IF ~~ THEN + book_source_03
END

IF ~~ THEN book_source_03
SAY @225
= @226
IF ~~ THEN + book_source_04
END

IF ~~ THEN book_source_04
SAY @227
IF ~~ THEN EXIT
END

END //APPEND c#brandj

CHAIN
IF ~~ THEN c#brandj carneval
@228
== c#brandj IF ~Global("C#BR_KnowsAmn","GLOBAL",1)~ THEN @229
EXIT

APPEND c#brandj

IF ~~ THEN carneval_01
SAY @230
IF ~~ THEN EXIT
END

IF ~~ THEN carneval_02
SAY @231
IF ~~ THEN EXIT
END 

IF ~~ THEN carneval_03
SAY @232
IF ~~ THEN EXIT
END 



/* ponders about his first teacher, after being to the Ice Island: */

//1
IF ~~ THEN first_tutor_PID
SAY @234
= @235
= @236
= @237
++ @233 + first_tutor_PID_01
++ @401 + first_tutor_PID_02
++ @402 + first_tutor_PID_03
++ @403 + first_tutor_PID_04
++ @404 + first_tutor_PID_05
++ @255 + first_tutor_PID_06
END

IF ~~ THEN first_tutor_PID_01
SAY @405
++ @401 + first_tutor_PID_02
++ @402 + first_tutor_PID_03
++ @403 + first_tutor_PID_04
++ @404 + first_tutor_PID_05
++ @255 + first_tutor_PID_06
END

IF ~~ THEN first_tutor_PID_02
SAY @406
++ @402 + first_tutor_PID_03
++ @403 + first_tutor_PID_04
++ @404 + first_tutor_PID_05
++ @255 + first_tutor_PID_06
END

IF ~~ THEN first_tutor_PID_03
SAY @407
IF ~~ THEN + first_tutor_PID_06
END

IF ~~ THEN first_tutor_PID_04
SAY @408
IF ~~ THEN + first_tutor_PID_06
END

IF ~~ THEN first_tutor_PID_05
SAY @409
IF ~~ THEN + first_tutor_PID_06
END

IF ~~ THEN first_tutor_PID_06
SAY @410
IF ~~ THEN EXIT
END

//2
IF ~~ THEN first_tutor_PID2
SAY @238
= @239
++ @240 + first_tutor_PID2_02
++ @241 + first_tutor_PID2_01
++ @242 + first_tutor_PID2_04
++ @243 + first_tutor_PID2_05
END

IF ~~ THEN first_tutor_PID2_01
SAY @244
IF ~~ THEN + first_tutor_PID2_03
END

IF ~~ THEN first_tutor_PID2_02
SAY @245
IF ~~ THEN + first_tutor_PID2_03
END

IF ~~ THEN first_tutor_PID2_03
SAY @246
= @247
IF ~~ THEN EXIT
END

IF ~~ THEN first_tutor_PID2_04
SAY @248
IF ~~ THEN + first_tutor_PID2_03
END

IF ~~ THEN first_tutor_PID2_05
SAY @249
IF ~~ THEN EXIT
END


//3
IF ~~ THEN first_tutor_PID3
SAY @250
= @251
IF ~~ THEN EXIT
END




/* something on your mind? */


IF ~~ THEN on_your_mind_03
SAY @252
++ @253 + thalantyr_grumpy
++ @254 + thalantyr_grumpy_01
++ @255 + sure_end
END

/* grumpy Thalantyr */
IF ~~ THEN thalantyr_grumpy
SAY @256
= @257
= @258
IF ~~ THEN EXIT
END

IF ~~ THEN thalantyr_grumpy_01
SAY @259
IF ~~ THEN EXIT
END

IF ~~ THEN on_your_mind_04
SAY @260
IF ~~ THEN EXIT
END

/* after book "restored" - not translated yet */

IF ~~ THEN transformed_book3
SAY @261
IF ~~ THEN EXIT
END

IF ~~ THEN transformed_book3_01
SAY @262
IF ~~ THEN EXIT
END


/* tainted ore */

IF ~~ THEN tainted_ore_01
SAY @263
IF ~~ THEN EXIT
END

END //APPEND

CHAIN
IF ~~ THEN c#brandj tainted_ore_02
@264
== c#brandj IF ~Global("C#BrandockVIVIEN1","GLOBAL",1)~ THEN @265
== c#brandj IF ~!Global("C#BrandockVIVIEN1","GLOBAL",1)~ THEN @266
EXIT

APPEND c#brandj

IF ~~ THEN tainted_ore_03
SAY @267
IF ~~ THEN EXIT
END

IF ~~ THEN tainted_ore_04
SAY @268
IF ~~ THEN EXIT
END

IF ~~ THEN tainted_ore_05
SAY @269
IF ~~ THEN EXIT
END

IF ~~ THEN tainted_ore_06
SAY @270
IF ~~ THEN EXIT
END





END //APPEND

CHAIN
IF ~~ THEN c#brandj sword_coast
@271
== c#brandj IF ~Global("C#BR_KnowsAmn","GLOBAL",1)~ THEN @272
== c#brandj IF ~Global("C#Brandock_Possessions","GLOBAL",0)~ THEN @273 
EXIT

APPEND c#brandj


IF ~~ THEN yourself
SAY @274 
= @275
IF ~~ THEN EXIT
END


IF ~~ THEN where_from
SAY @276
IF ~~ THEN EXIT
END

/* Brandock ponders about the shapeshifting */


IF ~~ THEN time_as_halfogre_01
SAY @277
IF ~~ THEN EXIT
END

IF ~~ THEN time_as_halfogre_02
SAY @278
IF ~~ THEN EXIT
END

IF ~~ THEN time_as_halfogre_03
SAY @279
= @280
IF ~~ THEN EXIT
END

IF ~~ THEN time_as_halfogre_04
SAY @281

++ @282 + time_as_halfogre_04_a
++ @283 + time_as_halfogre_04_a
++ @284 + time_as_halfogre_04_b
END

IF ~~ THEN time_as_halfogre_04_a
SAY @285
IF ~~ THEN + time_as_halfogre_04_b
END

IF ~~ THEN time_as_halfogre_04_b
SAY @286
++ @287 + time_as_halfogre_04_c
++ @288 + time_as_halfogre_04_f
++ @289 + time_as_halfogre_04_g
++ @290 + time_as_halfogre_04_e
++ @291 + time_as_halfogre_04_f
++ @292 + time_as_halfogre_04_d
END

IF ~~ THEN time_as_halfogre_04_c
SAY @293
IF ~~ THEN + time_as_halfogre_04_g
END

IF ~~ THEN time_as_halfogre_04_d
SAY @294
IF ~~ THEN + time_as_halfogre_04_g
END

IF ~~ THEN time_as_halfogre_04_e
SAY @295
IF ~~ THEN + time_as_halfogre_04_g
END

IF ~~ THEN time_as_halfogre_04_f
SAY @296
IF ~~ THEN + time_as_halfogre_04_g
END

IF ~~ THEN time_as_halfogre_04_g
SAY @297
= @298
IF ~~ THEN EXIT
END

IF ~~ THEN time_as_halfogre_05
SAY @299
++ @300 + time_as_halfogre_05_01
++ @301 + time_as_halfogre_05_02
++ @302 + time_as_halfogre_05_03
END

IF ~~ THEN time_as_halfogre_05_01
SAY @303
IF ~~ THEN + time_as_halfogre_05_04
END

IF ~~ THEN time_as_halfogre_05_02
SAY @304
IF ~~ THEN + time_as_halfogre_05_04
END

IF ~~ THEN time_as_halfogre_05_03
SAY @305
IF ~~ THEN + time_as_halfogre_05_04
END

IF ~~ THEN time_as_halfogre_05_04
SAY @306
= @307
IF ~~ THEN EXIT
END

IF ~~ THEN time_as_halfogre_06
SAY @308
= @309
IF ~~ THEN EXIT
END

IF ~~ THEN time_as_halfogre_07
SAY @411
= @412
IF ~~ THEN EXIT
END



IF ~~ THEN valuable_book
SAY @310
IF ~~ THEN EXIT
IF ~AreaCheck("c#br01") Global("C#Brandock_BookPID","LOCALS",0)~ THEN + book_01
END

IF ~~ THEN valuable_book_01
SAY @311
IF ~~ THEN EXIT
IF ~AreaCheck("c#br01") Global("C#Brandock_BookPID","LOCALS",0)~ THEN + book_01
END

IF ~~ THEN valuable_book_02
SAY @312
= @313
IF ~~ THEN EXIT
END

IF ~~ THEN book_already
SAY @314
IF ~~ THEN EXIT
END

IF ~~ THEN child_bhaal
SAY @315
= @316
IF ~~ THEN EXIT
END



IF ~~ THEN puppies
SAY @317
= @318
IF ~~ THEN EXIT
END

IF ~~ THEN puppies_01
SAY @319
= @320
IF ~~ THEN EXIT
END

IF ~~ THEN happy_be_here_01
SAY @321
= @322
= @323
IF ~~ THEN EXIT
END

IF ~~ THEN happy_be_here_02
SAY @324
IF ~~ THEN EXIT
END

IF ~~ THEN book
SAY @325
IF ~~ THEN EXIT
IF ~AreaCheck("c#br01") Global("C#Brandock_ValuableBookPID","LOCALS",0)~ THEN + book_01
END

IF ~~ THEN book_01
SAY @326
IF ~~ THEN EXIT
END

IF ~~ THEN book_02
SAY @327
IF ~~ THEN EXIT
IF ~AreaCheck("c#br01") Global("C#Brandock_ValuableBookPID","LOCALS",0)~ THEN + book_01
END

IF ~~ THEN work_out_01
SAY @328
++ @329 + work_out_02
++ @330 + work_out_03
END

IF ~~ THEN work_out_02
SAY @331
= @332
IF ~~ THEN + work_out_04
END 

IF ~~ THEN work_out_03
SAY @249
IF ~~ THEN + work_out_04
END

IF ~~ THEN work_out_04
SAY @333
= @334
= @335
IF ~~ THEN EXIT
END

IF ~~ THEN bgqe_nashkelmonster_egg
SAY @337
IF ~~ THEN EXIT
END



//////////////////////////////////////////////////////////////
/* SoD content */
//////////////////////////////////////////////////////////////

IF ~~ THEN bookrestore_alone_sod
SAY @1001 /* ~Oh, <CHARNAME>! This is so great. I gathered the courage and went to Master Elvenhair alone!~ */
IF ~~ THEN + bookrestore_alone_sod_01
END

IF ~~ THEN bookrestore_alone_sod_00
SAY @1008 /* ~This is what my destroyed magic book turned into after Master Elvenhair tried to preserve the torn pages.~ */
IF ~~ THEN + bookrestore_alone_sod_01
END

IF ~~ THEN bookrestore_alone_sod_01
SAY @1007 /* ~He worked on preserving the book pages before they would be torn completely - and this is the result! The book transferred itself into a book again, brimming with magic.~ */
= @1002 /* ~The translation is actually a note to one of Bowgentle's apprentices - it seems they intended to train book restoration using this as an example but never came this far with this specimen. I will need the help of the Temple of Oghma in Athkatla for this, so until then the book will stay with me.~ */
IF ~~ THEN DO ~EraseJournalEntry(@10021)
EraseJournalEntry(@10022)
EraseJournalEntry(@10026)
EraseJournalEntry(@10028)
EraseJournalEntry(@10044)
EraseJournalEntry(@10051)
EraseJournalEntry(@10053)
EraseJournalEntry(@10055)
AddJournalEntry(@10057,QUEST)
SetGlobal("C#Br_BookRestore","GLOBAL",13)~ UNSOLVED_JOURNAL @10056 EXIT
END 

/* burnt inn in bd1000.are */
IF ~~ THEN burnt_inn_bd1000
SAY @1009 /* ~That burnt inn we passed at Coastway Crossing... that would be my home town, would the crusade march down in the south. Farmers, carpenders, bakers, and one smith - for horseshoes and repairing farmer tools. One watch man, no local Cowled Wizard, at least none I know of.~ */
= @1010 /* ~They all know how to use their tools to drive away vagabonds and the occasional wolves alright, but there would be noone who could even *try* to stop such a mob. Not to mention no town or city can stop an army like this on its own. Would the crusade march down there, I guess my brothers would have been forced to join and my father and mother... would probably be dead.~ */
IF ~~ THEN EXIT
END

/* follow-up to burnt inn in bd1000.are */
IF ~~ THEN burnt_inn_bd1000_follow_up
SAY @1011 /* ~I'm pondering about the... let's call it "mage situation" in my home town. They do not even have a local mage there! I mean... that would be me, wouldn't it... had I returned to my family and lived the life of a Cowled Wizard after my apprenticeship was over, farmer by day, mage by night...~ */
= @1012 /* ~I could live there and... and protect them. Not from a crusade, of course, but... Is it egoistic of me that I want to learn more, study more, understand more about magic? Instead of working with what I have and put it to use for my home. What is the optimum to which I have an excuse to optimize my skills before it could be seen as an excuse to get away from a life that was not only happy?...~ */
IF ~~ THEN EXIT
END

/* Elandro and the Feyr - follow-up dialogue */
IF ~~ THEN on_your_mind_sod_01
SAY @1003 /* ~I'm still deeply impressed by the feyr manifesting in the fort's courtyard... People's believes and emotions can have grave consequences, and not only because of the deeds it makes them do. I knew this in principle, but witnessing it like this was very impressive... Especially because I was affected by it, as well.~ */
IF ~~ THEN EXIT
END



END //APPEND











