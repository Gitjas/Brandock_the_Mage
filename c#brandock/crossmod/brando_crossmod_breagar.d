
/* BG1 Breagars Buch der Schmiederkunst */
CHAIN
IF WEIGHT #-1 
~%BG1_BEFORE_TRANSITION%
CombatCounter(0) !See([ENEMY]) 
OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2)
See("ACBRE") See(Player1)
!StateCheck("ACBRE",CD_STATE_NOTVALID)
!StateCheck(Myself,CD_STATE_NOTVALID)
InParty("ACBRE")
HasItem("acbook","ACBRE")
Global("C#Brandock_BrandockBreagarBook","GLOBAL",0)
~ THEN C#BrandB brandockbreagar_book1
@0 DO ~SetGlobal("C#Brandock_BrandockBreagarBook","GLOBAL",1)~
== ~ACBREB~ @1
== C#BrandB @2
== ~ACBREB~ @1
== C#BrandB @3
== ~ACBREB~ @4
== C#BrandB @5
== ~ACBREB~ @6
== C#BrandB @7
EXIT

CHAIN
IF 
~%BG1_BEFORE_TRANSITION%
CombatCounter(0) !See([ENEMY]) 
OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2)
See("ACBRE") See(Player1)
!StateCheck("ACBRE",CD_STATE_NOTVALID)
!StateCheck(Myself,CD_STATE_NOTVALID)
InParty("ACBRE")
HasItem("acbook","ACBRE")
Global("C#Brandock_BrandockBreagarBook","GLOBAL",1)
~ THEN C#BrandB brandockbreagar_book2
@8 DO ~SetGlobal("C#Brandock_BrandockBreagarBook","GLOBAL",2)~
== ~ACBREB~ @9
== C#BrandB @10
== ~ACBREB~ @11
== C#BrandB @12
== ~ACBREB~ @13
== C#BrandB @14
== ~ACBREB~ @15
== C#BrandB @16
== ~ACBREB~ @17
EXIT