

/* Brandock - Dorn. This is for BG1, SoD, BGII. */
CHAIN
IF WEIGHT #-1 
~CombatCounter(0) !See([ENEMY]) 
OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2)
InParty("DORN")
See("DORN") See(Player1)
!StateCheck("DORN",CD_STATE_NOTVALID)
!StateCheck(Myself,CD_STATE_NOTVALID)
Global("C#Brandock_DornConflict","GLOBAL",0)~ THEN C#BrandB brandock_dorn
@500
DO ~SetGlobal("C#Brandock_DornConflict","GLOBAL",1)~
END
++ @501 + brandock_dorn_03
++ @502 + brandock_dorn_01
++ @503 + brandock_dorn_02

APPEND c#brandB

IF ~~ THEN brandock_dorn_01
SAY @504
++ @501 + brandock_dorn_03
++ @503 + brandock_dorn_02
END

IF ~~ THEN brandock_dorn_02
SAY @505 
IF ~~ THEN EXIT
END
END //APPEND

CHAIN
IF WEIGHT #-1 
~CombatCounter(0) !See([ENEMY]) 
OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2)
InParty("DORN")
See("DORN") See(Player1)
!StateCheck("DORN",CD_STATE_NOTVALID)
!StateCheck(Myself,CD_STATE_NOTVALID)
Global("C#Brandock_DornConflict","GLOBAL",1)~ THEN C#BrandB brandock_dorn_03
@506
DO ~SetGlobal("C#Brandock_DornConflict","GLOBAL",2)~
END
IF ~Global("C#BrandockJoined","GLOBAL",1)~ THEN DO ~
GivePartyAllEquipment()
TakePartyItem("c#br0001") DestroyItem("c#br0001")
TakePartyItem("c#br0007") DestroyItem("c#br0007")
SetGlobal("C#Brandock_Gone","GLOBAL",1)
SetGlobal("C#BrandockJoined","GLOBAL",0) ChangeAIScript("",DEFAULT)
SetLeavePartyDialogFile() LeaveParty() EscapeArea()~ EXIT
IF ~Global("C#BrandockJoined","GLOBAL",2)~ THEN DO ~
GivePartyAllEquipment()
TakePartyItem("c#br0001") DestroyItem("c#br0001")
TakePartyItem("c#br0007") DestroyItem("c#br0007")
SetGlobal("C#Brandock_Gone","GLOBAL",1)
SetGlobal("C#BrandockJoined","GLOBAL",0)
RemoveFamiliar()
ChangeAIScript("",DEFAULT)
ChangeEnemyAlly(Myself,NEUTRAL)
EscapeArea()~ EXIT


