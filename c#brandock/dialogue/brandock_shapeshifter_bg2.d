/* Aus der "turn into Half-Ogre" Ability wird eine "ist stark wie ein Halboger" Fähigkeit: 1x am Tag für 1 Stunde. */

/* Brandock the Half-Ogre: BGII part */

/* first dialogue: information that Malm arrived alright */

IF ~[##Malm the halg-ogre was sent to Arrisahold OR (no SoD): Malm was met in BG1]~ THEN malm_bg2
SAY ~Do you remember Malm, the unfortunate half-ogre who - or was he a *fortunate* half-ogre? Damn, I still haven't made up my mind about this...~
++ ~Yes, I remember the half-ogre that got caught up in your transformation spell. What about him?~ +
++ ~Malm who?~ +
++ ~Are you talking to me or just thinking out loud?~ +
++ ~I don't and I don't care.~ +
END


saying that Malm arrived well at Alisarhold. Man, that is good news. Take these coins, and good travels!~
== ~I am so relieved!~
END
++ ~Yay, we saved a half-ogre...~ + 
++ ~Who was Malm again?~ +

SAY ~Yes, I know it's hilarious considering we would have faught him under normal circumstances. But - things are as they are, so here we are, and I am glad he arrived alright - and was welcomed the way I anticipated.~

~Malm is no longer the half-ogre he was before. I mean - no kidding! He looks like me! But I mean it on a serious note, too: he looks like me and can turn himself into a half-ogre. I - well, look like myself and can turn into one, too. The only difference if you wouldn't know either of us is that I can talk more distinguished and am a mage. But apart from that - what difference is there between us? I see none when I look at who Malm was last we met him. He is... a person. And not just because of his human appearance, but because how he looks at the world... Was this something he did before already, or was it triggered by the change? I didn't change much by being able to turn into a half-ogre, so I guess he didn't, either? Damn, if I continue thinking into that direction I won't any longer be able to kill half-ogres we meet in the wild - not after starting philosophical discussions, that is.~


/* second time: without I4E in chapter 6. With I4E after xx ingame days */ 

~[male messenger]Brandock Deepwater? I have a message for you. Please come to your house in Athkatla. Your half-brother has information for you.~
== ~My half-brother? I wasn't aware... er, thank you, good man. <CHARNAME>, I have no idea what this is about. Let us return to Ebrel's house. At least I believe this would be "my house in Athkatla", I wouldn't know any other.~

/* in Ebrel's house is Malm and a sage from Alisarhold */

~Malm! It's you! My "half-brother" - I get it now, that's hilarious, but yes, I also called you my cousin at more than one occasion.~
= ~And Tulm! Nice to meet you again. You came all the way from Alisarhold?~
~[Tulm]Yes, we found a way to enhance Malm's shapeshifting, and we think that this could help you, too. In short: it lets you use the one form's main advantage while being in the other form. For Malm this means that he chose to be as strong as a half-ogre in human form, but he could have chosen to be as smart as his human form while being a half-ogre instead.~
= ~For you, that'd probably mean that you'd be able to focus your magic while being a half-ogre, for example. Only one enhancement is possible, I'm afraid. I have a list of the needed ingredients here, depending on what you chose. Still, we thought this is worthwhile to let you know and I'll also be here to perform the magic, if you trust me with it.~
c#brandj ~This - this sounds awesome! Of course I trust you.~
~Hmm. It will take a good while before we collect these ingredients. How do we want to procede?~
== ~[Tulm]Oh, Malm is all excited to get to know the city, and I'll use the time while showing him around to meet some old friends and study in the Temple of Oghma. We would be grateful if we could stay here until then.~
== c#brandj ~Of course! Gladly. Just - Malm, please keep away from any liqueur. Turning here would be desastrous. <CHARNAME>! This means that I could finally do magic while being in half-ogre form. Or I could get stronger in my human form, I guess, which is also a thought worth thinking about. I can't wait until we'll find the needed ingredients! I'll write them down for you.~
IF ~~ THEN DO ~##~ UNSOLVED_JOURNAL ~

The half-ogre and a sage from Alisarhold are staying in Brandock's house in the Slums of Athkatla. They found a way to enhance Brandock's shapeshifting ability: depending on the ingredients we chose, Brandock could either learn how to do magic while being in half-ogre form, or he could increase his strength.
For increasing his strength, we'd need ##.
For enabling magic use for his half-ogre form, we'd need ##.
Tulm, the sage from Alisarhold, will stay in Brandock's house until we bring the ingredients.~



~<CHARNAME>, I am undecided... Do I go for a stronger me or a half-ogre with magic?~
++ ~What a question! Magic as a half-ogre, of course!~ + 
++ ~You said once that you feel weak and only strong as a half-ogre. Now's the chance to take this feeling over to your normal form. I'd suggest you go for that.~ + 
++ ~How about we collect all ingredients and make the decision later?~ + 
++ ~That's your decision, Brandock. I will not make it for you.~ + 

/* Gespräch mit Malm */
~[Brandock]Malm, why did you go for strength in human form and not intelligance as a half-ogre?~
~[Half-ogre]Half-ogre body and complicated thinking do not go well together. Not necessary, either. Half-ogre hands are strong to hit things. You don't have to think about hitting things. Strong half-ogre hands are also rather plump. Can't read books with them, always tear pages. So, no use for great brain. Only leads to hesitation - and fear. Not good for half-ogre.~
~[Brandock]By the gods - this answer could have been from me. That's *exactly* what I enjoy while being you, er, I mean a half-ogre. That I do *not* think that much about things. But that's exactly why I do miss my magic, and I think I'd like to be able to wield it in half-ogre form, as well.~



/* When ingredients are brought, Tulm can be talked to to do the magic. */

