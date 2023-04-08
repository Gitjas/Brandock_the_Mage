/* spotting Valerie */

APPEND c#brandj

IF WEIGHT #-1
~Global("C#Brandock_ValerieBG1","GLOBAL",1)
!InParty("t2val")~ THEN valerie
SAY @0
++ @1 + valerie_01
++ @2 + valerie_02
++ @3 + valerie_03
END

IF ~~ THEN valerie_01
SAY @4
IF ~~ THEN + valerie_02
END

IF ~~ THEN valerie_02
SAY @5
= @6
= @7
IF ~~ THEN + valerie_03
END

IF ~~ THEN valerie_03
SAY @8
IF ~~ THEN DO ~SetGlobal("C#Brandock_ValerieBG1","GLOBAL",2)~ EXIT
END

END //APPEND c#brandj




/* Brandock - Valerie */

CHAIN
IF WEIGHT #-1 
~%BGT_VAR%
  OR(2) InParty(Myself) Global("C#BrandockJoined","GLOBAL",2)
  !See([ENEMY])
  !Range([NEUTRAL],10)
  See("t2val") 
  !StateCheck("t2val",CD_STATE_NOTVALID)
  InParty("t2val")
  CombatCounter(0)
GlobalLT("C#Brandock_ValerieBG1","GLOBAL",3)~ THEN c#brandB brandockvalerie
@9 DO ~SetGlobal("C#Brandock_ValerieBG1","GLOBAL",3)~
== BT2VAL @10
== c#brandB @11
== BT2VAL @12
== c#brandB @13
== BT2VAL @14
== c#brandB @15
EXIT

CHAIN
IF  
~%BGT_VAR%
  OR(2) InParty(Myself) Global("C#BrandockJoined","GLOBAL",2)
  !See([ENEMY])
  !Range([NEUTRAL],10)
  See("t2val") 
  !StateCheck("t2val",CD_STATE_NOTVALID)
  InParty("t2val")
  CombatCounter(0)
Global("C#Brandock_ValerieBG1","GLOBAL",3)~ THEN c#brandB brandockvalerie_02
@16 DO ~SetGlobal("C#Brandock_ValerieBG1","GLOBAL",4)~
== BT2VAL @17
== c#brandB @18
== BT2VAL @19
== c#brandB @20
EXIT

CHAIN
IF WEIGHT #-1 
~CombatCounter(0) !See([ENEMY]) InParty("C#Brandock")
See("C#Brandock") See(Player1)
!StateCheck("C#Brandock",CD_STATE_NOTVALID)
!StateCheck(Myself,CD_STATE_NOTVALID)
InParty(Myself)
Global("C#Brandock_ValerieBG1","GLOBAL",4)
~ THEN BT2VAL brandockvalerie_03
@21 DO ~SetGlobal("C#Brandock_ValerieBG1","GLOBAL",5)~
== c#brandJ @22
== BT2VAL @23
== c#brandJ @24
== BT2VAL @25
== c#brandJ @26
EXIT


/* after Brandock told his origin in FD */


CHAIN
IF WEIGHT #-1 
~%BGT_VAR%
  OR(2) InParty(Myself) Global("C#BrandockJoined","GLOBAL",2)
  !See([ENEMY])
  !Range([NEUTRAL],10)
  See("t2val") 
  !StateCheck("t2val",CD_STATE_NOTVALID)
  InParty("t2val")
  CombatCounter(0)
  Global("C#BR_KnowsAmn","GLOBAL",1)
Global("C#Brandock_ValerieBG1","GLOBAL",5)~ THEN c#brandB brandockvalerie_05
@27
DO ~SetGlobal("C#Brandock_ValerieBG1","GLOBAL",6)~
== BT2VAL @28
== c#brandB @29
== BT2VAL @30
== c#brandB @31
//## könnte hier geteilt werden
== BT2VAL @32
== c#brandB @33
== BT2VAL @34
== c#brandB @35
EXIT


CHAIN
IF 
~%BGT_VAR%
  OR(2) InParty(Myself) Global("C#BrandockJoined","GLOBAL",2)
  !See([ENEMY])
  !Range([NEUTRAL],10)
  See("t2val") 
  !StateCheck("t2val",CD_STATE_NOTVALID)
  InParty("t2val")
  CombatCounter(0)
Global("C#Brandock_ValerieBG1","GLOBAL",6)~ THEN c#brandB brandockvalerie_04
@36 DO ~SetGlobal("C#Brandock_ValerieBG1","GLOBAL",7)~
== BT2VAL @37
== c#brandB @38
== BT2VAL @39
== c#brandB @40
EXIT


CHAIN
IF 
~CombatCounter(0) !See([ENEMY]) InParty("C#Brandock")
See("C#Brandock") See(Player1)
!StateCheck("C#Brandock",CD_STATE_NOTVALID)
!StateCheck(Myself,CD_STATE_NOTVALID)
InParty(Myself)
Global("C#Brandock_ValerieBG1","GLOBAL",7)
~ THEN BT2VAL brandockvalerie_06
@41 DO ~SetGlobal("C#Brandock_ValerieBG1","GLOBAL",8)~
== c#brandJ @42
== BT2VAL @43
== c#brandJ @44
== BT2VAL @45
== c#brandJ @46
== BT2VAL @47
== c#brandJ @48
== BT2VAL @49
== c#brandJ @50
== BT2VAL @51
== c#brandJ @52
EXIT

/* banter started by Brandock */
CHAIN
IF WEIGHT #-1 
~%BGT_VAR%
  OR(2) InParty(Myself) Global("C#BrandockJoined","GLOBAL",2)
  !See([ENEMY])
  !Range([NEUTRAL],10)
  See("t2val") 
  !StateCheck("t2val",CD_STATE_NOTVALID)
  InParty("t2val")
  CombatCounter(0)
Global("C#Brandock_ValerieBG1","GLOBAL",8)~ THEN c#brandB brandockvalerie_07
@53 
DO ~SetGlobal("C#Brandock_ValerieBG1","GLOBAL",9)~ 
== BT2VAL @54
== c#brandB @55
== BT2VAL @56
== c#brandB @57
== BT2VAL @58
== c#brandB @59
EXIT