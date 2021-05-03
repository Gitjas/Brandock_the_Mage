/* Brandock is ready to scribe a scroll: */


/* When Brandock readies himself to write a scroll: rewrite cursed scrolls on top of it */
/* Fluch der Schw�che / Cursed Scroll of Weakness (SCRL10) -> Strahl der Schw�chung / Ray of Enfeeblement (SCRLAI) L2
LevelGT("C#Brandock",2) */

CHAIN
IF ~Global("C#Br_ScribeScrollSCRL10","MYAREA",2)~ THEN c#brandj scribe_scoll_SCRL10
@3000
== c#brandj IF ~Global("C#Br_DoOnceSCRL10","LOCALS",1)~ THEN @3001 DO ~SetGlobal("C#Br_DoOnceSCRL10","LOCALS",2)~
END
IF ~~ THEN DO ~SetGlobal("C#Br_ScribeScrollSCRL10","MYAREA",3)
ActionOverride("C#Brhelp",DestroySelf())~ + scribe_scoll_another

APPEND c#brandj 

IF ~Global("C#Br_Scrollscribing","GLOBAL",1)
Global("C#Br_DoOnceSCRL10","LOCALS",0)
LevelGT("C#Brandock",2)
GlobalGT("C#Br_HasScrollSCRL10","LOCALS",0)
OR(2)
PartyHasItemIdentified("SCRL10")
HasItem("SCRL10","C#Brandock")~ THEN scribe_scoll_SCRL10_01
SAY @3002
IF ~~ THEN DO ~SetGlobal("C#Br_DoOnceSCRL10","LOCALS",1)~ + scribe_scoll_02
END

IF ~~ THEN scribe_scoll_SCRL10_02
SAY @3003
IF ~~ THEN DO ~SetGlobal("C#Br_ScribeScrollSCRL10","MYAREA",1)
CreateCreatureObject("C#Brhelp",Myself,0,0,0)~ EXIT
END

END //APPEND

/* Cursed Scroll of Ugliness (SCRL13) -> Horror (SCRL89) L2
LevelGT("C#Brandock",2) */
CHAIN
IF ~Global("C#Br_ScribeScrollSCRL13","MYAREA",2)~ THEN c#brandj scribe_scoll_SCRL13
@3004
== c#brandj IF ~Global("C#Br_DoOnceSCRL13","LOCALS",1)~ THEN @3001 DO ~SetGlobal("C#Br_DoOnceSCRL13","LOCALS",2)~
END
IF ~~ THEN DO ~SetGlobal("C#Br_ScribeScrollSCRL13","MYAREA",3)
ActionOverride("C#Brhelp",DestroySelf())~ + scribe_scoll_another

APPEND c#brandj 

IF ~Global("C#Br_Scrollscribing","GLOBAL",1)
Global("C#Br_DoOnceSCRL13","LOCALS",0)
LevelGT("C#Brandock",2)
GlobalGT("C#Br_HasScrollSCRL13","LOCALS",0)
OR(2)
PartyHasItemIdentified("SCRL13")
HasItem("SCRL13","C#Brandock")~ THEN scribe_scoll_SCRL13_01
SAY @3005
IF ~~ THEN DO ~SetGlobal("C#Br_DoOnceSCRL13","LOCALS",1)~ + scribe_scoll_02
END

IF ~~ THEN scribe_scoll_SCRL13_02
SAY @3003
IF ~~ THEN DO ~SetGlobal("C#Br_ScribeScrollSCRL13","MYAREA",1)
CreateCreatureObject("C#Brhelp",Myself,0,0,0)~ EXIT
END

END //APPEND

/* Cursed Scroll of Summon Monster (SCRL14) -> Monster Summoning I (SCRL1L) L3
LevelGT("C#Brandock",4) */
CHAIN
IF ~Global("C#Br_ScribeScrollSCRL14","MYAREA",2)~ THEN c#brandj scribe_scoll_SCRL14
@3006
== c#brandj IF ~Global("C#Br_DoOnceSCRL14","LOCALS",1)~ THEN @3001 DO ~SetGlobal("C#Br_DoOnceSCRL14","LOCALS",2)~
END
IF ~~ THEN DO ~SetGlobal("C#Br_ScribeScrollSCRL14","MYAREA",3)
ActionOverride("C#Brhelp",DestroySelf())~ + scribe_scoll_another

APPEND c#brandj 

IF ~Global("C#Br_Scrollscribing","GLOBAL",1)
Global("C#Br_DoOnceSCRL14","LOCALS",0)
LevelGT("C#Brandock",4)
GlobalGT("C#Br_HasScrollSCRL14","LOCALS",0)
OR(2)
PartyHasItemIdentified("SCRL14")
HasItem("SCRL14","C#Brandock")~ THEN scribe_scoll_SCRL14_01
SAY @3007
IF ~~ THEN DO ~SetGlobal("C#Br_DoOnceSCRL14","LOCALS",1)~ + scribe_scoll_02
END

IF ~~ THEN scribe_scoll_SCRL14_02
SAY @3003
IF ~~ THEN DO ~SetGlobal("C#Br_ScribeScrollSCRL14","MYAREA",1)
CreateCreatureObject("C#Brhelp",Myself,0,0,0)~ EXIT
END

END //APPEND

/* Fluch der Ungeschicklichkeit / Cursed Scroll of Clumsiness (SCRL11) -> Verlangsamen /Slow (SCRL1O) L3
LevelGT("C#Brandock",4) */

CHAIN
IF ~Global("C#Br_ScribeScrollSCRL11","MYAREA",2)~ THEN c#brandj scribe_scoll_SCRL11
@3008
== c#brandj IF ~Global("C#Br_DoOnceSCRL11","LOCALS",1)~ THEN @3001 DO ~SetGlobal("C#Br_DoOnceSCRL11","LOCALS",2)~
END
IF ~~ THEN DO ~SetGlobal("C#Br_ScribeScrollSCRL11","MYAREA",3)
ActionOverride("C#Brhelp",DestroySelf())~ + scribe_scoll_another

APPEND c#brandj 

IF ~Global("C#Br_Scrollscribing","GLOBAL",1)
Global("C#Br_DoOnceSCRL11","LOCALS",0)
LevelGT("C#Brandock",4)
GlobalGT("C#Br_HasScrollSCRL11","LOCALS",0)
OR(2)
PartyHasItemIdentified("SCRL11")
HasItem("SCRL11","C#Brandock")~ THEN scribe_scoll_SCRL11_01
SAY @3009
IF ~~ THEN DO ~SetGlobal("C#Br_DoOnceSCRL11","LOCALS",1)~ + scribe_scoll_02
END

IF ~~ THEN scribe_scoll_SCRL11_02
SAY @3003
IF ~~ THEN DO ~SetGlobal("C#Br_ScribeScrollSCRL11","MYAREA",1)
CreateCreatureObject("C#Brhelp",Myself,0,0,0)~ EXIT
END

END //APPEND

/* Fluch der Dummheit / Cursed Scroll of Foolishness (SCRL12) -> Confusion (?) (SCRL1U) L4
LevelGT("C#Brandock",6) */

CHAIN
IF ~Global("C#Br_ScribeScrollSCRL12","MYAREA",2)~ THEN c#brandj scribe_scoll_SCRL12
@3010
== c#brandj IF ~Global("C#Br_DoOnceSCRL12","LOCALS",1)~ THEN @3001 DO ~SetGlobal("C#Br_DoOnceSCRL12","LOCALS",2)~
END
IF ~~ THEN DO ~SetGlobal("C#Br_ScribeScrollSCRL12","MYAREA",3)
ActionOverride("C#Brhelp",DestroySelf())~ + scribe_scoll_another

APPEND c#brandj 

IF ~Global("C#Br_Scrollscribing","GLOBAL",1)
Global("C#Br_DoOnceSCRL12","LOCALS",0)
LevelGT("C#Brandock",6)
GlobalGT("C#Br_HasScrollSCRL12","LOCALS",0)
OR(2)
PartyHasItemIdentified("SCRL12")
HasItem("SCRL12","C#Brandock")~ THEN scribe_scoll_SCRL12_01
SAY @3011
IF ~~ THEN DO ~SetGlobal("C#Br_DoOnceSCRL12","LOCALS",1)~ + scribe_scoll_02
END

IF ~~ THEN scribe_scoll_SCRL12_02
SAY @3003
IF ~~ THEN DO ~SetGlobal("C#Br_ScribeScrollSCRL12","MYAREA",1)
CreateCreatureObject("C#Brhelp",Myself,0,0,0)~ EXIT
END



END //APPEND

/* Cursed Scroll of Stupidity (SCRL18) -> Feeblemind (SCRL5Q) L5
LevelGT("C#Brandock",8) */
CHAIN
IF ~Global("C#Br_ScribeScrollSCRL18","MYAREA",2)~ THEN c#brandj scribe_scoll_SCRL18
@3012
== c#brandj IF ~Global("C#Br_DoOnceSCRL18","LOCALS",1)~ THEN @3001 DO ~SetGlobal("C#Br_DoOnceSCRL18","LOCALS",2)~
END
IF ~~ THEN DO ~SetGlobal("C#Br_ScribeScrollSCRL18","MYAREA",3)
ActionOverride("C#Brhelp",DestroySelf())~ + scribe_scoll_another

APPEND c#brandj 

IF ~Global("C#Br_Scrollscribing","GLOBAL",1)
Global("C#Br_DoOnceSCRL18","LOCALS",0)
LevelGT("C#Brandock",8)
GlobalGT("C#Br_HasScrollSCRL18","LOCALS",0)
OR(2)
PartyHasItemIdentified("SCRL18")
HasItem("SCRL18","C#Brandock")~ THEN scribe_scoll_SCRL18_01
SAY @3013
IF ~~ THEN DO ~SetGlobal("C#Br_DoOnceSCRL18","LOCALS",1)~ + scribe_scoll_02
END

IF ~~ THEN scribe_scoll_SCRL18_02
SAY @3003
IF ~~ THEN DO ~SetGlobal("C#Br_ScribeScrollSCRL18","MYAREA",1)
CreateCreatureObject("C#Brhelp",Myself,0,0,0)~ EXIT
END


END //APPEND

/* BGII/SoD Cursed Scroll of Petrification (SCRL16) -> Flesh to Stone (SCRL7H) L6
LevelGT("C#Brandock",11) 
OR(2)
%IT_IS_BGII% 
%IT_IS_SOD% */
CHAIN
IF ~Global("C#Br_ScribeScrollSCRL16","MYAREA",2)~ THEN c#brandj scribe_scoll_SCRL16
@3014
== c#brandj IF ~Global("C#Br_DoOnceSCRL16","LOCALS",1)~ THEN @3001 DO ~SetGlobal("C#Br_DoOnceSCRL16","LOCALS",2)~
END
IF ~~ THEN DO ~SetGlobal("C#Br_ScribeScrollSCRL16","MYAREA",3)
ActionOverride("C#Brhelp",DestroySelf())~ + scribe_scoll_another

APPEND c#brandj 

IF ~OR(2)
%IT_IS_BGII% 
%IT_IS_SOD% 
Global("C#Br_Scrollscribing","GLOBAL",1)
Global("C#Br_DoOnceSCRL16","LOCALS",0)
LevelGT("C#Brandock",11)
GlobalGT("C#Br_HasScrollSCRL16","LOCALS",0)
OR(2)
PartyHasItemIdentified("SCRL16")
HasItem("SCRL16","C#Brandock")~ THEN scribe_scoll_SCRL16_01
SAY @3015
IF ~~ THEN DO ~SetGlobal("C#Br_DoOnceSCRL16","LOCALS",1)~ + scribe_scoll_02
END

IF ~~ THEN scribe_scoll_SCRL16_02
SAY @3003
IF ~~ THEN DO ~SetGlobal("C#Br_ScribeScrollSCRL16","MYAREA",1)
CreateCreatureObject("C#Brhelp",Myself,0,0,0)~ EXIT
END


END //APPEND

/* BGII Cursed Scroll of Ailment (SCRL17) -> Brandock hebt sie auf bis BGII / bis er Zauber Stufe 7 werfen kann? Wird "Finger des Todes" (SCRL8O) L7
LevelGT("C#Brandock",13) 
~%IT_IS_BGII% */
CHAIN
IF ~Global("C#Br_ScribeScrollSCRL17","MYAREA",2)~ THEN c#brandj scribe_scoll_SCRL17
@3016
== c#brandj IF ~Global("C#Br_DoOnceSCRL17","LOCALS",1)~ THEN @3001 DO ~SetGlobal("C#Br_DoOnceSCRL17","LOCALS",2)~
END
IF ~~ THEN DO ~SetGlobal("C#Br_ScribeScrollSCRL17","MYAREA",3)
ActionOverride("C#Brhelp",DestroySelf())~ + scribe_scoll_another

APPEND c#brandj 

IF ~%IT_IS_BGII%
Global("C#Br_Scrollscribing","GLOBAL",1)
Global("C#Br_DoOnceSCRL17","LOCALS",0)
LevelGT("C#Brandock",13)
GlobalGT("C#Br_HasScrollSCRL17","LOCALS",0)
OR(2)
PartyHasItemIdentified("SCRL17")
HasItem("SCRL17","C#Brandock")~ THEN scribe_scoll_SCRL17_01
SAY @3017
IF ~~ THEN DO ~SetGlobal("C#Br_DoOnceSCRL17","LOCALS",1)~ + scribe_scoll_02
END

IF ~~ THEN scribe_scoll_SCRL17_02
SAY @3003
IF ~~ THEN DO ~SetGlobal("C#Br_ScribeScrollSCRL17","MYAREA",1)
CreateCreatureObject("C#Brhelp",Myself,0,0,0)~ EXIT
END



IF ~~ THEN scribe_scoll_another
SAY @3018
IF ~~ THEN + scribe_scoll_02
END

IF ~Global("C#Br_Scrollscribing","GLOBAL",2)
Global("C#Br_ScrollComment","LOCALS",0)
!Global("C#Br_ScribeBookComment","LOCALS",1)
!Global("C#Br_WriteDurableScrolls","LOCALS",3)
!Global("C#Br_WriteBook","LOCALS",7)~ THEN scribe_scoll 
SAY @3019
IF ~~ THEN DO ~SetGlobal("C#Br_Scrollscribing","GLOBAL",3)
SetGlobal("C#Br_ScrollComment","LOCALS",1)~ EXIT
IF ~InMyArea("C#Brhelp")~ THEN DO ~SetGlobal("C#Br_Scrollscribing","GLOBAL",3)
SetGlobal("C#Br_ScrollComment","LOCALS",1)
ActionOverride("C#Brhelp",DestroySelf())~ EXIT
END

IF ~Global("C#Br_Scrollscribing","GLOBAL",2)
!Global("C#Br_ScribeBookComment","LOCALS",1)
!Global("C#Br_WriteDurableScrolls","LOCALS",3)
!Global("C#Br_WriteBook","LOCALS",7)~ THEN scribe_scoll_01
SAY @3020
IF ~~ THEN DO ~SetGlobal("C#Br_Scrollscribing","GLOBAL",3)~ EXIT
IF ~InMyArea("C#Brhelp")~ THEN DO ~SetGlobal("C#Br_Scrollscribing","GLOBAL",3)
ActionOverride("C#Brhelp",DestroySelf())~ EXIT
END

IF ~Global("C#Br_Scrollscribing","GLOBAL",1) Global("C#Br_FirstTimeScribing","MYAREA",0)~ THEN scribe_scoll_a
SAY @3021
IF ~~ THEN DO ~SetGlobal("C#Br_FirstTimeScribing","MYAREA",1)~ + scribe_scoll_02
END

/* generic BGII starting line */
IF ~Global("c#brscrl","GLOBAL",1)~ THEN scribe_scoll_01_b
SAY @3022
IF ~~ THEN DO ~SetGlobal("c#brscrl","GLOBAL",2)~ + scribe_scoll_02
END

IF ~Global("C#Br_Scrollscribing","GLOBAL",1)~ THEN scribe_scoll_02
SAY @3023

/* cursed scrolls */
/* "SCRL10" */
+ ~LevelGT("C#Brandock",2)
PartyHasItemIdentified("SCRL10")~ + @3029 DO ~SetGlobal("C#Br_WriteScrollSCRLAI","LOCALS",1)~ + scribe_scoll_SCRL10_02
+ ~LevelGT("C#Brandock",2)
!PartyHasItemIdentified("SCRL10")
Global("C#BrandockJoined","GLOBAL",2)
GlobalGT("C#Br_HasScrollSCRL10","LOCALS",0)
HasItem("SCRL10","C#Brandock")~ + @3029 DO ~ActionOverride("C#Brandock",GiveItem("SCRL10",Player1))
SetGlobal("C#Br_HasScrollSCRL10","LOCALS",0)
SetGlobal("C#Br_WriteScrollSCRLAI","LOCALS",1)~ + scribe_scoll_SCRL10_02
/* "SCRL11" */
+ ~LevelGT("C#Brandock",2)
PartyHasItemIdentified("SCRL11")~ + @3030 DO ~SetGlobal("C#Br_WriteScrollSCRL1O","LOCALS",1)~ + scribe_scoll_SCRL11_02
+ ~LevelGT("C#Brandock",2)
!PartyHasItemIdentified("SCRL11")
Global("C#BrandockJoined","GLOBAL",2)
GlobalGT("C#Br_HasScrollSCRL11","LOCALS",0)
HasItem("SCRL11","C#Brandock")~ + @3030 DO ~ActionOverride("C#Brandock",GiveItem("SCRL11",Player1))
SetGlobal("C#Br_HasScrollSCRL11","LOCALS",0)
SetGlobal("C#Br_WriteScrollSCRL1O","LOCALS",1)~ + scribe_scoll_SCRL11_02
/* "SCRL12" */
+ ~LevelGT("C#Brandock",2)
PartyHasItemIdentified("SCRL12")~ + @3031 DO ~SetGlobal("C#Br_WriteScrollSCRL1U","LOCALS",1)~ + scribe_scoll_SCRL12_02
+ ~LevelGT("C#Brandock",2)
!PartyHasItemIdentified("SCRL12")
Global("C#BrandockJoined","GLOBAL",2)
GlobalGT("C#Br_HasScrollSCRL12","LOCALS",0)
HasItem("SCRL12","C#Brandock")~ + @3031 DO ~ActionOverride("C#Brandock",GiveItem("SCRL12",Player1))
SetGlobal("C#Br_HasScrollSCRL12","LOCALS",0)
SetGlobal("C#Br_WriteScrollSCRL1U","LOCALS",1)~ + scribe_scoll_SCRL12_02
/* "SCRL13" */
+ ~LevelGT("C#Brandock",2)
PartyHasItemIdentified("SCRL13")~ + @3032 DO ~SetGlobal("C#Br_WriteScrollSCRL89","LOCALS",1)~ + scribe_scoll_SCRL13_02
+ ~LevelGT("C#Brandock",2)
!PartyHasItemIdentified("SCRL13")
Global("C#BrandockJoined","GLOBAL",2)
GlobalGT("C#Br_HasScrollSCRL13","LOCALS",0)
HasItem("SCRL13","C#Brandock")~ + @3032 DO ~ActionOverride("C#Brandock",GiveItem("SCRL13",Player1))
SetGlobal("C#Br_HasScrollSCRL13","LOCALS",0)
SetGlobal("C#Br_WriteScrollSCRL89","LOCALS",1)~ + scribe_scoll_SCRL13_02
/* "SCRL14" */
+ ~LevelGT("C#Brandock",2)
PartyHasItemIdentified("SCRL14")~ + @3033 DO ~SetGlobal("C#Br_WriteScrollSCRL1L","LOCALS",1)~ + scribe_scoll_SCRL14_02
+ ~LevelGT("C#Brandock",2)
!PartyHasItemIdentified("SCRL14")
Global("C#BrandockJoined","GLOBAL",2)
GlobalGT("C#Br_HasScrollSCRL14","LOCALS",0)
HasItem("SCRL14","C#Brandock")~ + @3033 DO ~ActionOverride("C#Brandock",GiveItem("SCRL14",Player1))
SetGlobal("C#Br_HasScrollSCRL14","LOCALS",0)
SetGlobal("C#Br_WriteScrollSCRL1L","LOCALS",1)~ + scribe_scoll_SCRL14_02
/* "SCRL16" */
+ ~LevelGT("C#Brandock",2)
PartyHasItemIdentified("SCRL16")~ + @3034 DO ~SetGlobal("C#Br_WriteScrollSCRL7H","LOCALS",1)~ + scribe_scoll_SCRL16_02
+ ~LevelGT("C#Brandock",2)
!PartyHasItemIdentified("SCRL16")
Global("C#BrandockJoined","GLOBAL",2)
GlobalGT("C#Br_HasScrollSCRL16","LOCALS",0)
HasItem("SCRL16","C#Brandock")~ + @3034 DO ~ActionOverride("C#Brandock",GiveItem("SCRL16",Player1))
SetGlobal("C#Br_HasScrollSCRL16","LOCALS",0)
SetGlobal("C#Br_WriteScrollSCRL7H","LOCALS",1)~ + scribe_scoll_SCRL16_02
/* "SCRL17" */
+ ~LevelGT("C#Brandock",2)
PartyHasItemIdentified("SCRL17")~ + @3035 DO ~SetGlobal("C#Br_WriteScrollSCRL8O","LOCALS",1)~ + scribe_scoll_SCRL17_02
+ ~LevelGT("C#Brandock",2)
!PartyHasItemIdentified("SCRL17")
Global("C#BrandockJoined","GLOBAL",2)
GlobalGT("C#Br_HasScrollSCRL17","LOCALS",0)
HasItem("SCRL17","C#Brandock")~ + @3035 DO ~ActionOverride("C#Brandock",GiveItem("SCRL17",Player1))
SetGlobal("C#Br_HasScrollSCRL17","LOCALS",0)
SetGlobal("C#Br_WriteScrollSCRL8O","LOCALS",1)~ + scribe_scoll_SCRL17_02
/* "SCRL18" */
+ ~LevelGT("C#Brandock",2)
PartyHasItemIdentified("SCRL18")~ + @3036 DO ~SetGlobal("C#Br_WriteScrollSCRL5Q","LOCALS",1)~ + scribe_scoll_SCRL18_02
+ ~LevelGT("C#Brandock",2)
!PartyHasItemIdentified("SCRL13")
Global("C#BrandockJoined","GLOBAL",2)
GlobalGT("C#Br_HasScrollSCRL18","LOCALS",0)
HasItem("SCRL18","C#Brandock")~ + @3036 DO ~ActionOverride("C#Brandock",GiveItem("SCRL18",Player1))
SetGlobal("C#Br_HasScrollSCRL18","LOCALS",0)
SetGlobal("C#Br_WriteScrollSCRL5Q","LOCALS",1)~ + scribe_scoll_SCRL18_02

/* spell level 1 */
++ @3037 DO ~GiveItemCreate("SCRL75",Player1,1,0,0) SetGlobal("C#Br_Scrollscribing","GLOBAL",2) ClearAllActions() StartCutSceneMode() StartCutScene("c#brcut5")~ EXIT
++ @3038 DO ~GiveItemCreate("SCRL77",Player1,1,0,0) SetGlobal("C#Br_Scrollscribing","GLOBAL",2) ClearAllActions() StartCutSceneMode() StartCutScene("c#brcut5")~ EXIT
++ @3039 DO ~GiveItemCreate("SCRL81",Player1,1,0,0) SetGlobal("C#Br_Scrollscribing","GLOBAL",2) ClearAllActions() StartCutSceneMode() StartCutScene("c#brcut5")~ EXIT
++ @3040 DO ~GiveItemCreate("SCRL5U",Player1,1,0,0) SetGlobal("C#Br_Scrollscribing","GLOBAL",2) ClearAllActions() StartCutSceneMode() StartCutScene("c#brcut5")~ EXIT
++ @3041 DO ~GiveItemCreate("SCRL73",Player1,1,0,0) SetGlobal("C#Br_Scrollscribing","GLOBAL",2) ClearAllActions() StartCutSceneMode() StartCutScene("c#brcut5")~ EXIT

/* spell level 2: wizard level 3 */
+ ~PartyGoldGT(99)
Global("C#Br_WriteScrollSCRLAI","LOCALS",1)~ + @3042 DO ~GiveItemCreate("SCRLAI",Player1,1,0,0) 
DestroyGold(100) SetGlobal("C#Br_Scrollscribing","GLOBAL",2) ClearAllActions() StartCutSceneMode() StartCutScene("c#brcut5")~ EXIT
+ ~PartyGoldGT(99)
Global("C#Br_WriteScrollSCRL89","LOCALS",1)~ + @3043 DO ~GiveItemCreate("SCRL89",Player1,1,0,0) 
DestroyGold(100) SetGlobal("C#Br_Scrollscribing","GLOBAL",2) ClearAllActions() StartCutSceneMode() StartCutScene("c#brcut5")~ EXIT
+ ~PartyGoldGT(99)
LevelGT("C#Brandock",2)~ + @3044 DO ~GiveItemCreate("SCRL3G",Player1,1,0,0) 
DestroyGold(100) SetGlobal("C#Br_Scrollscribing","GLOBAL",2) ClearAllActions() StartCutSceneMode() StartCutScene("c#brcut5")~ EXIT
+ ~PartyGoldGT(99)
LevelGT("C#Brandock",2)~ + @3045 DO ~GiveItemCreate("SCRL90",Player1,1,0,0) 
DestroyGold(100) SetGlobal("C#Br_Scrollscribing","GLOBAL",2) ClearAllActions() StartCutSceneMode() StartCutScene("c#brcut5")~ EXIT
+ ~PartyGoldGT(99)
LevelGT("C#Brandock",2)~ + @3046 DO ~GiveItemCreate("SCRLA3",Player1,1,0,0) 
DestroyGold(100) SetGlobal("C#Br_Scrollscribing","GLOBAL",2) ClearAllActions() StartCutSceneMode() StartCutScene("c#brcut5")~ EXIT
+ ~PartyGoldGT(99)
LevelGT("C#Brandock",2)~ + @3047 DO ~GiveItemCreate("SCRL96",Player1,1,0,0) 
DestroyGold(100) SetGlobal("C#Br_Scrollscribing","GLOBAL",2) ClearAllActions() StartCutSceneMode() StartCutScene("c#brcut5")~ EXIT
+ ~PartyGoldGT(99)
LevelGT("C#Brandock",2)~ + @3048 DO ~GiveItemCreate("SCRL91",Player1,1,0,0) 
DestroyGold(100) SetGlobal("C#Br_Scrollscribing","GLOBAL",2) ClearAllActions() StartCutSceneMode() StartCutScene("c#brcut5")~ EXIT


/* spell level 3: wizard level 5 */
+ ~PartyGoldGT(99)
Global("C#Br_WriteScrollSCRL1O","LOCALS",1)~ + @3049 DO ~GiveItemCreate("SCRL1O",Player1,1,0,0) 
DestroyGold(100) SetGlobal("C#Br_Scrollscribing","GLOBAL",2) ClearAllActions() StartCutSceneMode() StartCutScene("c#brcut5")~ EXIT
+ ~PartyGoldGT(99)
Global("C#Br_WriteScrollSCRL1L","LOCALS",1)~ + @3050 DO ~GiveItemCreate("SCRL1L",Player1,1,0,0) 
DestroyGold(100) SetGlobal("C#Br_Scrollscribing","GLOBAL",2) ClearAllActions() StartCutSceneMode() StartCutScene("c#brcut5")~ EXIT
+ ~PartyGoldGT(99)
LevelGT("C#Brandock",4)~ + @3051 DO ~GiveItemCreate("SCRL1P",Player1,1,0,0) 
DestroyGold(100) SetGlobal("C#Br_Scrollscribing","GLOBAL",2) ClearAllActions() StartCutSceneMode() StartCutScene("c#brcut5")~ EXIT
+ ~PartyGoldGT(99)
LevelGT("C#Brandock",4)~ + @3052 DO ~GiveItemCreate("SCRL1H",Player1,1,0,0) 
DestroyGold(100) SetGlobal("C#Br_Scrollscribing","GLOBAL",2) ClearAllActions() StartCutSceneMode() StartCutScene("c#brcut5")~ EXIT
+ ~PartyGoldGT(99)
LevelGT("C#Brandock",4)~ + @3053 DO ~GiveItemCreate("SCRL1G",Player1,1,0,0) 
DestroyGold(100) SetGlobal("C#Br_Scrollscribing","GLOBAL",2) ClearAllActions() StartCutSceneMode() StartCutScene("c#brcut5")~ EXIT
+ ~PartyGoldGT(99)
LevelGT("C#Brandock",4)~ + @3054 DO ~GiveItemCreate("SCRL1E",Player1,1,0,0) 
DestroyGold(100) SetGlobal("C#Br_Scrollscribing","GLOBAL",2) ClearAllActions() StartCutSceneMode() StartCutScene("c#brcut5")~ EXIT
+ ~PartyGoldGT(99)
LevelGT("C#Brandock",4)~ + @3055 DO ~GiveItemCreate("SCRLA7",Player1,1,0,0) 
DestroyGold(100) SetGlobal("C#Br_Scrollscribing","GLOBAL",2) ClearAllActions() StartCutSceneMode() StartCutScene("c#brcut5")~ EXIT
+ ~PartyGoldGT(99)
LevelGT("C#Brandock",4)~ + @3056 DO ~GiveItemCreate("SCRL1S",Player1,1,0,0) 
DestroyGold(100) SetGlobal("C#Br_Scrollscribing","GLOBAL",2) ClearAllActions() StartCutSceneMode() StartCutScene("c#brcut5")~ EXIT
+ ~PartyGoldGT(99)
LevelGT("C#Brandock",4)~ + @3057 DO ~GiveItemCreate("SCRL1J",Player1,1,0,0) 
DestroyGold(100) SetGlobal("C#Br_Scrollscribing","GLOBAL",2) ClearAllActions() StartCutSceneMode() StartCutScene("c#brcut5")~ EXIT
+ ~PartyGoldGT(99)
LevelGT("C#Brandock",4)~ + @3058 DO ~GiveItemCreate("SCRL6L",Player1,1,0,0) 
DestroyGold(100) SetGlobal("C#Br_Scrollscribing","GLOBAL",2) ClearAllActions() StartCutSceneMode() StartCutScene("c#brcut5")~ EXIT
+ ~PartyGoldGT(99)
LevelGT("C#Brandock",4)~ + @3059 DO ~GiveItemCreate("SCRL6J",Player1,1,0,0) 
DestroyGold(100) SetGlobal("C#Br_Scrollscribing","GLOBAL",2) ClearAllActions() StartCutSceneMode() StartCutScene("c#brcut5")~ EXIT
+ ~PartyGoldGT(99)
LevelGT("C#Brandock",4)~ + @3060 DO ~GiveItemCreate("SCRL6H",Player1,1,0,0) 
DestroyGold(100) SetGlobal("C#Br_Scrollscribing","GLOBAL",2) ClearAllActions() StartCutSceneMode() StartCutScene("c#brcut5")~ EXIT

/* spell level 4: wizard level 7 */
+ ~PartyGoldGT(199)
LevelGT("C#Brandock",6)~ + @3061 DO ~GiveItemCreate("SCRL5G",Player1,1,0,0) 
DestroyGold(200) SetGlobal("C#Br_Scrollscribing","GLOBAL",2) ClearAllActions() StartCutSceneMode() StartCutScene("c#brcut5")~ EXIT
+ ~PartyGoldGT(199)
LevelGT("C#Brandock",6)~ + @3062 DO ~GiveItemCreate("SCRL1Y",Player1,1,0,0) 
DestroyGold(200) SetGlobal("C#Br_Scrollscribing","GLOBAL",2) ClearAllActions() StartCutSceneMode() StartCutScene("c#brcut5")~ EXIT
+ ~PartyGoldGT(199)
LevelGT("C#Brandock",6)~ + @3063 DO ~GiveItemCreate("SCRL2B",Player1,1,0,0) 
DestroyGold(200) SetGlobal("C#Br_Scrollscribing","GLOBAL",2) ClearAllActions() StartCutSceneMode() StartCutScene("c#brcut5")~ EXIT
+ ~PartyGoldGT(199)
LevelGT("C#Brandock",6)~ + @3064 DO ~GiveItemCreate("SCRL2A",Player1,1,0,0) 
DestroyGold(200) SetGlobal("C#Br_Scrollscribing","GLOBAL",2) ClearAllActions() StartCutSceneMode() StartCutScene("c#brcut5")~ EXIT
+ ~PartyGoldGT(199)
LevelGT("C#Brandock",6)~ + @3065 DO ~GiveItemCreate("SCRL5J",Player1,1,0,0) 
DestroyGold(200) SetGlobal("C#Br_Scrollscribing","GLOBAL",2) ClearAllActions() StartCutSceneMode() StartCutScene("c#brcut5")~ EXIT
+ ~PartyGoldGT(199)
LevelGT("C#Brandock",6)~ + @3066 DO ~GiveItemCreate("SCRL6P",Player1,1,0,0) 
DestroyGold(200) SetGlobal("C#Br_Scrollscribing","GLOBAL",2) ClearAllActions() StartCutSceneMode() StartCutScene("c#brcut5")~ EXIT

/* spell level 5: wizard level 9 */
+ ~PartyGoldGT(199)
Global("C#Br_WriteScrollSCRL5Q","LOCALS",1)~ + @3067 DO ~GiveItemCreate("SCRL5Q",Player1,1,0,0) 
DestroyGold(200) SetGlobal("C#Br_Scrollscribing","GLOBAL",2) ClearAllActions() StartCutSceneMode() StartCutScene("c#brcut5")~ EXIT
+ ~PartyGoldGT(199)
LevelGT("C#Brandock",8)~ + @3068 DO ~GiveItemCreate("SCRL2G",Player1,1,0,0) 
DestroyGold(200) SetGlobal("C#Br_Scrollscribing","GLOBAL",2) ClearAllActions() StartCutSceneMode() StartCutScene("c#brcut5")~ EXIT
+ ~PartyGoldGT(199)
LevelGT("C#Brandock",8)~ + @3069 DO ~GiveItemCreate("SCRL5P",Player1,1,0,0) 
DestroyGold(200) SetGlobal("C#Br_Scrollscribing","GLOBAL",2) ClearAllActions() StartCutSceneMode() StartCutScene("c#brcut5")~ EXIT
+ ~PartyGoldGT(199)
LevelGT("C#Brandock",8)~ + @3070 DO ~GiveItemCreate("SCRL2F",Player1,1,0,0) 
DestroyGold(200) SetGlobal("C#Br_Scrollscribing","GLOBAL",2) ClearAllActions() StartCutSceneMode() StartCutScene("c#brcut5")~ EXIT
+ ~PartyGoldGT(199)
LevelGT("C#Brandock",8)~ + @3071 DO ~GiveItemCreate("SCRL6U",Player1,1,0,0) 
DestroyGold(200) SetGlobal("C#Br_Scrollscribing","GLOBAL",2) ClearAllActions() StartCutSceneMode() StartCutScene("c#brcut5")~ EXIT
+ ~PartyGoldGT(199)
LevelGT("C#Brandock",8)~ + @3072 DO ~GiveItemCreate("SCRL6S",Player1,1,0,0) 
DestroyGold(200) SetGlobal("C#Br_Scrollscribing","GLOBAL",2) ClearAllActions() StartCutSceneMode() StartCutScene("c#brcut5")~ EXIT
+ ~PartyGoldGT(199)
LevelGT("C#Brandock",8)~ + @3073 DO ~GiveItemCreate("SCRL6Y",Player1,1,0,0) 
DestroyGold(200) SetGlobal("C#Br_Scrollscribing","GLOBAL",2) ClearAllActions() StartCutSceneMode() StartCutScene("c#brcut5")~ EXIT
+ ~PartyGoldGT(199)
LevelGT("C#Brandock",8)~ + @3074 DO ~GiveItemCreate("SCRL8X",Player1,1,0,0) 
DestroyGold(200) SetGlobal("C#Br_Scrollscribing","GLOBAL",2) ClearAllActions() StartCutSceneMode() StartCutScene("c#brcut5")~ EXIT

/* spell level 6: wizard level 12 */
+ ~PartyGoldGT(349)
Global("C#Br_WriteScrollSCRL7H","LOCALS",1)~ + @3075 DO ~GiveItemCreate("SCRL7H",Player1,1,0,0) 
DestroyGold(350) SetGlobal("C#Br_Scrollscribing","GLOBAL",2) ClearAllActions() StartCutSceneMode() StartCutScene("c#brcut5")~ EXIT
+ ~PartyGoldGT(349)
Global("C#Br_WriteScrollSCRL1U","LOCALS",1)~ + @3076 DO ~GiveItemCreate("SCRL1U",Player1,1,0,0) 
DestroyGold(350) SetGlobal("C#Br_Scrollscribing","GLOBAL",2) ClearAllActions() StartCutSceneMode() StartCutScene("c#brcut5")~ EXIT
+ ~PartyGoldGT(349)
OR(2)
%IT_IS_BGII% 
%IT_IS_SOD% 
LevelGT("C#Brandock",11)~ + @3077 DO ~GiveItemCreate("SCRL7V",Player1,1,0,0) 
DestroyGold(350) SetGlobal("C#Br_Scrollscribing","GLOBAL",2) ClearAllActions() StartCutSceneMode() StartCutScene("c#brcut5")~ EXIT
+ ~PartyGoldGT(349)
OR(2)
%IT_IS_BGII% 
%IT_IS_SOD% 
LevelGT("C#Brandock",11)~ + @3078 DO ~GiveItemCreate("SCRL8B",Player1,1,0,0) 
DestroyGold(350) SetGlobal("C#Br_Scrollscribing","GLOBAL",2) ClearAllActions() StartCutSceneMode() StartCutScene("c#brcut5")~ EXIT

/* spell level 7: wizard level 14 */
+ ~PartyGoldGT(349)
Global("C#Br_WriteScrollSCRL8O","LOCALS",1)~ + @3079 DO ~GiveItemCreate("SCRL8O",Player1,1,0,0) 
DestroyGold(350) SetGlobal("C#Br_Scrollscribing","GLOBAL",2) ClearAllActions() StartCutSceneMode() StartCutScene("c#brcut5")~ EXIT
+ ~PartyGoldGT(349)
%IT_IS_BGII% LevelGT("C#Brandock",13)~ + @3080 DO ~GiveItemCreate("SCRL8D",Player1,1,0,0) 
DestroyGold(350) SetGlobal("C#Br_Scrollscribing","GLOBAL",2) ClearAllActions() StartCutSceneMode() StartCutScene("c#brcut5")~ EXIT
+ ~PartyGoldGT(349)
%IT_IS_BGII% LevelGT("C#Brandock",13)~ + @3081 DO ~GiveItemCreate("SCRL8W",Player1,1,0,0) 
DestroyGold(350) SetGlobal("C#Br_Scrollscribing","GLOBAL",2) ClearAllActions() StartCutSceneMode() StartCutScene("c#brcut5")~ EXIT
+ ~PartyGoldGT(349)
%IT_IS_BGII% LevelGT("C#Brandock",13)~ + @3082 DO ~GiveItemCreate("SCRL8F",Player1,1,0,0) 
DestroyGold(350) SetGlobal("C#Br_Scrollscribing","GLOBAL",2) ClearAllActions() StartCutSceneMode() StartCutScene("c#brcut5")~ EXIT
+ ~PartyGoldGT(349)
%IT_IS_BGII% LevelGT("C#Brandock",13)~ + @3083 DO ~GiveItemCreate("SCRL8M",Player1,1,0,0) 
DestroyGold(350) SetGlobal("C#Br_Scrollscribing","GLOBAL",2) ClearAllActions() StartCutSceneMode() StartCutScene("c#brcut5")~ EXIT
+ ~PartyGoldGT(349)
%IT_IS_BGII% LevelGT("C#Brandock",13)~ + @3084 DO ~GiveItemCreate("SCRL8S",Player1,1,0,0) 
DestroyGold(350) SetGlobal("C#Br_Scrollscribing","GLOBAL",2) ClearAllActions() StartCutSceneMode() StartCutScene("c#brcut5")~ EXIT

/* spell level 8: wizard level 16 */
+ ~PartyGoldGT(499)
LevelGT("C#Brandock",15)~ + @3085 DO ~GiveItemCreate("SCRLB1",Player1,1,0,0) 
DestroyGold(500) SetGlobal("C#Br_Scrollscribing","GLOBAL",2) ClearAllActions() StartCutSceneMode() StartCutScene("c#brcut5")~ EXIT
+ ~PartyGoldGT(499)
%IT_IS_BGII% LevelGT("C#Brandock",15)~ + @3086 DO ~GiveItemCreate("SCRL9A",Player1,1,0,0) 
DestroyGold(500) SetGlobal("C#Br_Scrollscribing","GLOBAL",2) ClearAllActions() StartCutSceneMode() StartCutScene("c#brcut5")~ EXIT

/* spell level 9: wizard level 18 */
+ ~PartyGoldGT(499)
LevelGT("C#Brandock",17)~ + @3087 DO ~GiveItemCreate("SCRLB2",Player1,1,0,0) 
DestroyGold(500) SetGlobal("C#Br_Scrollscribing","GLOBAL",2) ClearAllActions() StartCutSceneMode() StartCutScene("c#brcut5")~ EXIT
+ ~PartyGoldGT(499)
%IT_IS_BGII% LevelGT("C#Brandock",17)~ + @3088 DO ~GiveItemCreate("SCRL9L",Player1,1,0,0) 
DestroyGold(500) SetGlobal("C#Br_Scrollscribing","GLOBAL",2) ClearAllActions() StartCutSceneMode() StartCutScene("c#brcut5")~ EXIT
+ ~PartyGoldGT(499)
%IT_IS_BGII% LevelGT("C#Brandock",17)~ + @3089 DO ~GiveItemCreate("SCRL9Q",Player1,1,0,0) 
DestroyGold(500) SetGlobal("C#Br_Scrollscribing","GLOBAL",2) ClearAllActions() StartCutSceneMode() StartCutScene("c#brcut5")~ EXIT
+ ~PartyGoldGT(499)
%IT_IS_BGII% LevelGT("C#Brandock",17)~ + @3090 DO ~GiveItemCreate("SCRL9Z",Player1,1,0,0) 
DestroyGold(500)
SetGlobal("C#Br_Scrollscribing","GLOBAL",2) ClearAllActions() StartCutSceneMode() StartCutScene("c#brcut5")~ EXIT

/* nothing - works only for BG1 */
+ ~Global("c#brscrl","GLOBAL",0)~ + @3091 DO ~SetGlobal("C#Br_Scrollscribing","GLOBAL",0)~ EXIT
END

IF ~~ THEN scribe_durable_scoll_03
SAY @3092

/* spell level 1 */
+ ~GlobalGT("C#Br_WriteDurableScrolls","LOCALS",3)
PartyGoldGT(999)~ + @3093 DO ~GiveItemCreate("C#BR77",Player1,1,0,0)
DestroyGold(1000) SetGlobal("C#Br_Scrollscribing","GLOBAL",2) ClearAllActions() StartCutSceneMode() StartCutScene("c#brcut5")~ EXIT

/* spell level 2: wizard level 3 */
+ ~LevelGT("C#Brandock",2)
PartyGoldGT(999)
GlobalGT("C#Br_WriteDurableScrolls","LOCALS",3)~ + @3094 DO ~GiveItemCreate("C#BR90",Player1,1,0,0)
DestroyGold(1000) SetGlobal("C#Br_Scrollscribing","GLOBAL",2) ClearAllActions() StartCutSceneMode() StartCutScene("c#brcut5")~ EXIT

/* spell level 3: wizard level 5 */
+ ~LevelGT("C#Brandock",4)
PartyGoldGT(999)
GlobalGT("C#Br_WriteDurableScrolls","LOCALS",3)~ + @3095 DO ~GiveItemCreate("C#BR1H",Player1,1,0,0)
DestroyGold(1000) SetGlobal("C#Br_Scrollscribing","GLOBAL",2) ClearAllActions() StartCutSceneMode() StartCutScene("c#brcut5")~ EXIT
+ ~LevelGT("C#Brandock",4)
PartyGoldGT(999)
GlobalGT("C#Br_WriteDurableScrolls","LOCALS",3)~ + @3096 DO ~GiveItemCreate("C#BR1G",Player1,1,0,0)
DestroyGold(1000) SetGlobal("C#Br_Scrollscribing","GLOBAL",2) ClearAllActions() StartCutSceneMode() StartCutScene("c#brcut5")~ EXIT
+ ~LevelGT("C#Brandock",4)
PartyGoldGT(999)
GlobalGT("C#Br_WriteDurableScrolls","LOCALS",3)~ + @3097 DO ~GiveItemCreate("C#BR1E",Player1,1,0,0)
DestroyGold(1000) SetGlobal("C#Br_Scrollscribing","GLOBAL",2) ClearAllActions() StartCutSceneMode() StartCutScene("c#brcut5")~ EXIT

/* spell level 4: wizard level 7 */
+ ~LevelGT("C#Brandock",6)
PartyGoldGT(999)
GlobalGT("C#Br_WriteDurableScrolls","LOCALS",3)~ + @3098 DO ~GiveItemCreate("C#BR1Y",Player1,1,0,0)
DestroyGold(1000) SetGlobal("C#Br_Scrollscribing","GLOBAL",2) ClearAllActions() StartCutSceneMode() StartCutScene("c#brcut5")~ EXIT
+ ~LevelGT("C#Brandock",6)
PartyGoldGT(999)
GlobalGT("C#Br_WriteDurableScrolls","LOCALS",3)~ + @3099 DO ~GiveItemCreate("C#BR2A",Player1,1,0,0)
DestroyGold(1000) SetGlobal("C#Br_Scrollscribing","GLOBAL",2) ClearAllActions() StartCutSceneMode() StartCutScene("c#brcut5")~ EXIT

/* spell level 5: wizard level 9 */
+ ~LevelGT("C#Brandock",8)
PartyGoldGT(999)
GlobalGT("C#Br_WriteDurableScrolls","LOCALS",3)~ + @3100 DO ~GiveItemCreate("C#BR6U",Player1,1,0,0)
DestroyGold(1000) SetGlobal("C#Br_Scrollscribing","GLOBAL",2) ClearAllActions() StartCutSceneMode() StartCutScene("c#brcut5")~ EXIT
+ ~LevelGT("C#Brandock",8)
PartyGoldGT(999)
GlobalGT("C#Br_WriteDurableScrolls","LOCALS",3)~ + @3101 DO ~GiveItemCreate("C#BR6Y",Player1,1,0,0)
DestroyGold(1000) SetGlobal("C#Br_Scrollscribing","GLOBAL",2) ClearAllActions() StartCutSceneMode() StartCutScene("c#brcut5")~ EXIT

/* spell level 6: wizard level 12 */
+ ~Global("C#Br_WriteScrollSCRL1U","LOCALS",1)
PartyGoldGT(999)
GlobalGT("C#Br_WriteDurableScrolls","LOCALS",3)~ + @3102 DO ~GiveItemCreate("C#BR1U",Player1,1,0,0)
DestroyGold(1000) SetGlobal("C#Br_Scrollscribing","GLOBAL",2) ClearAllActions() StartCutSceneMode() StartCutScene("c#brcut5")~ EXIT

/* spell level 8: wizard level 16 */
+ ~%IT_IS_BGII% LevelGT("C#Brandock",15)
PartyGoldGT(999)
GlobalGT("C#Br_WriteDurableScrolls","LOCALS",3)~ + @3103 DO ~GiveItemCreate("C#BR9A",Player1,1,0,0)
DestroyGold(1000) SetGlobal("C#Br_Scrollscribing","GLOBAL",2) ClearAllActions() StartCutSceneMode() StartCutScene("c#brcut5")~ EXIT

/* or not */
++ @3104 + scribe_scoll
END

/* Brandock just made a scroll and needs to rest now.~ */
IF WEIGHT #-1
~Global("C#Br_Scrollscribing","GLOBAL",4)~ THEN scribe_scoll_nomore
SAY @3105 
IF ~~ THEN EXIT
END

END //APPEND