/* Brandock - Hexxat. Brandock will leave without a warning. */
I_C_T HEXXAT 0 C#brandockHexxat0
== c#brandj IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN @507
END


CHAIN
IF WEIGHT #-1 
~%IT_IS_BGII%
CombatCounter(0) !See([ENEMY]) 
OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2)
InParty("HEXXAT")
See("HEXXAT") See(Player1)
!StateCheck("HEXXAT",CD_STATE_NOTVALID)
!StateCheck(Myself,CD_STATE_NOTVALID)
Global("C#Brandock_HexxatConflict","GLOBAL",0)~ THEN C#BrandB brandock_hexxat
@508
DO ~SetGlobal("C#Brandock_HexxatConflict","GLOBAL",1)~
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



