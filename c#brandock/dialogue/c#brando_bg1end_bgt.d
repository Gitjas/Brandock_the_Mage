

/* BGT transition. BGT only. Not to trigger in EET */


I_C_T3 ~BELTBRD~ 12 C#Brandock_BGTTOBG2
== C#BrandJ IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2)
InMyArea("C#Brandock")
!StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN @2000 /* ~<CHARNAME>, I think this is a good time to say good bye. We both reached our goals. Sarevok is stopped, and I learned a lot about wielding magic... Please understand that I need to take my way back to Amn on my own. I cannot return as a representative of Baldur's Gate authorities - I am sure you understand.~ */

/* Brandock was full party member */
== C#BrandJ IF ~InParty("C#Brandock") 
InMyArea("C#Brandock")
!StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN @2001 /* ~Take care, <CHARNAME>. Seeing how your path guides you to Amn, I am sure we will meet there? Who knows, maybe I'll have an influencial position when next we meet - it's always good to have friends, if you are in Amn. Take care down there, will you?~ */ DO ~SetInterrupt(FALSE)
TakePartyItem("c#br0001") DestroyItem("c#br0001")
TakePartyItem("c#br0007") DestroyItem("c#br0007")
SetGlobal("C#Brandock_BGTTOBG2","GLOBAL",2)
SetGlobal("C#BrandockJoined","GLOBAL",0)
ActionOverride("C#Brandock",ChangeAIScript("",DEFAULT))
ActionOverride("C#Brandock",SetLeavePartyDialogFile())
ActionOverride("C#Brandock",LeaveParty())
ActionOverride("C#Brandock",EscapeAreaDestroy(3) SetInterrupt(TRUE)~ 

/* Brandock was 7th party member */
== C#BrandJ IF ~Global("C#BrandockJoined","GLOBAL",2)
InMyArea("C#Brandock")
!StateCheck(Myself,CD_STATE_NOTVALID)~ THEN @2001 /* ~Take care, <CHARNAME>. Seeing how your path guides you to Amn, I am sure we will meet there? Who knows, maybe I'll have an influencial position when next we meet - it's always good to have friends, if you are in Amn. Take care down there, will you?~ */ DO ~SetInterrupt(FALSE)
SetGlobal("C#Brandock_BGTTOBG2","GLOBAL",2)
SetGlobal("C#BrandockJoined","GLOBAL",0)
RemoveFamiliar()
ChangeEnemyAlly(Myself,NEUTRAL) 
TakePartyItem("c#br0001") DestroyItem("c#br0001")
TakePartyItem("c#br0007") DestroyItem("c#br0007")
ActionOverride("C#Brandock",SetLeavePartyDialogFile())
ActionOverride("C#Brandock",ChangeAIScript("",DEFAULT))
ActionOverride("C#Brandock",EscapeAreaDestroy(3) SetInterrupt(TRUE)~ 
END
