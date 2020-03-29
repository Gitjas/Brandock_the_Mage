/* Brage - Brandock */

/* If Brage is in party: Brandock's comment about Brage will not fire but this banter instead. */

CHAIN
IF WEIGHT #-1
~%BGT_VAR%
InParty("C#Brage")
See("C#Brage")
!StateCheck("C#Brage",CD_STATE_NOTVALID)
OR(2) InParty(Myself) Global("C#BrandockJoined","GLOBAL",2)
!StateCheck(Myself,CD_STATE_NOTVALID)
See(Player1)
!StateCheck(Player1,CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C#Brandock_Brage","GLOBAL",0)~ THEN C#BrandB brage_dialogue
@0 DO ~SetGlobal("C#Brandock_Brage","GLOBAL",2)~ //needs to be at "2"
== C#BrageB @1
== C#BrandB @2
== C#BrageB @3
== C#BrandB @4
EXIT