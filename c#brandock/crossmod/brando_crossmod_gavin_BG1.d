
/* Gavin told about his sister */
CHAIN
IF WEIGHT #-1 
~%BG1_BEFORE_TRANSITION%
CombatCounter(0) !See([ENEMY]) 
OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2)
See("B!GAVIN") See(Player1)
!StateCheck("B!GAVIN",CD_STATE_NOTVALID)
!StateCheck(Myself,CD_STATE_NOTVALID)
InParty("B!GAVIN")
Global("C#Brandock_GavinReedBG1","GLOBAL",0)
OR(2)
GlobalGT("B!GavinLovetalk","GLOBAL",8)
Global("B!GavinRingStory","GLOBAL",1)
~ THEN C#BrandB brandockgavin_sister_BG1
@0 DO ~SetGlobal("C#Brandock_GavinReedBG1","GLOBAL",1)~
== ~BB!GAVIN~ @1
== C#BrandB @2
== ~BB!GAVIN~ @3
== C#BrandB @4
== ~BB!GAVIN~ @5
EXIT