/* ToB */

//Fate spirit

/* conti game : GlobalGT("C#BrandockSpawn","GLOBAL",9) */

EXTEND_TOP FATESP 6

/* new game */
  IF ~Global("C#BrandockSpawn","GLOBAL",0)
Global("C#Brandock_SummonedVariable","GLOBAL",0)~ THEN 
   REPLY ~Bring me Brandock, the mage.~  
    DO ~SetGlobal("C#Brandock_SummonedVariable","GLOBAL",1)~ GOTO 9

/* conti game: Brandock BG2 is dead */
  IF ~GlobalGT("C#BrandockSpawn","GLOBAL",0)
Global("C#Brandock_SummonedVariable","GLOBAL",0)
Dead("C#Brandock")
~ THEN REPLY ~Bring me Brandock, the mage.~ DO ~SetGlobal("C#Brandock_SummonedVariable","GLOBAL",4)
~ GOTO 10    /* ~I cannot do as you ask, child of Bhaal. The one you seek is dead and thus forever beyond my reach. His thread no longer connects with yours.~ */

/* conti game: Brandock was not in party BG2 */
  IF ~GlobalGT("C#BrandockSpawn","GLOBAL",0)
Global("C#Brandock_SummonedVariable","GLOBAL",0)
!Global("C#Brandock_BeenInParty","GLOBAL",2)
!Dead("C#Brandock")
~ THEN REPLY ~Bring me Brandock, the mage.~ DO ~SetGlobal("C#Brandock_SummonedVariable","GLOBAL",4)
~ GOTO 7  /* ~I cannot do as you ask, child of Bhaal. The thread of the one you speak is beyond my sight, as it no longer touches yours.~ */  
                                    
/* conti game: Brandock BG2 in party */ 
  IF ~GlobalGT("C#BrandockSpawn","GLOBAL",0)
Global("C#Brandock_SummonedVariable","GLOBAL",0)
Global("C#Brandock_BeenInParty","GLOBAL",2)
!Dead("C#Brandock")
~ THEN REPLY ~Bring me Brandock, the mage.~ DO ~SetGlobal("C#Brandock_SummonedVariable","GLOBAL",1)
~ GOTO 9

END


APPEND C#brandJ

/* Cespenar */
IF ~Global("C#BranToB_Cespenar","GLOBAL",1)~ THEN cespenar
SAY ~[Brandock]Watch out, there's an imp over there! Prepare for battle!! Er... it's actually not hostile. Alright. - This place freaks me out, <CHARNAME>...~
IF ~~ THEN DO ~SetGlobal("C#BranToB_Cespenar","GLOBAL",2)~ EXIT
END

// Pocketplane
IF ~Global("C#BranToB_PPG","GLOBAL",1)~ THEN pocketplane
SAY ~[Brandock]So, we are in hell, again. You-you really seemed to like it here, last time we visited... Forgive me. My mind is still trying to head my wrap around what is happening. Er, I meant my wrap is trying to head my mind around - ugh.~
++ ~Don't worry. I feel pretty similar.~ DO ~SetGlobal("C#BranToB_PPG","GLOBAL",2)~ + pocketplane_00_0
++ ~My "wrap" is also not "headed" around my mind yet, either.~ DO ~SetGlobal("C#BranToB_PPG","GLOBAL",2)~ + pocketplane_00_0
++ ~Indeed. I can't help it but feel drawn to this place. It's so cosy and... *warm*!~ DO ~SetGlobal("C#BranToB_PPG","GLOBAL",2)~ + pocketplane_11
++ ~Must be in the blood. Every time I come here I feel so at *home*...~ DO ~SetGlobal("C#BranToB_PPG","GLOBAL",2)~ + pocketplane_08
+ ~Global("C#Brandock_SoDEnd","GLOBAL",0)~ + ~Brandock, I just learned that I am the one Aloundo's Prophecies are talking about, and all you can think of is making stupid jokes?~ DO ~SetGlobal("C#BranToB_PPG","GLOBAL",2)~ + pocketplane_09
+ ~GlobalGT("C#Brandock_SoDEnd","GLOBAL",0)~ + ~Brandock, I just learned that I am the one Aloundo's Prophecies are talking about, and all you can think of is making stupid jokes?~ DO ~SetGlobal("C#BranToB_PPG","GLOBAL",2)~ + pocketplane_10
++ ~Let's not talk about this.~ DO ~SetGlobal("C#BranToB_PPG","GLOBAL",2)~ + pocketplane_07
END

IF ~~ THEN pocketplane_00_0
SAY ~It-it's a lot to take in, isn't it?~
IF ~~ THEN + pocketplane_00
END

IF ~~ THEN pocketplane_00
SAY ~[Brandock]Considering it, Irenicus was an intruder into your realm... No wonder he didn't stand a chance! It was your home play, so to say. That's a really funny thought...~
++ ~Brandock, I am sincerely glad you didn't come to that conclusion when we were facing Irenicus. "<CHARNAME>, see this as a home play! Yay, <CHARNAME>, go!" I really would not have been in the mood to hear any of that nonsense then.~ + pocketplane_01
++ ~It surely didn't feel that way when fighting him.~ + pocketplane_02
++ ~I'm glad to see you are finding your humor again.~ + pocketplane_02
++ ~Brandock, your humor is tiring me.~ + pocketplane_07
++ ~Let's not talk about this.~ + pocketplane_07
END

IF ~~ THEN pocketplane_01
SAY ~[Brandock]Boy, am I glad I didn't pull out the pompons then! - Just kidding.~
IF ~~ THEN + pocketplane_02
END

IF ~~ THEN pocketplane_02
SAY ~[Brandock]I am still surprised Irenicus had all those hell creatures there to help, though. They should have served you!~
++ ~(giggle) Yes, I really should post a complaint to the Hell Resources Management Department!~ + pocketplane_04
++ ~I am glad it's not like that. The thought of bhaaltors waiting for my orders is really disturbing.~ + pocketplane_03
++ ~I think he just summoned them. It's not like we didn't have any help, isn't it.~ + pocketplane_05
++ ~Brandock, your humor is tiring me.~ + pocketplane_07
++ ~Let's not talk about this.~ + pocketplane_07
END

IF ~~ THEN pocketplane_03
SAY ~[Brandock]I see your point. It's a silly thought.~
IF ~~ THEN + pocketplane_06
END

IF ~~ THEN pocketplane_04
SAY ~[Brandock]If it ever gets there... I have an inner voice telling me it would be redirected to you as the <PRO_LADYLORD> of this enclave, anyway...~
IF ~~ THEN + pocketplane_06
END

IF ~~ THEN pocketplane_05
SAY ~[Brandock]Of course he summoned them. I am well aware of that. You are not in the mood for my funny thoughts, I can sense as much!~
IF ~~ THEN + pocketplane_07
END
END //APPEND

CHAIN
IF ~~ THEN C#brandJ pocketplane_06
~[Brandock]And having to handle several hell creatures at once is surely something you would have to learn, first.~
== C#brandJ IF ~GlobalGT("C#BranToB_Cespenar","GLOBAL",1)~ THEN ~[Brandock]Until then you can train with that little imp over there!~
END
IF ~~ THEN + pocketplane_07

APPEND C#brandJ
IF ~~ THEN pocketplane_07
SAY ~[Brandock]Forgive me, <CHARNAME>. I should stop babbling, that much is certain.~
IF ~~ THEN EXIT
END

IF ~~ THEN pocketplane_08
SAY ~[Brandock]Sarcasm. I can still detect sarcasm. Or is it?~
IF ~~ THEN + pocketplane_11
END

IF ~~ THEN pocketplane_09
SAY ~[Brandock]I'm sorry! It blurted out of my mouth before I could help it. In that case I probably shouldn't say that, considering everything, Irenicus was an intruder into your realm and fighting him was a home play, so to say...~
++ ~Brandock, I am sincerely glad you didn't come to that conclusion when we were facing Irenicus. "<CHARNAME>, see this as a home play! Yay, <CHARNAME>, go!" I really would not have been in the mood to hear any of that nonsense then.~ + pocketplane_01
++ ~It surely didn't feel that way when fighting him.~ + pocketplane_02
++ ~Brandock, your humor is tiring me.~ + pocketplane_07
++ ~Let's not talk about this.~ + pocketplane_07
END

IF ~~ THEN pocketplane_10
SAY ~[Brandock]Well, it's an improvement to vomiting into the next corner, don't you think?~
IF ~~ THEN + pocketplane_09
END

IF ~~ THEN pocketplane_11
SAY ~[Brandock]You can't imagine how relieved I am to see that you didn't lose your humor.~
IF ~~ THEN + pocketplane_00
END
END //APPEND

/* Inside Saradush */
CHAIN
IF ~Global("C#BranToB_InSaradush","GLOBAL",1)~ THEN C#BrandJ inside_saradush
~[Brandock]Oh boy...~
DO ~SetGlobal("C#BranToB_InSaradush","GLOBAL",2)~
== C#BrandJ IF ~GlobalGT("bd_plot","global",40)~ THEN ~[Brandock]If I thought Baldur's Gate full of refugees was a situation of overwhelming panic then *this* is another level.~
== C#BrandJ IF ~!GlobalGT("bd_plot","global",40)~ THEN ~[Brandock]This city radiates an all-encompassing panic if I ever experienced it. It is overwhelming!~
== C#BrandJ @0 /* ~[Brandock]I mean, duh. We are inside a besieged city.~ */
= ~[Brandock]I only hold it together because *we* have a way out of here. Or, you, to be precise. Did I say before that I'm with you or right behind you, <CHARNAME>? Today this may not be as selfless of me as I usually intend it to be.~
EXIT

APPEND C#BrandJ
/* After Saradush's fall */
IF ~Global("C#BranToB_Saradush","GLOBAL",1)~ THEN saradush_fall
SAY ~[Brandock]Oh no, Saradush fell! All those people...~
= ~I haven't felt that bad since Thurdon made himself explode during the magic apprenticeship with Theos. That moment where you know how to help but then realize it's too late... I-I am babbling again. I am sorry.~
IF ~~ THEN DO ~SetGlobal("C#BranToB_Saradush","GLOBAL",2)~ EXIT
END
END //APPEND

/* Pondering on Saradush's fall. */
CHAIN
IF ~Global("C#BranToB_Saradush","GLOBAL",3)~ THEN C#BrandJ saradush_pondering
~[Brandock]My mind is still stuck with Saradush's fall. All those Bhaalchildren killed...~
/* consider Hidden Adventures "A Tunnel for Saradush" */
== C#BrandJ IF ~!GlobalGT("C#ToB_SaradushTunnel","GLOBAL",1)~ THEN ~All those *people* killed!~
== C#BrandJ IF ~GlobalGT("C#ToB_SaradushTunnel","GLOBAL",1)~ THEN ~At least.. at least we were able to give the normal people a way out of the city. But still, so many dead...~
== C#BrandJ ~[Brandock]I guess it was bound to happen, considering the prophecy and all. But for a short moment I thought - I thought we could change it. You know?~
= ~[Brandock]Are you... are you all right, <CHARNAME>?~
END
++ ~Thank you for noticing my turmoil, Brandock.~ + saradush_pondering_00
++ ~No, not at all.~ + saradush_pondering_00
++ ~Not really, but I can't let this get to me. I'll be fine, somehow.~ + saradush_pondering_03
++ ~Am *I* all right? You are asking me this, your face ashen and your eyes sunk into deep hollows. Are *you* all right, Brandock?~ + saradush_pondering_01
++ ~Like you said - it was bound to happen. No use in dwelling on it.~ + saradush_pondering_03_b
++ ~Are you blaming us for what happened?~ + saradush_pondering_05
++ ~I don't want to talk about it.~ + saradush_pondering_04

APPEND C#BrandJ

IF ~~ THEN saradush_pondering_00
SAY ~[Brandock]And this is no surprise at all. I feel with you, <CHARNAME>. A lot...~
++ ~I can't let this get to me. I'll be fine, somehow.~ + saradush_pondering_03
++ ~Am *I* all right? You are asking me this, your face ashen and your eyes sunk into deep hollows. Are *you* all right, Brandock?~ + saradush_pondering_01
++ ~Like you said - it was bound to happen. No use in dwelling on it.~ + saradush_pondering_03_b
++ ~Are you blaming us for what happened?~ + saradush_pondering_05
++ ~I don't want to talk about it.~ + saradush_pondering_04
END

IF ~~ THEN saradush_pondering_01
SAY ~[Brandock]I don't know... I am not used to failing any more. Which is not my main grief with the city fallen, but... it's eating away on me, nevertheless.~
++ ~Don't you go there! They did not die because of us. Yaga Shura and his army did this!~ + saradush_pondering_02
++ ~Like you said - it was bound to happen. No use in dwelling on it.~ + saradush_pondering_03
++ ~Are you blaming us for what happened?~ + saradush_pondering_05
++ ~I don't want to talk about it.~ + saradush_pondering_04
END

IF ~~ THEN saradush_pondering_02
SAY ~[Brandock]Thank you. When I started to talk I honestly, naively thought I would do so to comfort you. Turns out - it is me who needed comforting, and you saw right through me. Thank you, truly.~
IF ~~ THEN + saradush_pondering_04
END

IF ~~ THEN saradush_pondering_03
SAY ~[Brandock]I can only admire you. You are so strong...~
++ ~Are *you* all right, Brandock? You look horrible.~ + saradush_pondering_01
++ ~Let's keep moving.~ + saradush_pondering_04
END

IF ~~ THEN saradush_pondering_03_b
SAY ~[Brandock]Yes... You are really strong, <CHARNAME>, to be able to brush it off like that.~
IF ~~ THEN + saradush_pondering_04
END

IF ~~ THEN saradush_pondering_04
SAY ~[Brandock]Ah, don't mind me. You'd really think I'd be accustomed to death and destruction by now.~
IF ~~ THEN DO ~SetGlobal("C#BranToB_Saradush","GLOBAL",4)~ EXIT
END

IF ~~ THEN saradush_pondering_05
SAY ~[Brandock]No! I mean... Not from an intellectual standpoint. But emotionally... I do believe you noticed by now that I feel responsible for a lot of things I didn't have any real influence on.~
IF ~~ THEN + saradush_pondering_04
END

END //APPEND

/* inside Amkethran */

CHAIN
IF ~Global("C#BranToB_InAmkethran","GLOBAL",1)~ THEN C#BrandJ amkethran
~[Brandock]Oh boy, the mood is thick here. I'd like to think it's the sand and sun all day - it would dampen my spirits exceedingly, at least, having nothing but hot dust around. But this feels different. People are tense in a way I cannot grab.~
== C#BrandJ IF ~GlobalGT("TalkedToAmbar01","GLOBAL",0)~ THEN ~[Brandock]Well, I guess we already know it has something to do with the monastic order and their rather repressive way of having a hold of this town.~
END
++ ~Yes, I feel it, too.~ + amkethran_02
++ ~You can sense that?~ + amkethran_01
++ ~Let's just move on, Brandock.~ + amkethran_02

APPEND C#brandJ

IF ~~ THEN amkethran_01
SAY ~[Brandock]Ooh yes. Yes, I can. - Why, because the people around me are usually tense and stiff? Or because I'm usually such a cheerful, carefree person? I'm sorry, I didn't mean to snap at you, it was an attempted joke. Two, actually.~
IF ~~ THEN + amkethran_02
END

IF ~~ THEN amkethran_02
SAY ~[Brandock]Well, I experienced worse - much worse. It's just that *all* my senses tell me that *some* unexpected problem will catch up with us in this town, too.~
IF ~~ THEN DO ~SetGlobal("C#BranToB_InAmkethran","GLOBAL",2)~ EXIT
END

END //APPEND

/* time of chaos / Melissan relvealed */
CHAIN
IF ~Global("C#BranToB_Melissan","GLOBAL",1)~ THEN C#brandJ melissan_betrayal
~[Brandock]So Melissan, or whatever her real name is, she-she is the evil one, the toghest Bhaalspawn foe, even? "Still waters run deep", my grandma used to say. But nah, I don't think that's fitting for this betrayal... Oh dear.~
DO ~SetGlobal("C#BranToB_Melissan","GLOBAL",2)~
= ~[Brandock]And with that, the circle closes. Again, a Bhaalchild is out there to kill you for your godly father's power - the last one, most likely. Hopefully...~
== BIMOEN25 IF ~InParty("IMOEN2") Detect("IMOEN2") !StateCheck("IMOEN2",CD_STATE_NOTVALID)~ THEN ~[Imoen]Yeah, well *I* won't go for <CHARNAME>'s life, I can assure you that. Although it would make for a really great plot twist. Don't look at me like that, Brandock. It was a joke.~
== C#brandJ IF ~InParty("IMOEN2") Detect("IMOEN2") !StateCheck("IMOEN2",CD_STATE_NOTVALID)~ THEN ~[Brandock]Y-yes, I knew that, of course.~
== C#brandJ IF ~InPartyAllowDead("sarevok")~ THEN ~[Brandock]Only difference is that now, the *first* one is here to help you, <CHARNAME>.~
== C#brandJ IF ~!InPartyAllowDead("sarevok") !Dead("sarevok")~ THEN ~[Brandock]Only difference is that now, the *first* one is enjoying himself in your hell enclave.~
== C#brandJ ~[Brandock]Crazy times. Crazy times indeed.~
EXIT

APPEND C#brandJ


/* Solar's test: CHARNAME will form his/her own destiny
triggers after second trial */

IF ~Global("C#BranToB_DestinyFT","GLOBAL",1)~ THEN destiny
SAY ~[Brandock]I don't know, <CHARNAME>.~
++ ~Heavy thoughts on your mind, I can see that. What's up?~ + destiny_02
++ ~You sound dissatisfied.~ + destiny_02
++ ~I don't, either, unless you tell me.~ + destiny_02
++ ~Whatever, Brandock. I'm not interested.~ + destiny_01
END

IF ~~ THEN destiny_01
SAY ~[Brandock]I can see the bards and storytellers of the future, <CHARNAME>. 'And then <CHARNAME>, child of the gods, turned to <PRO_HISHER> travel companion. And the travel companion said: 'I don't know.' And <CHARNAME>, child of the gods, answered: 'Whatever.' And they continueth their journey.' I just love being part of your destiny shaping group, <CHARNAME>.~
IF ~~ THEN DO ~SetGlobal("C#BranToB_DestinyFT","GLOBAL",2)~ EXIT
END

IF ~~ THEN destiny_02
SAY ~[Brandock]First they invoke your bad consciousness, with all the talking about luck and what-would-have-been-if-it-was-not-you-but-Sarevok-who-Gorion-rescued.~
= ~[Brandock]And just when you took it all in, humbly pondering about fate and the impact of external influences on our destiny, they tell you that everyone makes their own destiny, even you. Leaving a lot of induced bad consciousness and ... well, a lot of blah blah.~
++ ~You mean the information that I will not live up to Aloundo's prophecy, but that it is up to me to prevent all the destruction?~ + destiny_03
++ ~The things happening currently is everything, but not 'blah blah', Brandock.~ + destiny_04
++ ~Whatever, Brandock. I'm not interested.~ + destiny_01
END

IF ~~ THEN destiny_03
SAY ~[Brandock]Exactly.~
IF ~~ THEN + destiny_05
END

IF ~~ THEN destiny_04
SAY ~[Brandock]Of course.~
IF ~~ THEN + destiny_05
END

IF ~~ THEN destiny_05
SAY ~[Brandock]Upon the first greeting, Solar said that you are the one of which the prophecies were talking about. Now it is you who will do ... what? Stop them? I have a natural dislike against games with the mind. Anyones mind. That's what kept my thoughts spinning.~
++ ~What of it?~ + destiny_06
++ ~Whatever, Brandock. I'm not interested.~ + destiny_01
END

IF ~~ THEN destiny_06
SAY ~[Brandock]First making you believe that you are walking inside a fixed path of fate - 'You are the one Aloundo't prophecies talk about' -~
= ~[Brandock]*Then* make you humbly believe that it was mere luck that got you here, making your impressive being and your successful struggle against the madness of your heritage seem to be the result of pure incidents - 'What if it would not have been you but Sarevok who was rescued by Gorion?' -~
= ~[Brandock]Only *then* to state that you have it all in your own hands how it will develop, and not only for you, ohnono, but the whole of Aloundo's prophecies is up to you to prevent...~
= ~[Brandock]But of course, this only after they planted the thought of self-doubt and insecureness inside you, concerning your power of influence on your own life. I call that games with your mind, and that is something I am very sensitive to.~
= ~[Brandock]Oh boy. I know I like hearing myself talk, but that was a long monologue, even for me.~
++ ~I do get what you were saying, though. Thanks.~ + destiny_07
++ ~You are encouraging me to go my own path. I like that.~ + destiny_07
++ ~I'm not sure I follow, but it doesn't matter. Let's move on.~ + destiny_08
END

IF ~~ THEN destiny_07
SAY ~[Brandock]Great! Because, honestly, I kind of forgot what I was trying to say.~
IF ~~ THEN + destiny_09
END

IF ~~ THEN destiny_08
SAY ~[Brandock]Alright!~
IF ~~ THEN + destiny_09
END

IF ~~ THEN destiny_09
SAY ~[Brandock]Now that I said it, I feel a bit better.~
IF ~~ THEN DO ~SetGlobal("C#BranToB_DestinyFT","GLOBAL",2)~ EXIT
END


/* CHARNAME becoming powerful. */

IF ~Global("C#BranToB_PowerfulFT","GLOBAL",1)~ THEN powerful_siblings
SAY ~[Brandock]<CHARNAME>, do you... do you feel any different? You do get more powerful when your godly siblings die, don't you?~
+ ~Global("ImoenRomanceActive","GLOBAL",2)~ + ~Don't call them my siblings, Brandock. Because then Imoen and I were siblings, and that's a disturbing thought.~ + powerful_siblings_01
+ ~Global("LS#SarevokRomanceActive","GLOBAL",2)~ + ~Don't call them my siblings, Brandock. Then Sarevok and I were siblings, and that's a disturbing thought.~ + powerful_siblings_01
+ ~Dead("ysgp04")
	Dead("ysgp03")
	Dead("ysgp02")
	Dead("ysgp01")~ + ~Siblings is not exactly what I would call those chinchillas...~ + powerful_siblings_01
COPY_TRANS_LATE C#BrandJ powerful_siblings_01
END

IF ~~ THEN powerful_siblings_01
SAY ~[Brandock]You know what I mean.~
++ ~Does the thought scare you?~ + powerful_siblings_02
++ ~I'm not sure. I do get more powerful, but I don't have the feeling it's because others die.~ + powerful_siblings_03
++ ~I definitely feel different than back at the Sword Coast, but I guess that wasn't your question.~ + powerful_siblings_03
++ ~I do have the feeling my might increases, yes.~ + powerful_siblings_03
++ ~Whatever, Brandock. Let's keep moving.~ + powerful_siblings_09
END

IF ~~ THEN powerful_siblings_02
SAY ~[Brandock]Am I ever *not* scared? Not *of* you, though, if that was your question.~
++ ~I'm not sure. I do get more powerful, whether it's because others die, I don't know.~ + powerful_siblings_03
++ ~I definitely feel different than back at the Sword Coast, but I guess that wasn't your question.~ + powerful_siblings_03
++ ~I do have the feeling my might increases, yes.~ + powerful_siblings_03
++ ~Whatever, Brandock. Let's keep moving.~ + powerful_siblings_09
END

IF ~~ THEN powerful_siblings_03
SAY ~[Brandock]Well, so many dead, but you are still standing. I am glad it's you, of course. And not only because I have the feeling I might be on the winning side. I truly think you'll do all right.~
++ ~That I'll do the right thing or that I'll be fine?~ + powerful_siblings_04
++ ~Thanks, it's nice to hear a vow of confidence.~ + powerful_siblings_06
++ ~You have no idea! As soon as I am powerful enough, I will take over Bhaal's power, muahahaHAHA *cough*~ + powerful_siblings_05
++ ~Still I'd be happy if it wasn't me...~ + powerful_siblings_08
++ ~Whatever, Brandock. Let's keep moving.~ + powerful_siblings_09
END

IF ~~ THEN powerful_siblings_04
SAY ~[Brandock]I was thinking about the former one - the latter one I dearly hope.~
++ ~Thanks, it's nice to hear a vow of confidence.~ + powerful_siblings_06
++ ~You have no idea! As soon as I am powerful enough, I will take over Bhaal's power, muahahaHAHA *cough*~ + powerful_siblings_05
++ ~Still I'd be happy if it wasn't me...~ + powerful_siblings_08
++ ~Whatever, Brandock. Let's keep moving.~ + powerful_siblings_09
END

IF ~~ THEN powerful_siblings_05
SAY ~[Brandock]You know what the scary part is? I'm not even sure that's a joke.~
IF ~~ THEN + powerful_siblings_07
END

IF ~~ THEN powerful_siblings_06
SAY ~[Brandock]I mean it.~
IF ~~ THEN + powerful_siblings_07
END

IF ~~ THEN powerful_siblings_07
SAY ~[Brandock]You know I do not just say these things. I truly meant it.~
IF ~~ THEN + powerful_siblings_09
END

IF ~~ THEN powerful_siblings_08
SAY ~[Brandock]Would you, though? Would we be? Maybe we'd have been one of the people inside Saradush...~
IF ~~ THEN + powerful_siblings_07
END

IF ~~ THEN powerful_siblings_09
SAY ~[Brandock]I'm here, at your side.~
IF ~~ THEN DO ~SetGlobal("C#BranToB_PowerfulFT","GLOBAL",2)~ EXIT
END

/* Brandock's resumée about <CHARNAME>'s ToB time */

IF ~Global("C#BranToB_NaturalFT","GLOBAL",1)~ THEN natural
SAY ~[Brandock]At first, I thought what is happening to you is mighty, outstanding, and rather frightening. I thought about it, and all in all, I think now that it's only natural.~
++ ~What do you mean?~ + natural_02
++ ~Natural - being tutored by a Solar and tested by gods? Hmm, for a god child the prophecies were talking about, you mean?~ + natural_01
++ ~We don't have time for this. Let's move on, Brandock.~ + natural_11
END

IF ~~ THEN natural_01
SAY ~[Brandock]That's exactly the point!~
IF ~~ THEN + natural_02
END

IF ~~ THEN natural_02
SAY ~[Brandock]You are a *godling*. What would be natural for a godling in the times his godly father's essence combines and his offspring fight for his throne?~
= ~[Brandock]Would it be natural to stand in your mortal parents' mundane bakery, baking bread? Would it be natural to farm a land? Would anything be natural that has *no* godly powers involved?~
++ ~Hmm, I think I see what you mean.~ + natural_06
++ ~Yes, I agree.~ + natural_06
++ ~No, Brandock. Calling *this* "natural" still doesn't make sense.~ + natural_05
++ ~We don't have time for this. Let's move on, Brandock.~ + natural_11
END

IF ~~ THEN natural_03
SAY ~What happens here in the Pocket Plane, all these tests you have to perform to proceed, it's like what happens to normal people, too. Who hasn't ever played the games of "what ifs"? Which warrior never has been haunted by the memories of the ones he killed, no matter how justified the actions were? Who was never confronted by a remnant of his true origin, being it a long-not-seen relative, an old letter or an own memory, coming to one in times where the childhood seems long overcome? There is no such person, I am sure of that.~
= ~[Brandock]So, it's only natural it also happens to you. So you argue, it's all too much? Too forceful, too vivid, too much destiny shaping with all the godly interference? See, that's exactly the point. Because it is the way it has to be, for a godling like you. Normal people have these times of questioning, but they deal with it in their own heads.~
= ~[Brandock]A godling however has to live it all, fight it all, taking everyone near him into it. One day, it will all be over. All the memories will be lived through again, all the what-ifs will be played out, all voices from the past will be heard and calmed. You will come to terms with your godly heritage, just like a normal person comes to terms with his own past and origin. One way or the other, but your godly heritage will no longer be an issue. So, it's only natural.~
++ ~I see your point... It's a pleasantly unagitated point of view. Thank you!~ + natural_12
++ ~All right, it does make sense if you put it like this.~ + natural_08
++ ~That's all well and good, but I'll never get used to being called a "godling".~ + natural_04
++ ~I can follow your train of thoughts, but I think "natural" is not the right word for it.~ + natural_09
++ ~Nah, I think it doesn't make sense.~ + natural_07
++ ~I don't know, Brandock. Let's move on.~ + natural_11
END

IF ~~ THEN natural_04
SAY ~[Brandock]Heh. No easy way away not to be one, I'm afraid. But I'll try to refrain from using the term in the future.~
IF ~~ THEN + natural_09
END

IF ~~ THEN natural_05
SAY ~[Brandock]Hear me out - please? It makes so much sense to me.~
++ ~All right, now I'm curious.~ + natural_03
++ ~No, let's move on.~ + natural_11
END

IF ~~ THEN natural_06
SAY ~[Brandock]Can-can I still elaborate?~
++ ~Of course.~ + natural_03
++ ~No, let's move on.~ + natural_11
END

IF ~~ THEN natural_07
SAY ~[Brandock, reacting to "doesn't make sense"]Well, does anything if the gods are involved?~
IF ~~ THEN + natural_10
END

IF ~~ THEN natural_08
SAY ~[Brandock]It does make sense. Doesn't it?~
IF ~~ THEN + natural_10
END

IF ~~ THEN natural_09
SAY ~[Brandock]I'm happy if what I said made any sense at all.~
IF ~~ THEN + natural_10
END

IF ~~ THEN natural_10
SAY ~[Brandock]I didn't say it doesn't frighten the hells out of me, to be honest, being the mentally limited mortal that I am. - But I fear that's only natural, too. (smiles)~
IF ~~ THEN DO ~SetGlobal("C#BranToB_NaturalFT","GLOBAL",2)~ EXIT
END

IF ~~ THEN natural_11
SAY ~[Brandock]All right!~
IF ~~ THEN DO ~SetGlobal("C#BranToB_NaturalFT","GLOBAL",2)~ EXIT
END

IF ~~ THEN natural_12
SAY ~[Brandock]It's the only natural view to me - sorry, that was unintended.~
IF ~~ THEN + natural_10
END


/* Brandock realizes his own power */

IF ~Global("C#BranToB_GrowthFT","GLOBAL",1)~ THEN mightymage
SAY ~[Brandock]I just realized how powerful I am now. Do you remember why I joined you on the Sword Coast? I wanted to become a well-versed wizard. Well, mission accomplished, I would say...~
++ ~Well... Took quite a long time and a lot of effort, though - for all of us...~ + mightymage_04
++ ~So, you should finally be able to relax a little, no? With that level of power, you don't have to be afraid so much any more.~ + mightymage_01
++ ~Yes, you turned out all right.~ + mightymage_02
++ ~It finally pays off that I took you in. I was about to give up hope.~ + mightymage_03
++ ~Let's just move on.~ + mightymage_06
END

IF ~~ THEN mightymage_01
SAY ~[Brandock]Are you kidding? I am becoming so powerful I feel it is *me* who I should be afraid of.~
IF ~~ THEN + mightymage_05
END

IF ~~ THEN mightymage_02
SAY ~[Brandock]Heh, I am glad you see it that way.~
IF ~~ THEN + mightymage_05
END

IF ~~ THEN mightymage_03
SAY ~[Brandock]Normally, I'd say "ouch" to that, but - after all the time we spent together - nah, I don't believe you.~
IF ~~ THEN + mightymage_05
END

IF ~~ THEN mightymage_04
SAY ~[Brandock]And it took it's toll, and is still not finished. I agree to that...~
++ ~So, you should finally be able to relax a little, no? With that level of power, you don't have to be afraid so much any more.~ + mightymage_01
++ ~Yes, you turned out all right.~ + mightymage_02
++ ~It finally pays off that I took you in. I was about to give up hope.~ + mightymage_03
++ ~Let's just move on.~ + mightymage_06
END

IF ~~ THEN mightymage_05
SAY ~[Brandock]This is like my grandma always said. 'Be careful what you wish for, as it might come true!' Oh, she was so wise, my grandma.~
IF ~~ THEN DO ~SetGlobal("C#BranToB_GrowthFT","GLOBAL",2)~ EXIT
END

IF ~~ THEN mightymage_06
SAY ~[Brandock]Agreed.~
IF ~~ THEN DO ~SetGlobal("C#BranToB_GrowthFT","GLOBAL",2)~ EXIT
END

END //APPEND

/* Sarevok ICT */
I_C_T SAREV25A 9 C#BranToB_SAREV25A_9
== C#brandJ IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN ~[Brandock]Oh, that-that explains a lot. I *was* thingking, Sarevok in hell fits. What gave me a head-ache was *our* presence here...~
END

/* Volo in Saradush */

EXTEND_TOP SARVOLO 9 
+ ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2)
Global("C#Brandock_VoloToB","GLOBAL",0)
GlobalGT("C#Brandock_Shapeshift","GLOBAL",17)~ + ~Tell me about Brandock.~ + volo_brandock
+ ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2)
Global("C#Brandock_VoloToB","GLOBAL",0)
!GlobalGT("C#Brandock_Shapeshift","GLOBAL",17)~ + ~Tell me about Brandock.~ + volo_brandock_01
END

APPEND SARVOLO
IF ~~ THEN volo_brandock
SAY ~[Volo]Brandock the mage. Went out of his home land to seak power and might, and so he did. Found the might of the foxes, the power of the half-ogres, and the power of his own fear. Behold of Brandock, the mighty and powerful mage!~
IF ~OR(2) !See("C#Brandock") StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN DO ~SetGlobal("C#Brandock_VoloToB","GLOBAL",1)~ EXIT
IF ~See("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN DO ~SetGlobal("C#Brandock_VoloToB","GLOBAL",1)~ EXTERN C#brandJ volo_brandock_00
END
IF ~~ THEN volo_brandock_01
SAY ~[Volo]Brandock the mage. Went out of his home land to seak power and might, and so he did - he found the might of the foxes. Behold of Brandock, the mighty and powerful mage!~
IF ~OR(2) !See("C#Brandock") StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN DO ~SetGlobal("C#Brandock_VoloToB","GLOBAL",1)~ EXIT
IF ~See("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN DO ~SetGlobal("C#Brandock_VoloToB","GLOBAL",1)~ EXTERN C#brandJ volo_brandock_00
END
END //APPEND

APPEND C#brandJ
IF ~~ THEN volo_brandock_00
SAY ~[Brandock]Oh yeah, that's... that's funny. You forgot one or two instances on that list, though. You want me to tell you?!~
IF ~~ THEN EXTERN SARVOLO 9
END
END //APPEND

/* FINSOL */

I_C_T FINSOL01 27 C#BrandockFINSOL01_27
== c#brandj IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN ~[Brandock]Giving up mortality... To live as a god also means, to outlive anyone you ever loved or cared for. Although it might be of little meaning, for a god...~
= ~[Brandock]<CHARNAME>, just in case you want to chose godhood to leave all the narrow-mindedness and vanity of the mortals behind, just consider that in the cloudy, mysterious home the gods call their own, probably every immortal fosters his or her preciousness, because they have nothing else to do and no chores for diversion.~
= ~[Brandock]Er, and in case you chose godhood, please forget what I just said.~
END



