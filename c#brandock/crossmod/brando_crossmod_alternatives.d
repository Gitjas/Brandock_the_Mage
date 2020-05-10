/* Brandock reaction to "Alternatives" */

/* GlobalGT("BodhiAppear","GLOBAL",2) */

I_C_T ~B!Aster~ 43 C#Brandock_CM_ASTER_43
== ~c#brandj~ IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)
GlobalGT("BodhiAppear","GLOBAL",2)~ THEN ~What? That means the paladins are expecting us to do the exact same thing as the evil vampire wanted. Funny, how the same thing can be righteous and malevolent at the same time?~
END

I_C_T ~B!Mal~ 22 C#Brandock_CM_MAL_22
== ~c#brandj~ IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN ~Oh, what an intriguing thought - just to leave, and everything stays behind... You know, <CHARNAME>, problems have the tendency to follow one around... and they definitely can swim.~
== ~c#brandj~ IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID) Global("C#IM_ImoenStays","GLOBAL",0)~ THEN ~And also, what about Imoen?~
END

/* IF ~~ THEN BEGIN 64 // from: 63.0
  SAY #161109 /* ~Let us not prevaricate. I speak of assassination.~ */ */
I_C_T ~B!Mal~ 64 C#Brandock_CM_MAL_64
== ~c#brandj~ IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN ~<CHARNAME>, I don't want this! This is scary. The thought of you listening to that man is also scary!~
END

/* PC agreed to be part of assassination 

GlobalGT("B!Tourist","GLOBAL",3) GlobalLT("B!Tourist","GLOBAL",7) */

APPEND C#BrandJ
IF WEIGHT #-1
~Global("C#Brandock_CM_AltMal","GLOBAL",1)~ THEN agreed
SAY ~<CHARNAME>, we won't actually *do* this, will we? Ready the path for an assassination?~
IF ~~ THEN DO ~SetGlobal("C#Ajantis_CM_AltMal","GLOBAL",2)~ EXIT
END

/* Global("B!Tourist","GLOBAL",7) assassination took place - brandock leaves */

IF WEIGHT #-1
~Global("C#Brandock_CM_AltMal","GLOBAL",3)~ THEN attack
SAY ~<CHARNAME>, you're not the person I thought you were. I'll go.~
IF ~Global("C#BrandockJoined","GLOBAL",1)~ THEN DO ~SetInterrupt(FALSE)
SetGlobal("C#Brandock_CM_AltMal","GLOBAL",4) 
SetGlobal("C#Brandock_Gone","GLOBAL",1)
SetGlobal("C#BrandockJoined","GLOBAL",0) 
TakePartyItem("c#br0001")
DestroyItem("c#br0001")
TakePartyItem("c#br0007")
DestroyItem("c#br0007")
ChangeAIScript("",DEFAULT)
SetLeavePartyDialogFile() LeaveParty() EscapeArea()
SetInterrupt(TRUE)~ EXIT
IF ~Global("C#BrandockJoined","GLOBAL",2)~ THEN DO ~SetInterrupt(FALSE)
SetGlobal("C#Brandock_CM_AltMal","GLOBAL",4)
SetGlobal("C#Brandock_Gone","GLOBAL",1)
SetGlobal("C#BrandockJoined","GLOBAL",0)
RemoveFamiliar()
ChangeAIScript("",DEFAULT)
ChangeEnemyAlly(Myself,NEUTRAL)
TakePartyItem("c#br0001")
DestroyItem("c#br0001")
TakePartyItem("c#br0007")
DestroyItem("c#br0007")
EscapeArea()
SetInterrupt(TRUE)~ EXIT
END

END

EXTEND_BOTTOM HABREGA %brega_state_853%
+ ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ + ~Brandock, would you please second what I said?~ EXTERN C#BrandJ brega
END

CHAIN
IF ~~ THEN C#BrandJ brega
~Yes, I can definitely second what <CHARNAME> said. Er, you might not know me, but I was an apprentice of Teos. A successful apprentice - well, obviously. If that helps.~
== HABREGA ~Of course Ambassador Teos is very well known to me. Unfortunately, I am not familiar with all of his apprentices. I'm sorry, <CHARNAME>, but I can't authorize the detention of a sworn civil servant on the word of someone unknown to myself and the Council.~
END
IF ~~ THEN EXTERN HABREGA %brega_state_853% 


/* PC payed for Malficus' offer */
I_C_T3 ~B!Mal~ 25 C#Brandock_CM_MAL_25
== ~c#brandj~ IF ~InParty("C#Brandock") InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN ~<CHARNAME>, I wish you farewell. I hope you will find what you seek.~
DO ~SetInterrupt(FALSE)
SetGlobal("C#Brandock_Gone","GLOBAL",1) 
SetGlobal("C#BrandockJoined","GLOBAL",0)
SetGlobal("C#Brandock_CM_AltMal","GLOBAL",4) 
TakePartyItem("c#br0001")
DestroyItem("c#br0001")
TakePartyItem("c#br0007")
DestroyItem("c#br0007")
SetLeavePartyDialogFile() LeaveParty() EscapeArea()
SetInterrupt(TRUE)~

== ~c#brandj~ IF ~Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN ~<CHARNAME>, I wish you farewell. I hope you will find what you seek.~
DO ~SetInterrupt(FALSE)
SetGlobal("C#Brandock_CM_AltMal","GLOBAL",4) 
SetGlobal("C#Brandock_Gone","GLOBAL",1)
SetGlobal("C#BrandockJoined","GLOBAL",0)
RemoveFamiliar()
ChangeAIScript("",DEFAULT)
ChangeEnemyAlly(Myself,NEUTRAL) 
TakePartyItem("c#br0001")
DestroyItem("c#br0001")
TakePartyItem("c#br0007")
DestroyItem("c#br0007")
EscapeArea()
SetInterrupt(TRUE)~

== ~B!Mal~ IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN ~Someone not ready for the journey, it seems!~
END

I_C_T3 ~B!Mal~ 102 C#Brandock_CM_MAL_102
== ~c#brandj~ IF ~InParty("C#Brandock") InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN ~<CHARNAME>, I wish you farewell. I hope you will find what you seek.~
DO ~SetInterrupt(FALSE)
SetGlobal("C#Brandock_Gone","GLOBAL",1) SetGlobal("C#Brandock_CM_AltMal","GLOBAL",4)  
TakePartyItem("c#br0001")
DestroyItem("c#br0001")
TakePartyItem("c#br0007")
DestroyItem("c#br0007")
SetLeavePartyDialogFile() LeaveParty() EscapeArea() SetInterrupt(TRUE)~
== ~c#brandj~ IF ~Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN ~<CHARNAME>, I wish you farewell. I hope you will find what you seek.~
DO ~SetInterrupt(FALSE)
SetGlobal("C#Brandock_CM_AltMal","GLOBAL",4) 
SetGlobal("C#Brandock_Gone","GLOBAL",1)
SetGlobal("C#BrandockJoined","GLOBAL",0)
RemoveFamiliar()
ChangeAIScript("",DEFAULT)
ChangeEnemyAlly(Myself,NEUTRAL)  
TakePartyItem("c#br0001")
DestroyItem("c#br0001")
TakePartyItem("c#br0007")
DestroyItem("c#br0007")
EscapeArea() SetInterrupt(TRUE)~
== ~B!Mal~ IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN ~Someone not ready for the journey, it seems!~
END

I_C_T3 ~B!Mal~ 103 C#Brandock_CM_MAL_103
== ~c#brandj~ IF ~InParty("C#Brandock") InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN ~<CHARNAME>, I wish you farewell. I hope you will find what you seek.~
DO ~SetInterrupt(FALSE)
SetGlobal("C#Brandock_Gone","GLOBAL",1) SetGlobal("C#Brandock_Gone","GLOBAL",1) SetGlobal("C#Brandock_CM_AltMal","GLOBAL",4)   
TakePartyItem("c#br0001")
DestroyItem("c#br0001")
TakePartyItem("c#br0007")
DestroyItem("c#br0007")
SetLeavePartyDialogFile() LeaveParty() EscapeArea() SetInterrupt(TRUE)~
== ~c#brandj~ IF ~Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN ~<CHARNAME>, I wish you farewell. I hope you will find what you seek.~
DO ~SetInterrupt(FALSE)
SetGlobal("C#Brandock_CM_AltMal","GLOBAL",4) 
SetGlobal("C#Brandock_Gone","GLOBAL",1)
SetGlobal("C#BrandockJoined","GLOBAL",0)
RemoveFamiliar()
ChangeAIScript("",DEFAULT)
ChangeEnemyAlly(Myself,NEUTRAL)   
TakePartyItem("c#br0001")
DestroyItem("c#br0001")
TakePartyItem("c#br0007")
DestroyItem("c#br0007")
EscapeArea() SetInterrupt(TRUE)~
== ~B!Mal~ IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN ~Someone not ready for the journey, it seems!~
END

I_C_T3 ~B!Mal~ 108 C#Brandock_CM_MAL_108
== ~c#brandj~ IF ~InParty("C#Brandock") InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN ~<CHARNAME>, I wish you farewell. I hope you will find what you seek.~
DO ~SetInterrupt(FALSE)
SetGlobal("C#Brandock_Gone","GLOBAL",1) SetGlobal("C#Brandock_CM_AltMal","GLOBAL",4)  
TakePartyItem("c#br0001")
DestroyItem("c#br0001")
TakePartyItem("c#br0007")
DestroyItem("c#br0007") 
SetLeavePartyDialogFile() LeaveParty() EscapeArea() SetInterrupt(TRUE)~
== ~c#brandj~ IF ~Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN ~<CHARNAME>, I wish you farewell. I hope you will find what you seek.~
DO ~SetInterrupt(FALSE)
SetGlobal("C#Brandock_CM_AltMal","GLOBAL",4) 
SetGlobal("C#Brandock_Gone","GLOBAL",1)
SetGlobal("C#BrandockJoined","GLOBAL",0)
RemoveFamiliar()
ChangeAIScript("",DEFAULT)
ChangeEnemyAlly(Myself,NEUTRAL)  
TakePartyItem("c#br0001")
DestroyItem("c#br0001")
TakePartyItem("c#br0007")
DestroyItem("c#br0007") 
EscapeArea() SetInterrupt(TRUE)~
== ~B!Mal~ IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN ~Someone not ready for the journey, it seems!~
END

/* PC is ready to ship */
I_C_T3 ~B!Mal~ 39 C#Brandock_CM_MAL_39
== ~c#brandj~ IF ~InParty("C#Brandock") InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN ~<CHARNAME>, I wish you farewell. I hope you will find what you seek.~
DO ~SetInterrupt(FALSE)
SetGlobal("C#Brandock_Gone","GLOBAL",1) SetGlobal("C#Brandock_CM_AltMal","GLOBAL",4)   
TakePartyItem("c#br0001")
DestroyItem("c#br0001")
TakePartyItem("c#br0007")
DestroyItem("c#br0007") 
SetLeavePartyDialogFile() LeaveParty() EscapeArea() SetInterrupt(TRUE)~
== ~c#brandj~ IF ~Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN ~<CHARNAME>, I wish you farewell. I hope you will find what you seek.~
DO ~SetInterrupt(FALSE)
SetGlobal("C#Brandock_CM_AltMal","GLOBAL",4) 
SetGlobal("C#Brandock_Gone","GLOBAL",1)
SetGlobal("C#BrandockJoined","GLOBAL",0)
RemoveFamiliar()
ChangeAIScript("",DEFAULT)
ChangeEnemyAlly(Myself,NEUTRAL)   
TakePartyItem("c#br0001")
DestroyItem("c#br0001")
TakePartyItem("c#br0007")
DestroyItem("c#br0007") 
EscapeArea() SetInterrupt(TRUE)~
== ~B!Mal~ IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN ~Someone not ready for the journey, it seems!~
END