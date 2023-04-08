/* Brage's quest */

/* @69 ~[uncle]Well, that's - that's great, no? Seems like you could sing it to her, then.~ */
I_C_T c#besq02 %c#besq02_69% C#BR_c#besq02_69
== C#BrandJ IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2)
See("C#Brandock")
!StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN @500
END

/* @78 [Uncle]Singing it would be the smartest thing to do, I think. */
I_C_T c#besq02 %c#besq02_78% C#BR_c#besq02_78
== C#BrandJ IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2)
See("C#Brandock")
!StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN @501
END

/* @126 ~[Tilda]What?! You are... you are so mean! You can't do that... (sob)~ */
I_C_T c#besq0a %c#besq0a_126% C#BR_c#besq0a_126
== C#BrandJ IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2)
See("C#Brandock")
!StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN @502
END

CHAIN
IF WEIGHT #-1
~%IT_IS_SOD%
CombatCounter(0) !See([ENEMY]) 
OR(2) InParty(Myself) Global("C#BrandockJoined","GLOBAL",2)
InParty("C#Brage")  
See("C#Brage") See(Player1)
!StateCheck(Myself,CD_STATE_NOTVALID)
!StateCheck("C#Brage",CD_STATE_NOTVALID)
GlobalLT("bd_plot","global",485)
OR(2)
	GlobalGT("bd_plot","global",169)
	Global("C#RtD_RoadToDiscovery","GLOBAL",1)
OR(2)
	GlobalGT("C#RtD_CaelarPlan","GLOBAL",1)
	Global("C#RtD_RoadToDiscovery","GLOBAL",0)
Global("C#Brandock_BrageSoD","GLOBAL",0)~ THEN C#BrandB brandock_brage_sod_1
@503 /* ~[Brandock]Brage, do you really see anything positive in this crusade? All the destruction - all the refugees...~ */
DO ~SetGlobal("C#Brandock_BrageSoD","GLOBAL",1)~
== C#BrageB IF ~GlobalLT("C#RtD_CaelarPlan","GLOBAL",4)
OR(2) 
GlobalLT("bd_plot","global",391)
Global("C#RtD_RoadToDiscovery","GLOBAL",1)~ THEN @504 /* ~[Brage]I do see those, but I see what the crusaders are trying to accomplish and I think it's a noble goal.~ */
== C#BrageB IF ~OR(3)
		GlobalGT("C#RtD_CaelarPlan","GLOBAL",3)
  		GlobalGT("bd_plot","global",390)
		Global("C#RtD_RoadToDiscovery","GLOBAL",1)
	OR(2)
		GlobalGT("C#RtD_CaelarPlan","GLOBAL",3)
		Global("C#RtD_RoadToDiscovery","GLOBAL",0)~ THEN @505 /* ~[Brage]Well, before I knew that they were just planning to open a way to Avernus and leave the Sword Coast defenseless to the fiends, I was more inclined to the plans of the crusade. But still, I think it's a noble goal.~ */
== C#BrageB @506 /* ~[Brage]On the destruction - don't think an army that size could march without there being unwanted incidents, Brandock.~ */
== C#BrandB @507 /* ~[Brandock]Incidents? Almost whole villages are destroyed. Those who do not join the crusade are driven out or worse. What the crusade is doing is like me ravaging through a library in the attempt to restore my book. The actions of the crusade are in complete contradiction to the goal of saving lives. And I surely hope what is happening in the villages is not the kind of "incidents" you mean from organized armies!~ */
== C#BrageB @508 /* ~[Brage]Definitely not. But war destroys many things, even if it was started with the best intentions. I've seen enough as a captain to know that even the most noble intentions, the earnest promises, the most fervently delivered pledges were lost in the reality of war. I do agree with you on one thing: That the crusade who set out to liberate lost souls turned into a hostile army is the great mistake of Caelar which I also cannot understand.~ */
EXIT

/* Brage - Brandock SoD */

/* both received their letters and know they will go to Amn after Caelar is defeated */
CHAIN
IF WEIGHT #-1
~Global("C#Brandock_BrageSoDEnd","GLOBAL",1)~ THEN C#BrandJ brage_sod_end
@520
DO ~SetGlobal("C#Brandock_BrageSoDEnd","GLOBAL",2)~
== C#BrageB @521
== C#BrandJ @522
== C#BrageB @523
== C#BrandJ @524
EXIT