/* Brandock is in his greatcousin's house in the Slums, doing experiments, waiting for his greatcousin to return from a summoning */


/* conditions for Brandock's presence in BGII:

-he was part of the group in BG1
-he retrieved his possessions ["quest possession"] (so he knew they were lost and joined PC)
-He did not leave unhappy in BG1
-he was alive at the transition to BGII

*/


/* first meeting */

BEGIN c#brand2 

IF ~Global("C#BrandockSpawn","GLOBAL",11)~ THEN firstmeeting
SAY ~Ebrel, I think I need some more of the boracic acid, if we intend to... Er, you are not Ebrel. Do I...? Wait - <CHARNAME>?! <CHARNAME>, it is you, isn't it?~ [c#ablank]
++ ~Hello Brandock! Nice to see you again.~ DO ~SetGlobal("C#BrandockSpawn","GLOBAL",12)~ + firstmeeting_02
++ ~Yes, it's me.~ DO ~SetGlobal("C#BrandockSpawn","GLOBAL",12)~ + firstmeeting_02
++ ~And you were...?~ DO ~SetGlobal("C#BrandockSpawn","GLOBAL",12)~ + firstmeeting_03
++ ~No need for details. If you have any valuables, hand them over.~ DO ~SetGlobal("C#BrandockSpawn","GLOBAL",12)~ + firstmeeting_01
END

IF ~~ THEN firstmeeting_01
SAY ~Valuables? You are kidding, right?~
IF ~~ THEN + firstmeeting_02
END

IF ~~ THEN firstmeeting_02
SAY ~What a surprise to see you here! So, you made your way to Athkatla, indeed!~
IF ~~ THEN + firstmeeting_04
END

IF ~~ THEN firstmeeting_03
SAY ~Brandock! Brandock Deepwater. We travelled together at the Sword Coast. You helped me retrieve some possessions of mine, and helped me through some nervous breakdowns after!~
IF ~~ THEN + firstmeeting_02
END

IF ~~ THEN firstmeeting_04
SAY ~Er, I don't need psychic abilities to see that flinch. You didn't come here on good terms, it seems...~
IF ~~ THEN + firstmeeting_05
END

IF ~~ THEN firstmeeting_05
SAY ~And you look bad, <CHARNAME>. What happened?!~
++ ~Thanks, you're not the prettiest, either, you know.~ + firstmeeting_06
++ ~I was held prisoner by a very powerful mage, Brandock. We just made our escape during a huge fight at the Promenade.~ DO ~SetGlobal("C#Brandock_IrenicusFirstMeeting","LOCALS",1)~ + firstmeeting_07
+ ~Global("C#IM_ImoenStays","GLOBAL",0)~ + ~Imoen was taken by Cowled Wizards!~ DO ~SetGlobal("C#Brandock_ImoenFirstMeeting","LOCALS",1)~ + firstmeeting_08
++ ~Brandock, where do the Cowled Wizards take their prisoners?~ + firstmeeting_09
++ ~I'd prefer not to talk about it, at least not now.~ + firstmeeting_05_out
++ ~None of your business.~ + firstmeeting_05_out
END

IF ~~ THEN firstmeeting_05_out
SAY ~Well, then feel free to rest here as long as you want.~
IF ~~ THEN EXIT
END

IF ~OR(3)
Global("C#BrandockSpawn","GLOBAL",12)
Global("C#BrandockSpawn","GLOBAL",13)
Global("C#BrandockSpawn","GLOBAL",14)~ THEN firstmeeting_05_in
SAY ~So, what can I do for you?~ [c#ablank]
+ ~Global("C#BrandockSpawn","GLOBAL",12)~ + ~I was held prisoner by a very powerful mage, Brandock. We just made our escape during a huge fight at the Promenade.~ DO ~SetGlobal("C#Brandock_IrenicusFirstMeeting","LOCALS",1)~ + firstmeeting_07
+ ~Global("C#BrandockSpawn","GLOBAL",12) Global("C#IM_ImoenStays","GLOBAL",0)~ + ~Imoen was taken by Cowled Wizards!~ DO ~SetGlobal("C#Brandock_ImoenFirstMeeting","LOCALS",1)~ + firstmeeting_08
+ ~Global("C#BrandockSpawn","GLOBAL",12)~ + ~I'd prefer not to talk about it, at least not now.~ + firstmeeting_05_out
+ ~Global("C#BrandockSpawn","GLOBAL",13) PartyHasItem("c#br2001")~ + ~I fear I can answer this question, Brandock. See this spellbook, I think it was his. Your greatcousin is dead.~ DO ~SetGlobal("C#BrandockSpawn","GLOBAL",14)~ + firstmeeting_14
+ ~Global("C#BrandockSpawn","GLOBAL",13) PartyHasItem("c#br2001")~ + ~Ebrel died, Brandock. I am sorry.~ DO ~SetGlobal("C#BrandockSpawn","GLOBAL",14)~ + firstmeeting_14
+ ~Global("C#BrandockSpawn","GLOBAL",14) Global("C#Brandock_FirstMeeting1","LOCALS",0)~ + ~Want to join me?~ DO ~SetGlobal("C#Brandock_FirstMeeting1","LOCALS",1)~ + firstmeeting_23
+ ~Global("C#BrandockSpawn","GLOBAL",14) Global("C#Brandock_FirstMeeting1","LOCALS",1)~ + ~Want to join me?~ + firstmeeting_24
++ ~Nothing, good bye.~ + firstmeeting_05_out
END

IF ~~ THEN firstmeeting_06
SAY ~(pout) You didn't lose your humor. That's a good sign!~
++ ~I was held prisoner by a very powerful mage, Brandock. We just made our escape during a huge fight at the Promenade.~ DO ~SetGlobal("C#Brandock_IrenicusFirstMeeting","LOCALS",1)~ + firstmeeting_07
+ ~Global("C#IM_ImoenStays","GLOBAL",0)~ + ~Imoen was taken by Cowled Wizards!~ DO ~SetGlobal("C#Brandock_ImoenFirstMeeting","LOCALS",1)~ + firstmeeting_08
++ ~Brandock, where do the Cowled Wizards take their prisoners?~ + firstmeeting_09
++ ~I'd prefer not to talk about it, at least not now.~ + firstmeeting_05_out
++ ~None of your business.~ + firstmeeting_05_out
END

IF ~~ THEN firstmeeting_07
SAY ~You were held captive? Right here, under Athkatla?!~
= ~That's... that's... I can't believe something like this is even possible. That's horrible!~
IF ~Global("C#Brandock_ImoenFirstMeeting","LOCALS",1)~ THEN + firstmeeting_13
+ ~Global("C#Brandock_ImoenFirstMeeting","LOCALS",0) Global("C#IM_ImoenStays","GLOBAL",0)~ + ~And it's not all. Imoen was taken by the Cowled Wizards!~ DO ~SetGlobal("C#Brandock_ImoenFirstMeeting","LOCALS",1)~ + firstmeeting_08
+ ~Global("C#Brandock_ImoenFirstMeeting","LOCALS",0)~ + ~Whatever, I'm here now.~ + firstmeeting_13
END

IF ~~ THEN firstmeeting_08
SAY ~She was? Why would they do that?~
++ ~She defended us against a very powerful foe.~ + firstmeeting_11
++ ~She fired a magic missile during a huge fight at the Promenade.~ + firstmeeting_11
++ ~Well, she's a magic user now, remember?~ + firstmeeting_11
END

IF ~~ THEN firstmeeting_09
SAY ~W... why would you ask that?~
IF ~~ THEN + firstmeeting_10
END

IF ~~ THEN firstmeeting_10
SAY ~Oh, I know where they *say* they take the criminal mages. Sort of, anyway. They name it Spellhold and call it a prison if they want to frighten the young mages. Officially, it's an asylum, I think.~
= ~I don't know where it is, but it's definitely not in Athkatla or any place easy accessible. And... it's also not a place where people come back from. Not that I'd *knew* anything about it, but you can't help to overhear things if you train with Cowled Wizard masters for nearly a decade.~
+ ~Global("C#Brandock_IrenicusFirstMeeting","LOCALS",0)~ + ~I was held prisoner by a very powerful mage, Brandock. We just made our escape during a huge fight at the Promenade.~ DO ~SetGlobal("C#Brandock_IrenicusFirstMeeting","LOCALS",1)~ + firstmeeting_07
+ ~Global("C#IM_ImoenStays","GLOBAL",0) Global("C#Brandock_ImoenFirstMeeting","LOCALS",0)~ + ~Imoen was taken by Cowled Wizards!~ DO ~SetGlobal("C#Brandock_ImoenFirstMeeting","LOCALS",1)~ + firstmeeting_08
++ ~I'd prefer not to talk about it, at least not now.~ + firstmeeting_05_out
END

IF ~~ THEN firstmeeting_11
SAY ~Ouch. Well, they took her to the hearing into the Government Building, probably. For what she did a fee and a warning would be appropriate, but that wouldn't have taken that long... You didn't hear back from her or the Cowled Wizards at all? No one tried to collect a fee from you?~
++ ~From me? No, I got totally ignored.~ + firstmeeting_12
++ ~No, nothing.~ + firstmeeting_12
++ ~They took my friend and I should pay a fee?!~ + firstmeeting_12
++ ~Well... I got an 'offer' from a shady organisation to help me free her from wherever she is, now, if that counts.~ + firstmeeting_12
END

IF ~~ THEN firstmeeting_12
SAY ~That's very surprising... And I hate to admit it, not good.~
= ~They... have a very flexible way of interpreting their laws and rules, and a *lot* of magic trouble in the city lately, plus the increasing guild fights during nights. Most probably they just handed her over to the asylum together with that mage without further investigation. (sigh)~
IF ~Global("C#Brandock_IrenicusFirstMeeting","LOCALS",1)~ THEN + firstmeeting_13
+ ~Global("C#Brandock_IrenicusFirstMeeting","LOCALS",0)~ + ~I was held prisoner by a very powerful mage, Brandock. We just made our escape during a huge fight at the Promenade.~ DO ~SetGlobal("C#Brandock_IrenicusFirstMeeting","LOCALS",1)~ + firstmeeting_07
+ ~Global("C#Brandock_IrenicusFirstMeeting","LOCALS",0)~ + ~Whatever, I'm here now.~ + firstmeeting_13
END

IF ~~ THEN firstmeeting_13
SAY ~Wait - the fight my greatcousin was summoned to, that was you? I mean not *you*, you know what I meant...~
= ~Whoa, I have to process what you told me, <CHARNAME>. I had no idea what you had to go through these last weeks. I know your departure from Baldur's Gate was somehow overshadowed, but... And now I am getting nervous concerning the wellbeing of my greatcousin, too.~
= ~Ebrel, my mother's cousin, didn't return yet from being summoned to a fight at the Promenade. It shouldn't take that long. It never takes that long! I was working with him for six weeks now, and he was summoned two times. It always took one hour, maximum. For him, that is. He doesn't have any authority, he's just called in for numbers and backup, so he is usually the first who can go. If the fight was indeed that violent, I fear for him. I'd need to know whether he made it out alive!~
+ ~PartyHasItem("c#br2001")~ + ~I fear I can answer this question, Brandock. See this spellbook, I think it was his. Your greatcousin is dead.~ DO ~SetGlobal("C#BrandockSpawn","GLOBAL",14)~ + firstmeeting_14
+ ~PartyHasItem("c#br2001")~ + ~Ebrel died, Brandock. I am sorry.~ DO ~SetGlobal("C#BrandockSpawn","GLOBAL",14)~ + firstmeeting_14
++ ~We could do that together, if you want.~ DO ~SetGlobal("C#BrandockSpawn","GLOBAL",13)~ + firstmeeting_13_b
++ ~You'll do that, and maybe we'll meet again, later.~ DO ~SetGlobal("C#BrandockSpawn","GLOBAL",13)~ + firstmeeting_13_b
END

IF ~~ THEN firstmeeting_13_b
SAY ~I can't leave here, not now. I have an alchemical experiment running... And have to finish a whole set before the next inspection. Especially now that Ebrel isn't here. He'll has to answer to the Cowled Wizards. And he'll rip my head off if I waste any of the ingredients.~
IF ~~ THEN DO ~SetGlobal("C#BrandockSpawn","GLOBAL",13)~ + firstmeeting_19
END

IF ~~ THEN firstmeeting_14
SAY ~That... that's his spellbook. If you found this at the site, he is dead indeed...~
= ~Oh no! Ebrel, no... I didn't... I didn't want to learn from you like this...~
IF ~~ THEN DO ~ActionOverride("C#Brandock",TakePartyItem("c#br2001"))~ + firstmeeting_15
END

IF ~~ THEN firstmeeting_15
SAY ~Oh, the gods have mercy. I know you could call this a to be expected occupational hazard but Ebrel wasn't one of *those* Cowled Wizards, you know... (sob)~
++ ~I am very sorry, Brandock.~ + firstmeeting_17
++ ~You had a Cowled Wizard in your family?~ + firstmeeting_16
+ ~Global("C#Brandock_FirstMeeting1","LOCALS",0)~ + ~I could use your help, Brandock.~ + firstmeeting_18
+ ~Global("C#Brandock_FirstMeeting1","LOCALS",1)~ + ~I could use your help, Brandock.~ + firstmeeting_24
++ ~I need to go.~ + firstmeeting_25
END

IF ~~ THEN firstmeeting_16
SAY ~Yes, he was my mother's cousin I probably told you about while we travelled at the Sword Coast. The 'black sheep' of the family in their generation... Like I am for mine.~
+ ~Global("C#Brandock_FirstMeeting1","LOCALS",0)~ + ~I am very sorry, Brandock.~ + firstmeeting_17
+ ~Global("C#Brandock_FirstMeeting1","LOCALS",0)~ + ~I could use your help, Brandock.~ + firstmeeting_18
+ ~Global("C#Brandock_FirstMeeting1","LOCALS",1)~ + ~I am very sorry, Brandock.~ + firstmeeting_16_b
+ ~Global("C#Brandock_FirstMeeting1","LOCALS",1)~ + ~I could use your help, Brandock.~ + firstmeeting_24
++ ~I need to go.~ + firstmeeting_25
END

IF ~~ THEN firstmeeting_16_b
SAY ~Thank you.~
++ ~Join forces with me, Brandock.~ + firstmeeting_24
++ ~I need to go.~ + firstmeeting_25
END

IF ~~ THEN firstmeeting_17
SAY ~I... I need to sit down for a moment.~
++ ~You had a Cowled Wizard in your family?~ + firstmeeting_16
+ ~Global("C#Brandock_FirstMeeting1","LOCALS",0)~ + ~I could use your help, Brandock.~ + firstmeeting_18
+ ~Global("C#Brandock_FirstMeeting1","LOCALS",1)~ + ~I could use your help, Brandock.~ + firstmeeting_24
++ ~I need to go.~ + firstmeeting_25
END

IF ~~ THEN firstmeeting_18
SAY ~And I would like to help you.~
IF ~~ THEN DO ~SetGlobal("C#Brandock_FirstMeeting1","LOCALS",1)~ + firstmeeting_19
END

IF ~~ THEN firstmeeting_19
SAY ~What are you going to do now?~
++ ~I'll go after this Irenicus. He held me captive, tortured me, and I will make sure he won't be a threat any longer.~ + firstmeeting_20
+ ~Global("C#IM_ImoenStays","GLOBAL",0)~ + ~I'll go and free Imoen. It's not right they took her!~ + firstmeeting_21
++ ~I'm not sure. Trying to regain my strength, get information, and see what I can learn about my foe.~ + firstmeeting_22
+ ~Global("C#BrandockSpawn","GLOBAL",14)~ + ~We'll see. I need to go, Brandock, farewell.~ + firstmeeting_25
+ ~!Global("C#BrandockSpawn","GLOBAL",14)~ + ~We'll see. I need to go, Brandock, farewell.~ + firstmeeting_26
END

IF ~~ THEN firstmeeting_20
SAY ~Hm, if they took him to the asylum, I would think they could hold him there... But after he killed so many of them in such a short fight... No, this sounds like checking on his whereabouts is the only way to see whether he poses a threat still, or not.~
IF ~Global("C#BrandockSpawn","GLOBAL",14)~ THEN + firstmeeting_23
IF ~!Global("C#BrandockSpawn","GLOBAL",14)~ THEN + firstmeeting_26
END

IF ~~ THEN firstmeeting_21
SAY ~Indeed it's not. I know what I usually say when talking about Cowled Wizards, but even they have standards - and they love to collect gold. Way more than to have to deal with defiant mages, I assure you that. Something is very wrong here, and if you want to know what, I fear you'll have to go looking yourself.~
IF ~Global("C#BrandockSpawn","GLOBAL",14)~ THEN + firstmeeting_23
IF ~!Global("C#BrandockSpawn","GLOBAL",14)~ THEN + firstmeeting_26
END

IF ~~ THEN firstmeeting_22
SAY ~That sounds very reasonable, considering what just happened to you.~
IF ~Global("C#BrandockSpawn","GLOBAL",14)~ THEN + firstmeeting_23
IF ~!Global("C#BrandockSpawn","GLOBAL",14)~ THEN + firstmeeting_26
END

CHAIN
IF ~~ THEN c#brand2 firstmeeting_23
~And I would like to come with you. I need to ask what to do now. I am ssigned to these experiments, but... without Ebrel it doesn't make any sense to continue.~
== c#brand2 IF ~Global("C#BrandockSpawn","GLOBAL",14)~ THEN ~I need to know what happened to him - find the one who is responsible for his death!~
== c#brand2 IF ~Global("C#IM_ImoenStays","GLOBAL",0)~ THEN ~And I think I could be of help - if only little, in your investigation about Imoen.~
END
++ ~Join me, Brandock. I'll need your help.~ + firstmeeting_24
+ ~Global("C#BrandockSpawn","GLOBAL",14)~ + ~You talk as much as ever. I don't think I'll want your help.~ + firstmeeting_25
+ ~Global("C#BrandockSpawn","GLOBAL",14)~ + ~I'm afraid there is nothing you can do for me.~ + firstmeeting_25
+ ~!Global("C#BrandockSpawn","GLOBAL",14)~ + ~You talk as much as ever. I don't think I'll want your help.~ + firstmeeting_26
+ ~!Global("C#BrandockSpawn","GLOBAL",14)~ + ~I'm afraid there is nothing you can do for me.~ + firstmeeting_26

APPEND c#brand2 

IF ~~ THEN firstmeeting_24
SAY ~With pleasure! I'll do as best I can. Let us go to the Councellor's Building, I need to talk to the Cowled Wizard Emissary!~
= ~And also... Please let us go to the Temple of Helm in the Temple District. I need to arrange for Ebrel's funeral... Oh, Ebrel. I'll learn from your spellbook as much as I can. Your wisdom will not be lost...~
IF ~~ THEN DO ~EraseJournalEntry(@10030)
EraseJournalEntry(@10014)
EraseJournalEntry(@10015)
AddJournalEntry(@10027,QUEST)
AddJournalEntry(@10024,QUEST)
SetGlobal("C#Br_LorePathIncrease","GLOBAL",2)
SetGlobal("C#BrandockSpawn","GLOBAL",15)
SetGlobal("C#BrandockJoined","GLOBAL",1)
SetGlobal("C#Brandock_Dialog","GLOBAL",201)
RealSetGlobalTimer("C#BrandockDialogTimer","GLOBAL",400)
RealSetGlobalTimer("C#BrandockNPCBanterTimer","GLOBAL",1800)
ReallyForceSpellRES("c#brlob1",Myself)
DestroyItem("c#br2001")
JoinParty()~ EXIT
END

IF ~~ THEN firstmeeting_25
SAY ~I see. Well, I'll be here.~
IF ~~ THEN JOURNAL @10015 EXIT
END

IF ~~ THEN firstmeeting_26
SAY ~I see. Well, I'll be here. Feel fee to rest here, and let me know if I can do anything for you. (Gods, I really hope Ebrel will come back, soon.)~
IF ~~ THEN JOURNAL @10014 EXIT
END


END //APPEND

