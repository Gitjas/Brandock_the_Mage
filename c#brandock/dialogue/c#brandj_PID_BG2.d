/* PID for BGII */



APPEND c#brandj

IF ~IsGabber(Player1)~ THEN pid_bg2
SAY @0 

+ ~GlobalGT("bd_plot","global",0) Global("C#Brando_PIDMother","LOCALS",0)~ + ~You left because of the letter from your parents. I hope you found your mother in well enough health?~ DO ~SetGlobal("C#Brando_PIDMother","LOCALS",1)~ + sod_end

+ ~Global("C#Brando_PIDHowYouFared","LOCALS",0)~ + ~So, how came it you ended up doing experiments with your mother's cousin?~ + how_you_fare
+ ~Global("C#Brando_PIDHowYouFared","LOCALS",0)~ + ~How did you fare after we parted at the Sword Coast, Brandock?~ + how_you_fare

+ ~Global("C#Brando_PIDHowYouFared","LOCALS",1)~ + ~Were you very disappointed when your parents expected you to be able to heal?~ DO ~SetGlobal("C#Brando_PIDHowYouFared","LOCALS",2)~ + parents

+ ~GlobalGT("C#Brando_PIDHowYouFared","LOCALS",0) Global("C#Brando_PIDParents2","LOCALS",0)~ + ~Didn't you tell your parents that you prevented a war?~ DO ~SetGlobal("C#Brando_PIDParents2","LOCALS",1)~ + parents_war

+ ~Global("C#Brando_PIDSpellhold","LOCALS",0)~ + ~Aything you want to say about 'Spellhold'?~ DO ~SetGlobal("C#Brando_PIDSpellhold","LOCALS",1)~ + spellhold

+ ~Global("C#Brando_PIDExperiments","LOCALS",0)~ + ~What kind of experiments were you doing here? Why did the Cowled Wizards had such an interest in you mixing substances?~ DO ~SetGlobal("C#Brando_PIDExperiments","LOCALS",1)~ + experiments

//## ++ ~What do you know about the Shadow Thieves here in Athkatla?~ +  


+ ~OR(4)
Global("C#Brando_PIDEbrel1","LOCALS",0)
Global("C#Brando_PIDEbrel2","LOCALS",0)
Global("C#Brando_PIDEbrel3","LOCALS",0)
Global("C#Brando_PIDEbrel4","LOCALS",0)~ + ~About your mother's cousin, Ebrel the Cowled Wizard...~ + ebrel


/* inventory management.  - if Brandock is not in party but following as companion Brandock has to join the group so the player has access to the inventory.
This is what usually is dealt with by the kicked out "P" dialogue for re-joining */

+ ~!InParty(Myself) NumInPartyLT(6)~ + @50 /* ~Brandock, would you grant me access to your inventory?~ */ DO ~RemoveFamiliar()
SetGlobal("C#BrandockJoined","GLOBAL",1) JoinParty()~ EXIT

+ ~!InParty(Myself) NumInParty(6)~ + @50 /* ~Brandock, would you grant me access to your inventory?~ */ + join


+ ~Global("C#Brandock_HPAlarm","GLOBAL",0) Global("C#BrandockJoined","GLOBAL",2)~ + @51 /* ~Brandock, please warn me if your health gets too low in the next fight.~ */ + hp_alarm_on
+ ~Global("C#Brandock_HPAlarm","GLOBAL",1) Global("C#BrandockJoined","GLOBAL",2)~ + @52 /* ~Brandock, I want you to stop warning me about your health conditions in our fights.~ */ + hp_alarm_off


++ @53 /* ~Nothing at the moment.~ */ EXIT
END

IF ~~ THEN join
SAY @56 /* ~With pleasure. Er, Excuse me, <PLAYER2>, <PLAYER3>, or someone else, I'd need to get closer to <CHARNAME>...~ */
IF ~~ THEN DO ~RemoveFamiliar()
ChangeAIScript("",DEFAULT)
ChangeEnemyAlly(Myself,NEUTRAL)
SetGlobal("C#BrandockJoined","GLOBAL",1) JoinParty()~ EXIT
END

IF ~~ THEN hp_alarm_on
SAY @54 /* ~I will!~ */
IF ~~ THEN DO ~SetGlobal("C#Brandock_HPAlarm","GLOBAL",1)~ EXIT
END

IF ~~ THEN hp_alarm_off
SAY @55 /* ~Alright!~ */
IF ~~ THEN DO ~SetGlobal("C#Brandock_HPAlarm","GLOBAL",0)~ EXIT
END

//----------
IF ~~ THEN ebrel
SAY ~What do you want to know?~
+ ~Global("C#Brando_PIDEbrel1","LOCALS",0)~ + ~I am very sorry he is dead, Brandock.~ DO ~SetGlobal("C#Brando_PIDEbrel1","LOCALS",1)~ + ebrel_04
+ ~Global("C#Brando_PIDEbrel2","LOCALS",0)~ + ~Tell me about your mother's cousin. It didn't sound as if you had much contact before you left for the Sword Coast?~ DO ~SetGlobal("C#Brando_PIDEbrel2","LOCALS",1)~ + ebrel_01
+ ~Global("C#Brando_PIDEbrel3","LOCALS",0)~ + ~But you knew he was a Cowled Wizard, yes? Before talking to your parents, I mean.~ DO ~SetGlobal("C#Brando_PIDEbrel3","LOCALS",1)~ + ebrel_02
+ ~Global("C#Brando_PIDEbrel4","LOCALS",0)~ + ~Did he never even visited you while you were in training?~ DO ~SetGlobal("C#Brando_PIDEbrel4","LOCALS",1)~ + ebrel_03
++ ~Nothing.~ + pid_bg2
END

IF ~~ THEN ebrel_01
SAY ~No, I did not, indeed. Our families didn't have much contact. They did talk about him of course - that he is a magic wielder... but hush, we do not talk about this here, not in front of the children. (sigh)~
IF ~~ THEN + ebrel
END

IF ~~ THEN ebrel_02
SAY ~Er, well, I guess I heard it, some time back when I was still very young. But it never played a role in my life before my return. I know it sounds silly.~ 
IF ~~ THEN + ebrel
END

IF ~~ THEN ebrel_03
SAY ~No, never. It's not necessarily his fault, <CHARNAME>. My parents didn't have much contact to his part of the family. He and my mother were 'only' cousins, you know. And if you think that the Cowled Wizards should have told him that I was in training... firstly, Cowled Wizards are not that good organized as you might think. Some of them even don't know each other! Meetings are undercover, you can't even be sure the merchant we just bought our morning bread from wasn't a Cowled Wizard, as well. Sometimes you only realized someone was a Cowled Wizard because he is killed during a mage hunt.~
= ~And secondly - that little organisation that is left, you don't expect the Cowled Wizard to actually enforce family bonds, do you? Family bonds are not wanted. Friendship is not wanted, either. My work for Ebrel was frowned upon by several Cowled Wizards visiting to inspect our progress. But they really wanted us to be successful in what we were investigating, so in *this* case family bonds proved to be a plus, because they decided I could be trusted in doing some of the secret work.~
IF ~~ THEN + ebrel
END

IF ~~ THEN ebrel_04
SAY ~Thank you, <CHARNAME>. Do you know the feeling if there is someone who was near you all these years but you didn't really pay attention to and when you get to know this person it feels like you should have known him much, much earlier because you two just get along so well? Ebrel was like the grandpa I never had but always wanted. He wasn't *that* old, though, so I should say uncle instead of grandpa, I think. And now destiny took him away again - way too early. (sigh)~
IF ~~ THEN + ebrel
END

IF ~~ THEN spellhold
SAY ~'Spellhold' was a constant threat from my teachers. 'Do this wrong and I'll let you bring to Spellhold!' - 'Don't do anything stupid, or you'll end up in Spellhold!'~
= ~The interesting thing is that once brought there, the imprisoned are no longer in the care of the Cowled Wizards. Well, surely the head of that asylum is a Cowled Wizard himself, but the asylum is under its own rule. Can you imagine that? They created a prison they *all* could be brought to, and they themselves don't know what exactly awaits there! You'd think under these conditions they would refrain from doing evil things, don't you?...~
IF ~~ THEN + pid_bg2
END

IF ~~ THEN sod_end
SAY ~Yes! Yes, indeed. She was already recovering, although the healing of a priest made it all so much easier. Thank you for asking!~
IF ~~ THEN + pid_bg2
END

IF ~~ THEN how_you_fare
SAY ~This... might turn out to be a longer conversation, do you really want to ask this now?~
++ ~Yes, I do.~ DO ~SetGlobal("C#Brando_PIDHowYouFared","LOCALS",1)~ + how_you_fare_01
++ ~Maybe later, then.~ + later
END

IF ~~ THEN later
SAY ~I thought so.~
IF ~~ THEN + pid_bg2
END

IF ~~ THEN how_you_fare_01
SAY ~Dang. Ahem. Very well. I returned to Amn, directly to my family, after receiving note that my mom was ill.~
= ~You know what? My parents thought I could heal my mother. I'm a magic wielder, right? So I should be able to heal. Because, you don't explain the difference between arcane and divine magic to carpenders and farmers in Amnian countryland.~
++ ~Ouch.~ + how_you_fare_00
+ ~GlobalGT("bd_plot","global",0)~ + ~So, that was the reason they called you back?~ + how_you_fare_00_2
++ ~But surely they understood?~ + how_you_fare_00_1
++ ~It wasn't for the worse for your mother's health, though?~ + how_you_fare_00_3
++ ~Brandock, you are right, I don't want to hear it. Let's go.~ + later
END

IF ~~ THEN how_you_fare_00
SAY ~That's what I thought, too... Amongst a lot of other emotions.~
+ ~GlobalGT("bd_plot","global",0)~ + ~So, that was the reason they called you back?~ + how_you_fare_00_2
++ ~But surely they understood?~ + how_you_fare_00_1
++ ~It wasn't for the worse for your mother's health, though?~ + how_you_fare_00_3
++ ~Brandock, you are right, I don't want to hear it. Let's go.~ + later
END

IF ~~ THEN how_you_fare_00_1
SAY ~Oh yes, of course they understood. I'm their son and so forth, eternal love no matter what I do and all that. Doesn't mean they weren't heavily disappointed, though.~
++ ~It wasn't for the worse for your mother's health, though?~ + how_you_fare_00_3
++ ~And then what happened?~ + how_you_fare_00_4
++ ~Brandock, you are right, I don't want to hear it. Let's go.~ + later
END

IF ~~ THEN how_you_fare_00_2
SAY ~Not only. They wanted to let me know, of course. But they expected me to do some magic to heal her, nontheless.~
++ ~But surely they understood?~ + how_you_fare_00_1
++ ~It wasn't for the worse for your mother's health, though?~ + how_you_fare_00_3
++ ~And then what happened?~ + how_you_fare_00_4
++ ~Brandock, you are right, I don't want to hear it. Let's go.~ + later
END

IF ~~ THEN how_you_fare_00_3
SAY ~No, fortuantely not.~
++ ~But surely they understood?~ + how_you_fare_00_1
++ ~And then what happened?~ + how_you_fare_00_4
++ ~Brandock, you are right, I don't want to hear it. Let's go.~ + later
END

IF ~~ THEN how_you_fare_00_4
SAY ~I could *pay* for her healing. I had all these shiny, golden gold coins. My parents never had more than two at once, before - other than the day I came back with the gold from the magic wand I sold for their table... I called a priest and by the end of the day, she was recovered.~
= ~So, after my magic was a great disappointment, they seemed to realize then that I must have achieved *something*. The way they looked at me! The way they listened to my story! Half of my story, actually, there was no use in telling the whole thing - I am sure they thought I invented most of it, anyway. But still, I sensed pride, <CHARNAME>. I was so overwhelmed I nearly cried in my pillow that night, out of very mixed emotions. You probably didn't want to hear that.~
++ ~Go on.~ + how_you_fare_00_5
++ ~Please shorten it a bit.~ + how_you_fare_00_6
++ ~Brandock, you are right, I don't want to hear it. Let's go.~ + later
END

IF ~~ THEN how_you_fare_00_5
SAY ~I also asked about their well-being etcetera, you know, the usual stuff. Then I got carried away and mentioned that I would have to approach the Cowled Wizards now, so someday I would be able to get an official administrating position in the Athkatlian Government Building.~
= ~Can you imagine my surprise when they told me that my mother's cousin Ebrel was all official Cowled Wizard and in Athkatla, too? And what a very good idea it would be to go and ask him first, you know, connections and stuff? I mean, I didn't hear of him in years if anyone ever really spoke about him without hushing his voice, and suddenly they talk of him as a respectable person and their son's savior. I don't mean to offend my parents by telling this. It's just... curious how things develop.~
IF ~~ THEN + how_you_fare_00_6
END

IF ~~ THEN how_you_fare_00_6
SAY ~Well, the cosy feeling shattered when next day some Cowled Wizards banged on the door. Dutyfully, I had written them a note upon my return to Amn - I didn't want to start badly by giving the impression I would try to sneak in unnoticed. Ah, that was bad, <CHARNAME> - not their visit but because for a short moment, it all was so alike the day when they took me away from my parents - together with my first teacher. Did I tell about him? I would very much do so, by the way, but that is for another day. And while my newly recovered mother had to sit down and catch her breath and maybe also nearly got a heart attack, my former master Teos, now emissary of the Cowled Wizards, talked my ear off about my 'responsibility' as a mage and how I am supposed to join the Coweld Wizards.~
++ ~That's good, no? Isn't that what you wanted?~ + how_you_fare_00_8
++ ~So they came to you? Seems they wanted you!~ + how_you_fare_00_7
++ ~And then what?~ + how_you_fare_00_9
++ ~Please shorten it a bit.~ + how_you_fare_00_10
++ ~Brandock, you are right, I don't want to hear it. Let's go.~ + later
END

IF ~~ THEN how_you_fare_00_7
SAY ~Well, they wanted the mage Brandock, not 'Brandock' the Brandock, if you get my meaning.~
IF ~~ THEN + how_you_fare_00_9
END

IF ~~ THEN how_you_fare_00_8
SAY ~It's what I dreamed of and dreaded at the same time.~
IF ~~ THEN + how_you_fare_00_9
END

IF ~~ THEN how_you_fare_00_9
SAY ~You have to picture the situation. Me - 'Nervousness-is-my-middle-name'-Brandock - in a serious negociation with the emissary of the Amnian Cowled Wizards. At the beginning, it seemed I had the power in my hands, they *really* wanted me as a mage. I stressed that I would like to meet with my mother's cousin Ebrel, they tried not to let show that they didn't like the idea but promised the moon, etcetera.~
IF ~~ THEN + how_you_fare_00_10
END

IF ~~ THEN how_you_fare_00_10
SAY ~And while we were talking and I was naming you and boasting about what we achieved at the Sword Coast, well... News travelled from Baldur's Gate to here, and... Suddenly they all went a bit quiet until they said that maybe working with my greatcousin wasn't *such* a bad idea, for now.~
+ ~Global("bd_plot","global",0)~ + ~What did you hear?~ + how_you_fare_02
+ ~GlobalGT("bd_plot","global",0)~ + ~What did you hear?~ + how_you_fare_03
++ ~Are you saying its my fault you didn't get a position of higher hirarchy?!~ + how_you_fare_06
++ ~So you didn't dare to request a higher rank any more?~ + how_you_fare_07
++ ~And then?~ + how_you_fare_08
++ ~Brandock, you are right, I don't want to hear it. Let's go.~ + later
END

IF ~~ THEN how_you_fare_02
SAY ~Well, only that you left rather unexpectedly... displeasing one or two people in Baldur's Gate, although maybe not intentionally.~
IF ~~ THEN + how_you_fare_05
END

IF ~~ THEN how_you_fare_03
SAY ~Well... there *was* talk about a murder accusation but different informants told different kind of stories, some taking your side and some accusing you to be the next Sarevok, so it was a bit hard to tell.~
= ~Did Skie... did she really die due to a soul taker dagger?~
++ ~Yes, she did, but not by my hands. I was tricked by Irenicus!~ + how_you_fare_04
++ ~I see you heard the whole story, oh well.~ + how_you_fare_05
END

IF ~~ THEN how_you_fare_04
SAY ~Irenicus?! Well, that explains a lot.~
IF ~~ THEN + how_you_fare_05
END

IF ~~ THEN how_you_fare_05
SAY ~Your Bhaal heritage was mentioned, too. I only noticed because I know your name, <CHARNAME>. It's not that it's been with the town criers all over Amn. People here do not really care about what happens somewhere along the Sword Coast.~
++ ~Are you saying its my fault you didn't get a position of higher hirarchy?!~ + how_you_fare_06
++ ~So you didn't dare to request a higher rank any more?~ + how_you_fare_07
++ ~And then?~ + how_you_fare_08
++ ~Brandock, you are right, I don't want to hear it. Let's go.~ + later
END

IF ~~ THEN how_you_fare_06
SAY ~Of course not. But the glorious saving of the Sword Coast sounded not so glorious any more... I really mean no offence, but... Well, alright, if you see it that way, then I am blaming you. In a way. But not really.~
IF ~~ THEN + how_you_fare_08
END

IF ~~ THEN how_you_fare_07
SAY ~No, I did not.~
IF ~~ THEN + how_you_fare_08
END

IF ~~ THEN how_you_fare_08
SAY ~<CHARNAME>... I... just couldn't imagine going with them and *being* a Cowled Wizard. The whole thing scared me to death! Well, nearly. I never imagined I would be so *wanted* - in a positive sense. But when they drew back... I was grateful. So, I was called an 'associate' and assigned to help Ebrel with his experiments, travelled to Athkatla, found my great cousin Ebrel, he turned out to be the amicable grandpa I never had, I felt so happy and content I could only dream of, so there I was.~
++ ~Still, you became an official Cowled Wizard - from the city's perspective!~ + how_you_fare_12
++ ~And you procrastinated your original goal and stayed, as an 'associate'.~ + how_you_fare_11
++ ~Thank you for telling me.~ + how_you_fare_09
++ ~This was a long story, indeed. Remind me to head your warning next time.~ + how_you_fare_10 
END

IF ~~ THEN how_you_fare_09
SAY ~Thank you for listening, <CHARNAME>.~
IF ~~ THEN + pid_bg2
END

IF ~~ THEN how_you_fare_10
SAY ~Ha! I will.~
IF ~~ THEN + how_you_fare_09
END

IF ~~ THEN how_you_fare_11
SAY ~And I procrastinated my original goal, yes. (moan) As usual, your perception is not only sharp but also very pointy.~
++ ~Thank you for telling me.~ + how_you_fare_09
++ ~This was a long story, indeed. Remind me to head your warning next time.~ + how_you_fare_10 
END

IF ~~ THEN how_you_fare_12
SAY ~Sort of... Well, I guess you are right, if spoken from the people's point of view. I wasn't introduced into any secret rites or anything...~
++ ~Thank you for telling me.~ + how_you_fare_09
++ ~This was a long story, indeed. Remind me to head your warning next time.~ + how_you_fare_10 
END

IF ~~ THEN parents
SAY ~Oh... yes, very much so. You know, the silliest thing is that it feels like I had a chance to prove them that my magic is useful - and I failed.~
= ~And the sad thing - there is no instance I could imagine where my magic would be useful for a carpenter or farmer. It's all for fighting and defense... And that's a crime in Amn, if you are not a licenensed mage.~
+ ~GlobalGT("C#Brandock_Shapeshift","GLOBAL",8)~ + ~Well, you could turn into a half-ogre and do all the heavy lifting.~ + parents_01
+ ~GlobalGT("C#Brandock_Shapeshift","GLOBAL",8)~ + ~Such is life sometimes.~ + pid_bg2
IF ~GlobalLT("C#Brandock_Shapeshift","GLOBAL",9)~ THEN + pid_bg2
END

IF ~~ THEN parents_01
SAY ~I am not sure whether you mean it or whether you are jesting... You know, this would be a great idea - up until the point where my brother would get all the neighboring pals and hit me to death, thinking I came down from the mountains, while my mother probably already died from a heart attack. Well, at least noone could say I wouln't have *tried*...~
IF ~~ THEN + pid_bg2
END

IF ~~ THEN parents_war
SAY ~<CHARNAME>, they have even problems imagining I was up all the way to Baldurs Gate. Telling them what we achieved would be like explaining the alphabet to a cow. Not that I'd call my family cows, but... you know what I mean.~
IF ~~ THEN + pid_bg2
END


IF ~~ THEN experiments
SAY ~Ha-HA! You don't think I would tell *you*, commoner-with-no-magic-authority?! (cough) I guess that's what they expect me to answer you, but to make it short: I *know* that the piece of metal laying on the table was a part of the great sphere in the slums, and that we are testing whether it can be dissolved, so I *guess* we were looking for a way to open that sphere-thing, but I wasn't told anything.~
= ~They didn't manage to open that thing after it appeared, so they were looking for any way to enter. I can only guess how many more Cowled Wizards were searching for a way independently of Ebrel and me.~
IF ~~ THEN + pid_bg2
END


END

