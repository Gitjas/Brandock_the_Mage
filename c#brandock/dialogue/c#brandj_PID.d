/* PID dialogue states needed for all games */

APPEND c#brandj

IF ~~ THEN join
SAY @56 /* ~With pleasure. Er, Excuse me, <PLAYER2>, <PLAYER3>, or someone else, I'd need to get closer to <CHARNAME>...~ */
IF ~~ THEN DO ~RemoveFamiliar()
ChangeAIScript("",DEFAULT)
ChangeEnemyAlly(Myself,NEUTRAL)
SetGlobal("C#BrandockJoined","GLOBAL",1) JoinParty()~ EXIT
END

IF ~~ THEN script_chose
SAY @200015 /* ~What do you want me to do?~ */
+ ~Global("c#gotopc","LOCALS",0)~ + @200001 /* ~I want you to stay in sight.~ */ DO ~SetGlobal("c#gotopc","LOCALS",1)~ + i_will
+ ~GlobalGT("c#gotopc","LOCALS",0)~ + @200002 /* ~Stop staying in sight.~ */ DO ~SetGlobal("c#gotopc","LOCALS",0) ChangeAIScript("",DEFAULT)~ + i_will
+ ~Global("c#traps","LOCALS",0)
Class(Myself,THIEF_ALL)~ + @200003 /* ~I want you to look out out for traps.~ */ DO ~SetGlobal("c#traps","LOCALS",1)~ + i_will
+ ~Global("c#traps","LOCALS",1)
Class(Myself,THIEF_ALL)~ + @200004 /* ~Stop looking for traps.~ */ DO ~SetGlobal("c#traps","LOCALS",0)~ + i_will
+ ~Global("C#HPAlarm","LOCALS",0)~ + @200017 DO ~SetGlobal("C#HPAlarm","LOCALS",1)~ + i_will
+ ~Global("C#HPAlarm","LOCALS",1)~ + @200018 DO ~SetGlobal("C#HPAlarm","LOCALS",0)~ + i_will
++ @200005 /* ~If we encounter enemies...~ */ + script_chose_01
++ @200006 /* ~Leave everything as it is.~ */ EXIT
END

IF ~~ THEN script_chose_01
SAY @200016 /* ~Yes?~ */
+ ~Global("c#mage1","LOCALS",0)
Class(Myself,MAGE_ALL)~ + @200007 /* ~I want you to fight enemies you see with magic.~ */ DO ~SetGlobal("c#mage1","LOCALS",1)
SetGlobal("c#mage2","LOCALS",0)
SetGlobal("c#cautio","LOCALS",0)
SetGlobal("c#melee","LOCALS",0)
SetGlobal("c#ranged","LOCALS",0)
SetGlobal("c#defend","LOCALS",0)
SetGlobal("c#nothin","LOCALS",0)~ + i_will
+ ~Global("c#mage2","LOCALS",0)
Class(Myself,MAGE_ALL)~ + @200008 /* ~I want you to first prepare yourself and fight enemies with magic if you see them.~ */ DO ~SetGlobal("c#mage1","LOCALS",0)
SetGlobal("c#mage2","LOCALS",1)
SetGlobal("c#cautio","LOCALS",0)
SetGlobal("c#melee","LOCALS",0)
SetGlobal("c#ranged","LOCALS",0)
SetGlobal("c#defend","LOCALS",0)
SetGlobal("c#nothin","LOCALS",0)~ + i_will

+ ~Global("c#cautio","LOCALS",0)~ + @200009 /* ~I want you to run away from enemies so you don't have to fight.~ */ DO ~SetGlobal("c#mage1","LOCALS",0)
SetGlobal("c#mage2","LOCALS",0)
SetGlobal("c#cautio","LOCALS",1)
SetGlobal("c#melee","LOCALS",0)
SetGlobal("c#ranged","LOCALS",0)
SetGlobal("c#defend","LOCALS",0)
SetGlobal("c#nothin","LOCALS",0)~ + i_will
+ ~Global("c#melee","LOCALS",0)~ + @200010 /* ~I want you to fight with melee weapons if you see enemies.~ */ DO ~SetGlobal("c#mage1","LOCALS",0)
SetGlobal("c#mage2","LOCALS",0)
SetGlobal("c#cautio","LOCALS",0)
SetGlobal("c#melee","LOCALS",1)
SetGlobal("c#ranged","LOCALS",0)
SetGlobal("c#defend","LOCALS",0)
SetGlobal("c#nothin","LOCALS",0)~ + i_will
+ ~Global("c#ranged","LOCALS",0)~ + @200011 /* ~I want you to fight with ranged weapons if you see enemies.~ */ DO ~SetGlobal("c#mage1","LOCALS",0)
SetGlobal("c#mage2","LOCALS",0)
SetGlobal("c#cautio","LOCALS",0)
SetGlobal("c#melee","LOCALS",0)
SetGlobal("c#ranged","LOCALS",1)
SetGlobal("c#defend","LOCALS",0)
SetGlobal("c#nothin","LOCALS",0)~ + i_will
+ ~Global("c#defend","LOCALS",0)~ + @200012 /* ~I want you to only defend yourself if attacked.~ */ DO ~SetGlobal("c#mage1","LOCALS",1)
SetGlobal("c#mage2","LOCALS",0)
SetGlobal("c#cautio","LOCALS",0)
SetGlobal("c#melee","LOCALS",0)
SetGlobal("c#ranged","LOCALS",0)
SetGlobal("c#defend","LOCALS",1)
SetGlobal("c#nothin","LOCALS",0)~ + i_will
+ ~Global("c#nothin","LOCALS",0)~ + @200013 /* ~I want you to do absolutely nothing in a fight.~ */ DO ~SetGlobal("c#mage1","LOCALS",1)
SetGlobal("c#mage2","LOCALS",0)
SetGlobal("c#cautio","LOCALS",0)
SetGlobal("c#melee","LOCALS",0)
SetGlobal("c#ranged","LOCALS",0)
SetGlobal("c#defend","LOCALS",0)
SetGlobal("c#nothin","LOCALS",1)~ + i_will

++ @200014 /* ~I have no new order for fights.~ */ + script_chose
END

IF ~~ THEN i_will
SAY @200019 /* ~I will!~ */
IF ~~ THEN EXIT
END

IF ~~ THEN update_shapeshift
SAY @5000 /* ~Yes, what of it?~ */
+ ~Global("C#Brandock_Shapeshift","GLOBAL",0)~ + @5001 /* ~Good thing I stopped you in time. Who knows what would have come out of it!~ */ + update_shapeshift_01
+ ~Global("C#Brandock_Shapeshift","GLOBAL",0)~ + @5002 /* ~Well, you did it and switched bodies with a half-ogre. After that we parted ways, so did anything happen after that?~ */ + update_shapeshift_02
+ ~GlobalGT("C#Brandock_Shapeshift","GLOBAL",1)
GlobalLT("C#Brandock_Shapeshift","GLOBAL",19)~ + @5002 /* ~Well, you did it and switched bodies with a half-ogre. After that we parted ways, so did anything happen after that?~ */ + update_shapeshift_02
+ ~OR(2)
Global("C#Brandock_Shapeshift","GLOBAL",0)
GlobalGT("C#Brandock_Shapeshift","GLOBAL",18)
GlobalLT("C#Brandock_Shapeshift","GLOBAL",21)~ + @5003 /* ~You shapeshifted into a half-ogre in Candlekeep, but we didn't have time to deal with it properly. What is the status?~ */ + update_shapeshift_02
+ ~%IT_IS_SOD%
Global("C#Brandock_Shapeshift","GLOBAL",0)~ + @5004 /* ~You dealt with your ability to shapeshift into a half-ogre, but what happened to the half-ogre who is in human shape now, did you meet him after we parted ways?~ */ DO ~AddJournalEntry(@10072,QUEST_DONE)
ReallyForceSpellRES("c#brsh01","C#Brandock") 
SetGlobal("C#Brandock_Shapeshift","GLOBAL",21)
SetGlobal("C#Brando_ShapeFollowup","LOCALS",8)~ + update_shapeshift_03
+ ~%IT_IS_BGII%
Global("C#Brandock_Shapeshift","GLOBAL",0)~ + @5004 /* ~You dealt with your ability to shapeshift into a half-ogre, but what happened to the half-ogre who is in human shape now, did you meet him after we parted ways?~ */ DO ~AddJournalEntry(@10072,QUEST_DONE)
ReallyForceSpellRES("c#brsh01","C#Brandock") 
SetGlobal("C#Brandock_Shapeshift","GLOBAL",26)
SetGlobal("C#Brando_ShapeFollowup","LOCALS",8)~ + update_shapeshift_04
+ ~%IT_IS_BGII%
GlobalGT("C#Brandock_Shapeshift","GLOBAL",20)
GlobalLT("C#Brando_VisitedMalm","GLOBAL",6)~ + @5004 /* ~You dealt with your ability to shapeshift into a half-ogre, but what happened to the half-ogre who is in human shape now, did you meet him after we parted ways?~ */ + update_shapeshift_04
END

IF ~~ THEN update_shapeshift_01
SAY @5005 /* ~Indeed! Especially considering the kind of magic involved, as we learned through Master Thalantyr. Who knows what would have happened, had I tried!~ */
IF ~~ THEN DO ~SetGlobal("C#Brandock_Shapeshift","GLOBAL",2)~ EXIT //quest died
END

END //APPEND

CHAIN
IF ~~ THEN c#brandj update_shapeshift_02
@5006 /* ~Indeed! You won't believe this, <CHARNAME>! I actually developped the ability to shapeshift into a half-ogre! It's inbelievable - but true... Just let me know if you want me to. I... I didn't do it yet, I'm scared I won't turn back again because being a half-ogre feels so much easier than being 'Brandock'.~ */
== c#brandj IF ~GlobalLT("C#Brando_VisitedMalm","GLOBAL",2)~ THEN @5007 /* ~And - can you believe this? The half-ogre shifted into a human now! Which looks almost exactly like me - I have a twin brother!... He is very curious about people and wants to learn to live amongst them.~ */
== c#brandj IF ~GlobalGT("C#Brando_VisitedMalm","GLOBAL",1)~ THEN @5008 /* ~You already met my half-ogre 'twin brother'... He is very curious about people and wants to learn to live amongst them.~ */
END
IF ~~ THEN DO ~EraseJournalEntry(@10005)
EraseJournalEntry(@10008)
EraseJournalEntry(@10069)
EraseJournalEntry(@10070)
AddJournalEntry(@10071,QUEST)
SetGlobal("C#Brando_ShapeFollowup","LOCALS",4)
SetGlobal("C#Brandock_Shapeshift","GLOBAL",21)
ReallyForceSpellRES("c#brsh01","C#Brandock")~ + update_shapeshift_03
IF ~%IT_IS_BGII%~ THEN DO ~EraseJournalEntry(@10005)
EraseJournalEntry(@10008)
EraseJournalEntry(@10069)
EraseJournalEntry(@10070)
AddJournalEntry(@10071,QUEST) 
SetGlobal("C#Brando_ShapeFollowup","LOCALS",4)
SetGlobal("C#Brandock_Shapeshift","GLOBAL",26)
ReallyForceSpellRES("c#brsh01","C#Brandock")~ + update_shapeshift_04

APPEND c#brandj

//%IT_IS_SOD%
IF ~~ THEN update_shapeshift_03
SAY @5010 /* ~I convinced him to go to the Temple in Beregost. I think he's enjoying being amongst people.~ */ 
IF ~~ THEN DO 
~EraseJournalEntry(@10073)
AddJournalEntry(@10074,QUEST)
SetGlobal("C#Brando_VisitedMalm","GLOBAL",2)~ EXIT
END

//%IT_IS_BGII%
IF ~~ THEN update_shapeshift_04
SAY @5009 /* ~He is on his way to the library in Alisarhold - I know the sages there would be thrilled to work with him, and he needs people who are patient enough to teach his child-like mind.~ */ 
IF ~~ THEN DO ~EraseJournalEntry(@10073)
EraseJournalEntry(@10074) 
EraseJournalEntry(@10075) 
AddJournalEntry(@10045,QUEST)
SetGlobal("C#Brando_VisitedMalm","GLOBAL",7)~ EXIT
END

END //APPEND