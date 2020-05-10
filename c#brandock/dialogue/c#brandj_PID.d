APPEND c#brandj


/* PID management: SoD evtl. von den BG1 - PIDs ausschlieﬂen */

/* BG1 (SoD ?)*/

IF ~%BGT_VAR% IsGabber(Player1)~ THEN pid
SAY @0

/* crossmod with bgqe: unbaked egg c#q04001.itm */

+ ~PartyHasItem("c#q04001") Global("C#Brandock_c#q04001PID","LOCALS",0)
Global("c#q04_SpiderTimer","GLOBAL",0)
Global("C#BR_C#Q04007_3","GLOBAL",0)~ + @336 DO ~SetGlobal("C#Brandock_BhaalPID","LOCALS",1)~ + bgqe_nashkelmonster_egg


/* comments on game-related happenings */

+ ~GlobalGT("C#Brandock_KnowBhaal","GLOBAL",0) Global("C#Brandock_BhaalPID","LOCALS",0)~ + @1 DO ~SetGlobal("C#Brandock_BhaalPID","LOCALS",1)~ + child_bhaal

/* friendly mage who would help Brandock with his book? */

+ ~%BG1_BEFORE_TRANSITION%
Global("C#Br_BookRestore","GLOBAL",6)
Global("C#Br_BookRestorePID","LOCALS",0)~ + @2 + transformed_book_pid

+ ~%BG1_BEFORE_TRANSITION%
GlobalGT("C#Brandock_Possessions","GLOBAL",15)
Global("C#Br_BookRestore","GLOBAL",0)
!Dead("FIREB1")
!Dead("FIREBE")~ + @3 + elvenhair_pid

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
PartyHasItem("c#br0001")
Global("C#Brandock_EnterCandlekeepPID","LOCALS",0)~ + @13 DO ~SetGlobal("C#Brandock_EnterCandlekeepPID","LOCALS",2)~ + enter_candlekeep_06
+ ~OR(2)
	%BG1_BEFORE_TRANSITION% 
	Global("SOD_fromimport","GLOBAL",1)
GlobalGT("C#Brandock_Possessions","GLOBAL",1)
!GlobalGT("C#Br_BookRestore","GLOBAL",1)
Global("C#BR_KnowGorionsDeath","GLOBAL",1)
PartyHasItem("c#br0001")
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
Global("C#Brandock_Shapeshift","GLOBAL",11)~ + @33 DO ~IncrementGlobal("C#BRPID_OnYourMind","LOCALS",1)~ + on_your_mind_04



/* Want to talk more about how you feel with your new book? */
+ ~OR(2)
	%BG1_BEFORE_TRANSITION% //still BG1
	Global("SOD_fromimport","GLOBAL",1) //SoD AFTER transition from BG1
Global("C#BRPID_HappyNewBook","LOCALS",0)
GlobalGT("C#Br_BookRestore","GLOBAL",9)~ + @34 DO ~IncrementGlobal("C#BRPID_HappyNewBook","LOCALS",1)~ + transformed_book3
+ ~OR(2)
	%BG1_BEFORE_TRANSITION% //still BG1
	Global("SOD_fromimport","GLOBAL",1) //SoD AFTER transition from BG1
Global("C#BRPID_HappyNewBook","LOCALS",1)
GlobalGT("C#Br_BookRestore","GLOBAL",9)~ + @34 DO ~IncrementGlobal("C#BRPID_HappyNewBook","LOCALS",1)~ + transformed_book3_01

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



/* Carneval */

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
+ ~Global("C#Brandock_Shapeshift","GLOBAL",11) Global("C#BRPID_TimeAsHalfogre","LOCALS",0)~ + @39 DO ~IncrementGlobal("C#BRPID_TimeAsHalfogre","LOCALS",1)~ + time_as_halfogre_01
+ ~Global("C#Brandock_Shapeshift","GLOBAL",11) Global("C#BRPID_TimeAsHalfogre","LOCALS",1)~ + @40 DO ~IncrementGlobal("C#BRPID_TimeAsHalfogre","LOCALS",1)~ + time_as_halfogre_02
+ ~Global("C#Brandock_Shapeshift","GLOBAL",11) Global("C#BRPID_TimeAsHalfogre","LOCALS",2)~ + @40 DO ~IncrementGlobal("C#BRPID_TimeAsHalfogre","LOCALS",1)~ + time_as_halfogre_03
+ ~Global("C#Brandock_Shapeshift","GLOBAL",11) Global("C#BRPID_TimeAsHalfogre","LOCALS",3)~ + @40 DO ~IncrementGlobal("C#BRPID_TimeAsHalfogre","LOCALS",1)~ + time_as_halfogre_04
+ ~Global("C#Brandock_Shapeshift","GLOBAL",11) Global("C#BRPID_TimeAsHalfogre","LOCALS",4)~ + @40 DO ~IncrementGlobal("C#BRPID_TimeAsHalfogre","LOCALS",1)~ + time_as_halfogre_05
+ ~Global("C#Brandock_Shapeshift","GLOBAL",11) Global("C#BRPID_TimeAsHalfogre","LOCALS",5)~ + @40 DO ~IncrementGlobal("C#BRPID_TimeAsHalfogre","LOCALS",1)~ + time_as_halfogre_06

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



/* inventory management.  - if Brandock is not in party but following as companion Brandock has to join the group so the player has access to the inventory.
This is what usually is dealt with by the kicked out "P" dialogue for re-joining */

+ ~!InParty(Myself) Global("C#BrandockJoined","GLOBAL",2) NumInPartyLT(6)~ + @50 DO ~SetGlobal("C#BrandockJoined","GLOBAL",1) JoinParty()~ EXIT

+ ~!InParty(Myself) Global("C#BrandockJoined","GLOBAL",2) NumInParty(6)~ + @50 + join


+ ~Global("C#Brandock_HPAlarm","GLOBAL",0) Global("C#BrandockJoined","GLOBAL",2)~ + @51 + hp_alarm_on
+ ~Global("C#Brandock_HPAlarm","GLOBAL",1) Global("C#BrandockJoined","GLOBAL",2)~ + @52 + hp_alarm_off


++ @53 EXIT
END


IF ~~ THEN hp_alarm_on
SAY @54
IF ~~ THEN DO ~SetGlobal("C#Brandock_HPAlarm","GLOBAL",1)~ EXIT
END

IF ~~ THEN hp_alarm_off
SAY @55
IF ~~ THEN DO ~SetGlobal("C#Brandock_HPAlarm","GLOBAL",0)~ EXIT
END




IF ~~ THEN join
SAY @56
IF ~~ THEN DO ~SetGlobal("C#BrandockJoined","GLOBAL",1) JoinParty()~ EXIT
END

IF ~~ THEN sure_end
SAY @57
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



END //APPEND

CHAIN
IF ~~ THEN c#brandj elvenhair_pid
@100 
== c#brandj IF ~GlobalGT("C#Br_LorePathElvenhair","GLOBAL",0)~ THEN @101
== c#brandj IF ~Global("C#Br_LorePathElvenhair","GLOBAL",0)~ THEN @102
== c#brandj @103
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
SetGlobal("C#Br_BookRestore","GLOBAL",15)~ SOLVED_JOURNAL @10020 /* ~Brandock Wants to Restore his Book

I decided I don't care. Brandock will find a way by himself to deal with his destroyed book.~ */ EXIT
END

IF ~~ THEN elvenhair_pid_06
SAY @116
IF ~~ THEN DO ~
EraseJournalEntry(@10019)
SetGlobal("C#Br_BookRestore","GLOBAL",1)~ SOLVED_JOURNAL @10021 /* ~Brandock Wants to Restore his Book

I promised Brandock that we'd go to Firebead Elvenhair in Beregost. Brandock wants to ask him for help with retoring his destroyed book.~ */ EXIT
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
Global("C#Brandock_Shapeshift","GLOBAL",11)~ + @124 + became_mage_in_amn_02
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
++ @163 + in_alisarhold_pid_02
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



END //APPEND











