


/* Transitions. SoD AND direct BGII transition. Brandock will leave. */

CHAIN
IF WEIGHT #-1
~Global("C#Brando_TransitionsLeave","GLOBAL",1)~ THEN C#BrandJ sod_leave
@0 /* ~It was an honor travelling with you. And quite scary, to be honest... I'll be on my way then. Straight south to my parents and no distractions this time.~ */
== C#BrandJ IF ~GlobalGT("C#Brando_bdscrl1","LOCALS",0)~ THEN @1 /* ~Seeing how everthing points to Athkatla these days, maybe we will meet there? Who knows, maybe I'll have an influencial position when next we meet - it's always good to have friends, if you are in Amn.~ */
== C#BrandJ @3 /* ~In case there is anything in my back pack you want to keep, please take it out now.~ */
END
IF ~~ THEN DO ~SetGlobal("C#Brando_TransitionsLeave","GLOBAL",2)
SetGlobalTimer("C#Brando_TransitionsLeaveTmr","GLOBAL",ONE_MINUTE)~ EXIT


/* Brandock leaves after timer run out */
CHAIN
IF WEIGHT #-1
~Global("C#Brando_TransitionsLeave","GLOBAL",3)~ THEN C#BrandJ  leaving_for_real
@2 /* ~Farewell, <CHARNAME>.~ */
IF ~InParty("C#Brandock")~ THEN DO ~SetInterrupt(FALSE)
SetGlobal("C#Brando_TransitionsLeave","GLOBAL",4)
MakeGlobal()
SetGlobal("C#BrandockJoined","GLOBAL",0)
TakePartyItem("c#br0001")
TakePartyItem("c#br0007")
ChangeAIScript("",DEFAULT)
LeaveParty()
EscapeArea()
SetInterrupt(TRUE)~ EXIT
IF ~Global("C#BrandockJoined","GLOBAL",2)~ THEN DO ~SetInterrupt(FALSE)
SetGlobal("C#Brando_TransitionsLeave","GLOBAL",4)
MakeGlobal()
SetGlobal("C#BrandockJoined","GLOBAL",0)
ChangeAIScript("",DEFAULT)
RemoveFamiliar()
ChangeEnemyAlly(Myself,NEUTRAL)
TakePartyItem("c#br0001")
TakePartyItem("c#br0007")
EscapeArea() 
SetInterrupt(TRUE)~ EXIT
END


END //APPEND
