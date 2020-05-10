/* anything Valygar or sphere related will go here */

/* Tolgerias */

/* ~This is a sensitive matter, and I cannot tell all to every curious soul.  I must have your commitment that you agree to the task.~ */
I_C_T ~TOLGER~ 75 C#Brandock_tolger_75
== ~c#brandj~ IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN ~I'm afraid that's how it often goes, <CHARNAME>. Secret organisation, you understand?~
END

/* Yes, it is a lot for even I to ask, eh?   You are more than capable of performing this task and it will conflict with none of your current loyalties. */
I_C_T ~TOLGER~ 5 C#Brandock_tolger_5
== ~c#brandj~ IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN ~(sigh) Not that I *like* how this is going, but I fear we have no other choice.~
END


/* PC accepted quest */


I_C_T ~TOLGER~ 21 C#Brandock_TolgerQuest
== ~c#brandj~ IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN ~Very well - on to my new assignment. And I feel almost not forced into doing this to get to the knowledge we seek. (sigh)~
== ~c#brandj~ IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)
!Global("ValygarHome","GLOBAL",1) !Dead("VALYGAR") !GlobalGT("C#Brandock_VALYGAR_0","GLOBAL",5)~ THEN ~<CHARNAME>, if this Valygar killed two Cowled Wizards then he is no fool - and noone to be trifled with. It is suspicious they need mercenaries for bringing him down. Very suspicious. I don't like this at all - this man is probably very dangerous. We should watch out.~
END

I_C_T ~TOLGER~ 23 C#Brandock_TolgerQuest
== ~c#brandj~ IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN ~Um, I'll go with 'perform our task', <CHARNAME> - please?~
== ~c#brandj~ IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN ~Very well - on to my new assignment. And I feel almost not forced into doing this to get to the knowledge we seek. (sigh)~
== ~c#brandj~ IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)
!Global("ValygarHome","GLOBAL",1) !Dead("VALYGAR") !GlobalGT("C#Brandock_VALYGAR_0","GLOBAL",5)~ THEN ~<CHARNAME>, if this Valygar killed two Cowled Wizards then he is no fool - and noone to be trifled with. It is suspicious they need mercenaries for bringing him down. Very suspicious. I don't like this at all - this man is probably very dangerous. We should watch out.~
END

I_C_T ~TOLGER~ 24 C#Brandock_TOLGER_refused
== ~TOLGER~ IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN ~Brandock, I am very disappointed! Our association is herewith cancelled, you are no longer working for me! Beware our next meeting, it will not be a pleasant one!~
END

I_C_T ~TOLGER~ 27 C#Brandock_TOLGER_refused
== ~TOLGER~ IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN ~Brandock, I am very disappointed! Our association is herewith cancelled, you are no longer working for me! Beware our next meeting, it will not be a pleasant one!~
END




APPEND c#brandj

IF ~Global("C#Brandock_TOLGER_refused","GLOBAL",2)~ THEN angered_tolgerias
SAY ~Oh, oh, oh, oh, why did you do this? I mean, I understand you completely, and deep down in my heart I enjoyed the sight of the pulsing vein on his forehead when he shouted his threat, but... why? <CHARNAME>, why did you cross my master? Why did you make *me* cross my master?~ [c#ablank]
+ ~!Alignment(Player1,MASK_EVIL)~ + ~I am sorry for the complications this bears for you, Brandock, but I can't make myself do something I am completely against.~ + angered_tolgerias_03
+ ~Alignment(Player1,MASK_EVIL)~ + ~I can't make myself do something I am completely against.~ + angered_tolgerias_02
++ ~I wanted to see the pulsing vein on his forehead, too. Looked funny.~ + angered_tolgerias_01
++ ~I couldn't care less about what this means to you, Brandock.~ + angered_tolgerias_02
END

IF ~~ THEN angered_tolgerias_01
SAY ~Funny, yes? And now what, you turn back time and we do the right thing?~
+ ~!Alignment(Player1,MASK_EVIL)~ + ~I am sorry for the complications this bears for you, Brandock, but I can't make myself do something I am completely against.~ + angered_tolgerias_03
+ ~Alignment(Player1,MASK_EVIL)~ + ~I can't make myself do something I am completely against.~ + angered_tolgerias_02
++ ~I couldn't care less about what this means to you, Brandock.~ + angered_tolgerias_02
END

IF ~~ THEN angered_tolgerias_02
SAY ~Is that so? Oh, I see, <CHARNAME>.~
IF ~~ THEN DO ~SetGlobal("C#Brandock_TOLGER_refused","GLOBAL",3)~ + angered_tolgerias_02_b 
END


IF ~~ THEN angered_tolgerias_02_b //Brandock leaves
SAY ~I see I have to go my own way, then. So much for helping each other... Farewell.~
IF ~Global("C#BrandockJoined","GLOBAL",1)~ THEN DO ~SetInterrupt(FALSE)
SetGlobal("C#BrandockJoined","GLOBAL",0)
TakePartyItem("c#br0001")
TakePartyItem("c#br0007")
LeaveParty()
ChangeAIScript("",DEFAULT)
SetLeavePartyDialogFile() 
SetGlobal("C#Brandock_Gone","GLOBAL",1) EscapeArea() SetInterrupt(TRUE)~ EXIT
IF ~Global("C#BrandockJoined","GLOBAL",2)~ THEN DO ~SetInterrupt(FALSE)
SetGlobal("C#BrandockJoined","GLOBAL",0)
RemoveFamiliar()
ActionOverride("C#Brandock",ChangeAIScript("",DEFAULT))
ChangeEnemyAlly(Myself,NEUTRAL) 
TakePartyItem("c#br0001")
TakePartyItem("c#br0007")
SetGlobal("C#Brandock_Gone","GLOBAL",1) EscapeArea() SetInterrupt(TRUE)~ EXIT
END

IF ~~ THEN angered_tolgerias_03
SAY ~I know you can't... (moan) Can't you see that I can't remain at your side?~
= ~I need to go and fix this... somehow make him understand... I, I... <CHARNAME>, I need to find a way to live amongst the Cowled Wizards! This is not a game to me, this is my *home*. I can't... I can't cross a Cowled Wizard so. My *employer*, of all things!~
++ ~You said yourself that one hand doesn't know what the other does with the Cowled Wizards. Just because we crossed one doesn't have to mean all of them turned against you.~ + angered_tolgerias_04
++ ~All I did was refusing to do one rediculous job! It's not my fault he has such a bad temper.~ + angered_tolgerias_04
++ ~I couldn't care less about what this means to you, Brandock.~ + angered_tolgerias_02
END

IF ~~ THEN angered_tolgerias_04
SAY ~OOoohhh... (massages his temples) I know you are right, but... Argh... Alright, fine, I trust you, <CHARNAME>, and it seems my future is more in your hands than ever. Very well, the deed is done. Let's see where it takes me... Excuse me while I get a fit of panic in that corner over there.~
IF ~~ THEN DO ~SetGlobal("C#Brandock_TOLGER_refused","GLOBAL",3)~ EXIT
END

END //APPEND

/* Global("BetrayedCowled","GLOBAL",1) */

I_C_T ~TOLGER~ 29 C#Brandock_TOLGER_29
== ~TOLGER~ IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN ~Brandock, I am very disappointed! Our association is herewith cancelled, you are no longer working for me! Beware our next meeting, it will not be a pleasant one!~
END

/* Valygar dead */
I_C_T ~TOLGER~ 40 C#Brandock_TOLGER_40
== ~TOLGER~ IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN ~Brandock, I am very disappointed! Our association is herewith cancelled, you are no longer working for me! Beware our next meeting, it will not be a pleasant one!~
END

/* Valygar dead - PC wanted higher reward */
I_C_T ~TOLGER~ 44 C#Brandock_TOLGER_44
== ~TOLGER~ IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN ~Brandock, I am very disappointed! Our association is herewith cancelled, you are no longer working for me! Beware our next meeting, it will not be a pleasant one!~
END

/* Valygar dead - PC wanted higher reward */
I_C_T ~TOLGER~ 46 C#Brandock_TOLGER_46
== ~TOLGER~ IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN ~Brandock, I am very disappointed! Our association is herewith cancelled, you are no longer working for me! Beware our next meeting, it will not be a pleasant one!~
END


/* Valygar dead, but PC didn't take the body to the Cowled Wizards OR entered the sphere alone */

APPEND c#brandj
IF ~Global("C#Brandock_BetrayedCowled","GLOBAL",1)~ THEN betrayed_cowled
SAY ~You... you killed that man, but had no intention to work with the Cowled Wizards, had you? No, <CHARNAME>, no... I need to separate myself from you. I need to fix as much as I can, for my own benefit.~ [c#ablank]
IF ~~ THEN DO ~SetGlobal("C#Brandock_BetrayedCowled","GLOBAL",2)~ + angered_tolgerias_02_b 
END


/* Valygar not dead but not brought to Tolgerias (Valygar was not in party) - PC refused to tell about his whereabouts */
IF ~Global("C#Brandock_BetrayedCowled","GLOBAL",3)~ THEN betrayed_cowled_01
SAY ~Oh, oh, oh, oh, <CHARNAME>, my master just left in anger... I can't remain at your side, can I? I crossed the Cowled Wizards!~ [c#ablank]
= ~I need to go and fix this... somehow make him understand... I, I... <CHARNAME>, I need to find a way to live amongst the Cowled Wizards! This is not a game to me, this is my *home*. I can't... I can't cross a Cowled Wizard so. My *employer*, of all things!~
+ ~!Global("C#Brandock_TOLGER_44","GLOBAL",1) !Global("C#Brandock_TOLGER_44","GLOBAL",1)~ + ~I am sorry for the complications this bears for you, Brandock, but I can't make myself do something I am completely against.~ + betrayed_cowled_02
+ ~!Global("C#Brandock_TOLGER_44","GLOBAL",1) !Global("C#Brandock_TOLGER_44","GLOBAL",1)~ + ~You know deep down it was the right thing to do. Crossing those wizards or no!~ + betrayed_cowled_02
+ ~OR(2)
	Global("C#Brandock_TOLGER_44","GLOBAL",1) 
	Global("C#Brandock_TOLGER_46","GLOBAL",1)~ + ~Dammit, Brandock, all I wanted was a higher reward. It's not my fault this Tolgerias has such a temper!~ + betrayed_cowled_02
++ ~I couldn't care less about what this means to you, Brandock.~ + betrayed_cowled_03
END

IF ~~ THEN betrayed_cowled_02
SAY ~OOoohhh... (massages his temples) I know you are right, but... Argh... Alright, fine, I trust you, <CHARNAME>, and it seems my future is more in your hands than ever. Very well, the deed is done. Let's see where it takes me... Excuse me while I get a fit of panic in that corner over there.~
IF ~~ THEN DO ~SetGlobal("C#Brandock_BetrayedCowled","GLOBAL",2)~ EXIT
END

IF ~~ THEN betrayed_cowled_03
SAY ~That... that is a cruel thing to say.~
IF ~~ THEN DO ~SetGlobal("C#Brandock_BetrayedCowled","GLOBAL",2)~ + angered_tolgerias_02_b 
END



END //APPEND c#brandj


/* Tolgerias is leaving after quest was fulfilled */
I_C_T ~TOLGER~ 76 C#Brandock_TOLGER_76
== ~TOLGER~ IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN ~Brandock, you may remain on <CHARNAME>'s side - for now. Make sure <PRO_HESHE> abides to our law! I will tell Teos you asked for an audience.~
END


/* Valygar killed in his cabin */

/* Valygar told his story */

APPEND c#brandj
IF ~Global("C#Brandock_VALYGAR_0","GLOBAL",2) 
OR(3) Global("C#Brandock_VALYGAR_8","GLOBAL",1) Global("HiredByCowled","GLOBAL",1)
GlobalGT("C#Brandock_TOLGER_refused","GLOBAL",0)~ THEN valygar_killed
SAY ~Killing that man was an evil thing to do, I sense it in my heart. (sigh) One little step closer to my goal, I guess.~ [c#ablank]
IF ~~ THEN DO ~SetGlobal("C#Brandock_VALYGAR_0","GLOBAL",3)~ EXIT
END

/* Valygar didn't tell his story:
Global("C#Brandock_VALYGAR_8","GLOBAL",0) */


IF ~Global("C#Brandock_VALYGAR_0","GLOBAL",2) Global("C#Brandock_VALYGAR_8","GLOBAL",0)
Global("HiredByCowled","GLOBAL",0)
Global("C#Brandock_TOLGER_refused","GLOBAL",0)~ THEN valygar_killed_nostory
SAY ~Why did we kill this man, <CHARNAME>? He mentioned the Cowled Wizards. I sense a deeper story here - one I would have been VERY INTERESTED in, I might add.~ [c#ablank]
IF ~~ THEN + valygar_killed
END
END //APPEND


/* Valygar alive and in group when talking to Tolgerias */
/* ~Es sei denn, Ihr habt beschlossen, Euch mit dem Waldläufer zusammen zu tun. Ein wahrer Narr könnte dazu wohl überredet werden. Wie siehts aus, <CHARNAME>? Seid Ihr ein Narr?~ */
I_C_T ~TOLGER~ 80 C#Brandock_TOLGER_80
== ~c#brandj~ IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN ~Oh no. You can call <CHARNAME> a lot of things, but not a fool.~
END

/* hand Valygar over to the Cowled Wizards (alive) */
/* ~Eine kluge Entscheidung. Gebt mir also bitte einen Moment, um mich um Euren ehemaligen Teamkollegen zu kümmern.~ */
I_C_T ~TOLGER~ 84 C#Brandock_TOLGER_84
== ~c#brandj~ IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN ~This was an evil thing to do, <CHARNAME> - we promised him protection! I should be happy about our clean plate with the Cowled Wizards... but I am not.~
END


/* Valygar */
I_C_T ~VALYGAR~ 0 C#Brandock_VALYGAR_0
== ~c#brandj~ IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN ~Sphere? The sphere in the slums?~
END

/* I have done nothing but defend myself from greedy wizards who only wish to plunder the magical wealth of my dread ancestor.  Anything they have told you is mere contrivance. */
I_C_T ~VALYGAR~ 43 C#Brandock_VALYGAR_43
== ~c#brandj~ IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)
Global("C#Brandock_TolgerQuest","GLOBAL",1)~ THEN ~Oh. This sounds different to what Tolgerias told us... And could very well be the truth. (sigh)~
END

I_C_T ~VALYGAR~ 3 C#Brandock_VALYGAR_3
== ~c#brandj~ IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN ~The sphere would be from your ancestor? Oh, <CHARNAME>, please do let him finish his tale.~
END

/* Global("HiredByCowled","GLOBAL",1) */
I_C_T ~VALYGAR~ 4 C#Brandock_VALYGAR_4
== ~c#brandj~ IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN ~Your *body* would be the key? And here I was, mixing chemicals... Oh, this sounds like it could very well be the truth... I know Tolgerias wants to get into that damn sphere very much - and probably using any and all possibilities. I'm starting to wonder who the aggressor is in this case...~
END

/* You do not serve the wizards?  Then I have hidden myself so desperately only to be set upon by chance?  Ah, this is misfortune, indeed. */
I_C_T ~VALYGAR~ 6 C#Brandock_VALYGAR_6
== ~c#brandj~ IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)
Global("C#Brandock_TOLGER_refused","GLOBAL",0)~ THEN ~<CHARNAME>, if this man is in conflict with the Cowled Wizards, we should be careful not to be drawn into a conflict that is not ours... and could do us much harm.~
END

/* Global("HiredByCowled","GLOBAL",0) */
/* I have no desire to meet my ancestor, and even less desire to help the Cowled Wizards, who believe my body is the only key to enter the sphere... alive or no. */
I_C_T ~VALYGAR~ 8 C#Brandock_VALYGAR_8
== ~c#brandj~ IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN ~Your body?! There I was, doing experiments day and night to see whether the material of the sphere could be desintegrated, and Tolgerias knew all the way that it's magically sealed?~
= ~This sounds like the Cowled Wizards, alright. <CHARNAME>, forget what I said earlier. You know I do not want to cross the Cowled Wizards, but this really sounds as if this man would rather need our protection.~
END

/* You do not serve the wizards?  Then I have hidden myself so desperately only to be set upon by chance?  Ah, this is misfortune, indeed. */
I_C_T ~VALYGAR~ 10 C#Brandock_VALYGAR_6
== ~c#brandj~ IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)
Global("C#Brandock_TOLGER_refused","GLOBAL",0)~ THEN ~<CHARNAME>, if this man is in conflict with the Cowled Wizards, we should be careful not to be drawn into a conflict that is not ours... and could do us much harm.~
END

/* Global("HiredByCowled","GLOBAL",0) */
/* I have no desire to meet my ancestor, and even less desire to help the Cowled Wizards, who believe my body is the only key to enter the sphere... alive or no. */
I_C_T ~VALYGAR~ 12 C#Brandock_VALYGAR_8
== ~c#brandj~ IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN ~Your body?! There I was, doing experiments day and night to see whether the material of the sphere could be desintegrated, and they knew all along that it's magically sealed?~
= ~This sounds like the Cowled Wizards, alright. <CHARNAME>, forget what I said earlier. You know I do not want to cross the Cowled Wizards, but this really sounds as if this man would rather need our protection.~
END

I_C_T ~VALYGAR~ 47 C#Brandock_VALYGAR_47
== ~c#brandj~ IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN ~The sphere would be from your ancestor? Oh, <CHARNAME>, please do let him finish his tale.~
END

I_C_T ~VALYGAR~ 48 C#Brandock_VALYGAR_48
== ~c#brandj~ IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN ~The sphere would be from your ancestor? Oh, <CHARNAME>, please do let him finish his tale.~
END

I_C_T ~VALYGAR~ 19 C#Brandock_VALYGAR_19
== ~c#brandj~ IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN ~<CHARNAME>, if we do this, we will go against the Cowled Wizards. They will not tolerate us going in there first - you are aware of this, yes?~
END





/* reaction to Valygar in group 
 */

/* GlobalGT("C#Brandock_TOLGER_refused","GLOBAL",0) */
CHAIN
IF ~Global("C#Brandock_VALYGAR_0","GLOBAL",6) GlobalGT("C#Brandock_TOLGER_refused","GLOBAL",0)~ THEN c#brandj valygar_joined
~Well, yes, I guess this is only natural. If we are about to cross the Cowled Wizards, let's do it *properly* and investigate the sphere on our own! Gods. This could shatter everything I was trying to accomplish... <CHARNAME>, I am all for protecting an innocent man, even against the Cowled Wizards. Just keep in mind that this could get us to Spellhold very fast, and on a different route than we would like it.~ [c#ablank]
= ~Don't get me wrong, though. I *am* thrilled to investigate anything related to the sphere. I did some research regarding on how to get in there, after all.~
END
IF ~~ THEN EXTERN VALYGARJ valygar_interject


/* Global("C#Brandock_TOLGER_refused","GLOBAL",0) */
CHAIN
IF ~Global("C#Brandock_VALYGAR_0","GLOBAL",6) Global("C#Brandock_TOLGER_refused","GLOBAL",0)~ THEN c#brandj valygar_joined_00
~Erm, why are this man and I in the same group? <CHARNAME>, did I miss something? Help me! I know I'm still employed by Tolgerias until he states otherwise... and this man is wanted by the Cowled Wizards!~ [c#ablank]
END
IF ~~ THEN EXTERN VALYGARJ valygar_interject

APPEND VALYGARJ
IF ~~ THEN valygar_interject
SAY ~You would work for the Cowled Wizards? What is this foul play, <CHARNAME>?!~
+ ~Global("HiredByCowled","GLOBAL",1)~ + ~No foul play, just a change in plans. Brandock, I don't believe a word this Tolgerias said.~ EXTERN c#brandj  valygar_joined_02
+ ~Global("C#Brandock_TOLGER_0","GLOBAL",0)~ + ~No foul play, Valygar. Brandock, I am sure this Tolgerias of yours will be fine, and if not, then we'll explain the matter to him.~ EXTERN c#brandj valygar_joined_03
++ ~I will protect this man from the Cowled Wizards, Brandock, because I think it's the right thing to do.~ EXTERN c#brandj valygar_joined_02
++ ~I will go into the sphere and get the treasure, Brandock. You can come along or you can run to your new masters.~ EXTERN c#brandj valygar_joined_01
++ ~I couldn't care less about what this means to you, Brandock.~ EXTERN c#brandj valygar_joined_01
END
END

APPEND c#brandj

IF ~~ THEN valygar_joined_01
SAY ~Is that so? Well... in that case...~
IF ~~ THEN DO ~SetGlobal("C#Brandock_VALYGAR_0","GLOBAL",7)~ + angered_tolgerias_02_b 
END

IF ~~ THEN valygar_joined_02
SAY ~I understood why you are doing it, <CHARNAME>, but why... why would *I* do it?~
++ ~Because you are a good person, Brandock, and would rather protect an innocent than play along with foul play, be it by the Cowled Wizards or anyone else.~ + valygar_joined_04
++ ~Because deep down, you know it's evil if we hand Valygar in, and you value this more than any false loyalty to an organisation you think you'd have to join.~ + valygar_joined_04
++ ~I couldn't care less about what this means to you, Brandock.~ + valygar_joined_01
END

IF ~~ THEN valygar_joined_03
SAY ~(scoffs) Well, good luck with that, then. But yes, hope dies last etcetera, let's just pretend Tolgerias has nothing to do with all of this. Chances are high, actually, considering how many there are - but fate was a real tricky one if it came to me and my hopes in the past!~
IF ~~ THEN + valygar_joined_02
END

IF ~~ THEN valygar_joined_04
SAY ~Would we be at the Sword Coast still, I'd wholeheartedly agree to what you said, but here... here... (He tears his hair, covering his face with his arms.) AAAaargh - what should I do... what should I do...~
++ ~Listen to your heart, Brandock. Do you think that bringing Valygar in would be the right thing to do?~ + valygar_joined_05
++ ~You'll have to find the answer to that on your own, Brandock.~ + valygar_joined_06
++ ~I couldn't care less about what this means to you, Brandock.~ + valygar_joined_01
END

IF ~~ THEN valygar_joined_05
SAY ~No...~
++ ~Then stay with me and let us protect this man against evil, Brandock.~ + valygar_joined_08
++ ~Then come along and help me find the riches in this sphere of his!~ + valygar_joined_07
++ ~So, what will you do?~ + valygar_joined_09
END

IF ~~ THEN valygar_joined_06
SAY ~(moan)... don't you see that I need just a little, tiny nudge into the right direction - please, <CHARNAME>, give me something I can hold on to to justify crossing my employers!~
++ ~Listen to your heart, Brandock. Do you think that bringing Valygar in would be the right thing to do?~ + valygar_joined_05
++ ~What do you want me to say that you wouldn't know already yourself?~ + valygar_joined_09
++ ~I couldn't care less about what this means to you, Brandock.~ + valygar_joined_01
END

IF ~~ THEN valygar_joined_07
SAY ~You *had* to stress this motivation, now, didn't you? Ah, but I'm not falling for that!~
IF ~~ THEN + valygar_joined_08
END

IF ~~ THEN valygar_joined_08
SAY ~(exhales) I thank you, <CHARNAME>. I will stay. I will do as you say. I will defend this man against assaults from the Cowled Wizards. And hopefully, I will live long enough to have a chance to explain my behavior to Tolgerias...~
IF ~~ THEN DO ~SetGlobal("C#Brandock_VALYGAR_0","GLOBAL",7)~ EXIT
END

IF ~~ THEN valygar_joined_09
SAY ~(Brandock ponders a short moment, covering his face with his hands.)~
IF ~~ THEN + valygar_joined_08
END

END //APPEND c#brandj




APPEND c#brandj

/* reaction to Valygar not killed (and not in group) */

IF ~Global("C#Brandock_VALYGAR_0","GLOBAL",4)~ THEN angered_tolgerias
SAY ~<CHARNAME>, why did you let him go? I mean, deep down in my heart I am grateful you didn't kill this man, but...~ [c#ablank]
= ~Well, we know where Valygar will be, and can still tell Tolgerias so, if he asks.~
IF ~~ THEN DO ~SetGlobal("C#Brandock_VALYGAR_0","GLOBAL",5)~ EXIT
END

END //APPEND

/* ~Das Mädchen... Imoen... wurde gemeinsam mit einem mächtigen Zauberer namens Irenicus inhaftiert. Seit seiner Festnahme bereitet er uns... Probleme, sät in unserem Orden Angst.~ */
I_C_T ~TOLGER~ 71 C#Brandock_TOLGER_71
== ~c#brandj~ IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN ~Oh, this does not sound good.~
END



/* betray Valygar to the Cowled Wizards. final statement from Brandock if Valygar was handed to Tolgerias: */

/* Global("BetrayedValygar","GLOBAL",1) */
CHAIN
IF ~Global("C#Brandock_BetrayedValygar","GLOBAL",1)~ THEN c#brandj valygar_handed_over
~We did what we were told, why does it feel so wrong? I should be happy about our clean plate with the Cowled Wizards... but I am not.~ [c#ablank]
DO ~SetGlobal("C#Brandock_BetrayedValygar","GLOBAL",2)~
== c#brandj IF ~Global("C#Brandock_TOLGER_71","GLOBAL",1)~ THEN ~What Tolgerias said - it gave me shivers down my spine. The Order in fear of Irenicus? What does this mean?~
== c#brandj IF ~Global("C#Brandock_TOLGER_71","GLOBAL",1) Global("C#IM_ImoenStays","GLOBAL",0)~ THEN ~What does this mean for Imoen?...~
== c#brandj ~Now we have to wait for Teos. But I start to doubt that he can tell us more...~ DO ~SetGlobalTimer("C#Brandock_TeosSpawnTimer","GLOBAL",ONE_DAY)~
EXIT



/* Tolgerias in Planar Sphere (TOLGER2) */

I_C_T ~TOLGER2~ 2 C#Brandock_TOLGER2_2
== ~c#brandj~ IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN ~(under his breath) Here we go!~
END

I_C_T ~TOLGER2~ 4 C#Brandock_TOLGER2_4
== ~c#brandj~ IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN ~Wait, what? Tolgerias?! Are you sure you want to do this? Oh dear, seems like it. (under his breath) Here we go!~
END


APPEND c#brandj


IF ~Global("C#Brandock_Killed Tolgerias","GLOBAL",1)~ THEN killed_tolgerias
SAY ~Oh, oh, now we did not only anger a Cowled Wizard, but we *killed* him. I am sure there will be a heavy follow up to *this*! But, aaah, don't worry, <CHARNAME>, I'm alright. I'm al-right... (inhales) all... (exhales) ...right...~ [c#ablank]
IF ~~ THEN DO ~SetGlobal("C#Brandock_Killed Tolgerias","GLOBAL",2)~ EXIT
END

END //APPEND c#brandj


/* Cowled Wizard emissary named Teos 

Global("AsylumPlot","GLOBAL",0)- before Imoen rescue 

MGTEOS01.cre

approaches MAGE_ALL PC after sphere quest */

/* Cowled Wizard emissary Teos */
/* compatibility with NPC stronghold - in case player is mage and takes the sphere for himself, greeting of brandock needs to be after state 2 */
I_C_T3 ~MGTEOS01~ 3 C#Brandock_MGTEOS01_3  
== MGTEOS01 IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock")~ THEN ~But it seems I have to acknowledge my former student, first.~ 
== MGTEOS01 IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN ~Who seems not capable of talking, so I'll lave it at that.~
== MGTEOS01 IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN ~Brandock, I see you travelling with <CHARNAME>... again.~
== ~c#brandj~ IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN ~Um, yes, um, and I have good reasons... very good reasons, to having opposed the Cowled Wizards, um, and...~
== MGTEOS01 IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN ~Stop this stammering, Brandock, and talk like a man! I am not here for hostilities.~
== ~c#brandj~ IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN ~...Not? Oh. In that case... We thank you, Emissary Teos, for your presence. <CHARNAME> and I have urgent questions for you.~
== MGTEOS01 IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN ~There will be time for questions later. I need to talk to <CHARNAME>, first.~
END



/* I am told that member Tolgerias is no longer to be spoken of. Either he was working for himself, or something of greater importance requires it to be so. */
I_C_T ~MGTEOS01~ 4 C#Brandock_MGTEOS01_4
== ~c#brandj~ IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN ~What? That's... that's *it*?~
== ~MGTEOS01~ IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN ~Yes, Brandock, that's it. The authority to assign you to a task was transferred to me, so listen carefully.~
END

/*
MGTEOS01 7 -> EXTEND_BOTTOM with Abzweig zu "Brandock bekommt die Sphäre".
Global("PCSphere","GLOBAL",0)
*/

I_C_T ~MGTEOS01~ 7 C#Brandock_MGTEOS01_7
== ~MGTEOS01~ IF ~Global("PCSphere","GLOBAL",0)
OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN ~Seeing how you seem to put trust into my former apprentice who stated his interest in joining the Cowled Wizards - Brandock - I was told to assign you, Brandock, as acting mage to the sphere stronghold.~
== ~c#brandj~ IF ~Global("PCSphere","GLOBAL",0)
OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN ~M... me? What do you mean?~
== ~MGTEOS01~ IF ~Global("PCSphere","GLOBAL",0)
OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN ~The sphere is an artefact of unbelievable value. We respect <CHARNAME>'s claim for it, but that doesn't mean we won't have a very close eye on what will be going on here. We will hold you responsible for <PRO_HISHER> actions in regard to the sphere. You will act as <PRO_HISHER> mentor for the tasks that will be assigned upon <PRO_HIMHER>, if it requires magical assistance. I am sure <CHARNAME> understands the importance of cooperating with the magic force in Amn. Do not worry, you will still be able to roam the lands with your friend.~
END

/* ~I will inquire to my superiors about her if you wish. Until then, I would advise that you act in accordance with this agreement. ~ */
I_C_T ~MGTEOS01~ 12 C#Brandock_MGTEOS01_12
== ~c#brandj~ IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN ~But... that's what we asked about *explicitely* when requesting an audience! Ah, why am I not surprised!~
END

/* ~If you display magic in the streets you will be censured accordingly. The lives of a few brethren are apparently an acceptable price for your assistance.~ */
I_C_T ~MGTEOS01~ 14 C#Brandock_MGTEOS01_14
== ~c#brandj~ IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN ~Oh, great...~
END

/* Teos will mention Imoen if the PC didn't ask for her */
I_C_T3 ~MGTEOS01~ 16 C#Brandock_MGTEOS01_12 //if it didn't run already in state 12
== ~MGTEOS01~ IF ~Global("C#IM_ImoenStays","GLOBAL",0)
OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN ~Yes, Tolgerias did mention your request for an audience, though... Imoen, was your friend's name? Taken because of unauthorized magic use? This is a large city, and the Cowled Wizards have many subdivisions and such.~
= #40793 /* ~I will inquire to my superiors about her if you wish. Until then, I would advise that you act in accordance with this agreement. ~ */
== ~MGTEOS01~ IF ~!Global("C#IM_ImoenStays","GLOBAL",0)
OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN ~Yes, Tolgerias did mention your request for an audience, though... Irenicus was the man's name? Taken because of unauthorized magic use? This is a large city, and the Cowled Wizards have many subdivisions and such.~
= ~I will inquire to my superiors about him if you wish. Until then, I would advise that you act in accordance with this agreement. ~ 
END

I_C_T3 ~MGTEOS01~ 19 C#Brandock_MGTEOS01_12 //if it didn't run already in state 12
== ~MGTEOS01~ IF ~Global("C#IM_ImoenStays","GLOBAL",0)
OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN ~Yes, Tolgerias did mention your request for an audience, so... Imoen, was your friend's name? Taken because of unauthorized magic use? This is a large city, and the Cowled Wizards have many subdivisions and such.~
= #40793 /* ~I will inquire to my superiors about her if you wish. Until then, I would advise that you act in accordance with this agreement. ~ */
== ~MGTEOS01~ IF ~!Global("C#IM_ImoenStays","GLOBAL",0)
OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN ~Yes, Tolgerias did mention your request for an audience, though... Irenicus was the man's name? Taken because of unauthorized magic use? This is a large city, and the Cowled Wizards have many subdivisions and such.~
= ~I will inquire to my superiors about him if you wish. Until then, I would advise that you act in accordance with this agreement. ~ 
END


/* conclusion of planar sphere quest 
Global("C#Brandock_MGTEOS01_4","GLOBAL",2) */

CHAIN
IF ~Global("C#Brandock_MGTEOS01_4","GLOBAL",2)~ THEN ~c#brandj~ teos_followup_1
~Wow, I don't know where I should start with commenting. This meeting with Teos went... very differently to what I expected.~ [c#ablank]
= ~So, it seems Tolgerias followed his own agenda, not authorized by other Cowled Wizards. This is... good. I am still in shock about fate being so kind to me... Where's the catch? There's always a catch!~
= ~As I told you, one hand doesn't know what the other does!~
== ~c#brandj~ IF ~Global("C#IM_ImoenStays","GLOBAL",0)~ THEN ~He has to go investigating about Imoen. Investigating! And we'll lose at least another tenday because they don't care for anything else than their own things!~
END
IF ~!Global("PCSphere","GLOBAL",0)~ THEN + teos_followup_1_01
IF ~Global("PCSphere","GLOBAL",0)~ THEN + teos_followup_1_00

APPEND ~c#brandj~
IF ~~ THEN teos_followup_1_00
SAY ~And then... Teos is my master now? *Teos*? I thought I'd leave this past behind me... Oh well, I guess it was to be expected. I apologize for this development. I have absolutely no idea what 'acting mage to the sphere stronghold' would mean, you know.~
++ ~We'll see.~ + teos_followup_1_00_02
++ ~Nothing changed from my perspective, to be honest.~ + teos_followup_1_00_02
++ ~The sphere is mine and it should be my decision what to do with it and who to place into it!~ + teos_followup_1_00_01
END

IF ~~ THEN teos_followup_1_00_01
SAY ~I totally agree with you here. But as the force the Cowled Wizards are in Amn, I fear we'll have to wait and see what tasks they will assign us to.~
IF ~~ THEN DO ~SetGlobal("C#Brandock_MGTEOS01_4","GLOBAL",3)~ EXIT
END

IF ~~ THEN teos_followup_1_00_02
SAY ~Indeed. Well, let's get on with things and see what will happen.~
IF ~~ THEN DO ~SetGlobal("C#Brandock_MGTEOS01_4","GLOBAL",3)~ EXIT
END

IF ~~ THEN teos_followup_1_01
SAY ~And then... Teos is our boss now? *Teos*? I thought I'd leave this past behind me... Oh well, I guess it was to be expected. What shady arrangement it is. You'll have to do his bidding, but no other Coweld Wizards is supposed to know about it.~
++ ~We'll see.~ + teos_followup_1_00_02
++ ~Better than becoming an official Cowled Wizard, I would think.~ + teos_followup_1_00_02
++ ~I don't have the impression this is an improvement to the task we were supposed to do for Tolgerias.~ + teos_followup_1_00_01
END
END //APPEND

/* more Teos interjections */


/* Cowled Wizard emissary Teos */
/* If you display magic in the streets you will be censured accordingly. The lives of a few brethren are apparently an acceptable price for your assistance. */
I_C_T ~MGTEOS01~ 14 C#Brandock_MGTEOS01_14
== c#brandj IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN ~Well, that sounds... not reassuring. What we'll do is either very, very important - or we are included into the next wizard's ego trip.~
END

/* Some unfortunate travelers that got caught in this sphere? No one here will miss them. I say kill them and save yourself the headache. */
I_C_T ~MGTEOS01~ 21 C#Brandock_MGTEOS01_21
== c#brandj IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN ~Did I expect any other answer... no, not really.~
END
I_C_T ~MGTEOS01~ 41 C#Brandock_MGTEOS01_21
== c#brandj IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN ~Did I expect any other answer... no, not really.~
END
I_C_T ~MGTEOS01~ 51 C#Brandock_MGTEOS01_21
== c#brandj IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN ~Did I expect any other answer... no, not really.~
END


/* Teos assigns the apprentices */

/* Enough chatter. You are to forgo your own concerns and do the task I set, though I do not understand why you have been chosen. It hardly seems worth the trouble. */
/* PC has sphere stronghold */
I_C_T ~MGTEOS01~ 24 C#Brandock_MGTEOS01_24
== c#brandj IF ~Global("PCSphere","GLOBAL",1) //PC has sphere stronghold
OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN ~Emissary Teos full of his charms. I am sure <CHARNAME> is flattered.~
END

/* Enough chatter. You are to forgo your own concerns and do the task I set, though I do not understand why you have been chosen. It hardly seems worth the trouble. */
/* Brandock has sphere stronghold */
I_C_T ~MGTEOS01~ 24 C#Brandock_MGTEOS01_24
== MGTEOS01 IF ~Global("PCSphere","GLOBAL",0) //brandock gets sphere stronghold
OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN ~Brandock, listen well. This task will be your responsibility, alone.~
== c#brandj IF ~Global("PCSphere","GLOBAL",0) 
OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN ~(gulp)~
END

/* The first is Morul, and he speaks for the others. He is the son of a wealthy merchant, and his father would be most upset if something happened to his gifted child. */
I_C_T ~MGTEOS01~ 27 C#Brandock_MGTEOS01_27
== c#brandj IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock")~ THEN ~(sigh) 'Gifted child', I wished anyone in my family would have called me that.~
END

/* I'm sure. Next is Larz. He found some old magic texts and studied without his parent's knowledge. They feared the stigma he would bring and cast him out. */
I_C_T ~MGTEOS01~ 28 C#Brandock_MGTEOS01_28
== c#brandj IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN ~Ouch. Maybe I got it not that bad, after all.~
== MGTEOS01 IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN ~Brandock, *stop* commenting.~
END

EXTEND_BOTTOM MGAPPR03 0
IF ~Global("PCSphere","GLOBAL",0)
OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN EXTERN MGTEOS01 brandock_apprentices
END

CHAIN
IF ~~ THEN MGTEOS01 brandock_apprentices
~Nothing less is expected. Brandock, they will receive their instruction from the Cowled Wizards directly, but you will determine the basics of their study.~
DO ~SetGlobal("C#Brandock_HasApprentices","GLOBAL",1)~
== c#brandj IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN ~Welcome, Morul, Larz, Nara. Oh, gods... Er, I feel honored?~
== MGTEOS01 IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN #41054 /* ~I am not responsible for granting it. This stinks of make-work, but it is not for me to decide. I will return in future tendays with additional duties.~ */
== MGTEOS01 IF ~Global("C#IM_ImoenStays","GLOBAL",0)
OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN ~Before you ask - I started inquiries about your friend Imoen.~
== MGTEOS01 IF ~!Global("C#IM_ImoenStays","GLOBAL",0)
OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN ~Before you ask - I started inquiries about hat man Irenicus.~
== MGTEOS01 IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN #41056 /* ~The name brings uncomfortable shifts from those in leadership. I will see if there is any more to learn and return when I have something worthwhile to say.~ */
END
COPY_TRANS MGTEOS01 32

CHAIN
IF WEIGHT #-1
~Global("Apprenti","GLOBAL",0) Global("C#Brandock_HasApprentices","GLOBAL",1) OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN MGAPPR02 brandock_tutoring
#41058 /* ~Y-yes teacher? Have you valuable instruction to give us?~ */
== c#brandj #41401 /* ~There's no need for such formality. What exactly have you been studying?~ */
END
IF ~~ THEN EXTERN MGAPPR01 2

EXTEND_BOTTOM MGAPPR01 3
IF ~Global("C#Brandock_HasApprentices","GLOBAL",1) OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN EXTERN ~MGAPPR02~ brandock_tutoring_01
END

APPEND ~MGAPPR02~ 

IF ~~ THEN brandock_tutoring_01
SAY ~Stop it! We have to start somewhere. Brandock, if you would direct us in what our next assignent should be then we can begin.~
IF ~~ THEN + 13
END
END

EXTEND_BOTTOM MGAPPR01 14
IF ~Global("C#Brandock_HasApprentices","GLOBAL",1) OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN EXTERN ~MGAPPR03~ brandock_tutoring_02
END

CHAIN 
IF ~~ THEN MGAPPR03 brandock_tutoring_02
~No, no, I suggest we make a dagger for the hero who solved the mysteries of the sphere. We'll call it the 'Dagger of <CHARNAME>'. How about that? It would only cost about 250 gold for supplies. Er, no offence to our teacher Brandock, of course...~
== c#brandj ~None taken. Very considerate.~
== MGAPPR02 ~Very good, though I would prefer something a little more practical still. A ring of Protection is a standard test in this discipline. It is... a little risky though. What say you, Brandock? It would cost 2000 gold.~
== c#brandj ~A 'little' risky? You won't take on such a ring. Not before I don't have a feeling of how much you already learned. One of my fellow apprentices died while trying one of those blasted rings... Hm, the wand of the apprenti is tricky, but doable... with a little luck. The dagger I assume you will be able to make without problems. It all comes down to a matter of how much gold we should spend. <CHARNAME>?~
END
  IF ~PartyGoldGT(999)~ THEN REPLY #41771 /* ~I think you should make me the Wand of the Apprenti. I could use that.~ */ DO ~TakePartyGold(1000)~ UNSOLVED_JOURNAL ~Mage Stronghold: Young minds to mold.

Brandock was assigned teacher to three apprentices of the magical arts. They complete their training inside the sphere. Each week they will display their results as they work on their talents. Already it sounds as though the range of items is quite broad. I look forward to seeing what they can do.~ EXTERN ~MGAPPR01~ 15
  IF ~PartyGoldGT(249)~ THEN REPLY #41772 /* ~The Dagger of <CHARNAME> sounds really nice.~ */ DO ~TakePartyGold(250)~ UNSOLVED_JOURNAL ~Mage Stronghold: Young minds to mold.

Brandock was assigned teacher to three apprentices of the magical arts. They complete their training inside the sphere. Each week they will display their results as they work on their talents. Already it sounds as though the range of items is quite broad. I look forward to seeing what they can do.~ EXTERN ~MGAPPR03~ 11
  IF ~~ THEN REPLY #41916 /* ~This is all too expensive for now. I'll get back to you on this.~ */ UNSOLVED_JOURNAL ~Mage Stronghold: Young minds to mold.

Brandock was assigned teacher to three apprentices of the magical arts. They complete their training inside the sphere. Each week they will display their results as they work on their talents. Already it sounds as though the range of items is quite broad. I look forward to seeing what they can do.~ EXTERN ~MGAPPR02~ 78
++ ~Why not the Ring of Protection, Brandock? It seems to be the most practical item of the listed.~ EXTERN c#brandj ring 

APPEND c#brandj
IF ~~ THEN ring
SAY ~Not for making, <CHARNAME>. I am sorry, but I am here because of my expertise and this is my final word.~
  IF ~PartyGoldGT(999)~ THEN REPLY #41771 /* ~I think you should make me the Wand of the Apprenti. I could use that.~ */ DO ~TakePartyGold(1000)~ UNSOLVED_JOURNAL ~Mage Stronghold: Young minds to mold.

Brandock was assigned teacher to three apprentices of the magical arts. They complete their training inside the sphere. Each week they will display their results as they work on their talents. Already it sounds as though the range of items is quite broad. I look forward to seeing what they can do.~ EXTERN ~MGAPPR01~ 15
  IF ~PartyGoldGT(249)~ THEN REPLY #41772 /* ~The Dagger of <CHARNAME> sounds really nice.~ */ DO ~TakePartyGold(250)~ UNSOLVED_JOURNAL ~Mage Stronghold: Young minds to mold.

Brandock was assigned teacher to three apprentices of the magical arts. They complete their training inside the sphere. Each week they will display their results as they work on their talents. Already it sounds as though the range of items is quite broad. I look forward to seeing what they can do.~ EXTERN ~MGAPPR03~ 11
  IF ~~ THEN REPLY #41916 /* ~This is all too expensive for now. I'll get back to you on this.~ */ UNSOLVED_JOURNAL ~Mage Stronghold: Young minds to mold.

Brandock was assigned teacher to three apprentices of the magical arts. They complete their training inside the sphere. Each week they will display their results as they work on their talents. Already it sounds as though the range of items is quite broad. I look forward to seeing what they can do.~ EXTERN ~MGAPPR02~ 78
END
END

/*
Global("Apprenti","GLOBAL",1)
Global("Apprenti","GLOBAL",4) : apprentices work on wand

Global("Apprenti","GLOBAL",2)
Global("Apprenti","GLOBAL",5) : on dagger
*/

/* Global("PoorMage","GLOBAL",1) PC didn't spend gold on first task */

INTERJECT MGAPPR02 79 C#Brandock_MGAPPR02_79
== MGAPPR02 IF ~Global("C#Brandock_HasApprentices","GLOBAL",1) OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN ~Ah, no, not the ring, of course. I am sorry, I got carried away.~
END
  IF ~PartyGoldGT(999)~ THEN REPLY #41919 /* ~I think you should make me the Wand of the Apprenti. I could use that.~ */ DO ~TakePartyGold(1000)
SetGlobal("PoorMage","GLOBAL",0)~ EXTERN ~MGAPPR01~ 15
  IF ~PartyGoldGT(249)~ THEN REPLY #41920 /* ~The Dagger of <CHARNAME> sounds really nice.~ */ DO ~TakePartyGold(250)
SetGlobal("PoorMage","GLOBAL",0)~ EXTERN ~MGAPPR03~ 11
  IF ~~ THEN REPLY #41922 /* ~This is all too expensive for now. I'll get back to you on this.~ */ GOTO 78

APPEND c#brandj
/* Brandock comments on him being a teacher */

IF ~Global("C#Brandock_HasApprentices","GLOBAL",1)
Global("C#Brandock_MageApprentices","GLOBAL",1)~ THEN brandock_teacher
SAY ~(Brandock inhales audibly.) I'm... I'm a teacher. I have apprentices. I have apprentices, because I'm a teacher. Pinch me, <CHARNAME>... I can't believe this is real!~
++ ~Yes, it is.~ + brandock_teacher_01
++ ~Here you go. (You pinch Brandock into his upper arm.)~ + brandock_teacher_02
++ ~Yeah,yeah. Let's get on, we've got things to do.~ + brandock_teacher_06
END

IF ~~ THEN brandock_teacher_01
SAY ~It is real. Oh, wow...~
++ ~Why so surprised? You're an experienced mage. I am sure they can learn a lot from you.~ + brandock_teacher_03
++ ~Scared?~ + brandock_teacher_04
++ ~Yeah,yeah. Let's get on, we've got things to do.~ + brandock_teacher_06
END

IF ~~ THEN brandock_teacher_02
SAY ~OUCH! I didn't meant you to actually *do* that... But thanks.~
IF ~~ THEN + brandock_teacher_01
END

IF ~~ THEN brandock_teacher_03
SAY ~Thank you. That's... that's kind of you to say.~
IF ~~ THEN + brandock_teacher_05
END

IF ~~ THEN brandock_teacher_04
SAY ~As *hell*. <CHARNAME>. As *hell*!~
IF ~~ THEN + brandock_teacher_05
END

IF ~~ THEN brandock_teacher_05
SAY ~Ah, I can *so* imagine the picture. Teos and others sitting together and snickering while plotting this. 'There's this young mage Brandock, who we didn't succeed in brainwashing, yet. How about we assign some apprentices to his care? We all know he doesn't feel up to this task, so maybe we can traumatize him enough to open his mind to our influence'. (Ack...)~
IF ~~ THEN + brandock_teacher_06
END

IF ~~ THEN brandock_teacher_06
SAY ~I have the responsibility for their lives now, and I will oblige. There won't be any deaths under my tutoring... not if I can help it!~
IF ~~ THEN DO ~SetGlobal("C#Brandock_MageApprentices","GLOBAL",2)~ EXIT
END

END




//all apprentices need a valid dialogue if talked to while Brandock is teacher

APPEND MGAPPR03

IF WEIGHT #-1
~!InPartySlot(LastTalkedToBy,0)
Global("C#Brandock_HasApprentices","GLOBAL",1)
!GlobalTimerExpired("ApprentiBuildTimer","GLOBAL")
OR(2)
Global("Apprenti","GLOBAL",1)
Global("Apprenti","GLOBAL",4)~ THEN brandockteacher_01
SAY #41786 /* ~We'll have that nasty little wand ready as soon as possible. The Dagger would have been nicer, though.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #-1
~!InPartySlot(LastTalkedToBy,0)
Global("C#Brandock_HasApprentices","GLOBAL",1)
!GlobalTimerExpired("ApprentiBuildTimer","GLOBAL")
OR(2)
Global("Apprenti","GLOBAL",2)
Global("Apprenti","GLOBAL",5)~ THEN brandockteacher_02
SAY ~One Dagger of <CHARNAME> coming right up!~
  IF ~~ THEN EXIT
END

IF WEIGHT #-1
~!InPartySlot(LastTalkedToBy,0)
Global("C#Brandock_HasApprentices","GLOBAL",1)
!GlobalTimerExpired("ApprentiBuildTimer","GLOBAL")
OR(2)
Global("Apprenti","GLOBAL",7)
Global("Apprenti","GLOBAL",8)~ THEN BEGIN 34 // from:
  SAY #41863 /* ~I like this. Nice and safe, I think. I may not learn about powerful magics today, but I'll certainly live to learn it in the future.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #-1
~!InPartySlot(LastTalkedToBy,0)
Global("C#Brandock_HasApprentices","GLOBAL",1)
!GlobalTimerExpired("ApprentiBuildTimer","GLOBAL")
OR(2)
Global("Apprenti","GLOBAL",9)
Global("Apprenti","GLOBAL",10)~ THEN BEGIN 35 // from:
  SAY #41864 /* ~I hope this works. I know you'll put our efforts to good use. ~ */
  IF ~~ THEN EXIT
END

END

APPEND MGAPPR01

IF WEIGHT #-1
~!InPartySlot(LastTalkedToBy,0)
Global("C#Brandock_HasApprentices","GLOBAL",1)
!GlobalTimerExpired("ApprentiBuildTimer","GLOBAL")
OR(2)
Global("Apprenti","GLOBAL",1)
Global("Apprenti","GLOBAL",4)~ THEN BEGIN 16 // from:
  SAY #41789 /* ~Yes <PRO_SIRMAAM>, one Wand of the Appreti coming right up. Simple, easy, and I really hope it works.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #-1
~!InPartySlot(LastTalkedToBy,0)
Global("C#Brandock_HasApprentices","GLOBAL",1)
!GlobalTimerExpired("ApprentiBuildTimer","GLOBAL")
OR(2)
Global("Apprenti","GLOBAL",2)
Global("Apprenti","GLOBAL",5)~ THEN BEGIN 17 // from:
  SAY #41790 /* ~Working on your little dagger, just like you said. I'm sure it will be cute.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #-1
~!InPartySlot(LastTalkedToBy,0)
Global("C#Brandock_HasApprentices","GLOBAL",1)
!GlobalTimerExpired("ApprentiBuildTimer","GLOBAL")
!GlobalTimerExpired("ApprentiBuildTimer","GLOBAL")
OR(2)
Global("Apprenti","GLOBAL",7)
Global("Apprenti","GLOBAL",8)~ THEN BEGIN 32 // from:
  SAY #41866 /* ~Wow. this sure is... exciting. Next I shall make the broom dance. Be still my heart.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #-1
~!InPartySlot(LastTalkedToBy,0)
Global("C#Brandock_HasApprentices","GLOBAL",1)
!GlobalTimerExpired("ApprentiBuildTimer","GLOBAL")
!GlobalTimerExpired("ApprentiBuildTimer","GLOBAL")
OR(2)
Global("Apprenti","GLOBAL",9)
Global("Apprenti","GLOBAL",10)~ THEN BEGIN 33 // from:
  SAY #41867 /* ~When are we going to risk it all? This is easy stuff!~ */
  IF ~~ THEN EXIT
END

END

APPEND MGAPPR02

IF WEIGHT #-1
~!InPartySlot(LastTalkedToBy,0)
Global("C#Brandock_HasApprentices","GLOBAL",1)
!GlobalTimerExpired("ApprentiBuildTimer","GLOBAL")
OR(2)
Global("Apprenti","GLOBAL",1)
Global("Apprenti","GLOBAL",4)
~ THEN BEGIN 22 // from:
  SAY #41783 /* ~That wand will be ready soon enough. Frankly, if it were up to me, we would take longer on all weapons.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #-1
~!InPartySlot(LastTalkedToBy,0)
Global("C#Brandock_HasApprentices","GLOBAL",1)
!GlobalTimerExpired("ApprentiBuildTimer","GLOBAL")
OR(2)
Global("Apprenti","GLOBAL",2)
Global("Apprenti","GLOBAL",5)~ THEN BEGIN 23 // from:
  SAY #41784 /* ~The dagger is coming nicely. I would have preferred the ring, but a dagger will teach just as well, I'm sure.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #-1
~!InPartySlot(LastTalkedToBy,0)
Global("C#Brandock_HasApprentices","GLOBAL",1)
!GlobalTimerExpired("ApprentiBuildTimer","GLOBAL")
OR(2)
Global("Apprenti","GLOBAL",7)
Global("Apprenti","GLOBAL",8)
~ THEN BEGIN 52 // from:
  SAY #41860 /* ~This isn't much of a challenge, but perhaps it is best we go the safe route.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #-1
~!InPartySlot(LastTalkedToBy,0)
Global("C#Brandock_HasApprentices","GLOBAL",1)
!GlobalTimerExpired("ApprentiBuildTimer","GLOBAL")
OR(2)
Global("Apprenti","GLOBAL",9)
Global("Apprenti","GLOBAL",10)
~ THEN BEGIN 53 // from:
  SAY #41861 /* ~I'm comfortable with this. I think everything will be all right.~ */
  IF ~~ THEN EXIT
END


/* timer run but no Brandock in sight */
IF WEIGHT #-1
~Global("C#Brandock_HasApprentices","GLOBAL",1)
GlobalTimerExpired("ApprentiBuildTimer","GLOBAL")
OR(2)
	Global("ApprentiJob","GLOBAL",0)
	Global("ApprentiJob","GLOBAL",1)
OR(4)
	!Detect("C#Brandock") 
	StateCheck("C#Brandock",CD_STATE_NOTVALID)
	!Detect(Player1) 
	StateCheck(Player1,CD_STATE_NOTVALID)~ THEN no_brandock
SAY ~Hello! Best we wait until you Brandock and <CHARNAME> both are here before we discuss the results.~
IF ~~ THEN EXIT
END

/* after either wand or dagger is done */
IF WEIGHT #-1
~Global("C#Brandock_HasApprentices","GLOBAL",1)
GlobalTimerExpired("ApprentiBuildTimer","GLOBAL")
Global("ApprentiJob","GLOBAL",0)
Detect("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)
Detect(Player1) !StateCheck(Player1,CD_STATE_NOTVALID)~ THEN first_task_done
SAY ~Brandock, <CHARNAME>, we are done with our first task.~
IF ~~ THEN + 28
END

END

/* start second task */

/* note: Brandock might be standing nearby but not be in party (if kicked out) */

EXTEND_BOTTOM MGAPPR02 41
IF ~Global("C#Brandock_HasApprentices","GLOBAL",1) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN EXTERN ~MGAPPR02~ brandock_tutoring_03
END

CHAIN
IF ~~ THEN MGAPPR02 brandock_tutoring_03
#41844 /* ~There is a Mislead scroll which will cost 250 gold in supplies, Abi Dalzim's Horrid Wilting at 1000 gold, and Meteor Swarm at 2500 gold. That is also the order of difficulty.~ */
== c#brandj IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2)~ THEN ~No Meteor Swarm for you yet.~
== c#brandP IF ~!InParty("C#Brandock") !Global("C#BrandockJoined","GLOBAL",2)~ THEN ~No Meteor Swarm for you yet.~
== MGAPPR01 ~But...~
== c#brandj IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2)~ THEN ~I said no. It'd be way too dangerous. It's either Mislead or Horrid Wilting. <CHARNAME>?~
== c#brandP IF ~!InParty("C#Brandock") !Global("C#BrandockJoined","GLOBAL",2)~ THEN ~I said no. It'd be way too dangerous. It's either Mislead or Horrid Wilting. <CHARNAME>?~
END
  IF ~PartyGoldGT(249)~ THEN REPLY #41845 /* ~I imagine this will be the safest one.  Try to make the Mislead scroll.~ */ DO ~TakePartyGold(250)~ EXTERN MGAPPR02 43
  IF ~PartyGoldGT(999)~ THEN REPLY #41846 /* ~This is a good middle ground for difficulty. Horrid Wilting is the scroll to make.~ */ DO ~TakePartyGold(1000)~ EXTERN MGAPPR02 44
  IF ~~ THEN REPLY #41925 /* ~Wait for a bit until I raise enough gold. I don't want you using cheap supplies.~ */ EXTERN MGAPPR02 80


/* Global("PoorMage","GLOBAL",2) */
EXTEND_BOTTOM MGAPPR02 82
IF ~Global("C#Brandock_HasApprentices","GLOBAL",1)~ THEN EXTERN ~MGAPPR02~ brandock_tutoring_04
END

APPEND MGAPPR02
IF ~~ THEN brandock_tutoring_04
SAY ~There is either Mislead which will cost 250 gold in supplies or Horrid Wilting at 1000 gold. That is also the order of difficulty.~
  IF ~PartyGoldGT(249)~ THEN REPLY #41845 /* ~I imagine this will be the safest one.  Try to make the Mislead scroll.~ */ DO ~TakePartyGold(250)~ EXTERN MGAPPR02 43
  IF ~PartyGoldGT(999)~ THEN REPLY #41846 /* ~This is a good middle ground for difficulty. Horrid Wilting is the scroll to make.~ */ DO ~TakePartyGold(1000)~ EXTERN MGAPPR02 44
  IF ~~ THEN REPLY #41925 /* ~Wait for a bit until I raise enough gold. I don't want you using cheap supplies.~ */ EXTERN MGAPPR02 80
END

/* task 2 done */

IF WEIGHT #-1
~Global("C#Brandock_HasApprentices","GLOBAL",1)
GlobalTimerExpired("ApprentiBuildTimer","GLOBAL")
Global("ApprentiJob","GLOBAL",0)
Detect("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)
Detect(Player1) !StateCheck(Player1,CD_STATE_NOTVALID)
GlobalTimerExpired("ApprentiBuildTimer","GLOBAL")
Global("ApprentiJob","GLOBAL",1)
!Global("PoorMage","GLOBAL",2)
~ THEN BEGIN brandock_tutoring_05
  SAY ~Hello, Brandock and <CHARNAME>. I am ready to tell you exactly what happened with our last task.~
  IF ~Global("Apprenti","GLOBAL",7)~ THEN DO ~SetGlobal("ApprentiJob","GLOBAL",2)~ GOTO 56
  IF ~Global("Apprenti","GLOBAL",8)~ THEN DO ~SetGlobal("ApprentiJob","GLOBAL",2)~ GOTO 57
  IF ~Global("Apprenti","GLOBAL",9)~ THEN DO ~SetGlobal("ApprentiJob","GLOBAL",2)~ GOTO 58
  IF ~Global("Apprenti","GLOBAL",10)~ THEN DO ~SetGlobal("ApprentiJob","GLOBAL",2)~ GOTO 59
END

END //APPEND

EXTEND_BOTTOM MGAPPR02 70
IF ~Global("C#Brandock_HasApprentices","GLOBAL",1) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN EXTERN ~MGAPPR02~ brandock_tutoring_06
END

CHAIN
IF ~~ THEN MGAPPR02 brandock_tutoring_06
~Which will it be, Brandock? Which should it be?~
== c#brandj IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2)~ THEN ~Which one?! None! This is all too risky. The best lesson to learn is when to back away. Stop this.~
== c#brandP IF ~!InParty("C#Brandock") !Global("C#BrandockJoined","GLOBAL",2)~ THEN ~Which one?! None! This is all too risky. The best lesson to learn is when to back away. Stop this.~
== MGAPPR02 #41904 /* ~Are you sure of this? I imagine this will not be viewed as a failure, but it is certainly an anticlimactic way to end an apprenticeship. ~ */
== c#brandj IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2)~ THEN #41905 /* ~I am resolute in this. I'll not have you risk it.~ */ 
== c#brandP IF ~!InParty("C#Brandock") !Global("C#BrandockJoined","GLOBAL",2)~ THEN #41905 /* ~I am resolute in this. I'll not have you risk it.~ */ 
END
IF ~~ THEN DO ~SetGlobal("C#Brandock_HasApprentices","GLOBAL",2) EraseJournalEntry(%Mage Stronghold: Young minds to mold.

Brandock was assigned teacher to three apprentices of the magical arts. They complete their training inside the sphere. Each week they will display their results as they work on their talents. Already it sounds as though the range of items is quite broad. I look forward to seeing what they can do.%)~ EXTERN MGAPPR02 73


/* end of Brandock's teaching - all apprentices survived */
APPEND c#brandj

IF ~Global("C#Brandock_MageApprentices","GLOBAL",3)~ THEN brandock_teaching_over
SAY ~I... I *did* it! They survived! All of them survived! (exhales audibly). And it's over. Thank the gods.~ [c#ablank]
IF ~~ THEN DO ~SetGlobal("C#Brandock_MageApprentices","GLOBAL",4)~ EXIT
END

END


/* route 2: PC or NPC has stronghold (interjections will probably be lost with NPC Strongholds mod) */

/* Player chose the ring */
INTERJECT MGAPPR02 16 B#Brandock_MGAPPR02_16
== c#brandj IF ~Global("C#Brandock_HasApprentices","GLOBAL",0)
OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN ~<CHARNAME>, I... Sorry for saying so, but making a Ring of Protection is a very tricky thing to do. One of my fellow apprentices died over it... Please chose something easier until you know how much your apprentices already know. Please!~
END
++ ~Very well, I will reconsider.~ EXTERN c#brandj pc_apprentices_01 
++ ~I don't see a problem. Let them have a little risk.~ EXTERN c#brandj pc_apprentices_02 
++ ~Brandock, this is my decision. Do not interfere again.~ EXTERN c#brandj pc_apprentices_03 

APPEND c#brandj
IF ~~ THEN pc_apprentices_01
SAY ~*Thank* you.~
  IF ~PartyGoldGT(999)~ THEN REPLY #41771 /* ~I think you should make me the Wand of the Apprenti. I could use that.~ */ DO ~TakePartyGold(1000)~ UNSOLVED_JOURNAL #55634 /* ~Mage Stronghold: Young minds to mold.

The apprentices have given me a unique opportunity. I am to give them instruction, guiding their learning, and they will attempt to make me magical items. Each week they will display their results as they work on their talents. Already it sounds as though the range of items is quite broad. I look forward to seeing what they can do. ~ */ EXTERN ~MGAPPR01~ 15
  IF ~PartyGoldGT(249)~ THEN REPLY #41772 /* ~The Dagger of <CHARNAME> sounds really nice.~ */ DO ~TakePartyGold(250)~ UNSOLVED_JOURNAL #55634 /* ~Mage Stronghold: Young minds to mold.

The apprentices have given me a unique opportunity. I am to give them instruction, guiding their learning, and they will attempt to make me magical items. Each week they will display their results as they work on their talents. Already it sounds as though the range of items is quite broad. I look forward to seeing what they can do. ~ */ EXTERN ~MGAPPR03~ 11
END

IF ~~ THEN pc_apprentices_02
SAY ~This is not a game, <CHARNAME>. I will shut up for now but I hope as hell that you didn't bet too high!~
IF ~~ THEN EXTERN MGAPPR02 16
END

IF ~~ THEN pc_apprentices_03
SAY ~You... you can't order me to keep quiet if I see a risk for these young people's lifes!~
IF ~~ THEN + pc_apprentices_02
END

/* Brandock gives his 2c */

IF ~Global("C#Brandock_HasApprentices","GLOBAL",0)
Global("C#Brandock_MageApprentices","GLOBAL",1)~ THEN apprentice_advice
SAY ~Don't forget that these apprentices aren't very experienced, yet. If their tutoring up to now went like mine, they teached themselves most of it and out of books, probably. Always chose the easiest task for them, <CHARNAME>. And never let them try anything complicated or dangerous!~ [c#ablank]
++ ~Why so?~ + apprentice_advice_01
+ ~Global("PCSphere","GLOBAL",1)~ + ~It is me who is their teacher, Brandock, not you.~ + apprentice_advice_02
++ ~If they don't succeed then maybe they aren't fit for being mages. Ever thought of that?~ + apprentice_advice_04 
END

IF ~~ THEN apprentice_advice_01
SAY ~It would end in a catastrophy, most probably!~
IF ~~ THEN + apprentice_advice_05
END

IF ~~ THEN apprentice_advice_02
SAY ~I know! I can't keep quiet, though.~
IF ~~ THEN + apprentice_advice_05
END

IF ~~ THEN apprentice_advice_03
SAY ~Thank you for being considerate. I appreciate it a lot.~
IF ~~ THEN DO ~SetGlobal("C#Brandock_MageApprentices","GLOBAL",2)~ EXIT
END

IF ~~ THEN apprentice_advice_04
SAY ~If they die during their time as apprentices they won't be fit for being mages, either!~
IF ~~ THEN + apprentice_advice_05
END

IF ~~ THEN apprentice_advice_05
SAY ~I'm not talking about wasted ingredients or a burnt finger. I am talking death. There were two deaths in my class, one of them while attempting a Ring of Protection... I know you are a capable mage, but you have no experience with how the Coweld Wizards design their teaching. Because I have and I got the impression that they minimize unwanted competition by letting the young mages die during their time as apprentice...~
++ ~I will heed your warning, Brandock. Thank you for your advice.~ + apprentice_advice_03
++ ~I'll do what I can to prevent that.~ + apprentice_advice_03
++ ~I don't really care, Brandock. If they aren't up to the tasks then maybe they shouldn't practice magic at all.~ DO ~SetGlobal("C#Brandock_MageApprentices","GLOBAL",5)~ + apprentice_advice_06
END

IF ~~ THEN apprentice_advice_06
SAY ~And because they can't master the task their lives is forfeit?!~
IF ~~ THEN + apprentice_advice_07
END

IF ~Global("C#Brandock_ApprenticeLeave","GLOBAL",1) Global("C#Brandock_MGAPPR02_9","GLOBAL",1)~ THEN apprentice_advice_07
SAY ~Ah well, what am I trying to accomplish here, anyway. Know what? You and the Cowled Wizards - it's a perfect fit. Plus, you don't need me any more. You have Teos investigating about Soellhold, and everything will be fine. But *I* won't stay and watch any more of those young mages die. Fare well, <CHARNAME>!~ [c#ablank]
IF ~Global("C#BrandockJoined","GLOBAL",1)~ THEN DO ~SetInterrupt(FALSE)
SetGlobal("C#Brandock_Gone","GLOBAL",1)
SetGlobal("C#Brandock_MageApprentices","GLOBAL",5)
TakePartyItem("c#br0001")
TakePartyItem("c#br0007")
LeaveParty()
ChangeAIScript("",DEFAULT)
SetLeavePartyDialogFile() EscapeArea() SetInterrupt(TRUE)~ EXIT
IF ~Global("C#BrandockJoined","GLOBAL",2)~ THEN DO ~SetInterrupt(FALSE)
SetGlobal("C#Brandock_Gone","GLOBAL",1)
SetGlobal("C#Brandock_MageApprentices","GLOBAL",5)
SetGlobal("C#BrandockJoined","GLOBAL",0)
RemoveFamiliar()
ActionOverride("C#Brandock",ChangeAIScript("",DEFAULT))
ChangeEnemyAlly(Myself,NEUTRAL) 
TakePartyItem("c#br0001")
TakePartyItem("c#br0007")
EscapeArea() SetInterrupt(TRUE)~ EXIT
END

/* if PC chose difficult task */
IF ~Global("C#Brandock_ApprenticeLeave","GLOBAL",1)~ THEN apprentice_advice_08
SAY ~You said you would heed my advice, <CHARNAME>. Well, you didn't. Another apprentice will die - if not all.~ [c#ablank]
IF ~~ THEN DO ~SetGlobal("C#Brandock_ApprenticeLeave","GLOBAL",2)~ + apprentice_advice_07
END

END //APPEND

/* in case PC doesn't teach at all... */

/*
IF ~~ THEN BEGIN 9 // from:
  SAY #41760 /* ~I think we should enchant a Ring of Wizardry.~ */
  IF ~~ THEN EXTERN ~MGAPPR01~ 12
END
*/
INTERJECT MGAPPR02 9 C#Brandock_MGAPPR02_9
== c#brandj IF ~Global("C#Brandock_HasApprentices","GLOBAL",0)
OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN ~What?! A Ring of Wizardry? Are you insane? <CHARNAME>, say something, you can't be serious! They will all kill themselves!~
END
  IF ~~ THEN REPLY #41745 /* ~Very well. What is it that you are studying right now?~ */ EXTERN ~MGAPPR01~ 2
++ ~Brandock, shut up. I can't be bothered with this. What were you saying, Morul?~ DO ~SetGlobal("C#Brandock_ApprenticeLeave","GLOBAL",1)~ EXTERN MGAPPR02 9



/* What? I got a message that you needed to speak to me. That is why I am here. I sent you no message. */
I_C_T ~MGTEOS01~ 60 C#Brandock_MGTEOS01_60
== c#brandj IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN ~Uh-oh...~
END

/* Well, that was certainly unpleasant. Sorry I... sorry I wasn't much help, but I... uh... sprained a casting finger. Heh... */
I_C_T ~MGTEOS01~ 62 C#Brandock_MGTEOS01_62
== c#brandj IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN ~(snort!)~
END
