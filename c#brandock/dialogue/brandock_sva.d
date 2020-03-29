

/* after leaving Ebrel's house, look at the sphere! */
CHAIN
IF ~Global("C#Brandock_SlumSphere","GLOBAL",1)~ THEN C#BrandJ slum_sphere
~And here you see the sphere, not to say The Sphere, which appeared two months ago from nowhere, swallowing two and a half houses with Mister Lorry, Misses Lorry and their baby still inside theirs. But 'you should be glad there weren't any more casualties, citizen!'~ [c#ablank] DO ~SetGlobal("C#Brandock_SlumSphere","GLOBAL",2)~ 
= ~It must have been like Avernus opening a portal when the sphere materialized. Not because any demons appeared, but by the degree people went crazy with fear - and I have to say, *am* I glad I wasn't here at the time. But since then it was just sitting there. The Cowled Wizards have a *huge* interest in opening that thing, but nothing they tried showed any effect.~
== HOMELESS IF ~See("HOMELESS") !Dead("HOMELESS") !StateCheck("HOMELESS",CD_STATE_NOTVALID)~ THEN ~You would think they could open that door - and see whether my house is still inside?~
== C#BrandJ IF ~See("HOMELESS") !Dead("HOMELESS") !StateCheck("HOMELESS",CD_STATE_NOTVALID)~ THEN ~Misses, as my cousin already said, feel free to use his house until your daughter comes to take you to her. The sphere won't go anywhere, for now, I am sure. Get some rest, will you?~
== HOMELESS IF ~See("HOMELESS") !Dead("HOMELESS") !StateCheck("HOMELESS",CD_STATE_NOTVALID)~ THEN ~Oh... I thank you, Mr. Mage. It is very generous of you, Mr. Mage. But, um, my daughter will be here any time, so... do not worry, Mr. Mage.~
== C#BrandJ IF ~See("HOMELESS") !Dead("HOMELESS") !StateCheck("HOMELESS",CD_STATE_NOTVALID)~ THEN ~(sigh) I forgot I'm 'Mr. Mage' now and stirr fear in some people. Good day to you, ma'am.~
== LANDLORD IF ~See("LANDLORD") !Dead("LANDLORD") !StateCheck("LANDLORD",CD_STATE_NOTVALID)~ THEN ~My house is in there! AND IT'S STILL MINE!~
== C#BrandJ IF ~See("LANDLORD") !Dead("LANDLORD") !StateCheck("LANDLORD",CD_STATE_NOTVALID)~ THEN ~Maybe you should take a rest, too.~
== HIST1 IF ~See("HIST1") !Dead("HIST1") !StateCheck("HIST1",CD_STATE_NOTVALID)~ THEN ~I tried to talk to other Cowled wizards about the sphere, but it seems noone has time to listen.~
== C#BrandJ IF ~See("HIST1") !Dead("HIST1") !StateCheck("HIST1",CD_STATE_NOTVALID)~ THEN ~Well, that's because they, er, we pretend not to be interested in it. I assure you, they know everything you could tell about it already. Did you talk to this man, <CHARNAME>? He knows some very interesting things about this sphere. Albeit not why it is here. I guess everyone is puzzling over that one.~
EXIT

APPEND C#BrandJ

/* PC approaches Councellors Building */

IF ~Global("C#BrandockAboutTeos","GLOBAL",1)~ THEN ebrel_house_11
SAY ~(winces) I guess I need to give you a warning before we go into the Councellor's Building. See, Teos, the official emissary was my teacher - the Cowled Wizard I graduated with. And even if we meet another Coweld Wizard... most of them would know Teos, so it's well possible they also know me.~ [c#ablank]
++ ~What about you and Teos?~ + ebrel_house_13
++ ~Did anything special happen?~ + ebrel_house_13
++ ~So?~ + ebrel_house_12
++ ~That's how it usually goes, I guess.~ + ebrel_house_12
++ ~In that case, I'd rather you wouldn't accompany me. I can't take any risk in this.~ + ebrel_house_14
END

IF ~~ THEN ebrel_house_12
SAY ~Last time I met one, it went like 'Oh, Brandock, weren't you graduate of Teos? He is emissary now, did you know?' Yes, I do know *that*. That man and emissary! (scoffs)~
= ~Another one I met at my cousin's went like 'Ah, now that is the last of Teos' graduates? Yes, yes, Teos told a *lot* about this cousin of yours.' Ugh.~
= ~I'm... I'm just saying. There is nothing amiss, but there could be snarky remarks. Or worse.~
++ ~Or worse? What do you mean?~ + ebrel_house_18
++ ~Or your presence would turn things to the better. Who knows.~ + ebrel_house_15
+ ~InParty("t2val")~ + ~Seeing how we have another official Cowled Wizard with us, I am sure we will be alright.~ + ebrel_house_15
++ ~I don't see a problem.~ + ebrel_house_15
++ ~I need you to stand above their snarky remarks. We have family to inquire about.~ + ebrel_house_15
+ ~Global("C#IM_ImoenStays","GLOBAL",0)~ + ~Are you suggesting you should not come inside?~ + ebrel_house_16
+ ~!Global("C#IM_ImoenStays","GLOBAL",0)~ + ~Are you suggesting you should not come inside?~ + ebrel_house_16_01
END

END //APPEND c#brandj

CHAIN
IF ~~ THEN c#brandj ebrel_house_13
~Oh, nothing special, you know, just the normal thing between a mage and his apprentice who couldn't stand each other... I never gave him a reason to reject me, magic-wise, I managed all the tasks. And he didn't treat me wrong, either. But he doesn't think of me too well. And I not of him, obviously. I 'trained' with him, alright. That man never ever *tought* me anything, I took it all out of the books. He is lazy and a jerk. But don't tell anyone I said that!~ 
// ## correct to Valerie's BGII DV when available
== c#brandj IF ~InParty("t2val")~ THEN ~Did Valerie hear that? Phew, no, I think not.~
END
IF ~~ THEN + ebrel_house_12

APPEND c#brandj

IF ~~ THEN ebrel_house_14
SAY ~Oh, but I'm not saying that there is anything in the bushes with me and the Cowled Wizards. It's just...~
IF ~~ THEN + ebrel_house_12
END

IF ~~ THEN ebrel_house_15
SAY ~You are right... Of course. (exhales)~
IF ~~ THEN + ebrel_house_17
END

IF ~~ THEN ebrel_house_16
SAY ~What?! No! I *want* to go in there and ask about Imoen - and Ebrel! Please, don't make me do this on my own!~
IF ~~ THEN + ebrel_house_17
END

IF ~~ THEN ebrel_house_16_01
SAY ~What?! No! I *want* to go in there and ask about Irenicus - and Ebrel! Please, don't make me do this on my own!~
IF ~~ THEN + ebrel_house_17
END

IF ~~ THEN ebrel_house_17
SAY ~I am ready whenever you are. But, <CHARNAME>... I don't think they will *tell* us anything. And I'm not even sure it's bad will that they won't tell us. It's also possible the Wizards we asked *don't know* themselves.~
++ ~How is that? They should know what they've done, shouldn't they?~ + ebrel_house_19
++ ~Stop making me nervous, Brandock.~ + ebrel_house_20
++ ~Why so pessimistic?~ + ebrel_house_20
++ ~We'll see, Brandock.~ + ebrel_house_21
END

IF ~~ THEN ebrel_house_18
SAY ~I don't know... someone could snicker... It's probably nothing.~
++ ~Or your presence would turn things to the better. Who knows.~ + ebrel_house_15
+ ~InParty("t2val")~ + ~Seeing how we have another official Cowled Wizard with us, I am sure we will be alright.~ + ebrel_house_15
++ ~I don't see a problem.~ + ebrel_house_15
++ ~I need you to stand above their snarky remarks. We have family to inquire about.~ + ebrel_house_15
+ ~Global("C#IM_ImoenStays","GLOBAL",0)~ + ~Are you suggesting you should not come inside?~ + ebrel_house_16
+ ~!Global("C#IM_ImoenStays","GLOBAL",0)~ + ~Are you suggesting you should not come inside?~ + ebrel_house_16_01
END

IF ~~ THEN ebrel_house_19
SAY ~You shouldn't picture the Cowled Wizards to be a well organised, hirarchical organisation. Well, they surely do have hirarchy. But apart from that, organisation is not centralized.~
IF ~~ THEN + ebrel_house_21
END

IF ~~ THEN ebrel_house_20
SAY ~I'm sorry, <CHARNAME>, that's not my intention. I'm only stating conclusions coming from my own experience.~ 
IF ~~ THEN + ebrel_house_19
END

IF ~~ THEN ebrel_house_21
SAY ~You have to keep in mind that Spellhold is run by its own organization. Take this and the way the Cowled Wizards are organised, it is well possible noone we ask will be able to give us answers that would actually help us.~
IF ~~ THEN DO ~SetGlobal("C#BrandockAboutTeos","GLOBAL",2)~ EXIT
END

END //APPEND c#brandj


/* Madeen, Tolgerias' servant */

/* I am Madeen.  I represent one of the masters of the Athkatla order of the Cowled Wizards.  He seeks to employ you in a matter of some urgency. */
I_C_T ~MADEEN~ 1 C#Brandock_MADEEN_1
== ~c#brandj~ IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN ~What? This is great! We were on our way to seek out the emissary in a rather urgent matter, but this is even better. <CHARNAME>, I tell you, everything will turn out alright! Let's go in and hear what they've got to say to what happened!~
END


/* Councellor's Building - Corneil */

I_C_T ~CORNEIL~ 0 C#Brandock_CORNEIL_0
== ~c#brandj~ IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN ~Oh, <PRO_HESHE> has very pressing business I assure you!~
END

I_C_T ~CORNEIL~ 1 C#Brandock_CORNEIL_1
== ~c#brandj~ IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN ~Well, yes and no. The person in question used magic for the first time in this town and therefore was supposed to receive a warning, maybe a fee. She was, however, taken by the Cowled Wizards and did not return yet.~
== ~CORNEIL~ IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN ~(snort!) If she was taken, she was a deviant and was brought to her rightful place. Do you mean to question the Cowled Wizards' authority in the matter?!~
== ~c#brandj~ IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN ~No, only their performance. We seek an audience with the emissary about this!~
== ~CORNEIL~ IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)
InMyArea("Tolger")~ THEN ~I do not hand out audiences. You are lucky there is a Cowled Wizard present currently! Turn around, he is right there!~
== ~CORNEIL~ IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)
!InMyArea("Tolger")~ THEN ~I do not hand out audiences for the Cowled Wizards! They will hear about your request, and will come to you!~
== ~c#brandj~ IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)
!InMyArea("Tolger")~ THEN ~(sigh) Very well.~
END

I_C_T ~CORNEIL~ 5 C#Brandock_CORNEIL_1
== ~c#brandj~ IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN ~Wait! I have a question. I'm Brandock Deepwater, Cowled Wizards' Associate! We seek an audience with the emissary!~
== ~CORNEIL~ IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)
InMyArea("Tolger")~ THEN ~I do not hand out audiences. You are lucky there is a Cowled Wizard present currently! Turn around, he is right there!~
== ~CORNEIL~ IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)
!InMyArea("Tolger")~ THEN ~I do not hand out audiences for the Cowled Wizards! They will hear about your request, and will come to you!~
== ~c#brandj~ IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)
!InMyArea("Tolger")~ THEN ~(sigh) Very well.~
END


/* Tolgerias, inside Councellor's Building */
I_C_T ~TOLGER~ 0 C#Brandock_TOLGER_0
== ~c#brandj~ IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN ~My Lord Tolgerias! We are so thankful you come to us in this very urgent matter! Please, do tell us what exactly happened at the promenade? How was Ebrel killed? Where was the young w...~
== ~TOLGER~ IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN ~Ach, this constant babbling! Brandock, I am not here to talk to you about the fight at the promenade. I was not there, I do not know what happened!~
== ~c#brandj~ IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN ~You are here for a completely different matter? And here I was, thinking you came *because* of what happened... Then, please tell the emissary that <CHARNAME> is seeking an audience, will you do so? And... and what should I do now? You *know* Ebrel's dead, right?~
== ~TOLGER~ IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN ~I have a far better task for you to prove yourself than mixing alchemicals, young wizard - seeing you accompanying <CHARNAME>, the task I offer <PRO_HIMHER> will also be your next assignment. Do as I request, and I see to an audience with Teos in return!~
END

I_C_T ~TOLGER~ 15 C#Brandock_TOLGER_15
== ~c#brandj~ IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN ~Dang, <CHARNAME>, are you sure?~
== ~TOLGER~ IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN ~Brandock, for your own good, I expect you to make <PRO_HIMHER> change <PRO_HISHER> mind!~
END



/* after asking in the Council Building and getting no answer (outside the building) */

CHAIN
IF ~Global("C#Brandock_AskedCouncBuild","GLOBAL",1)~ THEN c#brandj comment_infostatus
~(sigh) No answer to our questions about the promenade fight. No emissary to talk to.~ [c#ablank]
== c#brandj IF ~Global("HiredByCowled","GLOBAL",1)
!Dead("TOLGER") !Dead("TOLGER2")~ THEN ~Tolgerias is the one we depend on to get an audience, but we need to make his errand, first. This is so typical!~
== c#brandj IF ~GlobalGT("C#Brandock_TOLGER_refused","GLOBAL",0)
!Dead("TOLGER") !Dead("TOLGER2")~ THEN ~Tolgerias was the one to ask about an audience, but there is no Tolgerias any more - even worse, we *angered* him... (scoffs) You know, if we are 'lucky' this could lead to a meeting with Teos alright - in terms of a follow up I am not sure I want to have.~
END
++ ~Is there no other way to get in contact with the Cowled Wizards?~ + comment_infostatus_03
++ ~You haven't been a great help, you know.~ + comment_infostatus_01
++ ~Thank you for trying, Brandock.~ + comment_infostatus_02
++ ~The way the Cowled Wizards seem to stand above the law I fear there is nothing else we can do legally.~ + comment_infostatus_05
++ ~I'll find my own way.~ + comment_infostatus_06


APPEND c#brandj

IF ~~ THEN comment_infostatus_01
SAY ~I *know*!~
++ ~Is there no other way to get in contact with the Cowled Wizards?~ + comment_infostatus_03
++ ~Thank you for trying, Brandock.~ + comment_infostatus_02
++ ~The way the Cowled Wizards seem to stand above the law I fear there is nothing else we can do legally.~ + comment_infostatus_05
++ ~I'll find my own way.~ + comment_infostatus_06
END

IF ~~ THEN comment_infostatus_02
SAY ~Thanks. I really tried.~
++ ~Is there no other way to get in contact with the Cowled Wizards?~ + comment_infostatus_03
++ ~You haven't been a great help, you know.~ + comment_infostatus_01
++ ~The way the Cowled Wizards seem to stand above the law I fear there is nothing else we can do legally.~ + comment_infostatus_05
++ ~I'll find my own way.~ + comment_infostatus_06
END

IF ~~ THEN comment_infostatus_03
SAY ~Not that I know of. Did I mention that one does not seek them out but they will come to you? There is a headquarter of sorts for their meetings somewhere - but I really don't know where.~ 
IF ~~ THEN + comment_infostatus_04
END

IF ~~ THEN comment_infostatus_04
SAY ~Ah, be assured: Teos will *know* we want to talk to him. Maybe they are discussing the matter as we speak!~
IF ~~ THEN + comment_infostatus_06
END

IF ~~ THEN comment_infostatus_05
SAY ~The term 'legally' in your statement makes me a bit nervous, you know.~
IF ~~ THEN + comment_infostatus_04
END

IF ~~ THEN comment_infostatus_06
SAY ~I fear, we'll have to wait whether Teos wants to talk to *us* - and in the meantime, do what we were told to do to proceed with the possibilities we have, vague as they might be.~
IF ~~ THEN DO ~SetGlobal("C#Brandock_AskedCouncBuild","GLOBAL",2)~ EXIT
END


/* first meeting with Teos: greetings and questions about Ebrel & Imoen/Irenicus => everything related to mage stronghold is on brandock_sphere.d */



/* [1st dialogue after joining] */

IF ~Global("C#Brandock_Dialog","GLOBAL",202)~ THEN first_join
SAY ~I have to say, <CHARNAME>. I anticipated a reunition with you. And by all the places you could end up, it has to be Athkatla, the capital of my home land. What a coincidence!~ [c#ablank]
++ ~At least something good came out of my kidnapping.~ + first_join_01
++ ~What a coincidence, indeed.~ + first_join_02
++ ~I do enjoy your presence but I wished it was under different circumstances.~ + first_join_02
++ ~Brandock, I let you join so you can help me, not to converse with you.~ + first_join_04
END

IF ~~ THEN first_join_01
SAY ~You... you mean my presence? No, surely you meant the other way around? Yes, having you here is great, indeed.~
++ ~Thank you, but no, I meant your presence is a good thing for *me*, Brandock.~ + first_join_03
++ ~Indeed.~ + first_join_02
++~What? No, I meant that I wanted to go to Athkatla at some point, anyway.~ + first_join_02
END

IF ~~ THEN first_join_02
SAY ~But never I would have imagined your return to be such a disaster, with you having to suffer so much... and with a quarter of the Promenade being destroyed. You vanished from Baldur's Gate and from the rest of the world without a sound, and reappeared with the loudest boom I can imagine... I am strongly surprised no-one is coming for us to put the blame. Actually, I do not trust this peace. We seem to be strangely ignored by the authorities. (mutters) I am sure *someone* will remember when I'll apply for a civil position. If I'll ever do that.~
+ ~Global("C#Brando_PIDHowYouFared","LOCALS",0)~ + ~You haven't applied yet?~ + first_join_05
+ ~Global("C#Brando_PIDHowYouFared","LOCALS",0)~ + ~What where you up to since we parted?~ + first_join_06
+ ~Global("C#Brando_PIDHowYouFared","LOCALS",0)~ + ~Let's go on, Brandock.~ + first_join_04
IF ~Global("C#Brando_PIDHowYouFared","LOCALS",1)~ THEN + first_join_04
END

IF ~~ THEN first_join_03
SAY ~Oh! I... Really? Thank you for saying that, <CHARNAME>!~
IF ~~ THEN + first_join_02
END

IF ~~ THEN first_join_04
SAY ~I'll shut up. For now.~
IF ~~ THEN DO ~SetGlobal("C#Brandock_Dialog","GLOBAL",203)~ EXIT
END

IF ~~ THEN first_join_05
SAY ~Well, this all needs time. I need to have a standing with the Cowlded Wizards before even considering that.~
IF ~~ THEN + first_join_06
END

IF ~~ THEN first_join_06
SAY ~I met with my family, first. My mother had been ill but was already recovering, thank the gods.~
IF ~~ THEN + first_join_07
END

IF ~~ THEN first_join_07
SAY ~Then I talked to my former teacher, met with Ebrel and was assigned to the experiments - and so it all started.~
IF ~~ THEN + first_join_04
END

END //APPEND







/* second friendship dialogue */

CHAIN
IF ~Global("C#Brandock_Dialog","GLOBAL",204)~ THEN C#BrandJ gaelan
~You were approached by this Gaelan right after escaping? After this short time he already knew about your presence here, your time of torment in this mage's hands, and what happened after the Cowled Wizards interfered at the Promenade! How did he know all these things? How is that possible?~ [c#ablank]
== C#BrandJ IF ~Global("WorkingForAran","GLOBAL",1)~ THEN ~I *know* it's the Shadow Thieves, but still, it is impressive... Although I shouldn't think too much about what it implies.~
END
+ ~!Dead("GAELAN") !Dead("GAELAN2")~ + ~They didn't hear it from Irenicus, I don't think so.~ + gaelan_01
+ ~OR(2) Dead("GAELAN") Dead("GAELAN2")~ + ~They didn't hear it from Irenicus, I don't think so.~ + gaelan_02
+ ~!Dead("GAELAN") !Dead("GAELAN2")~ + ~Does it matter? I need help for this.~ + gaelan_01
+ ~OR(2) Dead("GAELAN") Dead("GAELAN2")~ + ~It doesn't matter. Information travels and shady organisations powerful enough know how to get them.~ + gaelan_02
+ ~OR(2)
GlobalGT("TalkedToBodi","GLOBAL",0)
GlobalGT("B!Alternatives","GLOBAL",4)~ + ~Considering I got other offers as well, I guess it's just a sign of the impact the promenade fight is having on the power structure in this town.~ + gaelan_02
++ ~What do you meant to imply?~ + gaelan_01
++ ~A powerful organisation does have its sources of information, or it wouldn't be a powerful organisation.~ + gaelan_01
++ ~You are right, it *is* suspicious. As if *they* knew about my presence before I escaped. I have to be careful whom I trust.~ + gaelan_01

APPEND C#BrandJ

IF ~~ THEN gaelan_01
SAY ~I didn't mean to imply you shouldn't trust his offer, <CHARNAME>. I believe him that it's a powerful organisation, and that's... scary. But it's also reassuring, that you would get help so quickly. Yes, I should hold on to this thought.~
IF ~~ THEN + gaelan_04
IF ~Global("C#IM_ImoenStays","GLOBAL",0)~ THEN + gaelan_03
END

IF ~~ THEN gaelan_02
SAY ~I am not surprised other offers followed. But that first meeting...~
IF ~~ THEN + gaelan_04
IF ~Global("C#IM_ImoenStays","GLOBAL",0)~ THEN + gaelan_03
END

IF ~~ THEN gaelan_03
SAY ~If I'd known about this when first we met, I wouldn't have talked about Imoen only having to pay a fee. I feel really silly now for only thinking something like that. The poor woman...~
IF ~~ THEN + gaelan_04
END

IF ~~ THEN gaelan_04
SAY ~By the sound of it, we need to break into Spellhold. I... I am so much hoping there is a less destructive way. A way that doesn't need us to cross the Cowled Wizards. But it surely doesn't sound like that... What will we do now? Other than earning gold to pay some shady figure from some shady organization to help us to get to the place we need to go, probably a magic asylum designed to hold defiant mages.~
+ ~Global("TalkedToTolgerias","GLOBAL",1)~ + ~Talking to a Cowled Wizard in the Counsel Building didn't bring much information. Maybe there's other possibilities to speak to one?~ + ebrel_house_10_0
+ ~Global("TalkedToTolgerias","GLOBAL",0)~ + ~I still want to find a Cowled Wizard I can ask directly.~ + ebrel_house_10
++ ~Well, I am still hoping for alternatives, to be honest.~ + ebrel_house_08_04
++ ~I guess that sums it up, yes.~ + ebrel_house_09
END

IF ~~ THEN ebrel_house_08_04
SAY ~What would they be? Other than asking the Cowled Wizards directly or playing along with a powerful organisation's game. Because as much as I'm hoping for things to settle by themselves, my gut feeling tells me that we will have to fight for what we try to achieve.~
+ ~Global("TalkedToTolgerias","GLOBAL",1) // [## Brandock was there, too]
~ + ~Talking to a Cowled Wizard in the Counsel Building didn't bring much information. Maybe there's other possibilities to speak to one?~ + ebrel_house_10_0
+ ~Global("TalkedToTolgerias","GLOBAL",0)~ + ~Talking to a Cowled Wizards sounds like a good idea.~ + ebrel_house_10
++ ~We'll have to see. I do need to regain some strength before starting a rescue mission, anyway.~ + ebrel_house_09
++ ~I don't know yet, Brandock. Talking about it now surely won't help.~ + ebrel_house_09
END

IF ~~ THEN ebrel_house_09
SAY ~Very well. (exhales) Let's go!~
IF ~~ THEN DO ~SetGlobal("C#Brandock_Dialog","GLOBAL",205)~ EXIT
END

IF ~~ THEN ebrel_house_10
SAY ~Well, I am sure there will be an emissary of the Cowled Wizards in the Councel Building, if we go looking.~
IF ~~ THEN + ebrel_house_09
END

IF ~~ THEN ebrel_house_10_0
SAY ~Well, I guess we'll have to do what this Tolgerias wants of us, first. (grrmph)~
IF ~~ THEN + ebrel_house_09
END


END //APPEND c#brandj






/* Brandock and the circus */

/* ~Very well, then.  I'll not stop you if you wish to risk yourself, citizen. You were warned.~ */
I_C_T ~CIRCG1~ 3 C#Brandock_CIRCG1_3
== ~c#brandj~ IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN ~<CHARNAME>, I thank you from the bottom of my heart that you want to take this on. I don't know anyone from this circus, but since I worked at one myself, I do feel some kind of urge to help them. But, are you sure you want to go in there? You just emerged out of a month of being tormented!~
= ~And... the Cowled Wizards will be here to investigate the circus any minute, probably. I'd rather... not get in their way. They are not happy about citizens doing investigations on their own in magic matters, usually. The guard gave us passage, so we would be in there with city authorities' blessing, but... I'm just not sure it's advisable for you to do it.~
= ~If you feel ready, we will go in there and help, of course. Just... make sure you don't get yourself into their way again, <CHARNAME>. They can be surprisingly resentful if they think you a troublemaker. The last thing you need is not only a mighty mage you are pursuing, but uncountable numbers of mages pursuing you here in the city.~
END


/* ~Meine ... meine Hände ... meine Haut. Endlich wieder real! Dank sei Baervar! Oh, wir müssen Quayle so rasch wie möglich finden ... und Kalah stoppen, bevor er noch mehr Schaden anrichten kann!~ */
I_C_T ~AERIE~ 3 C#Brandock_CircusICT_Kalah
== ~c#brandj~ IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)
GlobalGT("C#Brandock_Shapeshift","GLOBAL",8)~ THEN ~Yeah, it's great isn't it? Changing back from an Ogre into yourself...~
END





APPEND c#brandj

/* PC kept the bookcase (BGT / EET) */

IF ~Global("C#Brandock_BGTTOBG2","GLOBAL",5) PartyHasItem("c#br0003")~ THEN bookcase_01
SAY ~You kept my old teacher's bookcase, I see.~ [c#ablank]
IF ~~ THEN + bookcase_03
END

IF ~Global("C#Brandock_BGTTOBG2","GLOBAL",5) !PartyHasItem("c#br0003")~ THEN bookcase_01
SAY ~You don't happen to have my bookcase somewhere, do you? I was hoping it would at least serve you now.~
++ ~It did, but I lost it while being captured.~ + bookcase_04
++ ~Sorry, it is lost.~ + bookcase_04
++ ~Are you requesting to get it back?~ + bookcase_03
END

IF ~~ THEN bookcase_03
SAY ~I was in such a hurry to leave for home I totally forgot to take it with me... No worries, I am not expecting to get it back. Seeing how I managed to misplace it I guess I kind of lost the right to call it mine.~
IF ~~ THEN DO ~SetGlobal("C#Brandock_BGTTOBG2","GLOBAL",6)~ EXIT
END

IF ~~ THEN bookcase_04
SAY ~That's a pity.~
IF ~~ THEN + bookcase_03
END

END //APPEND



/* ~"Spellhold". I know you have other means for finding your friend, and I suggest you exploit them. The Cowled Wizards are no longer in control of the situation.~ */
I_C_T ~MGTEOS01~ 88 C#Brandock_MGTEOS01_88
== ~c#brandj~ IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN ~What do you mean, 'The Cowled Wizards are no longer in control of the situation'?!~
END



/* Aran.dlg 38 (best A_T_T 39)
Jaheira dazu: Ich habe einiges darüber von den Harfnern gehört. Es ist wohl eher ein Gefängnis oder angeblich so etwas wie ein Irrenhaus, ein Ort, an dem die Leute in Vergessenheit geraten, die 'lästig fallen'.

Aran.dlg: IF ~~ THEN BEGIN 44 // from: 43.0
  SAY #43074 /* ~We are not sure. Spies within the Cowled Wizards tell us that they have not had direct contact with the isle for some time. ~ */ 
*/


I_C_T ~Aran~ 44 C#Brandock_ARAN_44
== ~c#brandj~ IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN ~Well, the asylum keeping to itself is not too uncommon, is it?... Wait, you are talking about your own sources? That's a bad sign, then, indeed!~
END



I_C_T ~Bodhi~ 6 C#Brandock_Bodhi_6
== ~c#brandj~ IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN ~I don't like her, <CHARNAME>... I never thought I'd say this, but I prefer the Shadow Thieves over this.~
END

I_C_T3 ~Bodhi~ 18 C#Brandock_Bodhi_18
== ~c#brandj~ IF ~InParty("C#Brandock") InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN ~I will not go with you on this path, <CHARNAME>... Something dark is radiating from this place, and you scare me. Farewell.~ DO ~SetGlobal("C#Brandock_Gone","GLOBAL",1)
SetGlobal("C#BrandockJoined","GLOBAL",0)
SetLeavePartyDialogFile() LeaveParty() EscapeArea()~
== ~c#brandj~ IF ~Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN ~I will not go with you on this path, <CHARNAME>... Something dark is radiating from this place, and you scare me. Farewell.~ DO ~SetGlobal("C#Brandock_Gone","GLOBAL",1)
SetGlobal("C#BrandockJoined","GLOBAL",0)
RemoveFamiliar()
ActionOverride("C#Brandock",ChangeAIScript("",DEFAULT))
ChangeEnemyAlly(Myself,NEUTRAL) EscapeArea()~
END

/* Bodhi: in case Aster offred her help before her, Brandock would comment the other way around */

I_C_T ~Bodhi~ 12 C#Brandock_Bodhi_12
== ~c#brandj~ IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)
GlobalGT("B!Alternatives","GLOBAL",4)~ THEN ~What? That means the paladins are expecting us to do the exact same thing as the evil vampire does. Funny, how the same thing can be righteous and malevolent at the same time?~
END


/* Inside Asylum, Saemon Havarian */
I_C_T PPSAEM2 4 C#Brandock_PPSAEM2_4
== ~c#brandj~ IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN ~...Or their frustration might aim at us? I don't see the plan working out so well under certain conditions, <CHARNAME>.~
END


/* The Docks, Prebek (XAPPREN1.dlg) & Sanasha (XAPPREN2.dlg) (apprentices, attack because they think it's a test from their master ) [Harper quest] */

/* ~Yes, I remember.  Well, you may be right...perhaps we should ask them?~ */
I_C_T ~XAPPREN2~ 2 C#Brandock_XAPPREN2_2
== ~c#brandj~ IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN ~Yes, please ask us! We do not...~
END



/* Harper quest: kill a mage and his conjured creatures */

/* ~The owner of the house, a mage named Prebek, performs vile experiments... creating beasts which threaten the city.  Destroy them, and we'll allow your wish.~ */
I_C_T ~RYLOCK~ 19 C#Brandock_RYLOCK_19
== ~c#brandj~ IF ~OR(2)
!Dead("XAppren1")
!Dead("XAppren2")
OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN ~A mage? If this is true, then he is either a well-authorized Cowled Wizard, or so powerful the Cowled Wizards do not dare to stop him. Either way, I am not sure I want to confront this man. We can talk about going after the creatures, though.~
END

/* ~Excellent.  I understand you have completed the task at the house.  The Harpers are grateful.  You may go inside...but I warn you to keep to the first floor.~ */
I_C_T ~RYLOCK~ 37 C#Brandock_RYLOCK_37
== ~c#brandj~ IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN ~It was apprentices, and it was cobolds! Care to explain why you exaggerated the way you did when sending us after them? Oh, no, of course not. Just go on ignoring me!~
END





/* Edwin join quest: kill Rayic Getras, a Cowled Wizard */

/* ~Sie haben einen Agenten geschickt, der meine Aktivitäten untersuchen soll. So etwas schätze ich überhaupt nicht. Diese Beleidigung muss mit der Ermordung des Verhüllten Agenten bestraft werden.~ */
I_C_T ~EDWIN~ 2 C#Brandock_EDWIN_2
== c#brandj IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock")~ THEN ~(pout)~
END

/* ~Wenn Ihr Rayic Gethras findet, tötet ihn. Befragt ihn vorher, wenn es Euch gefällt. Jeder Hinweis auf die Verhüllten Magier kann nützlich sein. Ein wenig Folter könnte ihn gesprächiger machen.~ */
I_C_T ~EDWIN~ 4 C#Brandock_EDWIN_4
== c#brandj IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock")~ THEN ~We won't... I mean, we won't do that, will we? <CHARNAME>, why are we even talking to this man?~
END




/* after entering the Government District: Delon, tells about the problems in Umar Hills */

I_C_T ~DELON~ 19 C#Brandock_DELON_19
== ~c#brandj~ IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN ~Imnesvale! But don't you have a Cowled Wizard there? Jermien is his name. Did he have a look into the matter?~
== ~c#brandj~ IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN ~Wait, you don't have to answer that. What a question... Of course he hasn't. (sigh)~
END


/* Jermien, Cowled Wizard in the Umar Hills JUGJER01.dlg */

/* ~And I, since you ask, am none other than Jermien...licensed Cowled Wizard for this region.  So you needn't run off and attempt to report me, <GIRLBOY>.~ */


I_C_T ~JUGJER01~ 2 C#Brandock_JUGJER01_2
== c#brandj IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock")~ THEN ~Report you? We would never... hold on. The thought that *I* could hold the power of denunciation over a Cowled Wizard is an intriguing thought... until the fact that it's the Cowled Wizards the report would go to comes to mind. Nah, we won't do that.~
END


