BEGIN c#brandj

/* Brandock's book(s) not in his inventory. Warning - no action */
CHAIN
IF ~OR(2)
Global("C#Brandock_BookWarningLokal1","GLOBAL",1)
Global("C#Brandock_BookWarningLokal2","GLOBAL",1)~ THEN c#brandj my_book
@469
== c#brandj IF ~OR(2) HasItem("c#br0001",Player2) HasItem("c#br0007",Player2)~ THEN @470
== c#brandj IF ~OR(2) HasItem("c#br0001",Player3) HasItem("c#br0007",Player3)~ THEN @471
== c#brandj IF ~OR(2) HasItem("c#br0001",Player4) HasItem("c#br0007",Player4)~ THEN @472
== c#brandj IF ~OR(2) HasItem("c#br0001",Player5) HasItem("c#br0007",Player5)~ THEN @473
== c#brandj IF ~OR(2) HasItem("c#br0001",Player6) HasItem("c#br0007",Player6)~ THEN @474
END
IF ~Global("C#Brandock_BookWarningLokal2","GLOBAL",1)~ THEN DO ~SetGlobal("C#Brandock_BookWarningLokal2","GLOBAL",2)~ EXIT
IF ~Global("C#Brandock_BookWarningLokal1","GLOBAL",1)~ THEN DO ~SetGlobal("C#Brandock_BookWarningLokal1","GLOBAL",2)~ EXIT


APPEND c#brandj


/* destroyed book gone - talk one 
GlobalGT("C#Brandock_Possessions","GLOBAL",1) 
!GlobalGT("C#Br_BookRestore","GLOBAL",4)
!PartyHasItem("c#br0001") */

IF ~Global("C#Brandock_BookWarning","GLOBAL",1)~ THEN book_gone
SAY @6
IF ~~ THEN DO ~SetGlobal("C#Brandock_BookWarning","GLOBAL",3)~ EXIT
END

/* restored book gone - talk one 
GlobalGT("C#Br_BookRestore","GLOBAL",4)
!PartyHasItem("c#br0007") */

IF ~Global("C#Brandock_BookWarning","GLOBAL",2)~ THEN book_gone_01
SAY @7
IF ~~ THEN DO ~SetGlobal("C#Brandock_BookWarning","GLOBAL",4)~ EXIT
END

/* either book gone - talk two (Brandock leaves) */
IF ~Global("C#Brandock_BookWarning","GLOBAL",5)~ THEN book_gone_02
SAY @8
IF ~Global("C#BrandockJoined","GLOBAL",1)~ THEN DO ~SetInterrupt(FALSE)
SetGlobal("C#Brandock_BookWarning","GLOBAL",6)
GivePartyAllEquipment()
TakePartyItem("c#br0001") DestroyItem("c#br0001")
TakePartyItem("c#br0007") DestroyItem("c#br0007")
SetGlobal("C#Brandock_Gone","GLOBAL",1)
SetGlobal("C#BrandockJoined","GLOBAL",0) ChangeAIScript("",DEFAULT)
SetLeavePartyDialogFile() LeaveParty() EscapeArea() SetInterrupt(TRUE)~ EXIT
IF ~Global("C#BrandockJoined","GLOBAL",2)~ THEN DO ~SetInterrupt(FALSE)
SetGlobal("C#Brandock_BookWarning","GLOBAL",6)
GivePartyAllEquipment()
SetGlobal("C#Brandock_Gone","GLOBAL",1)
SetGlobal("C#BrandockJoined","GLOBAL",0)
RemoveFamiliar()
ChangeAIScript("",DEFAULT)
ChangeEnemyAlly(Myself,NEUTRAL)
TakePartyItem("c#br0001") DestroyItem("c#br0001")
TakePartyItem("c#br0007") DestroyItem("c#br0007")
EscapeArea() SetInterrupt(TRUE)~ EXIT
END

END //APPEND c#brandj