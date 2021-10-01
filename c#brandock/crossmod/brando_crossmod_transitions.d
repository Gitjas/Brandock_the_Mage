/* Transition to SoD. I'll use Transition's possibility to have Brandock say a few words. */
CHAIN
IF WEIGHT #-1
~Global("C#Brando_TransitionsLeave","GLOBAL",1)~ THEN C#BrandJ bg1_to_sod_leave
@3 /* ~<CHARNAME>, I think this is a good time to say good bye. We both reached our goals. Sarevok is stopped, and I learned a lot about wielding magic... I will stay in the region and continue to study the De Simplex Magicae with Master Elvenhair's help. I'll come and visit you before I'll return home for good. It should be easy to find you - hero of Baldur's Gate!~ */
END
IF ~InParty("C#Brandock")~ THEN DO ~SetInterrupt(FALSE)
SetGlobal("C#Brando_TransitionsLeave","GLOBAL",2)
SetGlobal("#L_SoDExitModded","LOCALS",2)
MakeGlobal()
SetGlobal("C#BrandockJoined","GLOBAL",0)
ChangeAIScript("",DEFAULT)
LeaveParty()
TakePartyItem("c#br0001")
TakePartyItem("c#br0007")
EscapeArea()
SetInterrupt(TRUE)~ EXIT
IF ~Global("C#BrandockJoined","GLOBAL",2)~ THEN DO ~SetInterrupt(FALSE)
SetGlobal("C#Brando_TransitionsLeave","GLOBAL",2)
MakeGlobal()
SetGlobal("C#BrandockJoined","GLOBAL",0)
ChangeAIScript("",DEFAULT)
RemoveFamiliar()
ChangeEnemyAlly(Myself,NEUTRAL)
TakePartyItem("c#br0001")
TakePartyItem("c#br0007")
EscapeArea() 
SetInterrupt(TRUE)~ EXIT


/* Transitions. Direct BGII transition. Brandock will leave. */

CHAIN
IF WEIGHT #-1
~Global("C#Brando_TransitionsLeave","GLOBAL",4)~ THEN C#BrandJ to_bg2_leave
@0 /* ~It was an honor travelling with you. And quite scary, to be honest... I'll be on my way then. Straight south to my parents and no distractions this time.~ */
== C#BrandJ IF ~GlobalGT("C#Brando_bdscrl1","LOCALS",0)~ THEN @1 /* ~Seeing how everthing points to Athkatla these days, maybe we will meet there? Who knows, maybe I'll have an influencial position when next we meet - it's always good to have friends, if you are in Amn.~ */
== C#BrandJ @2 /* ~Farewell, <CHARNAME>.~ */
END
IF ~InParty("C#Brandock")~ THEN DO ~SetInterrupt(FALSE)
SetGlobal("C#Brando_TransitionsLeave","GLOBAL",5)
SetGlobal("#L_BG2ExitModded","LOCALS",2)
MakeGlobal()
SetGlobal("C#BrandockJoined","GLOBAL",0)
TakePartyItem("c#br0001")
TakePartyItem("c#br0007")
ChangeAIScript("",DEFAULT)
LeaveParty()
EscapeArea()
SetInterrupt(TRUE)~ EXIT
IF ~Global("C#BrandockJoined","GLOBAL",2)~ THEN DO ~SetInterrupt(FALSE)
SetGlobal("C#Brando_TransitionsLeave","GLOBAL",5)
MakeGlobal()
SetGlobal("C#BrandockJoined","GLOBAL",0)
ChangeAIScript("",DEFAULT)
RemoveFamiliar()
ChangeEnemyAlly(Myself,NEUTRAL)
TakePartyItem("c#br0001")
TakePartyItem("c#br0007")
EscapeArea() 
SetInterrupt(TRUE)~ EXIT