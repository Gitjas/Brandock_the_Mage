/* Brandock the Half-Ogre: happenings after Sarevok's death (BGT)
or SoD (SoD/EET) 
-only if Malm is in Bergost temple */

/* BGT: shortly after leaving Thieves' Guild after killing Sarevok */

/* SoD with EndlessBG1: shortly after leaving Thieves' Guild after killing Sarevok. Malm will also be in SoD prison if not already talked to before the transition */

/* SoD without EndlessBG1: shortly after Brandock joined - only inside BG city. In case player proceeds to camp without talking to Malm, BGII events will happen because Brandock met Malm between SoD and BGII alone */

/* meet Drunkard inside city after short timer */

BEGIN c#brhadr

CHAIN
IF ~True()~ THEN c#brhadr drunkard
@3900
== c#brandj @3901
END
IF ~~ THEN DO ~EraseJournalEntry(@10074) SetGlobal("C#Brandock_Shapeshift","GLOBAL",24)
ActionOverride("c#brhadr",EscapeAreaDestroy(5))~ UNSOLVED_JOURNAL @10075 EXIT




/* in prison. 
SoD bd0104.are: Jenks (BDJENKS.dlg) and Fritz (BDFRITZ.dlg). 
BG:EE: AR/BG0607.are Dilos? (flambg.dlg)
BGT: AR7607.are Dilos? (flambg.dlg) 
%SWBaldursGate_FlamingFistHQ_L1% */

/* Dilos - in case he's still there */
CHAIN
IF WEIGHT #-1
~GlobalLT("ENDOFBG1","GLOBAL",2)
GlobalGT("C#Brandock_Shapeshift","GLOBAL",23)
OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2)
See("C#Brandock")
!StateCheck("C#Brandock",CD_STATE_NOTVALID)
Global("C#Brandock_ShapeshiftFF","MYAREA",0)~ THEN flambg verwechslung_d
@3902
END
IF ~OR(2) !See("c#brhaff") StateCheck("c#brhaff",CD_STATE_NOTVALID)~ THEN EXIT
IF ~See("c#brhaff") !StateCheck("c#brhaff",CD_STATE_NOTVALID)~ THEN DO ~SetGlobal("C#Brandock_ShapeshiftFF","MYAREA",1)~ EXTERN c#brhaff verwechslung_jo
IF ~GlobalLT("C#Brando_VisitedMalm","GLOBAL",5)
OR(2) !See("c#brhaff") StateCheck("c#brhaff",CD_STATE_NOTVALID)~ THEN DO ~SetGlobal("C#Brandock_ShapeshiftFF","MYAREA",1)~ EXTERN c#brandj verwechslung_b

BEGIN c#brhaff

/* BGT only - Josh will be in main hall */
CHAIN
IF ~!Global("C#Brando_VisitedMalm","GLOBAL",5)
InMyArea("c#brhabr")
GlobalGT("C#Brandock_Shapeshift","GLOBAL",23)
OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2)
See("C#Brandock")
!StateCheck("C#Brandock",CD_STATE_NOTVALID)
Global("C#Brandock_ShapeshiftFF","MYAREA",0)~ THEN c#brhaff verwechslung_jo
@3903
END
IF ~~ THEN DO ~SetGlobal("C#Brandock_ShapeshiftFF","MYAREA",1)~ EXIT
IF ~GlobalLT("C#Brando_VisitedMalm","GLOBAL",5)~ THEN DO ~SetGlobal("C#Brandock_ShapeshiftFF","MYAREA",1)~ EXTERN c#brandj verwechslung_b

CHAIN
IF WEIGHT #-1
~~ THEN c#brandj verwechslung_b 
@3904
== c#brhaff IF ~See("c#brhaff") !StateCheck("c#brhaff",CD_STATE_NOTVALID)~ THEN @3905
== flambg IF ~See("DICKSMOK") !StateCheck("DICKSMOK",CD_STATE_NOTVALID)
OR(2) !See("c#brhaff") StateCheck("c#brhaff",CD_STATE_NOTVALID)~ THEN @3905
END
IF ~~ THEN EXIT 


/* Malm is in prison (in "PC's cell" in SoD) */

/* Malm: JumpToPoint([355.417]) Face(4)
Josh: JumpToPoint([314.451]) Face(12) */

APPEND c#brhabr 

IF ~GlobalGT("C#Brando_VisitedMalm","GLOBAL",2)
GlobalLT("C#Brando_VisitedMalm","GLOBAL",5)
OR(3) !Range("C#Brandock",30) Global("C#BrandockJoined","GLOBAL",0) StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN hello_prison
SAY @3906
IF ~~ THEN EXIT
END

END //APPEND

CHAIN
IF ~GlobalGT("C#Brando_VisitedMalm","GLOBAL",2)
GlobalLT("C#Brando_VisitedMalm","GLOBAL",5)
OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2)
Range("C#Brandock",30)
!StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN c#brhabr hello_prison_01
@3907
== c#brandj @3908
== c#brhabr @3909
== c#brandj @3910
== c#brhabr @3911
== c#brandj @3912
END
IF ~Dead("c#brhaff")~ THEN EXTERN c#brhabr hello_prison_02
IF ~!Dead("c#brhaff") InMyArea("c#brhaff")~ THEN DO ~SetGlobal("C#Brando_VisitedMalm","GLOBAL",5)
ClearAllActions() StartCutSceneMode() StartCutScene("c#brcu12")~ EXIT
IF ~!Dead("c#brhaff") !InMyArea("c#brhaff")~ THEN DO ~SetGlobal("C#Brando_VisitedMalm","GLOBAL",5)
CreateCreature("c#brhaff",[364.497],12)
ClearAllActions() StartCutSceneMode() StartCutScene("c#brcu12")~ EXIT

APPEND c#brhaff 
IF WEIGHT #-1
~Global("C#Brando_VisitedMalm","GLOBAL",5)~ THEN release_malm
SAY @3913
IF ~~ THEN EXTERN c#brhabr hello_prison_02
END
END//APPEND



CHAIN
IF ~~ THEN c#brhabr hello_prison_02
@3914
== c#brandj @3915
= @3916
= @3917
== c#brhabr @3918
== c#brandj @3919
END
IF ~~ THEN DO ~EraseJournalEntry(@10075) DestroyGold(100) SetGlobal("C#Brando_VisitedMalm","GLOBAL",6)~ UNSOLVED_JOURNAL @10045 EXIT

APPEND c#brandj

IF ~Global("C#Brandock_Shapeshift","GLOBAL",25)~ THEN sent_malm_alisarhold
SAY @3920
++ @3921 + sent_malm_alisarhold_01
++ @3922 + sent_malm_alisarhold_01
++ @3923 + sent_malm_alisarhold_03
++ @3924 + sent_malm_alisarhold_03
++ @3925 + sent_malm_alisarhold_02
++ @3926 + sent_malm_alisarhold_05
++ @3927 + sent_malm_alisarhold_05
++ @3928 + sent_malm_alisarhold_04
++ @3929 + sent_malm_alisarhold_06
++ @3930 + sent_malm_alisarhold_05
END

IF ~~ THEN sent_malm_alisarhold_01
SAY @3931
++ @3923 + sent_malm_alisarhold_03
++ @3924 + sent_malm_alisarhold_03
++ @3925 + sent_malm_alisarhold_02
++ @3926 + sent_malm_alisarhold_05
++ @3927 + sent_malm_alisarhold_05
++ @3928 + sent_malm_alisarhold_04
++ @3929 + sent_malm_alisarhold_06
++ @3930 + sent_malm_alisarhold_05
END

IF ~~ THEN sent_malm_alisarhold_02
SAY @3932
IF ~~ THEN + sent_malm_alisarhold_05
END

IF ~~ THEN sent_malm_alisarhold_03
SAY @3933
IF ~~ THEN + sent_malm_alisarhold_05
END

IF ~~ THEN sent_malm_alisarhold_04
SAY @3934
IF ~~ THEN + sent_malm_alisarhold_05
END

IF ~~ THEN sent_malm_alisarhold_05
SAY @3935
IF ~~ THEN DO ~SetGlobal("C#Brandock_Shapeshift","GLOBAL",26)
SetGlobal("C#Brando_VisitedMalm","GLOBAL",7)~ EXIT
END

IF ~~ THEN sent_malm_alisarhold_06
SAY @3936
IF ~~ THEN + sent_malm_alisarhold_05
END

END //APPEND
