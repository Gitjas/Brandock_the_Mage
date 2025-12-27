/* SoD content */

/* last follower's dungeon */

I_C_T BDAMMON 4 C#Brando_BDAMMON4
== c#brandj IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN @4 /* [Brandock]Hm... Standing in front of an alchemist's table doing experiments all day... That sounds completely dull - and like something I'll probably end up doing in the future... */
== BDAMMON IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN @5 /* It's the results that matters, young mage. The results! And for that, someone was supposed to help me find the needed ingredients. */
END

I_C_T BDAMMON 17 C#Brando_BDAMMON17
== c#brandj IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN @6 /* [Brandock]You want to apply this to a tome in Candlekeep, and you were preparing this potion *here*? In the family tomb of Korlasz? And will carry the potion all the way to Candlekeep now? (I don't have to understand this, do I?) */
END

I_C_T BDAMMON 18 C#Brando_BDAMMON17
== c#brandj IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN @6 /* [Brandock]You want to apply this to a tome in Candlekeep, and you were preparing this potion *here*? In the family tomb of Korlasz? And will carry the potion all the way to Candlekeep now? (I don't have to understand this, do I?) */
END

I_C_T BDAMMON 20 C#Brando_BDAMMON20
== c#brandj IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN @7 /* [Brandock]You don't even have an entrance book yet? (Am I the only one who thinks she should work on her priorities?) */
END

I_C_T BDAMMON 21 C#Brando_BDAMMON21
== c#brandj IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN @8 /* [Brandock](Psst - <CHARNAME>? I think this woman is c-r-a-z-y.) */
END

/* IF ~~ THEN BEGIN 31 // from: 32.0 30.0
  SAY #45594 /* ~Oh, thank you, thank you! I'll leave for Candlekeep at once. Here, take this as a small token of my appreciation.~ */ */
I_C_T BDAMMON 31 C#Brando_BDAMMON31
== c#brandj IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN @9 /* [Brandock]Well, who would have known. You changed from outcast of your own home and no-entry-without-valuable-book-like-everyone-else to a source of connections and "who know who"! If only you knew when seeking entrance to Candlekeep yourself. */
END

/* IF ~~ THEN BEGIN 33 // from: 32.1 30.2
  SAY #45598 /* ~Fair enough. I had to ask, you understand, yes? Well, I'm off to Candlekeep regardless. Here's a little reward for your help with the moss.~ */ */
I_C_T BDAMMON 33 C#Brando_BDAMMON31
== c#brandj IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN @10 /* [Brandock]Well, who would have known. You changed from outcast of your own home and no-entry-without-valuable-book-like-everyone-else to a source of connections and "who know who"! If only you knew when seeking entrance to Candlekeep yourself. (Thank you for not giving her that signature. That woman scared the hell out of me!) */
END




/* Korlasz defeated, before transition to Ducal Palace  */
CHAIN 
IF ~Global("C#Brando_SoDKorlaszDefeated","GLOBAL",1)~ THEN c#brandj korlasz_defeated
@11 /* [Brandock]We did it! We ended the bandit threat, the threat of war, and did all the cleanup, too. That should be impressive even for Amnish authorities, don't you think? */
END
IF ~~ THEN DO ~SetGlobal("C#Brando_SoDKorlaszDefeated","GLOBAL",2)~ EXIT


/* note about Sarevok's Sword in Korlash's Tomb (bdshkoro.itm) */

APPEND c#brandj 

IF ~Global("C#Brando_bdshkoro","LOCALS",1)~ THEN bdshkoro
SAY @12 /* [Brandock]They sent the sword to Athkatla? - Ah, nothing you can't make to gold in the City of Coin... */
IF ~~ THEN DO ~SetGlobal("C#Brando_bdshkoro","LOCALS",2)~ EXIT
END


END //APPEND




//////////////////////////////////////////////////////////////////////
/* before join-up main SoD campaign */



/* Make Corwin mention Brandock's whereabouts in BG city */
EXTEND_BOTTOM bdschael 39
IF ~!Dead("C#Brandock") !InPartyAllowDead("C#Brandock") 
OR(2)
	Global("C#BrandockSpawn","GLOBAL",0)
	GlobalGT("C#BrandockSpawn","GLOBAL",4)
Global("C#Brandock_Gone","GLOBAL",0)~ THEN JOURNAL @10016 + mynpc
END

APPEND bdschael

IF ~~ THEN mynpc
SAY @13 /* [Corwin]There is a mage named Brandock who claimed to know you. He was last seen outside the Palace's gates. I think he also slept there last night. */
COPY_TRANS bdschael 39 
END

END //APPEND






/* Brandock stands outside the Ducal Palace */

/* 766.482 BD0010.are. DisplayStringHead ~Hey, <CHARNAME>! <CHARNAME>, over here!~ */

BEGIN c#brands

IF ~Global("C#BrandockSpawn","GLOBAL",6)~ THEN sod_meeting
SAY @14 /* [Brandock]<CHARNAME>! <CHARNAME>!! Oh, thank the gods, you heard me. It is so good to see you! */
++ @15 /* Good to see you, too! I feared you were gone! */ + sod_meeting_01
++ @16 /* Hello, Brandock. You are still here, too, as I see. */ + sod_meeting_01
++ @17 /* What are you doing, standing outside the Ducal Palace? */ + sod_meeting_02
END

IF ~~ THEN sod_meeting_01
SAY @18 /* [Brandock]After some time on studying the remains of the De Simplex Magicae and dawdling away time at the Sorcerous Sundries, ongoings caught up with me. Look at all these people! Look at all these frightened people. */
= @19 /* I thought - maybe you would like me to join you again? Ah, I need to be honest. *I* would like to accompany you again. Life seems far easier when I am travelling with you. */
++ @20 /* I've agreed to take forces against this Caelar and her crusade, Brandock. */ + sod_meeting_05
++ @21 /* I have no use for a mage I'd need to babysit, thank you. */ + sod_meeting_06
END

IF ~~ THEN sod_meeting_02
SAY @22 /* [Brandock]Right now - trying not to panic! And waiting for you, actually. */
IF ~~ THEN + sod_meeting_01
END

IF ~~ THEN sod_meeting_04
SAY @23 /* [Brandock]Oh, thank you! I'll try to be of use. */
IF ~~ THEN DO ~SetInterrupt(FALSE)
EraseJournalEntry(@10016)
SetGlobal("C#BrandockSpawn","GLOBAL",8)
SetGlobal("C#BrandockJoined","GLOBAL",1)
SetGlobal("C#Brandock_Dialog","GLOBAL",101)
RealSetGlobalTimer("C#BrandockDialogTimer","GLOBAL",C#BRANDOCK_TIMERSHORT_SOD)
RealSetGlobalTimer("C#BrandockNPCBanterTimer","GLOBAL",C#BRANDOCK_TIMERSHORT)
SetInterrupt(TRUE)
JoinParty()~ EXIT
END

IF ~~ THEN sod_meeting_05
SAY @24 /* [Brandock]I'll happily march against Caelar with you. Anything, anything, but don't leave me inside these lands with people going nuts of fear. I'd rather run into a pointed spear than sit here, feeling like a rabbit in its hole. */
++ @25 /* Then come along. */ + sod_meeting_04
++ @26 /* Wait for me. Be sure to be there when we leave for the crusade, will you? */ + sod_meeting_08
++ @21 /* I have no use for a mage I'd need to babysit, thank you. */ + sod_meeting_06
END

IF ~~ THEN sod_meeting_06
SAY @27 /* [Brandock]Oh, this is too bad... Farewell, then. */
IF ~~ THEN DO ~EraseJournalEntry(@10016)
SetGlobal("C#BrandockJoined","GLOBAL",0)
EscapeArea()~ EXIT
END

IF ~~ THEN sod_meeting_08
SAY @28 /* [Brandock]Yes! I will do that. I'll follow anywhere you'll go, ready in case you need me. Thank you, <CHARNAME>! */
IF ~~ THEN DO ~EraseJournalEntry(@10016) SetGlobal("C#BrandockSpawn","GLOBAL",7)~ EXIT
END

IF ~Global("C#BrandockSpawn","GLOBAL",7)
!AreaCheck("bd0101")~ THEN sod_meeting_09
SAY @29 /* [Brandock]Can I come along now? */
++ @30 /* Yes, join me. */ + sod_meeting_04
++ @31 /* Not at my side, but be sure to come along when we move to camp. */ + sod_meeting_08
++ @32 /* On second thoght, I won't need you, Brandock. */ + sod_meeting_06
END

IF ~Global("C#BrandockSpawn","GLOBAL",7)
AreaCheck("bd0101")~ THEN sod_meeting_10
SAY @33 /* [Brandock]So many people! I'm right behind you, <CHARNAME>. */
IF ~~ THEN EXIT
END




/////////////////////////////////////////////////////////////////////////
/* SoD campaign - I_C_T and scene reactions */



/* Imoen - without I4E the only chance we have to let those two banter is when Brandock comes with CHARNAME before the last night in the Ducal Palace 
Interjection will be short if Imoen rejoins later (I4E is detected, i.e. Global("C#IM_ImoenComesBackSoD","GLOBAL",0) is not set to 1 ) */

I_C_T3 BDIMOEN 85 C#Brandock_ImoenSoD_Palace
== c#brandj IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) !StateCheck("C#Brandock",CD_STATE_NOTVALID) InMyArea("C#Brandock")~ THEN @34 /* [Brandock]Imoen, I can't tell you how glad I am to see you alive and well. */
== BDIMOEN IF ~Global("C#IM_ImoenComesBackSoD","GLOBAL",0)
OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) 
!StateCheck("C#Brandock",CD_STATE_NOTVALID) InMyArea("C#Brandock")~ THEN @100285 
== c#brandj IF ~Global("C#IM_ImoenComesBackSoD","GLOBAL",0)
OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) 
!StateCheck("C#Brandock",CD_STATE_NOTVALID) InMyArea("C#Brandock")~ THEN @100286 
== BDIMOEN IF ~Global("C#IM_ImoenComesBackSoD","GLOBAL",0)
OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) 
!StateCheck("C#Brandock",CD_STATE_NOTVALID) InMyArea("C#Brandock")~ THEN @100287 
== c#brandj IF ~Global("C#IM_ImoenComesBackSoD","GLOBAL",0)
OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) 
!StateCheck("C#Brandock",CD_STATE_NOTVALID) InMyArea("C#Brandock")~ THEN @35 /* [Brandock]I... don't think so. */
== BDIMOEN IF ~Global("C#IM_ImoenComesBackSoD","GLOBAL",0)
OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) 
!StateCheck("C#Brandock",CD_STATE_NOTVALID) InMyArea("C#Brandock")~ THEN @100288
== c#brandj IF ~Global("C#IM_ImoenComesBackSoD","GLOBAL",0)
OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) 
!StateCheck("C#Brandock",CD_STATE_NOTVALID) InMyArea("C#Brandock")~ THEN @100289
== BDIMOEN IF ~Global("C#IM_ImoenComesBackSoD","GLOBAL",0)
OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) 
!StateCheck("C#Brandock",CD_STATE_NOTVALID) InMyArea("C#Brandock")~ THEN @100290
== BDIMOEN IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) 
!StateCheck("C#Brandock",CD_STATE_NOTVALID) InMyArea("C#Brandock")~ THEN @36 /* [Imoen]Thanks, Brandock. Good bye, <CHARNAME>. Take care! */
END



/* HC is working with doppelganger of prison */

I_C_T BDFFDOPP 73 C#Brando_BDFFDOPP_73
== c#brandj IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN @37 /* [Brandock]Ah, it doesn't sit well, making deals with a doppelganger. And on top of it all it's impersonating a Flaming Fist officer! Doesn't it give you the shivers to take gold from it? Could be one of the monsters we faced at Sarevok's side. Could be one of those who infiltrated Candlekeep and killed half of your childhood friends! */
END


/* Rayphus, before departing */
/* It was fear that compelled me, the fear of not rising to the call. And so I took the mantle, and faced my fear—and when I did, I embraced it, and discovered purpose, courage, and life.
(StrRef: 235545) */
I_C_T3 BDRAYPHU 7 C#Brando_BDRAYPHU_7
== c#brandj IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) Detect("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)
GlobalGT("C#Brandock_Shapeshift","GLOBAL",19)~ THEN @38 /* [Brandock]There you have it. Some deal with fear and become a paladin. Others turn into a half-ogre. Life is not fair. */ 
== c#brandP IF ~!InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",0) Detect("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)
GlobalGT("C#Brandock_Shapeshift","GLOBAL",19)~ THEN @38 /* [Brandock]There you have it. Some deal with fear and become a paladin. Others turn into a half-ogre. Life is not fair. */ 
END


/* conspiring nobles */

/* ~You say you would join us in our efforts to, shall we say, improve the city? The hero of Baldur's Gate could be a valuable ally.~ */
I_C_T BDTHERTO 1 C#Brando_BDTHERTO_1
== c#brandj IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN @39 /* [Brandock]...And just when I thought we have enough problems already, we go all political... */
END

/* conspiring nobles. Check whether the PC was straight or not */
ADD_TRANS_ACTION BDARAYA BEGIN 1 END BEGIN 0 END ~SetGlobal("C#Brandock_NoblesSoD","GLOBAL",1)~

APPEND c#brandj

IF ~OR(2) Global("C#Brandock_NoblesSoD","GLOBAL",2)
Global("C#Brandock_NoblesSoD","GLOBAL",3)~ THEN nobles_sod
SAY @40 /* [Brandock]Damn. Did we just have to kill city's nobles? Why... why did they attack? Attacking the hero of Baldur's Gate in their evening wear, who had thought... */
+ ~Global("C#Brandock_NoblesSoD","GLOBAL",3)~ + @41 /* I am grieving about this myself, Brandock. */ + nobles_sod_01
++ @42 /* Planning a conspiracy but not even having mercenaries to do the fighting - no further comment. */ + nobles_sod_03
++ @43 /* They seemed to be very desperate. */ + nobles_sod_01
+ ~Global("C#Brandock_NoblesSoD","GLOBAL",3)~ + @44 /* I don't know what happend there, either. I hope it won't have any negative consequences. */ + nobles_sod_01
++ @45 /* Those idiots didn't deserve better. I did the city a good deed by this. */ + nobles_sod_03
END

IF ~~ THEN nobles_sod_01
SAY @46 /* [Brandock]They literally jumped at you! Even threatening them with murder isn't a reason for someone unarmed to engage in a lethal fight! */
IF ~~ THEN + nobles_sod_02
END

IF ~~ THEN nobles_sod_02
SAY @47 /* [Brandock]Sometimes you don't know how to do it - maybe pretending to agree and then reporting to authorities would have been better.... but, that's not your style, is it? */
+ ~Global("C#Brandock_NoblesSoD","GLOBAL",3)~ + @48 /* What do you mean, 'my style'. Do you think killing them in fight is 'my style'? */ + nobles_sod_04
+ ~Global("C#Brandock_NoblesSoD","GLOBAL",3)~ + @49 /* I tend to tell people honestly what I am planning to do. It tells a lot about human nature if this leads to more violence. */ + nobles_sod_07
++ @50 /* No, it's not. */ + nobles_sod_05
++ @51 /* Whatever, Brandock. What's done is done. */ + nobles_sod_06
END

IF ~~ THEN nobles_sod_03
SAY @52 /* [Brandock]You know, sometimes I envy you for your straight views on this world. */
IF ~~ THEN + nobles_sod_01
END

IF ~~ THEN nobles_sod_04
SAY @53 /* [Brandock]No, of course not! That's what I meant... */
IF ~~ THEN + nobles_sod_06
END

IF ~~ THEN nobles_sod_05
SAY @54 /* [Brandock](scoff) No, indeed. You have to provoke them with a threat... */
IF ~~ THEN + nobles_sod_06
END

IF ~~ THEN nobles_sod_06
SAY @55 /* [Brandock](sigh) Oh well, it's too late now anyhow. */
IF ~~ THEN DO ~SetGlobal("C#Brandock_NoblesSoD","GLOBAL",4)~ EXIT
END

IF ~~ THEN nobles_sod_07
SAY @56 /* [Brandock]Telling the truth is something I value very much - usually. */
IF ~~ THEN + nobles_sod_06
END


/* Takos' burnt-down inn */
IF ~Global("C#Brando_SoD_BurntInn","GLOBAL",1)~ THEN burned_inn
SAY @57 /* [Brandock]This is how the crusade leaves the villages? Look at this destroyed building, <CHARNAME>. It's just smoking ashes... This is what my home town would look like, were the crusade over there. My village would look exactly like this, were it along the path of such a mob. Farmers, Carpenders, bakers, a smith who is used to changing horse shoes and fix broken plows. The next town with a garrison is a day's march away, and it wouldn't be strong enough to fend of such an army, anyway. */
= @58 /* [Brandock]They wouldn't stand a chance - just like the unfortunate villages here. I would meet parts of my family and neighbors in the crusade most likely, forced into service - or they would be dead. For the sake of my home I am so grateful the Crusade is marching so far up north - I know it doesn't make anything better for the people here, but I am still very, very glad this is *not* my home. */
++ @59 /* Yes, I know what you mean. Considering the amount of refugees in Baldur's Gate alone, I can't imagine how many villages now look like this. */ + burned_inn_01
++ @60 /* With the size of that crusade, I guess no village would stand a chance. */ + burned_inn_03
++ @61 /* Let's go on. */ + burned_inn_02
END

IF ~~ THEN burned_inn_01
SAY @62 /* [Brandock]Can't, and I also don't *want* to imagine how many. */
IF ~~ THEN + burned_inn_03
END

IF ~~ THEN burned_inn_02
SAY @63 /* [Brandock](shudders) Let's go on. I fear there is not much we can do to help here. */
IF ~~ THEN DO ~SetGlobal("C#Brando_SoD_BurntInn","GLOBAL",2)~ EXIT
END

IF ~~ THEN burned_inn_03
SAY @64 /* [Brandock]My folks are just farmers, carpenters - villagers, and mages aren't any around. The strongest of them is the smithy. */
IF ~~ THEN + burned_inn_02
END

END //APPEND

I_C_T BDTAKOS 4 C#Brando_BDTAKOS_4
== c#brandj IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN @65 /* [Brandock]Oh no, it's always the same if people are 'inn' the wrong mood... (I didn't just say that to his face. Get it together, Brandock.) */
END


/* Statues in BD1000: */
CHAIN
IF ~Global("C#Brandock_SoDStonePeople","GLOBAL",1)~ THEN c#brandj statues
@66 /* [Brandock]Stonestatues! I meant stone people! Er, people turned to stone! Quick, <CHARNAME>, there seems to be basilisks around. We need to get protection against their gaze! */ DO ~SetGlobal("C#Brandock_SoDStonePeople","GLOBAL",2)~ 
== c#brandj IF ~GlobalGT("BD_PET_MAIN","MYAREA",0)~ THEN @67 /* [Brandock]One, two... it's five, <CHARNAME>. Er... are these the missing people that man talked about? Oh, boy... */
EXIT

/* BDTELERI Global("BD_PET_MAIN","MYAREA",80) */

APPEND c#brandj

IF ~Global("C#Brandock_SoD_BD_PET_MAIN80","GLOBAL",1)~ THEN lure_statues
SAY @68 /* [Brandock]Er, we are not actually *doing* this, right? We are not luring innocent people away so they can be turned into stone, no? You just said that so you don't have to fight that madwoman, yes? */
++ @69 /* No, Brandock. I would never do that to someone. Just let me figure out how we can stop her without having to fight. */ + lure_statues_02
++ @70 /* What if I'm planning to? */ + lure_statues_01
++ @71 /* Why not? It's not like we would kill anyone, just... preserve a little time for them. */ + lure_statues_03
++ @72 /* Yes, we are doing this, and if you have a problem with it, you are free to go. */ + lure_statues_03
END

IF ~~ THEN lure_statues_01
SAY @73 /* [Brandock]Are you out of your mind? */
++ @69 /* No, Brandock. I would never do that to someone. Just let me figure out how we can stop her without having to fight. */ + lure_statues_02
++ @71 /* Why not? It's not like we would kill anyone, just... preserve a little time for them. */ + lure_statues_03
++ @72 /* Yes, we are doing this, and if you have a problem with it, you are free to go. */ + lure_statues_03
END

IF ~~ THEN lure_statues_02
SAY @74 /* [Brandock]Well, thank goodness! Let's fix this while we can. */
IF ~~ THEN DO ~SetGlobal("C#Brandock_SoD_BD_PET_MAIN80","GLOBAL",2)~ EXIT
END

IF ~Global("C#Brandock_SoDLuredStatues","GLOBAL",1)~ THEN lure_statues_03
SAY @75 /* [Brandock]What can I say - I am surprised I misjudged you so. Luring people to their stone deaths, lying to me... I'm not stupid, so I know I can't beat you even if I tried, and I'm not a paladin so I will not charge you for it and risk my life against all odds, but I will not be part of this any longer. Our ways part here, <CHARNAME>. */
IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2)
InMyArea("C#Brandock")
!StateCheck(Myself,CD_STATE_NOTVALID)~ THEN DO ~SetInterrupt(FALSE)
MakeGlobal()
SetGlobal("C#BrandockJoined","GLOBAL",0)
SetGlobal("C#Brandock_Gone","GLOBAL",1)
TakePartyItem("c#br0001")
DestroyItem("c#br0001")
TakePartyItem("c#br0007")
DestroyItem("c#br0007")
ChangeAIScript("",DEFAULT)
LeaveParty()
EscapeArea() SetInterrupt(TRUE)~ EXIT 

/* Brandock was 7th party member */
IF ~InParty("C#Brandock") InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN DO ~SetInterrupt(FALSE)
MakeGlobal()
SetGlobal("C#BrandockJoined","GLOBAL",0)
SetGlobal("C#Brandock_Gone","GLOBAL",1)
ChangeAIScript("",DEFAULT)
RemoveFamiliar()
ChangeEnemyAlly(Myself,NEUTRAL)
TakePartyItem("c#br0001")
DestroyItem("c#br0001")
TakePartyItem("c#br0007")
DestroyItem("c#br0007")
EscapeArea() SetInterrupt(TRUE)~ EXIT
END



/* T. wasn't attacked and PC did not agree to lure people to her but offered to buy the golem */

IF ~Global("C#Brandock_SoDBoughtGolem","GLOBAL",1)~ THEN golem
SAY @76 /* [Brandock]So... it seems you have a golem now. Of which you know nothing - neither what it was designed for, nor to whom it will be loyal to. Oh, don't mind me. I'm sure it will be alright. */
IF ~~ THEN DO ~SetGlobal("C#Brandock_SoDBoughtGolem","GLOBAL",2)~ + teleri_defeated
END

END //APPEND

ADD_TRANS_ACTION BDTELERI BEGIN 28 END BEGIN 0 END ~SetGlobal("C#Brandock_SoD_GotSCRLPET","GLOBAL",1)~

APPEND c#brandj

IF ~Global("C#Brandock_SoD_GotSCRLPET","GLOBAL",2)~ THEN teleri_scrolls
SAY @77 /* [Brandock]So, not only did you talk that madwoman into giving up on her 'art' project and allowing you to free those people, you actually made her giving us 5! - scrolls of stone to flesh to do so! I'm not decided whether I should be impressed - or scared. */
IF ~~ THEN DO ~SetGlobal("C#Brandock_SoD_GotSCRLPET","GLOBAL",3)~ + teleri_defeated
END

END //APPEND

/* PC defeated Teleri */
CHAIN
IF ~Global("C#Brandock_SoDTeleriEnd","GLOBAL",1)~ THEN c#brandj teleri_defeated
@78 /* [Brandock]What a madwoman! At least the poor souls she petrified can be saved now. */ DO ~SetGlobal("C#Brandock_SoDTeleriEnd","GLOBAL",2)~
== c#brandj IF ~GlobalGT("C#Br_LorePathNarcillicusBG1","GLOBAL",1)~ THEN @79 /* [Brandock]At least she had the decency not to attack us with basilisks like this crazy dwarf we met in the wilderness... and yes that was a meak attempt for a jest. */
END
IF ~Dead("BDTELERI")~ THEN + teleri_defeated_02
IF ~!Dead("BDTELERI")~ THEN + teleri_defeated_01


APPEND c#brandj

IF ~~ THEN teleri_defeated_01
SAY @80 /* [Brandock]I'm not sure it was a wise decision to let her go like this, though. I mean it's obvious her 'art' is supposed to consume living persons, one way or another! */
IF ~~ THEN EXIT
END

IF ~~ THEN teleri_defeated_02
SAY @81 /* [Brandock]I'll have a look at that woman's spell book. She doesn't need it any more... */
IF ~~ THEN DO ~ReallyForceSpellRES("c#brlob1",Myself) IncrementGlobal("C#Br_LorePathIncrease","GLOBAL",1)~ EXIT
END
END //APPEND

/* inside crusader camp at Bridgefort */
CHAIN
IF ~Global("C#Brando_SoD_InsideCrusCampB","GLOBAL",1)~ THEN C#BrandJ inside_crusader_camp_bridgefort
@82 /* [Brandock]Ooh dear. Here we are. - I'll be quiet. I'll be veeery quiet. I won't say a word! - Let's be quick so we can leave again, <CHARNAME>, yes? */
DO ~SetGlobal("C#Brando_SoD_InsideCrusCampB","GLOBAL",2)~
== C#BrandJ IF ~Global("bd_sdd201_missing_patrol","GLOBAL",3)
		GlobalLT("bd_plot","global",201)~ THEN @83 /* [Brandock]If we hadn't a good reason to be here I'll be really freaking out right now. */
EXIT


/* Bridgefort */

/* curse in Bridgefort */
/* BDBF2 
IF ~~ THEN BEGIN 2 // from:
  SAY #43443 /* ~That's all well and good, but what are we going to do about it?~ */
*/
EXTEND_BOTTOM BDBF2 2
+ ~Class("C#Brandock",MAGE_ALL) OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ + @84 /* Brandock, do you see anything here? */ EXTERN C#BrandJ enchanted_stone
END

APPEND C#BrandJ
IF ~~ THEN enchanted_stone
SAY @85 /* [Brandock]The curse is getting stronger - I fear it will weaken so much that it will eventually kill everyone inside. I'd need to see the original curse to be able to say anything about how it can be broken. */
COPY_TRANS BDBF2 2
END

/* Arcane Scroll of Impactful Doom, PartyHasItem("BDSCRL02") */
IF ~Global("C#Brando_SoDScrollOfDoom","GLOBAL",1)~ THEN doom_scroll
SAY @86 /* [Brandock](sigh) Seeing something like this I start to wonder whether I chose the right profession... I know I do harmful magics as well to damage our foes, but... this has an evil cling to it. At least we know how to stop the energy drain now, before more people inside the fort will die. */
= @87 /* [Brandock]Er, I'm talking about the scroll. Who calls their own creation "Arcane Scroll of Impactful Doom"? */
IF ~~ THEN DO ~SetGlobal("C#Brando_SoDScrollOfDoom","GLOBAL",2)~ EXIT
END

END //APPEND

EXTEND_BOTTOM bdwynan 14 
+ ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ + @88 /* I do. Brandock, would you use it and end the stone's curse? */ EXTERN c#brandj bridgefort_stone
END

I_C_T3 bdwynan 21 C#Brando_bdwynan_21
== c#brandj IF ~Global("c#_bd_sdd200_brandock","bd2100",1)
OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN @89 /* [Brandock]NonononoNO dammit - */
== c#brandj IF ~Global("c#_bd_sdd200_brandock","bd2100",0)
!IsValidForPartyDialogue("Edwin")
OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN @90 /* [Brandock]Ooh, this doesn't - */
END

I_C_T bdwynan 22 C#Brando_bdwynan_22
== c#brandj IF ~Global("c#_bd_sdd200_brandock","bd2100",1)
OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN @91 /* [Brandock]I felt it - I *felt* it the moment I spoke the words. This mage knew what he was doing! */
END

APPEND c#brandj

IF ~~ THEN BEGIN bridgefort_stone
  SAY @92 /* [Brandock]I - I could try... Yes, I can do that. */
  IF ~~ THEN DO ~SetGlobal("BD_SDD200","GLOBAL",3)
SetGlobal("BD2100GL","GLOBAL",3)
SetGlobal("c#_bd_sdd200_brandock","bd2100",1)
StartCutSceneMode()
ClearAllActions()
StartCutSceneEx("c#brcugl",FALSE)
~ EXIT
END

END //APPEND


EXTEND_BOTTOM BDVIDYAD 9
+ ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ + @93 /* Brandock, any ideas? */ EXTERN c#brandj answer_bees
END

APPEND c#brandj

IF ~~ THEN BEGIN answer_bees
  SAY @94 /* [Brandock]Erm... that all points to "bees". But I'm not sure that answer is actualy inside the scope of this riddle?... */
  IF ~~ THEN EXTERN BDVIDYAD 10
END

IF ~~ THEN safana_military_code
SAY @95 /* [Brandock]Er... they have no magical meaning that I know of. Rather... some kind of writing? */
COPY_TRANS bdsafana 92
END

IF ~~ THEN safana_military_code_j
SAY @95 /* [Brandock]Er... they have no magical meaning that I know of. Rather... some kind of writing? */
COPY_TRANS BDSAFANJ 231
END
END //APPEND

EXTEND_BOTTOM BDSAFANA 92
+ ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)
!IsValidForPartyDialogue("Khalid")~ + @96 /* Brandock, can you make anything of these symbols? */ EXTERN c#brandj safana_military_code
END

EXTEND_BOTTOM BDSAFANJ 231
+ ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)
!IsValidForPartyDialogue("Khalid")~ + @96 /* Brandock, can you make anything of these symbols? */ EXTERN c#brandj safana_military_code_j
END

/* catapult at castle */
I_C_T BDHELDMO 5 C#Brando_BDHELDMO_5
== c#brandj IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN @97 /* [Brandock]Alright, that was effective - but I feel sorry for him. Anyone else feels sorry for this man? */
END


/* Elandro and the Feyr */
/* bdelandr.d */
I_C_T bdelandr 1 C#Brando_bdelandr_1
== c#brandj IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN @98 /* [Brandock]There is a difference in doing experiments and doing things where you *know* it will go wrong... But yes, I'm definitely the wrong to talk to here. */
END

I_C_T bdelandr 2 C#Brando_bdelandr_2
== c#brandj IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN @99 /* [Brandock]Well, thank goodness. This would have been one of those 'I'm dying to see the results' kind of experiments. Literally... */
END

I_C_T bdelandr 12 C#Brando_bdelandr_12
== c#brandj IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN @100 /* [Brandock]Oh, how I do know how that feels... <CHARNAME>, the atmosphere is thick with despair, I'm barely holding it together myself. Gods, why do I have to be so receptive towards people's emotions... */
END

I_C_T bdelandr 18 C#Brando_bdelandr_18
== c#brandj IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN @101 /* [Brandock]Good gods - what a nightmare... */
END

/* chicken in the well easter egg */
I_C_T3 BDDOGW01 1 C#Brando_BDDOGW01_1
== c#brandj IF ~!GlobalGT("C#Brandock_Shapeshift","GLOBAL",8)
OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN @102 /* [Brandock]Am I the onle one who has the feeling this dog is watching over that chicken? */
== c#brandj IF ~GlobalGT("C#Brandock_Shapeshift","GLOBAL",8)
OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN @103 /* [Brandock]And to add to the creepiness, now an *almost* talking dog appeared out of nowhere who seems to be watching over that chicken. I'll... I'll be over there until this is done. */
END

/* "knotted" Wyverns - in case Jaheira talks first */
I_C_T bdjaheij 47 C#Brando_BD_SDD317_WYRMS
== c#brandj IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN @104 /* [Brandock]This... this feeling - it's so intense! Pain and sorrow, and anger... and *pain*! It's nearly taking my breath away. */
END

/* "knotted" Wyverns - in case M'Khiin talks first */
I_C_T bdmkhiij 80 C#Brando_BD_SDD317_WYRMS
== c#brandj IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN @105 /* [Brandock]This... this feeling - it's so intense! Pain and sorrow... and *pain*! It's nearly taking my breath away. */
END

/* "knotted" Wyverns - in case Dynaheir talks first */
I_C_T bddynahj 85 C#Brando_BD_SDD317_WYRMS
== c#brandj IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN @104 /* [Brandock]This... this feeling - it's so intense! Pain and sorrow, and anger... and *pain*! It's nearly taking my breath away. */
END

/* "knotted" Wyverns - in case Minsc talks first */
I_C_T bdminscj 85 C#Brando_BD_SDD317_WYRMS
== c#brandj IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN @104 /* [Brandock]This... this feeling - it's so intense! Pain and sorrow, and anger... and *pain*! It's nearly taking my breath away. */
END

APPEND c#brandj

IF ~Global("C#Brando_BD_SDD317_WYRMS","GLOBAL",2)~ THEN tangled_wyrms
SAY @106 /* [Brandock]This... this feeling - it's so intense! Pain and sorrow, and anger... and *pain*! Something gruesome awaits us near here, <CHARNAME> - it's nearly taking my breath away. */
IF ~~ THEN DO ~SetGlobal("C#Brando_BD_SDD317_WYRMS","GLOBAL",3)~ EXIT
END

END //APPEND


/* coalition camp - training the recruits */
/* Hester */
EXTEND_BOTTOM BDHESTER 6
+ ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ + @107 /* Brandock, any advice for our nervous private how to overcome his fear in battle? */ EXTERN c#brandj teach_hester
END

EXTEND_BOTTOM BDHESTER 14
+ ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ + @107 /* Brandock, any advice for our nervous private how to overcome his fear in battle? */ EXTERN c#brandj teach_hester
END

CHAIN
IF ~~ THEN c#brandj teach_hester
@108 /* [Brandock]What? Just because I'm nervous as hell and fought - haha, what a game of words! - my way into not losing my head in battle (and over a lot of trivial things for that matter) doesn't make me a good advisor! I'd rather suggest I'll keep my distance to this poor chap until he learned how to focus positive energy to overcome the feelings of inevitable doom... */
== c#brandj IF ~GlobalGT("C#Brandock_XanBG1","GLOBAL",0)~ THEN @109 /* [Brandock](Great... now I even sound like Xan!) */
== BDHESTER @110 /* [Hester]That's it! I feel absolutely and utterly doomed... like the sword is already at my throat, no matter what I'll do. */
== bdimoen IF ~IsValidForPartyDialogue("%IMOEN_DV_SOD%")~ THEN @111 /* [Imoen]Uh-oh... I'm not sure this conversation is going the direction it should. */
== c#brandj @112 /* [Brandock]And so weak that anything you'll do won't change a thing, right? Anyone could do this better - just being on the battle field will probably lead to allies dying because we do not really belong there. */
== BDHESTER @113 /* [Hester]That's... that's exactly what I'm feeling. I'll die in the battle anyway - but I'll probably also take friends with me who could have lived otherwise. But you... you overcame these feelings? */
== c#brandj @114 /* [Brandock]Yes, I did - but it was a long way, and I'm still not finished. It's a tedious fight against your own anxiety - and it starts every day anew. But to know that there are friends to fight and die *for* helps me to overcome it - because if I'll have to die anyway, I want to take as many of them bastards with me so they can't threaten my loved ones any more. */
= @115 /* [Brandock]Gods, why am I still talking to this poor man? My babbling probably dragged him down so much he's thinking about how to escape this whole thing now. */
== BDHESTER @116 /* [Hester]No! On the contrary. I... I have hope now. Everyone I ever talked to made it sound like not being afraid is the normal way to be, and that I'd have to overcome my fear *right now* or I'd be doomed. So I believed to be doomed, because I couldn't just stop being anxious. You confirmed what I always thought: that I'm not strange - and that it's not easy. But you managed to overcome your fears - and so will I! */
== bdimoen IF ~IsValidForPartyDialogue("%IMOEN_DV_SOD%")~ THEN @117 /* [Imoen]Wait - did we just fight fire with fire? And it *worked*? */
== c#brandj @118 /* [Brandock]You... you do? This is fabulous! That means you made the first, huge step to overcoming your fears! You faught your first battle - and it could have been the most difficult one. How do you feel? */
END
IF ~~ THEN DO ~IncrementGlobal("BD_FIGHTERS_SKILL","BD3000",2)
SetGlobal("bd_sdd301_hester_skill","global",2)~ EXTERN bdhester 13

/* Garrold */
EXTEND_BOTTOM BDGARROL 1
+ ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ + @119 /* Brandock, you seem like you want to say something? */ EXTERN c#brandj teach_garrold
END

CHAIN
IF ~~ THEN c#brandj teach_garrold
@120 /* [Brandock]You have a certain way of conentrating when doing your fight patterns. You seem to enjoy memorizing things. Watching you reminds me of my early years as a mage apprentice - where the precise execution of specific steps is crucial, lest one dies from one's own mislead magic... */
== BDGARROL @121 /* [Garrold]I am here because I think it's my duty. I did enjoy my schooling, but waving weapons around doesn't feel right, it's so arbitrary... Mage, you say? */
== c#brandj @122 /* [Brandock]You definitely have potential. More than with what you do here. Would the battle mages take on new recruits as well? */
END
IF ~~ THEN DO ~IncrementGlobal("BD_FIGHTERS_SKILL","BD3000",2)
SetGlobal("bd_sdd301_garrold_skill","global",2)~ EXTERN BDGARROL 3

/* Coroniir board game against Knight Commander Tristian */
/* bdtristi */
EXTEND_BOTTOM bdtristi 14
  + ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ + @123 /* Brandock. */ DO ~SetGlobal("bd_tristian_vs_npc","locals",1)
~ EXTERN c#brandj tristi_boardgame
END

CHAIN
IF ~~ THEN c#brandj tristi_boardgame
@124 /* [Brandock]Gods, <CHARNAME>... I will try my best. */
== c#brandj IF ~Global("C#Brando_SoDbdmisc22","GLOBAL",2)~ THEN @125 /* [Brandock]You just had to take me up on what I said, yes? */
END 
IF ~~ THEN EXTERN ~BDTRISTI~ 15



APPEND c#brandJ 

/* after first dream of Sarevok-slayer */

IF WEIGHT #-1
~Global("C#Brandock_SoDNightmare","GLOBAL",1)~ THEN first_nightmare
SAY @126 /* [Brandock]You had a nightmare, again. */
++ @127 /* This time it was Sarevok talking to me. */ + first_nightmare_01
++ @128 /* Well, noone really expected them to stop now that I know where they come from, no? */ + first_nightmare_11 
++ @129 /* Whatever, Brandock. I'm fine. */ + first_nightmare_06
END

IF ~~ THEN first_nightmare_01
SAY @130 /* [Brandock]Oh, another fallen foe who gets into an alleged dialogue with you? How original! */
++ @131 /* He turned into some obscure creature with huge fangs... */ + first_nightmare_02
++ @132 /* He turned into the slayer, my father's avatar. */ + first_nightmare_03
++ @133 /* I don't want to talk about this, Brandock. */ + first_nightmare_06
END

IF ~~ THEN first_nightmare_02
SAY @134 /* [Brandock]Hmmm ... Sounds a bit like the slayer, avatar of your father. */
IF ~~ THEN + first_nightmare_03
END

IF ~~ THEN first_nightmare_03
SAY @135 /* [Brandock]So, your heritage gives you dreams about your heritage. It's a little less thrilling if put like that. */
+ ~GlobalGT("C#RtD_MetHoodedMan","GLOBAL",0)~ + @136 /* The Hooded Man was there, too. He asked whether I'd 'see' something or not. */ + first_nightmare_04
+ ~Global("C#RtD_MetHoodedMan","GLOBAL",0)~ + @137 /* Someone asked whether I'd 'see' something or not. */ + first_nightmare_04
++ @138 /* I think it just wanted to scare and hurt me. */ + first_nightmare_05
++ @139 /* It was just a dream. */ + first_nightmare_07
++ @133 /* I don't want to talk about this, Brandock. */ + first_nightmare_06
END

IF ~~ THEN first_nightmare_04
SAY @140 /* [Brandock]Any idea what it means? */
++ @141 /* No, not really. */ + first_nightmare_07
++ @142 /* How Sarevok and I were connected, maybe? */ + first_nightmare_07
++ @138 /* I think it just wanted to scare and hurt me. */ + first_nightmare_05
++ @139 /* It was just a dream. */ + first_nightmare_07
++ @133 /* I don't want to talk about this, Brandock. */ + first_nightmare_06
END

IF ~~ THEN first_nightmare_05
SAY @143 /* [Brandock]Did it succeed? */
++ @144 /* No. I will not be scared, hurt, or even tempted by my father's heritage! */ + first_nightmare_10 
++ @145 /* A little. */ + first_nightmare_09
++ @146 /* This whole thing is still so new and shocking I am not sure I need my subconsciousness adding to it. */ + first_nightmare_08
++ @139 /* It was just a dream. */ + first_nightmare_07
++ @133 /* I don't want to talk about this, Brandock. */ + first_nightmare_06
END 

IF ~~ THEN first_nightmare_06
SAY @147 /* [Brandock]Then we won't talk about it. I hope you got some rest nevertheless, though. */
IF ~~ THEN DO ~SetGlobal("C#Brandock_SoDNightmare","GLOBAL",2)~ EXIT
END

IF ~~ THEN first_nightmare_07
SAY @148 /* [Brandock]I fear that it wasn't the last one - I'm sure there will be more dreams to ponder. */
IF ~~ THEN DO ~SetGlobal("C#Brandock_SoDNightmare","GLOBAL",2)~ EXIT
END

IF ~~ THEN first_nightmare_08
SAY @149 /* [Brandock]True. */
IF ~~ THEN + first_nightmare_07
END

IF ~~ THEN first_nightmare_09
SAY @150 /* [Brandock]I really think this could be one of those self-fulfilling prophecy kind of things, so don't let it scare you - or hurt you. */
IF ~~ THEN + first_nightmare_07
END

IF ~~ THEN first_nightmare_10
SAY @151 /* [Brandock]I really think this could be one of those self-fulfilling prophecy kind of things, so it's good to hear you talking like this. */
IF ~~ THEN + first_nightmare_07
END

IF ~~ THEN first_nightmare_11
SAY @152 /* [Brandock]Hey! That should have been my line. */
++ @127 /* This time it was Sarevok talking to me. */ + first_nightmare_01
++ @129 /* Whatever, Brandock. I'm fine. */ + first_nightmare_06
END


/* many mentionings of Athkatla */

IF ~Global("C#Brando_bdscrl1","LOCALS",1)~ THEN athkatla_everywhere
SAY @153 /* [Brandock]Athkatla, Athkatla - is it me or is the name of my home's capital mentioned a bit too often lately? */
++ @154 /* It is a big city and capital with lots of trade. */ DO ~SetGlobal("C#Brando_bdscrl1","LOCALS",2)~ + athkatla_everywhere_04
++ @155 /* Yes, there are even mages from Athkatla around, or so I heard. */ DO ~SetGlobal("C#Brando_bdscrl1","LOCALS",2)~ + athkatla_everywhere_05
++ @156 /* What do you mean? */ DO ~SetGlobal("C#Brando_bdscrl1","LOCALS",2)~ + athkatla_everywhere_04
++ @157 /* Whatever, Brandock. */ DO ~SetGlobal("C#Brando_bdscrl1","LOCALS",2)~ + athkatla_everywhere_01
END

IF ~~ THEN athkatla_everywhere_01
SAY @158 /* [Brandock]I guess I am taking it way too seriously. It surely is a coincidence. And if not, it probably doesn't have anything to do with you. */
IF ~~ THEN EXIT
IF ~OR(5)
		PartyHasItem("bdure2a") 
		HasItem("bdure2a","C#Solaufein")
		HasItem("bdure2a","C#Grey")
		HasItem("bdure2a","C#Husam1")
		HasItem("bdure2a","C#Brandock")
	OR(3)
		!HasItem("bdure2a","C#Solaufein")
		Global("C#SolauJoined","GLOBAL",2)
		InParty("C#Solaufein")
	OR(3)
		!HasItem("bdure2a","C#Grey")
		Global("C#GreyJoined","GLOBAL",2)
		InParty("C#Grey")
	OR(3)
		!HasItem("bdure2a","C#Husam1")
		Global("C#HusamJoined","GLOBAL",2)
		InParty("C#Husam1")
	OR(3)
		!HasItem("bdure2a","C#Brandock")
		Global("C#BrandockJoined","GLOBAL",2)
		InParty("C#Brandock")~ THEN + athkatla_everywhere_02
END

IF ~~ THEN athkatla_everywhere_02
SAY @159 /* [Brandock]Er, except this very note, of course. */
IF ~~ THEN + athkatla_everywhere_03
END

IF ~Global("C#Brando_bdure2a","LOCALS",1)~ THEN athkatla_everywhere_03
SAY @160 /* [Brandock]Well, I guess it was only a matter of time until some shady organisation took interest in you... I shouldn't be so surprised. */
IF ~~ THEN DO ~SetGlobal("C#Brando_bdure2a","LOCALS",2)~ EXIT
END

IF ~~ THEN athkatla_everywhere_04
SAY @161 /* [Brandock]Such clusters are not normal. Or did we stumble upon several unrelated notes about ongoings in Kara-Tur while travelling the Sword Coast? Or an increasing interest in Waterdeep? No, it's always Athkatla lately. */
IF ~~ THEN + athkatla_everywhere_01
END

IF ~~ THEN athkatla_everywhere_05
SAY @162 /* [Brandock]Really? We should teach 'em a lesson, we should! Heh. */
IF ~~ THEN + athkatla_everywhere_04
END

END //APPEND

/* Vampire */


I_C_T BDTSOLAK 2 C#Brando_BDTSOLAK_2
== c#brandj IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN @163 /* [Brandock]Did that vampire just appeal to our sense of justness? That's... unexpected. (And... well, quite audacious.) */
END

I_C_T BDTSOLAK 3 C#Brando_BDTSOLAK_3
== c#brandj IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN @163 /* [Brandock]Did that vampire just appeal to our sense of justness? That's... unexpected. (And... well, quite audacious.) */
END


/* musings about vampire Tsolak */

APPEND c#brandj


IF ~Global("C#Brando_BDTSOLAK_2","GLOBAL",2)~ about_tsolak
SAY @164 /* [Brandock]What a perplexing moment - a monster arguing about the righteousness in killing it although it didn't do anything evil to *us*. Very unsettling, a monster that starts arguing. I mean... no, they can't do that! What a philosophical question! Do we have the right to kill a non-hostile monster, just because its way of living will lead it to killing people? */

+ ~!Dead("bdisabel")~ + @165 /* Yes! This is not a question, Brandock. */ + about_tsolak_06
+ ~!Dead("bdisabel")~ + @166 /* There were vampire hunters. Their word was good enough to me. */ + about_tsolak_06
++ @167 /* Not an easy decision. It never is. */ + about_tsolak_01
+ ~Dead("bdisabel")~ + @168 /* There is no sense in useless killing. The vampire didn't do anything to me, nor was it threatening anyone in particular. */ + about_tsolak_05
+ ~Dead("bdisabel")~ + @169 /* I'd say no to that. I only need to kill what is threatening me. */ + about_tsolak_05
++ @170 /* I go where the gold is leading me. */ + about_tsolak_03
END

IF ~~ THEN about_tsolak_01
SAY @171 /* [Brandock]There is a line that shouldn't be crossed. A creature *living* of other people... */
IF ~!Dead("bdisabel")~ THEN + about_tsolak_02
IF ~Dead("bdisabel")~ THEN + about_tsolak_04
END

IF ~~ THEN about_tsolak_02
SAY @172 /* [Brandock]I am glad you didn't let yourself be talked into sparing that vampire. I am not sure I would have been so steadfast. Imagine it starting a 'but I only drink of animals' discussion. */
IF ~~ THEN + about_tsolak_08
END

END //APPEND

CHAIN
IF ~~ THEN c#brandj about_tsolak_03
@173 /* [Brandock]Rrrrright. I think I should reevaluate my motivation why I am following you. */
== c#brandj IF ~Global("C#Brando_BDFFDOPP_73","GLOBAL",1)~ THEN @174 /* [Brandock]You are true to your motives then, though. Considering you took a sack of gold from that doppelganger, as well. */
END
IF ~!Dead("bdisabel")~ THEN + about_tsolak_02
IF ~Dead("bdisabel")~ THEN + about_tsolak_04

APPEND c#brandj

IF ~~ THEN about_tsolak_04
SAY @175 /* [Brandock]Now the vampire hunters are dead. On the other hand... Well, yes, it was kind of *their* decision to go hostile. */
IF ~~ THEN + about_tsolak_07
END

IF ~~ THEN about_tsolak_05
SAY @176 /* [Brandock]But it led to useless killing! Don't you see it? Two people are dead because of a cunning monster starting to argue! Do you think *it* lets itself argue into not drinking of its victims? */
IF ~~ THEN + about_tsolak_01
END

IF ~~ THEN about_tsolak_06
SAY @177 /* [Brandock]I totally agree, <CHARNAME>. In theory, I am all steadfast in deciding this. But when facing it... */
IF ~~ THEN + about_tsolak_01
END

IF ~~ THEN about_tsolak_07
SAY @178 /* [Brandock](sigh) Still, I am happy you got to decide this, <CHARNAME>. But I have doubts it was a good decision. */
IF ~~ THEN + about_tsolak_08
END

END //APPEND

CHAIN
IF ~~ THEN c#brandj about_tsolak_08
@179 /* [Brandock]What makes me wonder, though - do you also question yourself what 'important mission' it was supposed to be on? With contacts and 'masters' in far away lands? A vampire? What am I missing here? */ DO ~SetGlobal("C#Brando_BDTSOLAK_2","GLOBAL",3)~
== c#brandj IF ~OR(5)
		PartyHasItem("dbscrl1") 
		HasItem("dbscrl1","C#Solaufein")
		HasItem("dbscrl1","C#Grey")
		HasItem("dbscrl1","C#Husam1")
		HasItem("dbscrl1","C#Brandock")
	OR(3)
		!HasItem("dbscrl1","C#Solaufein")
		Global("C#SolauJoined","GLOBAL",2)
		InParty("C#Solaufein")
	OR(3)
		!HasItem("dbscrl1","C#Grey")
		Global("C#GreyJoined","GLOBAL",2)
		InParty("C#Grey")
	OR(3)
		!HasItem("dbscrl1","C#Husam1")
		Global("C#HusamJoined","GLOBAL",2)
		InParty("C#Husam1")
	OR(3)
		!HasItem("dbscrl1","C#Brandock")
		Global("C#BrandockJoined","GLOBAL",2)
		InParty("C#Brandock")~ THEN @180 /* [Brandock]Seeing how it is *Athkatla* it was supposed to go, I wonder whether I'll meet some of his friends again when I'll return home. I sure as hell hope I don't! */
EXIT



/* bandits in bd7100 */

/* BDURE10B bandits that flee when they recognize CHARNAME */
I_C_T BDURE10B 1 C#Brando_BDURE10B_1
== c#brandj IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN @181 /* [Brandock]Finally! Your deeds are remembered and make life easier for us. It can't be that your power only draws more powerful enemies, right? We *have* to profit from it sometimes, too! I have waited for this for so long. And all we had to do was merely saving the Sword Coast!... */
END


APPEND c#brandj

/* green dragon bd7210 */

IF ~Global("C#Brando_SoDMorentherene","GLOBAL",1)~ THEN morentherene
SAY @182 /* [Brandock]Oh m... (Brandock's sentence ends in a choked sound. He points frantically with his finger, mouthing 'DRAGON!'.) */
IF ~~ THEN DO ~SetGlobal("C#Brando_SoDMorentherene","GLOBAL",2)~ EXIT
END

/* Skie fighting off crusaders in bd7000 */

IF ~Global("C#Brando_SoDSkie7000","GLOBAL",2)~ THEN morentherene
SAY @183 /* [Brandock]Er, that was Skie, right? Skie? The Duke's daughter, the 'I will never leave Eldoth'-Skie, the 'I broke a finger nail'-Skie? This Skie, that was her, right? */
= @184 /* [Brandock]Maybe I should join the Flaming Fist so I will become brave, too. (mumbles) */
IF ~~ THEN DO ~SetGlobal("C#Brando_SoDSkie7000","GLOBAL",3)~ EXIT
END

END //APPEND


/* PC threatens to kill the crusaders with the spikes in bd7230.are */
I_C_T bdkharmy 6 C#Brando_bdkharmy_6
== c#brandj IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN @185 /* [Brandock]Er, you are not planning on using the spike trap, are you? That would be... evil. I mean - really, *really* evil. */
END




/* PC handed over the Bridgefort Castle to the crusaders */

I_C_T BDKHALIJ 33 C#Brando_bd_betrayal_discussion
== c#brandj IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN @186 /* [Brandock]Whoa, <CHARNAME>, this cost a lot of lives... But was it more than if we would have fought - I don't know, and I am glad I didn't have to make this decision. */
END

APPEND c#brandj

/* dusty chicken 
bdchickn.itm */

IF ~Global("C#Brando_SoDChicken","LOCALS",1)~ THEN dusty_chicken
SAY @187 /* [Brandock]Why are we taking this chicken along? Oh, gods - it's not going to start *talking*, is it? (I will not talk to it. I will *not*.) */
++ @188 /* No worries, Brandock. This is an ordinary chicken - maybe a little dusty. */ + dusty_chicken_01
++ @189 /* (You lower your ear to the chicken's head, pretending to listen) What? Yes? You think? */ + dusty_chicken_03
++ @190 /* Let's keep moving, Brandock. */ + dusty_chicken_02
END

IF ~~ THEN dusty_chicken_01
SAY @191 /* [Brandock]But why are we taking it along? It already tricked itself into your backpack, and I don't know why! I know that there is a trivial explanation. But the only trivial explanation coming into my mind is - that it's a magical chicken! */
IF ~~ THEN + dusty_chicken_02
END

IF ~~ THEN dusty_chicken_02
SAY @192 /* [Brandock]Whatever it wants - I'm not gonna help it! */
IF ~~ THEN DO ~SetGlobal("C#Brando_SoDChicken","LOCALS",2)~ EXIT
END

IF ~~ THEN dusty_chicken_03
SAY @193 /* [Brandock]What... what are you... Please tell me you are joking! */
++ @194 /* Yes, I was joking. Sorry, Brandock. */ + dusty_chicken_04
++ @195 /* It's Melicamp's cousin, and she wants me to tell you -  */ + dusty_chicken_05
++ @196 /* Did you just turn pale? Hahaha, you think this is another Melicamp? */ + dusty_chicken_04
++ @190 /* Let's keep moving, Brandock. */ + dusty_chicken_02
END

IF ~~ THEN dusty_chicken_04
SAY @197 /* [Brandock](exhales) This is not a joking matter, <CHARNAME>. I... I do get it, though. (smiles) */
IF ~~ THEN + dusty_chicken_01
END

IF ~~ THEN dusty_chicken_05
SAY @198 /* [Brandock]WHA - NO! (Brandock covers his ears for a moment, before realizing the mischief in your eyes.) */
IF ~~ THEN + dusty_chicken_04
END

END //APPEND

/* reaction to spider egg -bdegg01.itm - spider egg [bgqe] ~Reminds me of another egg we got some time ago...~ */

CHAIN
IF ~Global("C#Brando_SoDSpiderEgg","LOCALS",1)~ THEN c#brandj spider_egg
@199 /* [Brandock]Is it a good idea to place a spider egg inside one's backpack? */
== BDJAHEIJ IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @200 /* [Jaheira]It's a child of nature, just as you and I. But we are well adviced not to let it hatch while we carry it around. */
== c#brandj IF ~OR(2)
GlobalGT("C#Q04_WyvernDeliverer","GLOBAL",5)
GlobalGT("C#Q04_ThalantyrSpider","LOCALS",0)~ THEN @201 /* [Brandock]Kind of reminds me of that spider egg you got back there in a cave by a kidnapped delivery man, do you remember? */
== c#brandj @202 /* [Brandock]We do know how to prevent it from hatching. Yes? Yes? */
== c#brandj IF ~GlobalGT("C#Brandock_GavinBG1NPC","GLOBAL",0)~ THEN @203 /* [Brandock]Oh boy, am I glad Gavin is not here right now. */
END
IF ~~ THEN DO ~SetGlobal("C#Brando_SoDSpiderEgg","LOCALS",2)~ EXIT


/* more Item reactions */
/* BDMISC21 Hephernaan's Ritual Notes -> lorepath */

/* bdmisc22 Coroniir boardgame */

APPEND c#brandj
IF ~Global("C#Brando_SoDbdmisc22","GLOBAL",1)~ THEN coroniir
SAY @204 /* [Brandock]This is an interesting strategy game! Oh, I wished we'd play it for some. I always loved to play games like these - but usually didn't have a suitable opponent. Besides, these things were seen as idling away time, which was never an acceptable way to spend one's time where I come from. */
IF ~~ THEN DO ~SetGlobal("C#Brando_SoDbdmisc22","GLOBAL",2)~ EXIT
END

/* bdamul02 "Archer's Eyes" */
IF ~Global("C#Brando_SoDbdamul02","GLOBAL",1)~ THEN archers_eyes
SAY @205 /* [Brandock]Those are *real* eyes, probably really from some famous archer. I mean... They could have given the magic to literally everything... */
IF ~~ THEN DO ~SetGlobal("C#Brando_SoDbdamul02","GLOBAL",2)~ EXIT
END

/* bdclck06 "Cloak of Minor Arkana" */
IF ~Global("C#Brando_SoDbdclck06","GLOBAL",1)~ THEN cloak_minor_arkana
SAY @206 /* [Brandock]This cloak is a dream for any mage. Maybe not as much for an *adventuring* mage as it doesn't grant any protection, but its magic - I'd call it profession enhancements - are formidable. */
IF ~~ THEN DO ~SetGlobal("C#Brando_SoDbdclck06","GLOBAL",2)~ EXIT
END

/* bdalnt07 -02 */
IF ~Global("C#Brando_SoDbdalnt","GLOBAL",2)~ THEN alveus_notes
SAY @207 /* [Brandock]These thoughts and - "wisdoms" of the "greates first level mage" are hilarious. Not the megalomanicial ones, but the "how do I minimize the risk while adventuring" ones. I knew people who thought that way. It's surprising how far they came without taking responsibility for *anything*. */
IF ~~ THEN DO ~SetGlobal("C#Brando_SoDbdalnt","GLOBAL",3)~ EXIT
END

END //APPEND

/* bdrobe02 "Robe of Arcane Aptitude" */
CHAIN
IF ~Global("C#Br_SoDbdrobe02","LOCALS",1)~ THEN c#brandj robe_arcane_aptitude
@208 /* [Brandock]Argh, this Robe of Arcane Aptitude is also a mighty robe - but in a negative sense. Who would put effort into cursing a *robe*? The thought of being stuck in that thing is... unsettling. */ DO ~SetGlobal("C#Br_SoDbdrobe02","LOCALS",2)~
== bdimoen IF ~InParty("%IMOEN_DV%")
See("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @209 /* [Imoen]Well, at least it's clothes. Much better than being stuck to a weapon in your hand. */
== bdimoen IF ~InParty("%IMOEN_DV%")
See("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)
InParty("c#brage")
See("c#brage") !StateCheck("c#brage",CD_STATE_NOTVALID)~ THEN @210 /* [Imoen]Oops, sorry, Brage. */
== IF_FILE_EXISTS c#brageJ IF ~InParty("c#brage")
See("c#brage") !StateCheck("c#brage",CD_STATE_NOTVALID)
InParty("%IMOEN_DV%")
See("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @211 /* [Brage]Do not heed me, Imoen. What you said is true. */
== bdimoen IF ~InParty("%IMOEN_DV%")
See("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @212 /* [Imoen]At least the robe would keep you warm! */
== c#brandj IF ~OR(3) !InParty("%IMOEN_DV%")
!See("%IMOEN_DV%") StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @213 /* [Brandock]Disables spellcasting! No more words needed! */
== c#brandj IF ~InParty("%IMOEN_DV%")
See("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @214 /* [Brandock]Disables spellcasting! Yes, I would get really *heated up* over that one. */
== bdimoen IF ~InParty("%IMOEN_DV%")
See("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @215 /* [Imoen]Heheh! */
EXIT

/* Floss and Gurgle */
I_C_T BDFLOSS 6 C#Brando_BDFLOSS_6
== c#brandj IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN @216 /* [Brandock]That was hilarious. Why do I feel bad about tricking them into letting us pass? */
END

I_C_T BDFLOSS 27 C#Brando_BDFLOSS_27
== c#brandj IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN @217 /* [Brandock]I have to say - when I expected travelling with you would give measures to drive away foes I never imagined it would be by telling your story. */
END

I_C_T BDGURGLE 18 C#Brando_BDGURGLE_18
== c#brandj IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN @217 /* [Brandock]I have to say - when I expected travelling with you would give measures to drive away foes I never imagined it would be by telling your story. */
END



/* Inside Bridgefort: "Tender of the Dead"
BDJUNIA

~There, I interrupted his ritual and killed him. Then I cleansed his body through Lathander's grace in a ritual to strengthen our troops. I wanted only to protect our people!
(StrRef: 50083)~ */
I_C_T BDJUNIA 33 C#Brando_BDJUNIA_33
== c#brandj IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN @218 /* [Brandock]'Cleansed his body'? You mutilated him, and heavily so! */
END


/* Ophyllis in main coalition camp */
APPEND c#brandj
IF ~Global("C#BR_OphyllisDead","GLOBAL",1)~ THEN ophyllis_dead
SAY @219 /* [Brandock]The... the poor man. It's a long time since I saw someone try so hard and fail so horribly. Kind of reminds me... Ah, no, forgive me. I will not take this poor man's death as an excuse to dwell on my own self-pity. I'm embarrassed my thoughts even started to wander into that direction. */
IF ~~ THEN DO ~SetGlobal("C#BR_OphyllisDead","GLOBAL",2)~ EXIT
END
END //APPEND


/* Messenger with letter from Brandock's parents */

CHAIN
IF ~Global("C#Brandock_SoDMessenger","GLOBAL",1)~ THEN c#brmess letter
@220 /* [male Messenger]Mister Brandock Deepwater? I have a letter for you, sir. */
== c#brandj @221 /* [Brandock]A letter? For me? Here? Man, what did you go through to get this to me?! Here, take these coins... and save travels. Keep out of the danger! */
= @222 /* [Brandock]Oh, it's a letter from my parents, <CHARNAME>... From my parents! That means they sent their third letter of their whole lifetime to me. Let me have a quick peak inside, it can't be much text... (Reads in silence). */
= @223 /* [Brandock]Oh boy. */
END
++ @224 /* What is it? */ EXTERN c#brandj letter_02
++ @225 /* Brandock, in case you haven't noticed, but we are in the middle of something. */ EXTERN c#brandj letter_01
++ @226 /* This has to wait, Brandock. */ EXTERN c#brandj letter_01

APPEND c#brandj 

IF ~~ THEN letter_01
SAY @227 /* [Brandock]I *know*! */
IF ~~ THEN + letter_02
END

IF ~~ THEN letter_02
SAY @228 /* [Brandock]My parents want me to come home, <CHARNAME>. As 'soun as posible'. (Spelling isn't their strongest ability.) My mother is 'syck'. Oh dear. */
++ @229 /* Then go, Brandock. One man less won't change the tide. */ + letter_03
++ @230 /* You know I wish you and your family all the best in this world, Brandock. But I need you for the fight in Dragonspear Castle. */ + letter_04
++ @231 /* There is no way you'll leave now. Not until this is finished. */ + letter_04
END

IF ~~ THEN letter_03
SAY @232 /* [Brandock]What? No, I won't leave now! I will not abandon the fight. Not now. */ 
IF ~~ THEN + letter_05
END

IF ~~ THEN letter_04
SAY @233 /* [Brandock]Don't worry, I won't leave now. */
IF ~~ THEN + letter_05
END

IF ~~ THEN letter_05
SAY @234 /* [Brandock]This letter travelled I don't know how many miles for I don't know how many days, if not weeks. My mother was sick when they sent it, but how she is now, I don't know. I will not leave the fight for a message that might be completely outdated. She might as well be, er - well, I surely hope she got better, already. Better not dwell on the other possibility... */
= @235 /* [Brandock]But I *will* leave as soon as everything is settled, of course. Just so you know. */
IF ~~ THEN DO ~ActionOverride("c#brmess",EscapeAreaDestroy(5))
SetGlobal("C#Brandock_SoDMessenger","GLOBAL",2)~ EXIT
END

END //APPEND

/* bdnederl looking for Skie */
I_C_T BDNEDERL 36 C#Brando_BDNEDERL_36
== c#brandj IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN @236 /* [Brandock]Yes, "displeased" is putting it mildly. */
END

/* before attack Caelar in castle */
I_C_T BDSTONEH 47 C#Brando_BDSTONEH_47
== c#brandj IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN @237 /* [Brandock]Sounds... fair? */
END

/* Torsin de Lancie sent PC to infiltrate the castle */
I_C_T BDDELANC 16 C#Brando_BDDELANC_16
== c#brandj IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN @238 /* [Brandock]So - we will go right inside the enemy's hideout. I got that right, yes? And we are on our own? That's... terrific. */
END

/* portal is open, talk to Torsin de Lancie through the closed door */
I_C_T BDDELANC 75 C#Brando_BDDELANC_75
== c#brandj IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN @239 /* [Brandock]I hope they'll do more than just smile. There is an OPEN HELL MOUTH next to us! */
END

/* after return from Avernus, Torsin de Lancie */
I_C_T BDDELANC 79 C#Brando_BDDELANC_79
== c#brandj IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN @240 /* [Brandock]Is... is this really over? Like, *over* over? I feel really sick... */
END

/* Barrel of Bwoosh, Andrus, and the instable explosives in the camp main attack */

/* bdbwoosh.itm. barrel is in invetory */
CHAIN
IF ~Global("C#Br_SoDBarrelBwoosh","GLOBAL",1)~ THEN c#brandj barrel_bwoosh
@241 /* [Brandock]Blessed be magic. A barrel full of explosives that will *only* explode when it's supposed to. That is an advantage of magic my family would understand. */
DO ~SetGlobal("C#Br_SoDBarrelBwoosh","GLOBAL",2)~
== bdimoen IF ~InParty("%IMOEN_DV%")
See("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @242 /* [Imoen]Haha! Imagine the *boom* that would make if this barrel would be to explode before it's meant to be. */
== bdimoen IF ~InParty("%IMOEN_DV%")
See("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @243 /* [Imoen]Although - the boom would be as big as it would be if it explodes when it should - I guess... */
== c#brandj IF ~InParty("%IMOEN_DV%")
See("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @244 /* [Brandock]No - exploding right next to you usually makes a much, *much* bigger 'boom', Imoen. Much bigger. */
== c#brandj @245 /* [Brandock]I have full trust that this barrel of "Bwoosh!" will not explode before it is supposed to. What I do fear though is what happened to the rest - the explosive material Phossey did not manage to stabilize magically. Well, I am sure they knew what they were doing. */
EXIT

I_C_T BDANDRUS 3 C#Brando_BDANDRUS_3
== c#brandj IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)
GlobalGT("C#Br_SoDBarrelBwoosh","GLOBAL",0)~ THEN @246 /* [Brandock]Goddammit - why am I always right with these kind of doomsayings. */
END

/* comment on Glints comment */
/* ~Potion of explosion. That's a funny name, isn't it? Potion of explosion. Potion of explosion. Potion of explosion.~ [BD40791] */
I_C_T BDGLINTJ 129 C#Brando_BDGLINTJ_129
== c#brandj IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN @247 /* [Brandock]It *is* - considering "potion" is usually something one would consume. I think the one for explosion is the only one that uses the word without being drinkable. I never took notice of that before. */
END

/* in Dragonspear Castle, doors are still closed */

/* Range("bdffmage",25)
Global("bd_plot","global",485) 
Global("bd_illusion_magic_response","GLOBAL",0) */
CHAIN
IF ~Global("C#Br_SoD_DetectHephsIllu","LOCALS",1)~ THEN c#brandj detect_hephs_illusion
@248 /* [Brandock]Erm, what was that about a strange magical aura behind the door, could we get some more information, please? */
//##== BDANDRUS IF ~InMyArea("BDANDRUS") See("BDANDRUS") !StateCheck("BDANDRUS",CD_STATE_NOTVALID)~ THEN #%eet_2%65606
END
IF ~~ THEN DO ~SetGlobal("C#Br_SoD_DetectHephsIllu","LOCALS",2)~ EXIT
IF ~InMyArea("BDFFMAGE") See("BDFFMAGE") !StateCheck("BDFFMAGE",CD_STATE_NOTVALID)~ THEN DO ~SetGlobal("bd_illusion_magic_response","GLOBAL",1) SetGlobal("C#Br_SoD_DetectHephsIllu","LOCALS",2)~ EXTERN BDFFMAGE 0

APPEND c#brandj 

/* in Avernus - imagine Caelar would have gone after Sarevok */

IF ~Global("C#Brandock_SoDCaelarSarevok","GLOBAL",1)~ THEN caelar_sarevok
SAY @249 /* [Brandock](All of a sudden, Brandock starts to laugh.) */
++ @250 /* What is it, Brandock? */ + caelar_sarevok_01
++ @251 /* If you see anything funny in here, let me know. I want to laugh, too. */ + caelar_sarevok_01
++ @252 /* You alright? */ + caelar_sarevok_01
++ @253 /* Brandock, get a grib on yourself. We need to focus! */ + caelar_sarevok_01
END

IF ~~ THEN caelar_sarevok_01
SAY @254 /* [Brandock]I... I just (smirks) I just imagined Caelar would have come sooner. Let's say... two, three months. She would have gone after Sarevok! Sarevok! And we would ha-hahaha! - have had to face only one foe. Isn't the thought hilarious? */
++ @255 /* (smile) I see the irony, yes. */ + caelar_sarevok_02
++ @256 /* It's an interesting thought, indeed. */ + caelar_sarevok_02
++ @257 /* To hell with your funny ideas, Brandock. Heh. */ + caelar_sarevok_04
++ @258 /* No, it's stupid. */ + caelar_sarevok_03
++ @259 /* I want you to stop being funny this instant. */ + caelar_sarevok_03
END

IF ~~ THEN caelar_sarevok_02
SAY @260 /* [Brandock]Heh! */
++ @261 /* I also see that you are very, very pale. You alright? */ + caelar_sarevok_03
++ @262 /* We need to get moving. */ + caelar_sarevok_03
END

IF ~~ THEN caelar_sarevok_03
SAY @263 /* [Brandock](exhales) I am all serious again now, <CHARNAME>. Let's do what is necessary and get the hell out of here. (pauses) The *hell* out of here... Gods, I need to be quiet now or I'll start laughing uncontrollably... again... */
IF ~~ THEN DO ~SetGlobal("C#Brandock_SoDCaelarSarevok","GLOBAL",2)~ EXIT
END

IF ~~ THEN caelar_sarevok_04
SAY @264 /* [Brandock]I see you got the point. */
IF ~~ THEN + caelar_sarevok_02
END

END //APPEND



/* ~BDXHOST~ Fiend in Avernus 
IF ~~ THEN BEGIN 3 // from: 2.0 2.1
  SAY #45175 /* ~I shall take my leave of you. There are many plans I have to foil, many preparations to ruin. Take this blade as my gift. Treat it well. A boon from my kind is rare.~ [BD45175] */
*/
I_C_T BDXHOST 3 C#Brando_BDXHOST3
== c#brandj IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN @265 /* [Brandock]If that was our good deed for today, then I fear for our future. */
END


/* Thrix's game */

ADD_TRANS_TRIGGER BDTHRIX 13 ~OR(3) Global("C#BrandockJoined","GLOBAL",0) !InMyArea("C#Brandock") StateCheck("C#Brandock",CD_STATE_NOTVALID)~ DO 2 IF ~!Is?f?ValidForPartyDialogue("Rasaad")~



/*
EXTEND_BOTTOM BDTHRIX 21 22 23 24 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 53 54 55 56 57 58 59 60 61 62 63 64 65 66 67 68 69 70 71 72 73 74 75 76 77 78 79 80 81 82 83 84 85 86 87 88 89 90 91 92 93 
*/

EXTEND_BOTTOM BDTHRIX 21 26 30 34 38 42 46 50 54 58 62 66 70 74 78 82 86 90
IF ~Global("C#Brandock_SoDThrix","GLOBAL",0) OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN + brandock
END

EXTEND_TOP BDTHRIX 22 27 31 35 39 43 47 51 55 59 63 67 71 75 79 83 87 91 #1
IF ~Global("C#Brandock_SoDThrix","GLOBAL",0) OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN + brandock
END

EXTEND_TOP BDTHRIX 23 28 32 36 40 44 48 52 56 60 64 68 72 76 80 84 88 92 #10
IF ~Global("C#Brandock_SoDThrix","GLOBAL",0) OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN + brandock
END

EXTEND_TOP BDTHRIX 24 29 33 37 41 45 49 53 57 61 65 69 73 77 81 85 89 93 #5
IF ~Global("C#Brandock_SoDThrix","GLOBAL",0) OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN + brandock
END

EXTEND_BOTTOM BDTHRIX 118 119 120 121 
IF ~Global("C#Brandock_SoDThrix","GLOBAL",2) OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN + brandock_01
END


APPEND BDTHRIX

IF ~~ THEN BEGIN brandock
  SAY @266 /* [Thrix]Your insecure mage shakes with fear already. Lose the riddle and I will make his life hell indeed. */
  IF ~~ THEN REPLY @267 /* You want Brandock? Then he will be yours if I lose. */ DO ~SetGlobal("C#Brandock_SoDThrix","GLOBAL",2)
SetGlobal("bd_thrix_sacrifice_companion","global",1)
~ EXTERN C#BrandJ thrix_01

  IF ~RandomNum(4,1)~ THEN REPLY @268 /* Brandock came back to me for guidance and protection. I will not trade his soul to you. */ DO ~SetGlobal("C#Brandock_SoDThrix","GLOBAL",1) IncrementGlobal("BD_NumInParty","bd4500",1)~ + 70
  IF ~RandomNum(4,2)~ THEN REPLY @268 /* Brandock came back to me for guidance and protection. I will not trade his soul to you. */ DO ~SetGlobal("C#Brandock_SoDThrix","GLOBAL",1) IncrementGlobal("BD_NumInParty","bd4500",1)~ + 71
  IF ~RandomNum(4,3)~ THEN REPLY @268 /* Brandock came back to me for guidance and protection. I will not trade his soul to you. */ DO ~SetGlobal("C#Brandock_SoDThrix","GLOBAL",1) IncrementGlobal("BD_NumInParty","bd4500",1)~ + 72
  IF ~RandomNum(4,4)~ THEN REPLY @268 /* Brandock came back to me for guidance and protection. I will not trade his soul to you. */ DO ~SetGlobal("C#Brandock_SoDThrix","GLOBAL",1) IncrementGlobal("BD_NumInParty","bd4500",1)~ + 73

  IF ~!Global("BD_NumInParty","bd4500",1)
!Global("BD_NumInParty","bd4500",2)
!Global("BD_NumInParty","bd4500",3)
!Global("BD_NumInParty","bd4500",4)~ THEN REPLY @268 /* Brandock came back to me for guidance and protection. I will not trade his soul to you. */ DO ~SetGlobal("C#Brandock_SoDThrix","GLOBAL",1)~ + 114

  IF ~~ THEN REPLY @269 /* He has his faults, but I'll not risk Brandock's soul in so blithe a fashion. If I cannot answer your riddle, mine is the soul you will take. Agreed? */ GOTO 113
  IF ~~ THEN REPLY @270 /* I'll feed you your own limbs if you don't let me into the tower, you wretched creature. I'm done playing games with you. */ GOTO 12
END

IF ~~ THEN brandock_01
SAY @271 /* [Thrix]Thrix has marked your soul, mage. Your soul is mine! */ 
++ @272 /* Well, I guess that settles it, then. Go with your new master, Brandock. */ DO ~SetGlobal("C#Brandock_SoDThrix","GLOBAL",3)~ EXTERN C#BrandJ thrix_02
++ @273 /* No, you will not take his soul, devil. We will fight you! */ GOTO 10
END

END //APPEND

/*

Global("C#Brandock_SoDThrix","GLOBAL",1): PC declined Thrix' choice

Global("C#Brandock_SoDThrix","GLOBAL",2)-> 5: PC agreed on Brandock's soul before the riddle

Global("C#Brandock_SoDThrix","GLOBAL",3)-> 6: PC agreed on Brandock's soul before the riddle and did not fight for Brandock after riddle was lost


*/


APPEND C#BrandJ

IF ~~ THEN thrix_01
SAY @274 /* [Brandock]Er... do I get a say in this? */
IF ~~ THEN EXTERN ~BDTHRIX~ 116
END

IF ~~ THEN thrix_02
  SAY @275 /* [Brandock]I... I... I really think it should be me doing the descision here! */
  IF ~~ THEN DO ~SetGlobal("bd_thrix_won","global",1)~ EXTERN ~BDTHRIX~ 140
END 

IF ~OR(2)
Global("C#Brandock_SoDThrix","GLOBAL",6)
Global("C#Brandock_SoDThrix","GLOBAL",5)~ THEN after_thrix
SAY @276 /* [Brandock]You gambled for my soul with a fiend! */
++ @277 /* That I did, yes. It granted us passage! */ + after_thrix_02
+ ~!Global("BD_Thrix_riddle_won","GLOBAL",1)~ + @278 /* I gambled, I lost. Such is life. */ + after_thrix_02
+ ~Global("BD_Thrix_riddle_won","GLOBAL",1)~ + @279 /* I won, though! */ + after_thrix_02
++ @280 /* I am sorry I accepted your soul as a wager, Brandock. */ + after_thrix_02
++ @281 /* And? */ + after_thrix_02
END

IF ~Global("C#Brandock_SoDThrix","GLOBAL",7)~ THEN after_thrix_01
SAY @282 /* [Brandock]You gambled for a companion's soul with a fiend! */
++ @277 /* That I did, yes. It granted us passage! */ + after_thrix_04
+ ~!Global("BD_Thrix_riddle_won","GLOBAL",1)~ + @278 /* I gambled, I lost. Such is life. */ + after_thrix_04
+ ~Global("BD_Thrix_riddle_won","GLOBAL",1)~ + @279 /* I won, though! */ + after_thrix_04
++ @283 /* I am sorry I accepted a soul as a wager, Brandock. */ + after_thrix_04
++ @281 /* And? */ + after_thrix_04
END

END

CHAIN
IF ~~ THEN C#BrandJ after_thrix_02
@284 /* [Brandock]My soul! My *soul*! You know we are talking about my soul, yes? */ DO ~SetGlobal("C#Brandock_SoDThrix","GLOBAL",9)~
== C#BrandJ IF ~!Global("BD_Thrix_riddle_won","GLOBAL",1)~ THEN @285 /* [Brandock]Which I *lost*. According to some obscure fiend-hell-game logic. */
== C#BrandJ IF ~Global("BD_Thrix_riddle_won","GLOBAL",1)~ THEN @286 /* [Brandock]Don't tell me it's not important because in the end you won! */ 
== C#BrandJ IF ~!Global("BD_Thrix_riddle_won","GLOBAL",1)~ THEN @287 /* [Brandock]I should be scared as *hell* about the fiend coming for me. When we were standing in front of it, I was. But now... */
END
IF ~~ THEN + after_thrix_03

APPEND C#BrandJ

IF ~~ THEN after_thrix_03
SAY @288 /* [Brandock]Two things I want to say to this: firstly, your soul - that of a Bhaal spawn - should be far more interesting than mine. A fiend not seeing this and playing for a normal mortal life doesn't really want the soul it's gambling for, it wants to gamble for gamble's sake - or is scared to touch the really interesting things out of fear to burn his fingers - or maybe gamble to prevent a fight with a foe he knows is more fierce than <PRO_HESHE> seems. */
= @289 /* [Brandock]Wich leads me to my second thought. It was your blood that opened the portal to this hell, <CHARNAME>. You have a connection to the hell dimension because of who and what your father was. You might be much stronger down here than you think. Maybe even in ways we don't want to find out... */
= @290 /* [Brandock]You trading a soul to this fiend scared me, <CHARNAME>. Not because of the fiend - for some obscure reason I can't take his threat seriously, as I pointed out. No, I am scared as *hell* because it might have shown a glimpse of what is going on inside you, and if it was then that's an abyss I hope I don't have to look into again any time soon. */
END

IF ~~ THEN after_thrix_04
SAY @291 /* [Brandock]A soul! A *soul*! You know we are talking about a soul, yes? */ 
IF ~~ THEN DO ~SetGlobal("C#Brandock_SoDThrix","GLOBAL",9)~ + after_thrix_03
END

IF ~Global("C#Brandock_SoDThrix","GLOBAL",8)~ THEN after_thrix_05
SAY @292 /* [Brandock]You traded your own soul to that fiend. That was a brave thing to do! A bit naive, maybe... but brave! */
+ ~!Global("BD_Thrix_riddle_won","GLOBAL",1)
!Global("C#Brage_SoDThrix","GLOBAL",9)~ + @293 /* I couldn't bet another one's soul! And I didn't want to fight the fiend. At least not now. */ + after_thrix_06
+ ~!Global("BD_Thrix_riddle_won","GLOBAL",1)
!Global("C#Brage_SoDThrix","GLOBAL",9)~ + @278 /* I gambled, I lost. Such is life. */ + after_thrix_06
+ ~!Global("BD_Thrix_riddle_won","GLOBAL",1)
!Global("C#Brage_SoDThrix","GLOBAL",9)~ + @294 /* Don't remind me of that. */ + after_thrix_06
+ ~Global("BD_Thrix_riddle_won","GLOBAL",1)
!Global("C#Brage_SoDThrix","GLOBAL",9)~ + @293 /* I couldn't bet another one's soul! And I didn't want to fight the fiend. At least not now. */ + after_thrix_07
+ ~Global("BD_Thrix_riddle_won","GLOBAL",1)
!Global("C#Brage_SoDThrix","GLOBAL",9)~ + @295 /* I gambled, I won. Sometimes a risk pays off. */ + after_thrix_07
+ ~Global("BD_Thrix_riddle_won","GLOBAL",1)
!Global("C#Brage_SoDThrix","GLOBAL",9)~ + @294 /* Don't remind me of that. */ + after_thrix_07
IF ~Global("C#Brage_SoDThrix","GLOBAL",9)~ THEN + after_thrix_08
END

IF ~~ THEN after_thrix_06
SAY @296 /* [Brandock]I'll happily help you fight it off, should it come for you and I'll still be around. */
IF ~~ THEN + after_thrix_08
END

IF ~~ THEN after_thrix_07
SAY @297 /* [Brandock]I'm glad you solved the riddle and this danger is over, though. */
IF ~~ THEN + after_thrix_08
END

IF ~~ THEN after_thrix_08
SAY @298 /* [Brandock]I am very impressed, <CHARNAME>. Considering your godly heritage and what people start suspecting after the incident on the bridge, that was a very selfless thing to do. Not 'god of murder' like, at all. */
IF ~~ THEN DO ~SetGlobal("C#Brandock_SoDThrix","GLOBAL",9)~ EXIT
END

/* back from Avernus. Brandock takes his leave */

IF ~Global("C#Brandock_SoDEnd","GLOBAL",1)~ THEN back_hell
SAY @299 /* [Brandock]Back! We are... Excuse me. */
IF ~~ THEN DO ~SetGlobal("C#Brandock_SoDEnd","GLOBAL",2)
ClearAllActions() StartCutSceneMode() StartCutScene("c#brcut5")~ EXIT
END

IF ~Global("C#Brandock_SoDEnd","GLOBAL",2)~ THEN back_hell_00
SAY @300 /* [Brandock]Aplogies... I am really sorry. I *will* clean this up if anyone requests I do it myself. */
++ @301 /* Did you just empty your stomach in that corner over there? */ + back_hell_01
++ @302 /* Feeling better now? */ + back_hell_02
+ ~GlobalGT("C#Brando_bdelandr_18","global",0)~ + @303 /* You know, next time I'll prefer a feyr to fight. */ + back_hell_05
++ @304 /* Why did you do that - I'm barely holding it together myself... */ + back_hell_03
++ @305 /* Don't take it to heart, Brandock. This was no standard fighting excursion, for none of us. */ + back_hell_04
++ @306 /* I can't believe what a wimp you are. */ + back_hell_06
END

IF ~~ THEN back_hell_01
SAY @307 /* [Brandock]You have the power of observation. Yes, that's what I did. */
++ @302 /* Feeling better now? */ + back_hell_02
+ ~GlobalGT("C#Brando_bdelandr_18","global",0)~ + @303 /* You know, next time I'll prefer a feyr to fight. */ + back_hell_05
++ @304 /* Why did you do that - I'm barely holding it together myself... */ + back_hell_03
++ @305 /* Don't take it to heart, Brandock. This was no standard fighting excursion, for none of us. */ + back_hell_04
++ @306 /* I can't believe what a wimp you are. */ + back_hell_06
END

IF ~~ THEN back_hell_02
SAY @308 /* [Brandock]Very much so, thank you. I don't think I will be able to eat much tonight, though. Celebrations or no. */
+ ~GlobalGT("C#Brando_bdelandr_18","global",0)~ + @303 /* You know, next time I'll prefer a feyr to fight. */ + back_hell_05
++ @304 /* Why did you do that - I'm barely holding it together myself... */ + back_hell_03
++ @305 /* Don't take it to heart, Brandock. This was no standard fighting excursion, for none of us. */ + back_hell_04
++ @306 /* I can't believe what a wimp you are. */ + back_hell_06
END

IF ~~ THEN back_hell_03
SAY @309 /* [Brandock]I'm sorry... If you'll use the same corner I'll cover for you - noone will know. */
IF ~~ THEN + back_hell_07
END

IF ~~ THEN back_hell_04
SAY @310 /* [Brandock]No, that it wasn't. */
IF ~~ THEN + back_hell_07
END

IF ~~ THEN back_hell_05
SAY @311 /* [Brandock]Noted. I'll - I'll work on it. That was meant to be a joke. */
IF ~~ THEN + back_hell_07
END

IF ~~ THEN back_hell_06
SAY @312 /* [Brandock]Well, I'm obviously a wimp with a weak stomach. */
IF ~~ THEN + back_hell_07
END

IF ~~ THEN back_hell_07
SAY @313 /* [Brandock]I wasn't prepared for going into Avernus and back again. Not that I'd complain about the coming back part. */
= @314 /* [Brandock]And - it *was* all for saving her uncle... While Hephernaan was working with a fien master on the other side. */
++ @315 /* I need to time to digest all what happened. It was a bit much. */ + back_hell_21
++ @316 /* Well, it was a righteous cause. The execution, on the other hand... */ + back_hell_08
+ ~OR(2) !InMyArea("bdaun") Dead("bdaun")~ + @317 /* *And* it was all for nothing, because he remained there. */ + back_hell_10
++ @318 /* Her desperation was understandable. But she created countless mourning relatives with her crusade - as well as in the coalition. If one of them thinks they have to make amends, too... */ + back_hell_09
++ @319 /* I think we are all happy to be back. */ + back_hell_11
++ @320 /* Let's not waste any more time with talking. */ + back_hell_12
END

IF ~~ THEN back_hell_08
SAY @321 /* [Brandock]The execusion was lacking, to say it politely. */
IF ~~ THEN + back_hell_10
END

IF ~~ THEN back_hell_09
SAY @322 /* [Brandock]We will be far, far away from here, hopefully. Your words are very true, though. */
IF ~~ THEN + back_hell_10
END

IF ~~ THEN back_hell_10
SAY @323 /* [Brandock]A very noble Argent knight - the uncle, not the niece. Sacrificing himself like this ... for that, that *brat*. */
IF ~~ THEN + back_hell_11
END

IF ~~ THEN back_hell_11
SAY @324 /* [Brandock]What a life's "work" Caelar will be judged by when she faces the gods... Fortunately, that is no longer our problem. */
IF ~~ THEN + back_hell_12
END

IF ~~ THEN back_hell_12
SAY @325 /* [Brandock]For us, it will be celebrations and rest now! And nothing, absolutely *nothing* can stop us from having a good... Ah, dang. */
= @326 /* I said I would leave as soon as it's all over. And I really think it's all over now, don't you? */
++ @327 /* You want to go right away? No celebrations? No rest? */ + back_hell_13
++ @328 /* I'd say it's over, yes. */ + back_hell_14
+ ~GlobalGT("C#Brandock_SoDMessenger","GLOBAL",0)~ + @329 /* The letter about your mom's health! Yes, go! Your family is waiting. */ + back_hell_15
+ ~Global("C#Brandock_SoDMessenger","GLOBAL",0)~ + @330 /* You did? What did I miss? */ + back_hell_20
END

IF ~~ THEN back_hell_13
SAY @331 /* [Brandock]If I rest now my brain might catch up with my memories. And as soon as that'll happen I don't know whether I might be able to get myself moving or whether I'll be paralysed for the rest of the tenday. */
IF ~~ THEN + back_hell_15
END

IF ~~ THEN back_hell_14
SAY @332 /* [Brandock]It is, indeed. I still can't believe where we went and what we did. */
IF ~~ THEN + back_hell_15
END

IF ~~ THEN back_hell_15
SAY @333 /* [Brandock]My family is waiting and I surely hope they are alright, letter or no. It's time to find out. */
++ @334 /* Thank you for staying with me and going through this, Brandock. */ + back_hell_16
++ @335 /* Would you mind waiting a tad longer? There are some things I would like to take off your backpack before you go. */ + back_hell_10
++ @336 /* I rally think you should stay for a bit. You seem a bit in shock, actually. */ + back_hell_18
++ @337 /* I wish you a good journey, Brandock. */ + back_hell_17
++ @338 /* Go then. More ale for me! */ + back_hell_17
END

IF ~~ THEN back_hell_16
SAY @339 /* [Brandock]My pleasure, <CHARNAME>. Although - a visit in hell is something we won't do again, alright? */
++ @335 /* Would you mind waiting a tad longer? There are some things I would like to take off your backpack before you go. */ + back_hell_18
++ @336 /* I rally think you should stay for a bit. You seem a bit in shock, actually. */ + back_hell_18
++ @337 /* I wish you a good journey, Brandock. */ + back_hell_17
++ @338 /* Go then. More ale for me! */ + back_hell_17
END

IF ~~ THEN back_hell_17
SAY @340 /* [Brandock]I... I will go. Or maybe I won't... My legs are still a bit jelly-ish, when I'm honest. */
IF ~~ THEN + back_hell_19
END

IF ~~ THEN back_hell_18
SAY @341 /* [Brandock]No, I really should go right away. Really.. or maybe I shouldn't... My legs are still a bit jelly-ish, when I'm honest. */
IF ~~ THEN + back_hell_19
END

IF ~~ THEN back_hell_19
SAY @342 /* [Brandock]I will stay a bit longer. But I will go before the night. */
IF ~~ THEN DO ~SetGlobal("C#Brandock_SoDEnd","GLOBAL",3)~ EXIT
END

IF ~~ THEN back_hell_20
SAY @343 /* [Brandock]Oh, right! You weren't there when I received a letter from my parents, stating my mom fell sick. They are asking me to come home as soon as I could - which would be now. */
IF ~~ THEN DO ~SetGlobal("C#Brandock_SoDMessenger","GLOBAL",2)~ + back_hell_15
END

IF ~~ THEN back_hell_21
SAY @503 /* ~Ahaha, you said "digest". Good luck with that, I failed.~ */
IF ~~ THEN + back_hell_10
END

END //APPEND

/* before PC goes to rest that night. Brandock takes his leave */

I_C_T3 BDDAZZO 2 C#Brandock_BDDAZZO_2
== c#brandj IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2)
InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN @0 /* It was an honor travelling with you. And quite scary, to be honest... I'll be on my way then. Straight south to my parents and no distractions this time. */ /* @0 /* It was an honor travelling with you. And quite scary, to be honest... I'll be on my way then. Straight south to my parents and no distractions this time. */ */
== C#BrandJ IF ~GlobalGT("C#Brando_bdscrl1","LOCALS",0)
OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2)
InMyArea("C#Brandock")
!StateCheck(Myself,CD_STATE_NOTVALID)~ THEN @1 /* Seeing how everthing points to Athkatla these days, maybe we will meet there? Who knows, maybe I'll have an influencial position when next we meet - it's always good to have friends, if you are in Amn. */ /* @1 /* Seeing how everthing points to Athkatla these days, maybe we will meet there? Who knows, maybe I'll have an influencial position when next we meet - it's always good to have friends, if you are in Amn. */ */

/* Brandock is party member */
== C#BrandJ IF ~InParty("C#Brandock")
InMyArea("C#Brandock")
!StateCheck(Myself,CD_STATE_NOTVALID)~ THEN @2 /* Farewell, <CHARNAME>. */ /* @2 /* Farewell, <CHARNAME>. */ */
DO ~SetInterrupt(FALSE)
MakeGlobal()
SetGlobal("C#BrandockJoined","GLOBAL",0)
ChangeAIScript("",DEFAULT)
LeaveParty()
TakePartyItem("c#br0001")
TakePartyItem("c#br0007")
EscapeArea()
SetInterrupt(TRUE)~ 

/* Brandock was 7th party member */
== C#BrandJ IF ~Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN @2 /* Farewell, <CHARNAME>. */ /* @2 /* Farewell, <CHARNAME>. */ */ DO ~SetInterrupt(FALSE)
MakeGlobal()
SetGlobal("C#BrandockJoined","GLOBAL",0)
ChangeAIScript("",DEFAULT)
RemoveFamiliar()
ChangeEnemyAlly(Myself,NEUTRAL)
TakePartyItem("c#br0001")
TakePartyItem("c#br0007")
EscapeArea() 
SetInterrupt(TRUE)~ 
END

I_C_T3 BDDAZZO 3 C#Brandock_BDDAZZO_3
== c#brandj IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2)
InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN @0 /* It was an honor travelling with you. And quite scary, to be honest... I'll be on my way then. Straight south to my parents and no distractions this time. */ /* @0 /* It was an honor travelling with you. And quite scary, to be honest... I'll be on my way then. Straight south to my parents and no distractions this time. */ */
== C#BrandJ IF ~GlobalGT("C#Brando_bdscrl1","LOCALS",0)
OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2)
InMyArea("C#Brandock")
!StateCheck(Myself,CD_STATE_NOTVALID)~ THEN @1 /* Seeing how everthing points to Athkatla these days, maybe we will meet there? Who knows, maybe I'll have an influencial position when next we meet - it's always good to have friends, if you are in Amn. */ /* @1 /* Seeing how everthing points to Athkatla these days, maybe we will meet there? Who knows, maybe I'll have an influencial position when next we meet - it's always good to have friends, if you are in Amn. */ */
== C#BrandJ IF ~InParty("C#Brandock") 
InMyArea("C#Brandock")
!StateCheck(Myself,CD_STATE_NOTVALID)~ THEN @2 /* Farewell, <CHARNAME>. */ /* @2 /* Farewell, <CHARNAME>. */ */ 
DO ~SetInterrupt(FALSE)
MakeGlobal()
SetGlobal("C#BrandockJoined","GLOBAL",0)
ChangeAIScript("",DEFAULT)
LeaveParty()
TakePartyItem("c#br0001")
TakePartyItem("c#br0007")
EscapeArea() 
SetInterrupt(TRUE)~ 

/* Brandock was 7th party member */
== C#BrandJ IF ~Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN @2 /* Farewell, <CHARNAME>. */ /* @2 /* Farewell, <CHARNAME>. */ */ DO ~SetInterrupt(FALSE)
MakeGlobal()
SetGlobal("C#BrandockJoined","GLOBAL",0)
ChangeAIScript("",DEFAULT)
RemoveFamiliar()
ChangeEnemyAlly(Myself,NEUTRAL)
TakePartyItem("c#br0001")
TakePartyItem("c#br0007")
EscapeArea() 
SetInterrupt(TRUE)~ 
END



/* scenery dialogues that use the same friendship timer */

/* after meeting C. at the bridge 
GlobalGT("bd_plot","global",170)
*/

APPEND c#brandj

IF ~Global("C#Brando_SoDCaelarBridge","GLOBAL",1)~ THEN caelar_bridge
SAY @344 /* [Brandock]So, this was Caelar? She... scared me. */
++ @345 /* What about her? */ + caelar_bridge_00_02
++ @346 /* Yes, I think I know what you mean. */ + caelar_bridge_00_03
++ @347 /* Is there anything that doesn't scare you? */ + caelar_bridge_00_01
++ @348 /* There's nothing we can do about her now, I'm afraid. Let's get moving. */ + caelar_bridge_00_14
END

IF ~~ THEN caelar_bridge_00_01
SAY @349 /* [Brandock]Er... bunny rabbits? */
IF ~~ THEN + caelar_bridge_00_03
END

IF ~~ THEN caelar_bridge_00_02
SAY @350 /* [Brandock]I see that she is very charismatic - probably used to people just doing what she asks them to, making them believe it's the right thing to do... */
IF ~~ THEN + caelar_bridge_00_03
END

IF ~~ THEN caelar_bridge_00_03
SAY @351 /* [Brandock]Did you hear her talk? I mean, of course you did, probably better than me... She more or less stated "I'm ready to sacrifice a lot of people but it's all justified for a greater good because I will save some (I'm personally interested in)". Stating that and at the same time sounding... righteous is something only *very* charismatic people can do. People like that frighten me. */
++ @352 /* I'm not sure what to make of her just yet. She talks with much confidence, but her grand words do not add up with her actions. */ + caelar_bridge_00_05
++ @353 /* If she really found a way to rescue all those souls from avernus it would be a righteous cause. */ + caelar_bridge_00_08
++ @354 /* I see what you mean. */ + caelar_bridge_00_06
++ @348 /* There's nothing we can do about her now, I'm afraid. Let's get moving. */ + caelar_bridge_00_14
END

IF ~~ THEN caelar_bridge_00_04
SAY @355 /* [Brandock]Deluded and charismatic. Those are the most dangerous foes. More dangerous than deluded and strong. Because *those* will *follow* the charismatic ones! */
IF ~~ THEN + caelar_bridge_00_14
END

IF ~~ THEN caelar_bridge_00_05
SAY @356 /* [Brandock]No, they do not. */
IF ~~ THEN + caelar_bridge_00_06
END

IF ~~ THEN caelar_bridge_00_06
SAY @357 /* [Brandock]So far, her actions are plundered villages, murdered farmers, and hundreds of people seeking refuge. Great way to start a rescue mission! */
++ @353 /* If she really found a way to rescue all those souls from avernus it would be a righteous cause. */ + caelar_bridge_00_08
++ @358 /* I agree with you. */ + caelar_bridge_00_07
++ @348 /* There's nothing we can do about her now, I'm afraid. Let's get moving. */ + caelar_bridge_00_14
END
END //APPEND

CHAIN
IF ~~ THEN c#brandj caelar_bridge_00_07
@359 /* [Brandock]Well, like I just said - she is very, *very* charismatic. I can imagine parts of my family falling prey to her soothing words and idealistic ideas. And then - you are part of the crusade and can't just "leave", not without risking your own life. */
== c#brandj IF ~Global("C#Brandock_SoDlesserEvil","LOCALS",1)~ THEN @360 /* [Brandock]And to get there they might use the same argument about the lesser and greater evil you just quoted to justify it to themselves. */
END
++ @361 /* I also think she's deluded. */ + caelar_bridge_00_04
++ @362 /* I was jesting with you, Brandock. We share the same opinion on this. I only wanted to see you go all red and puffy. */ + caelar_bridge_00_11
++ @363 /* The execution is lacking, I agree. */ + caelar_bridge_00_13
++ @364 /* Not everyone who is not of your opinion is necessarily deluded, Brandock. */ + caelar_bridge_00_12
++ @365 /* I don't know, Brandock. There is more to Caelar and her aims than we know. */ + caelar_bridge_00_10
++ @348 /* There's nothing we can do about her now, I'm afraid. Let's get moving. */ + caelar_bridge_00_14

CHAIN
IF ~~ THEN c#brandj caelar_bridge_00_08
@366 /* [Brandock]*Cause*, yes - when it was still an idea in someone's head or written on a piece of paper. Aiming at freeing the trapped souls is a righteous deed, of course! But now - with all the death and destruction she and her blasted crusade already caused? */
/* know Caelar will open portal - from Road to Discovery */
== c#brandj IF ~GlobalGT("C#RtD_CaelarPlan","GLOBAL",3)~ THEN @367 /* [Brandock]And with the knowledge that her glorious plan is just opening the portal - again?... */
END
+ ~Global("C#Brandock_SoDlesserEvil","LOCALS",0)~ + @368 /* How about: "Sometimes a lesser evil has to be accepted to do greater good"? */ DO ~SetGlobal("C#Brandock_SoDlesserEvil","LOCALS",1)~ + caelar_bridge_00_09
++ @369 /* How can it be wrong if so many people believe in her? */ + caelar_bridge_00_07
++ @370 /* I agree with you. I also think she's deluded. */ + caelar_bridge_00_04
++ @363 /* The execution is lacking, I agree. */ + caelar_bridge_00_13
++ @348 /* There's nothing we can do about her now, I'm afraid. Let's get moving. */ + caelar_bridge_00_14

CHAIN
IF ~~ THEN c#brandj caelar_bridge_00_09
@371 /* [Brandock]I know this saying. But do you see a lesser evil here? With all the death, destruction, and evictions I would definitely call it a greater evil! - I think I'm starting to hyperventilate. */
/* know Caelar will open portal - from Road to Discovery */
== c#brandj IF ~GlobalGT("C#RtD_CaelarPlan","GLOBAL",3)~ THEN @372 /* [Brandock]Plus, you know, the fact that she is planning on letting hell loose on the Sword Coast - again! */
END
++ @373 /* But how can it be wrong if so many people believe in her? */ + caelar_bridge_00_07
++ @374 /* There are hundrets of people thinking that way, Brandock - the wole crusade! They joined her out of free will, or do you think all of them were forced to follow her? */ + caelar_bridge_00_07
++ @370 /* I agree with you. I also think she's deluded. */ + caelar_bridge_00_04
++ @362 /* I was jesting with you, Brandock. We share the same opinion on this. I only wanted to see you go all red and puffy. */ + caelar_bridge_00_11
++ @363 /* The execution is lacking, I agree. */ + caelar_bridge_00_13
++ @348 /* There's nothing we can do about her now, I'm afraid. Let's get moving. */ + caelar_bridge_00_14

APPEND c#brandj 

IF ~~ THEN caelar_bridge_00_10
SAY @375 /* [Brandock]Well, it has to be... considering she is marching a crusade of several hundred. */
IF ~~ THEN + caelar_bridge_00_14
END

IF ~~ THEN caelar_bridge_00_11
SAY @376 /* [Brandock]You... (scoffs) */
IF ~~ THEN + caelar_bridge_00_04
END

IF ~~ THEN caelar_bridge_00_12
SAY @377 /* [Brandock]No, of course not. But people who accept plundering and murder and whatnot because they are serving a 'greater good' might be, I think. */
IF ~~ THEN + caelar_bridge_00_14
END

IF ~~ THEN caelar_bridge_00_13
SAY @378 /* [Brandock]We can definitely agree on that, yes. */
IF ~~ THEN + caelar_bridge_00_04
END

IF ~~ THEN caelar_bridge_00_14
SAY @379 /* [Brandock]Anyways - this bridge will no longer give passage across this river. Seems we need to take a detour. */
IF ~~ THEN DO ~SetGlobal("C#Brando_SoDCaelarBridge","GLOBAL",2)~ EXIT
END



/////////////////////////////////////////////////////////////////////////
/* Friendship dialogues */


/* 1st Friendship dialogue - bounty note of PC */

IF ~Global("C#Brandock_Dialog","GLOBAL",102)
OR(5)
		PartyHasItem("bdmisc56") 
		HasItem("bdmisc56","C#Solaufein")
		HasItem("bdmisc56","C#Grey")
		HasItem("bdmisc56","C#Husam1")
		HasItem("bdmisc56","C#Brandock")
	OR(3)
		!HasItem("bdmisc56","C#Solaufein")
		Global("C#SolauJoined","GLOBAL",2)
		InParty("C#Solaufein")
	OR(3)
		!HasItem("bdmisc56","C#Grey")
		Global("C#GreyJoined","GLOBAL",2)
		InParty("C#Grey")
	OR(3)
		!HasItem("bdmisc56","C#Husam1")
		Global("C#HusamJoined","GLOBAL",2)
		InParty("C#Husam1")
	OR(3)
		!HasItem("bdmisc56","C#Brandock")
		Global("C#BrandockJoined","GLOBAL",2)
		InParty("C#Brandock")~ THEN bounty_notice
SAY @380 /* [Brandock]Oh, another bounty notice? Let me take a look. Hm... Yes, these fellows did catch your nose right. Definitely! */
++ @381 /* It's not a joking matter, Brandock. */ + bounty_notice_01

+ ~Global("C#Brando_SoDDPEvents1","LOCALS",0)~ + @382 /* These were assassins, probably sent by Caelar Agent. */ DO ~SetGlobal("C#Brando_SoDDPEvents1","LOCALS",1)~ + bounty_notice_03
+ ~Global("C#Brando_SoDDPEvents2","LOCALS",0) GlobalLT("BD_plot","global",54)~ + @383 /* They poisoned Imoen. She is not well - at all. */ DO ~SetGlobal("C#Brando_SoDDPEvents2","LOCALS",1)~ + bounty_notice_04
+ ~Global("C#Brando_SoDDPEvents3","LOCALS",0)~ + @384 /* You're right. Maybe I should start a collection of these things. 'My life in pictures - volume I: Bounty notices by my foes.' */ DO ~SetGlobal("C#Brando_SoDDPEvents3","LOCALS",1)~ + bounty_notice_05

++ @385 /* What?! No way! It's far off. That's *not* my nose! */ + bounty_notice_02
++ @386 /* Lets stop talking and return to doing something. */ + bounty_notice_08
END

IF ~~ THEN bounty_notice_01
SAY @387 /* [Brandock]But... that's the best moment to take life with a grain of jest - when it's all bitter sweet already. No? */
++ @388 /* No. */ + bounty_notice_02
++ @389 /* Sometimes it's helping to swallow the bitterness, I agree. */ + bounty_notice_06

+ ~Global("C#Brando_SoDDPEvents1","LOCALS",0)~ + @382 /* These were assassins, probably sent by Caelar Agent. */ DO ~SetGlobal("C#Brando_SoDDPEvents1","LOCALS",1)~ + bounty_notice_03
+ ~Global("C#Brando_SoDDPEvents2","LOCALS",0) GlobalLT("BD_plot","global",54)~ + @383 /* They poisoned Imoen. She is not well - at all. */ DO ~SetGlobal("C#Brando_SoDDPEvents2","LOCALS",1)~ + bounty_notice_04
+ ~Global("C#Brando_SoDDPEvents3","LOCALS",0) 
OR(5)
		PartyHasItem("bdmisc56") 
		HasItem("bdmisc56","C#Solaufein")
		HasItem("bdmisc56","C#Grey")
		HasItem("bdmisc56","C#Husam1")
		HasItem("bdmisc56","C#Brandock")
	OR(3)
		!HasItem("bdmisc56","C#Solaufein")
		Global("C#SolauJoined","GLOBAL",2)
		InParty("C#Solaufein")
	OR(3)
		!HasItem("bdmisc56","C#Grey")
		Global("C#GreyJoined","GLOBAL",2)
		InParty("C#Grey")
	OR(3)
		!HasItem("bdmisc56","C#Husam1")
		Global("C#HusamJoined","GLOBAL",2)
		InParty("C#Husam1")
	OR(3)
		!HasItem("bdmisc56","C#Brandock")
		Global("C#BrandockJoined","GLOBAL",2)
		InParty("C#Brandock")~ + @384 /* You're right. Maybe I should start a collection of these things. 'My life in pictures - volume I: Bounty notices by my foes.' */ DO ~SetGlobal("C#Brando_SoDDPEvents3","LOCALS",1)~ + bounty_notice_05

++ @386 /* Lets stop talking and return to doing something. */ + bounty_notice_08
END

IF ~~ THEN bounty_notice_02
SAY @390 /* [Brandock]Then I apologize, I didn't mean to offend you. (They *did* catch your nose right, though.) */ 
++ @391 /* No offence taken. */ + bounty_notice_06
++ @392 /* It's not a topic worth arguing over. We've got important things to do. */ + bounty_notice_07

+ ~Global("C#Brando_SoDDPEvents1","LOCALS",0)~ + @382 /* These were assassins, probably sent by Caelar Agent. */ DO ~SetGlobal("C#Brando_SoDDPEvents1","LOCALS",1)~ + bounty_notice_03
+ ~Global("C#Brando_SoDDPEvents2","LOCALS",0) GlobalLT("BD_plot","global",54)~ + @383 /* They poisoned Imoen. She is not well - at all. */ DO ~SetGlobal("C#Brando_SoDDPEvents2","LOCALS",1)~ + bounty_notice_04
+ ~Global("C#Brando_SoDDPEvents3","LOCALS",0) 
OR(5)
		PartyHasItem("bdmisc56") 
		HasItem("bdmisc56","C#Solaufein")
		HasItem("bdmisc56","C#Grey")
		HasItem("bdmisc56","C#Husam1")
		HasItem("bdmisc56","C#Brandock")
	OR(3)
		!HasItem("bdmisc56","C#Solaufein")
		Global("C#SolauJoined","GLOBAL",2)
		InParty("C#Solaufein")
	OR(3)
		!HasItem("bdmisc56","C#Grey")
		Global("C#GreyJoined","GLOBAL",2)
		InParty("C#Grey")
	OR(3)
		!HasItem("bdmisc56","C#Husam1")
		Global("C#HusamJoined","GLOBAL",2)
		InParty("C#Husam1")
	OR(3)
		!HasItem("bdmisc56","C#Brandock")
		Global("C#BrandockJoined","GLOBAL",2)
		InParty("C#Brandock")~ + @384 /* You're right. Maybe I should start a collection of these things. 'My life in pictures - volume I: Bounty notices by my foes.' */ DO ~SetGlobal("C#Brando_SoDDPEvents3","LOCALS",1)~ + bounty_notice_05

++ @386 /* Lets stop talking and return to doing something. */ + bounty_notice_08
END

IF ~~ THEN bounty_notice_03
SAY @393 /* [Brandock]The warlord? ...Warlady? Assassins, for you! She seems to fear you a lot! Was that before or after you agreed to lead the counter army? */
++ @394 /* Before I agreed. */ + bounty_notice_10
++ @395 /* Who knows, maybe the Dukes were talking about it for some time before requesting it from me. */ + bounty_notice_10

+ ~Global("C#Brando_SoDDPEvents2","LOCALS",0) GlobalLT("BD_plot","global",54)~ + @383 /* They poisoned Imoen. She is not well - at all. */ DO ~SetGlobal("C#Brando_SoDDPEvents2","LOCALS",1)~ + bounty_notice_04
+ ~Global("C#Brando_SoDDPEvents3","LOCALS",0)
OR(5)
		PartyHasItem("bdmisc56") 
		HasItem("bdmisc56","C#Solaufein")
		HasItem("bdmisc56","C#Grey")
		HasItem("bdmisc56","C#Husam1")
		HasItem("bdmisc56","C#Brandock")
	OR(3)
		!HasItem("bdmisc56","C#Solaufein")
		Global("C#SolauJoined","GLOBAL",2)
		InParty("C#Solaufein")
	OR(3)
		!HasItem("bdmisc56","C#Grey")
		Global("C#GreyJoined","GLOBAL",2)
		InParty("C#Grey")
	OR(3)
		!HasItem("bdmisc56","C#Husam1")
		Global("C#HusamJoined","GLOBAL",2)
		InParty("C#Husam1")
	OR(3)
		!HasItem("bdmisc56","C#Brandock")
		Global("C#BrandockJoined","GLOBAL",2)
		InParty("C#Brandock")~ + @384 /* You're right. Maybe I should start a collection of these things. 'My life in pictures - volume I: Bounty notices by my foes.' */ DO ~SetGlobal("C#Brando_SoDDPEvents3","LOCALS",1)~ + bounty_notice_05

++ @386 /* Lets stop talking and return to doing something. */ + bounty_notice_08
END


IF ~~ THEN bounty_notice_04
SAY @396 /* [Brandock]Imoen is sick and Duke Jannath can't help her? This is bad. This is really bad! */
++ @397 /* It is, and I won't stop until I found who's behind this. */ + bounty_notice_07

+ ~Global("C#Brando_SoDDPEvents1","LOCALS",0)~ + @382 /* These were assassins, probably sent by Caelar Agent. */ DO ~SetGlobal("C#Brando_SoDDPEvents1","LOCALS",1)~ + bounty_notice_03
+ ~Global("C#Brando_SoDDPEvents3","LOCALS",0)
OR(5)
		PartyHasItem("bdmisc56") 
		HasItem("bdmisc56","C#Solaufein")
		HasItem("bdmisc56","C#Grey")
		HasItem("bdmisc56","C#Husam1")
		HasItem("bdmisc56","C#Brandock")
	OR(3)
		!HasItem("bdmisc56","C#Solaufein")
		Global("C#SolauJoined","GLOBAL",2)
		InParty("C#Solaufein")
	OR(3)
		!HasItem("bdmisc56","C#Grey")
		Global("C#GreyJoined","GLOBAL",2)
		InParty("C#Grey")
	OR(3)
		!HasItem("bdmisc56","C#Husam1")
		Global("C#HusamJoined","GLOBAL",2)
		InParty("C#Husam1")
	OR(3)
		!HasItem("bdmisc56","C#Brandock")
		Global("C#BrandockJoined","GLOBAL",2)
		InParty("C#Brandock")~ + @384 /* You're right. Maybe I should start a collection of these things. 'My life in pictures - volume I: Bounty notices by my foes.' */ DO ~SetGlobal("C#Brando_SoDDPEvents3","LOCALS",1)~ + bounty_notice_05

++ @386 /* Lets stop talking and return to doing something. */ + bounty_notice_08
END

IF ~~ THEN bounty_notice_05
SAY @398 /* [Brandock]Ha! Make sure you get a bag of holding for those. */
+ ~Global("C#Brando_SoDDPEvents1","LOCALS",0)~ + @382 /* These were assassins, probably sent by Caelar Agent. */ DO ~SetGlobal("C#Brando_SoDDPEvents1","LOCALS",1)~ + bounty_notice_03
+ ~Global("C#Brando_SoDDPEvents2","LOCALS",0) GlobalLT("BD_plot","global",54)~ + @383 /* They poisoned Imoen. She is not well - at all. */ DO ~SetGlobal("C#Brando_SoDDPEvents2","LOCALS",1)~ + bounty_notice_04
+ ~OR(2) PartyHasItem("c#br0003") HasItem("C#Brandock","c#br0003")~ + @399 /* Nah, I'll just stuff all of them into your book bag. Did you need this for anything important? */ + bounty_notice_11
++ @386 /* Lets stop talking and return to doing something. */ + bounty_notice_08
END


IF ~~ THEN bounty_notice_06
SAY @400 /* [Brandock]Thanks. */
+ ~Global("C#Brando_SoDDPEvents1","LOCALS",0)~ + @382 /* These were assassins, probably sent by Caelar Agent. */ DO ~SetGlobal("C#Brando_SoDDPEvents1","LOCALS",1)~ + bounty_notice_03
+ ~Global("C#Brando_SoDDPEvents2","LOCALS",0) GlobalLT("BD_plot","global",54)~ + @383 /* They poisoned Imoen. She is not well - at all. */ DO ~SetGlobal("C#Brando_SoDDPEvents2","LOCALS",1)~ + bounty_notice_04
+ ~Global("C#Brando_SoDDPEvents3","LOCALS",0)
OR(5)
		PartyHasItem("bdmisc56") 
		HasItem("bdmisc56","C#Solaufein")
		HasItem("bdmisc56","C#Grey")
		HasItem("bdmisc56","C#Husam1")
		HasItem("bdmisc56","C#Brandock")
	OR(3)
		!HasItem("bdmisc56","C#Solaufein")
		Global("C#SolauJoined","GLOBAL",2)
		InParty("C#Solaufein")
	OR(3)
		!HasItem("bdmisc56","C#Grey")
		Global("C#GreyJoined","GLOBAL",2)
		InParty("C#Grey")
	OR(3)
		!HasItem("bdmisc56","C#Husam1")
		Global("C#HusamJoined","GLOBAL",2)
		InParty("C#Husam1")
	OR(3)
		!HasItem("bdmisc56","C#Brandock")
		Global("C#BrandockJoined","GLOBAL",2)
		InParty("C#Brandock")~ + @384 /* You're right. Maybe I should start a collection of these things. 'My life in pictures - volume I: Bounty notices by my foes.' */ DO ~SetGlobal("C#Brando_SoDDPEvents3","LOCALS",1)~ + bounty_notice_05

++ @386 /* Lets stop talking and return to doing something. */ + bounty_notice_08
END

IF ~~ THEN bounty_notice_07
SAY @401 /* [Brandock]Indeed. */
+ ~Global("C#Brando_SoDDPEvents1","LOCALS",0)~ + @382 /* These were assassins, probably sent by Caelar Agent. */ DO ~SetGlobal("C#Brando_SoDDPEvents1","LOCALS",1)~ + bounty_notice_03
+ ~Global("C#Brando_SoDDPEvents2","LOCALS",0) GlobalLT("BD_plot","global",54)~ + @383 /* They poisoned Imoen. She is not well - at all. */ DO ~SetGlobal("C#Brando_SoDDPEvents2","LOCALS",1)~ + bounty_notice_04
+ ~Global("C#Brando_SoDDPEvents3","LOCALS",0)
OR(5)
		PartyHasItem("bdmisc56") 
		HasItem("bdmisc56","C#Solaufein")
		HasItem("bdmisc56","C#Grey")
		HasItem("bdmisc56","C#Husam1")
		HasItem("bdmisc56","C#Brandock")
	OR(3)
		!HasItem("bdmisc56","C#Solaufein")
		Global("C#SolauJoined","GLOBAL",2)
		InParty("C#Solaufein")
	OR(3)
		!HasItem("bdmisc56","C#Grey")
		Global("C#GreyJoined","GLOBAL",2)
		InParty("C#Grey")
	OR(3)
		!HasItem("bdmisc56","C#Husam1")
		Global("C#HusamJoined","GLOBAL",2)
		InParty("C#Husam1")
	OR(3)
		!HasItem("bdmisc56","C#Brandock")
		Global("C#BrandockJoined","GLOBAL",2)
		InParty("C#Brandock")~ + @384 /* You're right. Maybe I should start a collection of these things. 'My life in pictures - volume I: Bounty notices by my foes.' */ DO ~SetGlobal("C#Brando_SoDDPEvents3","LOCALS",1)~ + bounty_notice_05

++ @386 /* Lets stop talking and return to doing something. */ + bounty_notice_08
END

IF ~~ THEN bounty_notice_08
SAY @402 /* [Brandock]Alright! */
IF ~~ THEN DO ~SetGlobal("C#Brandock_Dialog","GLOBAL",103)~ EXIT
IF ~GlobalLT("BD_plot","global",54)~ THEN + bounty_notice_09
END

IF ~~ THEN bounty_notice_09
SAY @403 /* [Brandock]Poor Imoen - I hope she'll be alright soon. (Not a calming thought, going against a foe with such powerful poison.) */
IF ~~ THEN DO ~SetGlobal("C#Brandock_Dialog","GLOBAL",103)~ EXIT
END

IF ~~ THEN bounty_notice_10
SAY @404 /* [Brandock]Which could mean she could have spies in the palace... which is not a thought I want to think about any further. At all. */
++ @405 /* Interesting thought. We'll keep our eyes open. */ + bounty_notice_07
++ @406 /* Or they were after me because of my heritage. It's not a secret any more. */ + bounty_notice_07

+ ~Global("C#Brando_SoDDPEvents1","LOCALS",0)~ + @382 /* These were assassins, probably sent by Caelar Agent. */ DO ~SetGlobal("C#Brando_SoDDPEvents1","LOCALS",1)~ + bounty_notice_03
+ ~Global("C#Brando_SoDDPEvents2","LOCALS",0) GlobalLT("BD_plot","global",54)~ + @383 /* They poisoned Imoen. She is not well - at all. */ DO ~SetGlobal("C#Brando_SoDDPEvents2","LOCALS",1)~ + bounty_notice_04
+ ~Global("C#Brando_SoDDPEvents3","LOCALS",0)
OR(5)
		PartyHasItem("bdmisc56") 
		HasItem("bdmisc56","C#Solaufein")
		HasItem("bdmisc56","C#Grey")
		HasItem("bdmisc56","C#Husam1")
		HasItem("bdmisc56","C#Brandock")
	OR(3)
		!HasItem("bdmisc56","C#Solaufein")
		Global("C#SolauJoined","GLOBAL",2)
		InParty("C#Solaufein")
	OR(3)
		!HasItem("bdmisc56","C#Grey")
		Global("C#GreyJoined","GLOBAL",2)
		InParty("C#Grey")
	OR(3)
		!HasItem("bdmisc56","C#Husam1")
		Global("C#HusamJoined","GLOBAL",2)
		InParty("C#Husam1")
	OR(3)
		!HasItem("bdmisc56","C#Brandock")
		Global("C#BrandockJoined","GLOBAL",2)
		InParty("C#Brandock")~ + @384 /* You're right. Maybe I should start a collection of these things. 'My life in pictures - volume I: Bounty notices by my foes.' */ DO ~SetGlobal("C#Brando_SoDDPEvents3","LOCALS",1)~ + bounty_notice_05

++ @386 /* Lets stop talking and return to doing something. */ + bounty_notice_08
END

IF ~~ THEN bounty_notice_11
SAY @407 /* [Brandock]Well, I guess I provoked that. Sure, go ahead - more choice for the foxes next time. */
+ ~Global("C#Brando_SoDDPEvents1","LOCALS",0)~ + @382 /* These were assassins, probably sent by Caelar Agent. */ DO ~SetGlobal("C#Brando_SoDDPEvents1","LOCALS",1)~ + bounty_notice_03
+ ~Global("C#Brando_SoDDPEvents2","LOCALS",0) GlobalLT("BD_plot","global",54)~ + @383 /* They poisoned Imoen. She is not well - at all. */ DO ~SetGlobal("C#Brando_SoDDPEvents2","LOCALS",1)~ + bounty_notice_04
++ @386 /* Lets stop talking and return to doing something. */ + bounty_notice_08
END


/* Imoen down - first dialogue starts here if PC didn't pick up bounty notice */
IF ~Global("C#Brandock_Dialog","GLOBAL",102) GlobalLT("BD_plot","global",54)
!PartyHasItem("bdmisc56") 
	OR(3)
		!HasItem("bdmisc56","C#Solaufein")
		Global("C#SolauJoined","GLOBAL",0)
		!InParty("C#Solaufein")
	OR(3)
		!HasItem("bdmisc56","C#Grey")
		Global("C#GreyJoined","GLOBAL",0)
		!InParty("C#Grey")
	OR(3)
		!HasItem("bdmisc56","C#Husam1")
		Global("C#HusamJoined","GLOBAL",0)
		!InParty("C#Husam1")
	OR(3)
		!HasItem("bdmisc56","C#Brandock")
		Global("C#BrandockJoined","GLOBAL",0)
		!InParty("C#Brandock")~ THEN imoen_down
SAY @408 /* [Brandock]Imoen stayed with Duke Jannath, I take it? */
++ @409 /* She was attacked by assassins. */ + imoen_down_01
+ ~GlobalLT("BD_plot","global",54)~ + @410 /* (scoffs) As her research material for finding a cure, maybe. */ DO ~SetGlobal("C#Brando_SoDDPEvents2","LOCALS",1)~ + bounty_notice_04
+ ~GlobalLT("BD_plot","global",54)~ + @411 /* Imoen's poisoned, and fighting for her life. */ DO ~SetGlobal("C#Brando_SoDDPEvents2","LOCALS",1)~ + bounty_notice_04
END

IF ~Global("C#Brandock_Dialog","GLOBAL",102) GlobalGT("BD_plot","global",53)
!PartyHasItem("bdmisc56") 
	OR(3)
		!HasItem("bdmisc56","C#Solaufein")
		Global("C#SolauJoined","GLOBAL",0)
		!InParty("C#Solaufein")
	OR(3)
		!HasItem("bdmisc56","C#Grey")
		Global("C#GreyJoined","GLOBAL",0)
		!InParty("C#Grey")
	OR(3)
		!HasItem("bdmisc56","C#Husam1")
		Global("C#HusamJoined","GLOBAL",0)
		!InParty("C#Husam1")
	OR(3)
		!HasItem("bdmisc56","C#Brandock")
		Global("C#BrandockJoined","GLOBAL",0)
		!InParty("C#Brandock")~ THEN imoen_down_00
SAY @412 /* Imoen needed treatment earlier, I heard? What happened? */
++ @409 /* She was attacked by assassins. */ + imoen_down_01
END

IF ~~ THEN imoen_down_01
SAY @413 /* [Brandock]Assassins?! */
++ @414 /* Yes, probably sent by Caelar and ment for me. */ DO ~SetGlobal("C#Brando_SoDDPEvents1","LOCALS",1) SetGlobal("C#Brando_SoDDPEvents2","LOCALS",1)~ + bounty_notice_03
+ ~GlobalLT("BD_plot","global",54)~ + @411 /* Imoen's poisoned, and fighting for her life. */ DO ~SetGlobal("C#Brando_SoDDPEvents2","LOCALS",1)~ + bounty_notice_04
++ @386 /* Lets stop talking and return to doing something. */ + bounty_notice_08
END



/* 2nd Friendship dialogue - About Imoen */

IF ~Global("C#Brandock_Dialog","GLOBAL",104)~ THEN about_imoen
SAY @415 /* [Brandock]Assassins coming for you, but Imoen taking the blow. Don't blame yourself for this, <CHARNAME>! */
/* doesn't know that Caelar wants to kidnap PC - from Road to Discovery */
+ ~Global("C#RtD_CaelarKidnap","GLOBAL",0)~ + @416 /* It's hard not to. We all know why I'm so special and drawing all the attention. */ + about_imoen_02
/* knows that Caelar wants to kidnap PC - from Road to Discovery */
+ ~GlobalGT("C#RtD_CaelarKidnap","GLOBAL",0)~ + @417 /* It's hard not to, especially with the knowledge that the attack was meant for getting to me. */ + about_imoen_02
++ @418 /* I don't blame myself. I didn't send the assassins. */ + about_imoen_04
++ @419 /* What? Imoen run off like a nosy kitten, instead of waiting for me! It's hardly my fault. */ + about_imoen_04 
++ @420 /* I don't want to talk about this further. */ + about_imoen_01
END

IF ~~ THEN about_imoen_01
SAY @421 /* [Brandock]Then we won't. */
IF ~~ THEN DO ~SetGlobal("C#Brandock_Dialog","GLOBAL",105)~ EXIT
END

IF ~~ THEN about_imoen_02
SAY @422 /* [Brandock]And you can't blame yourself for *that* in the first place! */
++ @423 /* Yes and no. I didn't chose my heritage, but it's my actions that influences how others see me. */ + about_imoen_05
++ @424 /* I'm the target and others take the pain. Will it be always like this? */ + about_imoen_03
++ @420 /* I don't want to talk about this further. */ + about_imoen_01
END

IF ~~ THEN about_imoen_03
SAY @425 /* [Brandock]I am sure it won't. Life is unfair, that is true, but usually it's unfair to *other* people, as well, and while it's doing that one has a chance of having a good time. Erm, this allegory works better if someone complains about bad things happening to *<PRO_HIMHER>self*, not to others, of course. You know what I mean. */
IF ~~ THEN + about_imoen_07
IF ~GlobalLT("BD_plot","global",54)~ THEN + about_imoen_06
END

IF ~~ THEN about_imoen_04
SAY @426 /* [Brandock]That's a healthy approach to see this. For you, I mean. And I didn't mean this sarcastically. */
IF ~~ THEN + about_imoen_07
IF ~GlobalLT("BD_plot","global",54)~ THEN + about_imoen_06
END

END //APPEND

CHAIN
IF ~~ THEN c#brandj about_imoen_05
@427 /* [Brandock]Well, it's not all true, that the way people see you would be only dependent on how you behave. Sometimes, life goes into entirely different directions no matter what one did. Er, which probably wasn't a very comforting thing to say. */
/* knows that Caelar wants to kidnap PC - from Road to Discovery */
== c#brandj IF ~GlobalGT("C#RtD_CaelarKidnap","GLOBAL",0)~ THEN @428 /* [Brandock]Caelar wanting to kidnap you for whatever purpose is a good - or better, *bad* example of what I mean. */
/* doesn't know that Caelar wants to kidnap PC - from Road to Discovery */
== c#brandj IF ~Global("C#RtD_CaelarKidnap","GLOBAL",0)~ THEN @429 /* [Brandock]This Caelar obviously sees you as a threat to her 'crusade', otherwise she wouldn't sent assassins to get rid of you. I think that's a good sign. For how people see you, I mean. */
END
IF ~~ THEN + about_imoen_07
IF ~GlobalLT("BD_plot","global",54)~ THEN + about_imoen_06

APPEND c#brandj

IF ~~ THEN about_imoen_06
SAY @430 /* [Brandock]I really hope Imoen gets better soon. I hope she'll be better at all! */
IF ~~ THEN DO ~SetGlobal("C#Brandock_Dialog","GLOBAL",105)~ EXIT
END

IF ~~ THEN about_imoen_07
SAY @431 /* [Brandock]Let's continue and make sure something like this won't happen again! */
IF ~~ THEN DO ~SetGlobal("C#Brandock_Dialog","GLOBAL",105)~ EXIT
END


/* 3rd Friendship dialogue - marching with the Flaming Fist... */
IF ~Global("C#Brandock_Dialog","GLOBAL",106)~ THEN marching_with_ff
SAY @432 /* [Brandock]Marching out with the Flaming Fist soldiers gives me unease... Where were they when Angelo misused the Watch? Where were they when you were falsely accused of murder? Other than chasing you, of course. */
++ @433 /* ...When Duke Eltan was poisoned and Scar killed. I know what you mean. */ + marching_with_ff_01
++ @434 /* Duke Eltan trusts his men, so do we. */ + marching_with_ff_02
++ @435 /* They were following orders. Like they are now. */ + marching_with_ff_02
++ @436 /* I am pretty sure those Flaming Fist soldiers are no longer around. And if they are, they'll keep their heads down. */ + marching_with_ff_01
++ @437 /* Angelo worked with a lot of mercenaries. I guess he knew why. The majority of soldiers were probably loyal to Duke Eltan and Scar. */ + marching_with_ff_02
++ @438 /* Feeling uneasy? */ + marching_with_ff_01
END

IF ~~ THEN marching_with_ff_01
SAY @439 /* [Brandock]I know marching with so many backup should make me feel more secure - as much as one can be if preparing to face a war army. But it's difficult for me, like walking with a slumbering beast that could turn against us again, if the wrong person gives the wrong order. A beast that bit before... */
IF ~~ THEN + marching_with_ff_03
END

IF ~~ THEN marching_with_ff_02
SAY @440 /* [Brandock]Maybe their loyalty to their superiors is to our advantage now - we can be sure they'll obey the Dukes and be on our side... unless you are framed again. By someone, for something. */
IF ~~ THEN + marching_with_ff_03
END

IF ~~ THEN marching_with_ff_03
SAY @441 /* [Brandock]I know this is unrealistic and would be completely out of proportion considering what we are up against, but I can't really shake the feeling. We are not travelling with friends. */
IF ~~ THEN DO ~IncrementGlobal("C#Brandock_Dialog","GLOBAL",1)~ EXIT
END

/* 4rd Friendship dialogue - What is happening? */

IF ~Global("C#Brandock_Dialog","GLOBAL",108)~ THEN sod_story1
SAY @442 /* [Brandock]I am scared about what is going on. Didn't we just *end* a threat of war? Look at this, <CHARNAME>... People are in more trouble now than before. And assassins - coming after you, again. Or should I say: still? How did this happen? Did I miss something? It all went so fast. I wanted to travel some more, now that the bandit threats are ended and the roads are save again. Ha. Ha. Ha. Oh, I so wish I could laugh about this. */
++ @443 /* I wish I could laugh, too. But it's really happening. */ + sod_story1_03
++ @444 /* No one expected the crusade coming this far south. Everyone was surprised we see it here at all. */ + sod_story1_03
++ @445 /* It went very quick, yes. */ + sod_story1_03
++ @446 /* Maybe it's *because* the Sword Coast just faced times of chaos. */ + sod_story1_05
+ ~OR(2)
	GlobalGT("bd_skie_entar_caelar","global",0)
	Global("C#RtD_CoalCaelarBhaalChild","GLOBAL",1)
Global("bd_mdd018","global",0) 
GlobalLT("C#RtD_CoalCaelarBhaalChild","GLOBAL",2)~ + @447 /* I wonder whether this rumor about Caelar being a child of Bhaal is true or not. */ + sod_story1_01
++ @448 /* Well, no use talking about it. It's here and we have to deal with it. */ + sod_story1_04
END

IF ~~ THEN sod_story1_01
SAY @449 /* [Brandock]Caelar a child of Bhaal - yes, that would make sense... more than I am happy to admit, if thinking of Sarevok. */
IF ~~ THEN + sod_story1_02
END

IF ~~ THEN sod_story1_02
SAY @450 /* [Brandock]And what did Sarevok and the Iron Throne do to get this far. Poisoned the ore, enslaved miners, woven a net of conspiracy across the land, replaced influencial persons by doppelgangers. He didn't even stop at infiltrating Candlekeep! */
= @451 /* Now think of all the people in the city! All because a war lord raised an army and just started marching. I wonder whether he'd be envious. Sarevok, I mean. */
IF ~~ THEN DO ~SetGlobal("C#Brandock_Dialog","GLOBAL",109)~ EXIT
END

IF ~~ THEN sod_story1_03
SAY @452 /* [Brandock]That is true, indeed. This Caelar is about to spread chaos to the Sword Coast, indeed... */
++ @446 /* Maybe it's *because* the Sword Coast just faced times of chaos. */ + sod_story1_05
+ ~OR(2)
	GlobalGT("bd_skie_entar_caelar","global",0)
	Global("C#RtD_CoalCaelarBhaalChild","GLOBAL",1)
Global("bd_mdd018","global",0) 
GlobalLT("C#RtD_CoalCaelarBhaalChild","GLOBAL",2)~ + @447 /* I wonder whether this rumor about Caelar being a child of Bhaal is true or not. */ + sod_story1_01
++ @453 /* We have to deal with it best we can, I guess. */ + sod_story1_02
++ @448 /* Well, no use talking about it. It's here and we have to deal with it. */ + sod_story1_04
END

IF ~~ THEN sod_story1_04
SAY @454 /* [Brandock]You are right about the latter. But in my opinion, for some topics there is never such a thing as too much talking. But I respect that you prefer not to hear it from me, and not now. */
IF ~~ THEN DO ~IncrementGlobal("C#Brandock_Dialog","GLOBAL",1)~ EXIT
END

IF ~~ THEN sod_story1_05
SAY @455 /* [Brandock]Oh, that's a very interesting thought, indeed! */
+ ~OR(2)
	GlobalGT("bd_skie_entar_caelar","global",0)
	Global("C#RtD_CoalCaelarBhaalChild","GLOBAL",1)
Global("bd_mdd018","global",0) 
GlobalLT("C#RtD_CoalCaelarBhaalChild","GLOBAL",2)~ + @447 /* I wonder whether this rumor about Caelar being a child of Bhaal is true or not. */ + sod_story1_01
++ @453 /* We have to deal with it best we can, I guess. */ + sod_story1_02
++ @448 /* Well, no use talking about it. It's here and we have to deal with it. */ + sod_story1_04
END


/* 5th FP:  Why a crusade? */

IF ~Global("C#Brandock_Dialog","GLOBAL",110)
OR(2)
GlobalLT("bd_plot","GLOBAL",391)
Global("C#RtD_RoadToDiscovery","GLOBAL",1)
OR(2)
GlobalLT("C#RtD_CaelarPlan","GLOBAL",3)
Global("C#RtD_RoadToDiscovery","GLOBAL",0)~ THEN why_crusade
SAY @456 /* [Brandock]I don't get it, <CHARNAME>... Why a crusade? */
++ @457 /* What? */ + why_crusade_02
++ @458 /* You are wondering why Caelar is marching with a crusade to get to her goal? */ + why_crusade_01
++ @459 /* I don't want to talk about it, Brandock. */ + why_crusade_07
END

IF ~Global("C#Brandock_Dialog","GLOBAL",110)
OR(2)
GlobalGT("bd_plot","GLOBAL",390)
Global("C#RtD_RoadToDiscovery","GLOBAL",1)
OR(2)
GlobalGT("C#RtD_CaelarPlan","GLOBAL",2)
Global("C#RtD_RoadToDiscovery","GLOBAL",0)~ THEN why_crusade_00
SAY @460 /* [Brandock]At the beginning, when we started marching against the crusade, I was asking myself... */
IF ~~ THEN + why_crusade_02
END

IF ~~ THEN why_crusade_01
SAY @461 /* [Brandock]Exactly. */
IF ~~ THEN + why_crusade_02
END

END //APPEND

CHAIN
IF ~~ THEN c#brandj why_crusade_02
@462 /* [Brandock]What does Caelar need a crusade for? Why a crusade, why all these angry people, why all the followers - what is she marching against? It's not necessary to get into Dragonspear Castle - she could have travelled there in peace, before stomping the lands with hundrets of people. */
== c#brandj IF ~OR(2)
GlobalGT("bd_plot","GLOBAL",390)
Global("C#RtD_RoadToDiscovery","GLOBAL",1)
OR(2)
GlobalGT("C#RtD_CaelarPlan","GLOBAL",2)
Global("C#RtD_RoadToDiscovery","GLOBAL",0)~ THEN @463 /* [Brandock]Well, that was before I heard that she's planning on *marching into Avernus*, of course. */
END
+ ~OR(2)
GlobalLT("bd_plot","GLOBAL",391)
Global("C#RtD_RoadToDiscovery","GLOBAL",1)
OR(2)
GlobalLT("C#RtD_CaelarPlan","GLOBAL",3)
Global("C#RtD_RoadToDiscovery","GLOBAL",0)~ + @464 /* Because many people are power! */ + why_crusade_03
+ ~OR(2)
GlobalLT("bd_plot","GLOBAL",391)
Global("C#RtD_RoadToDiscovery","GLOBAL",1)
OR(2)
GlobalLT("C#RtD_CaelarPlan","GLOBAL",3)
Global("C#RtD_RoadToDiscovery","GLOBAL",0)~ + @465 /* I think they just kind of followed her after she told them what she's up to. */ DO ~SetGlobal("C#Brandock_WhyCrusade4","LOCALS",1)~ + why_crusade_04
+ ~OR(2)
GlobalLT("bd_plot","GLOBAL",391)
Global("C#RtD_RoadToDiscovery","GLOBAL",1)
OR(2)
GlobalLT("C#RtD_CaelarPlan","GLOBAL",3)
Global("C#RtD_RoadToDiscovery","GLOBAL",0)~ + @466 /* You think it's more than just to stress her point and to force authorities to listen to her? */ DO ~SetGlobal("C#Brandock_WhyCrusade6","LOCALS",1)~ + why_crusade_06
+ ~OR(2)
GlobalLT("bd_plot","GLOBAL",391) //not after meeting her at dead man's pass
Global("C#RtD_RoadToDiscovery","GLOBAL",1)
OR(2)
Global("C#RtD_CaelarPlan","GLOBAL",2)
Global("C#RtD_RoadToDiscovery","GLOBAL",0)
OR(2)
GlobalGT("bd_plot","global",170) //not before meeting her at Coastway Bridge
Global("C#RtD_RoadToDiscovery","GLOBAL",1)
OR(2)
Global("C#RtD_CaelarPlan","GLOBAL",2)
Global("C#RtD_RoadToDiscovery","GLOBAL",0)~ + @467 /* Well, she *was* talking about freeing souls from Avernus... */ + why_crusade_05
+ ~OR(2)
GlobalLT("bd_plot","GLOBAL",391)
Global("C#RtD_RoadToDiscovery","GLOBAL",1)
OR(2)
GlobalLT("C#RtD_CaelarPlan","GLOBAL",3)
Global("C#RtD_RoadToDiscovery","GLOBAL",0)~ + @459 /* I don't want to talk about it, Brandock. */ + why_crusade_07

+ ~OR(2)
GlobalGT("bd_plot","GLOBAL",390)
GlobalGT("C#RtD_CaelarPlan","GLOBAL",2)~ + @468 /* Yes, now we know why she needs so many people with her. */ + why_crusade_08
+ ~OR(2)
GlobalGT("bd_plot","GLOBAL",390)
GlobalGT("C#RtD_CaelarPlan","GLOBAL",2)~ + @459 /* I don't want to talk about it, Brandock. */ + why_crusade_09

APPEND c#brandj 

IF ~~ THEN why_crusade_03
SAY @469 /* [Brandock]Definitely. But what are they for? */
++ @465 /* I think they just kind of followed her after she told them what she's up to. */ DO ~SetGlobal("C#Brandock_WhyCrusade4","LOCALS",1)~ + why_crusade_04
++ @466 /* You think it's more than just to stress her point and to force authorities to listen to her? */ DO ~SetGlobal("C#Brandock_WhyCrusade6","LOCALS",1)~ + why_crusade_06
+ ~OR(2)
GlobalGT("bd_plot","global",170)
Global("C#RtD_RoadToDiscovery","GLOBAL",1)
OR(2)
Global("C#RtD_CaelarPlan","GLOBAL",2)
Global("C#RtD_RoadToDiscovery","GLOBAL",0)~ + @467 /* Well, she *was* talking about freeing souls from Avernus... */ + why_crusade_05
+ ~GlobalLT("C#RtD_CaelarPlan","GLOBAL",2)~ + @470 /* We will see, I guess. */ + why_crusade_07
++ @459 /* I don't want to talk about it, Brandock. */ + why_crusade_07
END

IF ~~ THEN why_crusade_04
SAY @471 /* [Brandock]I don't know... I had the impression she set out to gather all these people around her. No, it was definitely her aim to collect all the disappointed and hurting. */
+ ~Global("C#Brandock_WhyCrusade6","LOCALS",0)~ + @466 /* You think it's more than just to stress her point and to force authorities to listen to her? */ DO ~SetGlobal("C#Brandock_WhyCrusade6","LOCALS",1)~ + why_crusade_06
+ ~OR(2)
GlobalGT("bd_plot","global",170)
Global("C#RtD_RoadToDiscovery","GLOBAL",1)
OR(2)
Global("C#RtD_CaelarPlan","GLOBAL",2)
Global("C#RtD_RoadToDiscovery","GLOBAL",0)~ + @467 /* Well, she *was* talking about freeing souls from Avernus... */ + why_crusade_05
+ ~GlobalLT("C#RtD_CaelarPlan","GLOBAL",2)~ + @470 /* We will see, I guess. */ + why_crusade_07
++ @459 /* I don't want to talk about it, Brandock. */ + why_crusade_07
END

IF ~~ THEN why_crusade_05
SAY @472 /* [Brandock]Do you... do you think she is leading them into Avernus? But she said she found a way to free the souls... She wasn't only referring to marching there and fighting them free, no? Surely she found another way, godchild and all? */
IF ~~ THEN + why_crusade_07
END

IF ~~ THEN why_crusade_06
SAY @473 /* [Brandock]She definitely has the authorities' attention with a thousand people in her follow... */
+ ~Global("C#Brandock_WhyCrusade4","LOCALS",0)~ + @465 /* I think they just kind of followed her after she told them what she's up to. */ DO ~SetGlobal("C#Brandock_WhyCrusade4","LOCALS",1)~ + why_crusade_04
+ ~OR(2)
GlobalGT("bd_plot","global",170)
Global("C#RtD_RoadToDiscovery","GLOBAL",1)
OR(2)
Global("C#RtD_CaelarPlan","GLOBAL",2)
Global("C#RtD_RoadToDiscovery","GLOBAL",0)~ + @467 /* Well, she *was* talking about freeing souls from Avernus... */ + why_crusade_05
+ ~GlobalLT("C#RtD_CaelarPlan","GLOBAL",2)~ + @470 /* We will see, I guess. */ + why_crusade_07
++ @459 /* I don't want to talk about it, Brandock. */ + why_crusade_07
END

IF ~~ THEN why_crusade_07
SAY @474 /* [Brandock]Well, I am sure we'll learn her motives eventually... Something tells me I won't feel happy about it. */
IF ~~ THEN DO ~IncrementGlobal("C#Brandock_Dialog","GLOBAL",1)~ EXIT
END

IF ~~ THEN why_crusade_08
SAY @475 /* [Brandock]Yes, we do. (sigh) */
IF ~~ THEN + why_crusade_09
END

IF ~~ THEN why_crusade_09
SAY @476 /* [Brandock]If I'm honest, I don't want to talk about this. I don't want to have to *think* about it. I just hope we'll stop her in time! */
IF ~~ THEN DO ~IncrementGlobal("C#Brandock_Dialog","GLOBAL",1)~ EXIT
END


/* 6th FP dialogue: after first meeting of Caelar */
/* knowing that Caelar wants to free the souls from Avernus */

/*
GlobalGT("bd_plot","global",160)
Global("C#RtD_CaelarPlan","GLOBAL",2)
*/
IF ~Global("C#Brandock_Dialog","GLOBAL",112)~ THEN know_freeing_souls_from_avernus
SAY @477 /* [Brandock]So, Caelar wants to "free the souls from Avernus". That is ... a noble idea ... but ... */
= @478 /* [Brandock]<CHARNAME>, I am scared. */
++ @479 /* Who wouldn't be, when facing a crazed warlady who is planning on meddling with fiends. */ + know_freeing_souls_from_avernus_01
+ ~GlobalLT("chapter","global",10)~ + @480 /* It's a little early for that. We haven't even reached the large war camp yet. */ + know_freeing_souls_from_avernus_04
++ @481 /* We are strong, Brandock. The whole Sword Coast is fighting this with us. */ + know_freeing_souls_from_avernus_04
++ @482 /* What of, exactly? */ + know_freeing_souls_from_avernus_05
++ @483 /* No surprise there. Anything new you'd want to tell me? */ + know_freeing_souls_from_avernus_02
+ ~GlobalGT("C#Brando_bdelandr_18","global",0)~ + @484 /* So you seem. Remember what happened at Bridgefort when one of the soldiers lost it? */ + know_freeing_souls_from_avernus_11
++ @485 /* Brandock, suck it up. */ + know_freeing_souls_from_avernus_03
END

IF ~~ THEN know_freeing_souls_from_avernus_01
SAY @486 /* [Brandock]I am relieved you see it that way, too. */
IF ~~ THEN + know_freeing_souls_from_avernus_04
END

IF ~~ THEN know_freeing_souls_from_avernus_02
SAY @487 /* [Brandock]A-haha, yes, I deserve that. */
IF ~~ THEN + know_freeing_souls_from_avernus_04
END

IF ~~ THEN know_freeing_souls_from_avernus_03
SAY @488 /* [Brandock]A-haha, yes, I guess I deserve that. */
IF ~~ THEN DO ~IncrementGlobal("C#Brandock_Dialog","GLOBAL",1)~ EXIT
END

IF ~~ THEN know_freeing_souls_from_avernus_04
SAY @489 /* [Brandock]Aren't you scared? */
++ @490 /* Yes, I am, Brandock. */ + know_freeing_souls_from_avernus_06
++ @491 /* This whole affair has a magnitude that is kind of intimidating, I agree to that. */ + know_freeing_souls_from_avernus_06
++ @492 /* It doesn't matter, Brandock. We need to get through this, no matter how we are feeling about it. */ + know_freeing_souls_from_avernus_08
++ @493 /* No, I'm not. Not from this. */ + know_freeing_souls_from_avernus_07
END

IF ~~ THEN know_freeing_souls_from_avernus_05
SAY @494 /* [Brandock]The crusade ... that madwoman who clearly lost it ... fiends ... more fiends ... */
IF ~~ THEN + know_freeing_souls_from_avernus_04
END

IF ~~ THEN know_freeing_souls_from_avernus_06
SAY @495 /* [Brandock]Alright, that's not reassuring at all. I don't know why I asked. I appreciate you not lying to me, though. */
IF ~~ THEN + know_freeing_souls_from_avernus_09
END

IF ~~ THEN know_freeing_souls_from_avernus_07
SAY @496 /* [Brandock]I envy you. I do believe you are blind to the dangers at hand, but I do envy you. */
IF ~~ THEN + know_freeing_souls_from_avernus_10
END

IF ~~ THEN know_freeing_souls_from_avernus_08
SAY @497 /* [Brandock]Yes, that's what I keep telling myself. */
IF ~~ THEN + know_freeing_souls_from_avernus_10
END

IF ~~ THEN know_freeing_souls_from_avernus_09
SAY @498 /* And still you keep it together. */
IF ~~ THEN + know_freeing_souls_from_avernus_10
END

IF ~~ THEN know_freeing_souls_from_avernus_10
SAY @499 /* [Brandock]Whatever it will be - I fear there will be fiends and demons, and more than we would like to be facing. */
IF ~~ THEN + know_freeing_souls_from_avernus_12
IF ~OR(2)
	GlobalGT("bd_plot","global",169)
	Global("C#RtD_RoadToDiscovery","GLOBAL",1)
  OR(2)
	GlobalGT("C#RtD_CaelarPlan","GLOBAL",2)
	Global("C#RtD_RoadToDiscovery","GLOBAL",0)~ THEN + know_freeing_souls_from_avernus_13
END

IF ~~ THEN know_freeing_souls_from_avernus_11
SAY @500 /* [Brandock]You mean Elandro and the Feyr? Yes, I do! That's why I am talking about it, because not experiencing something like this ever again is a good motivation. */
IF ~~ THEN + know_freeing_souls_from_avernus_04
END

IF ~~ THEN know_freeing_souls_from_avernus_12
SAY @501 /* [Brandock]Although I would hope Caelar found a way to free the trapped souls without going *into* Avernus to do that, right? With some sort of ritual to get the souls out, without letting the fiends lose on the Prime *again* - which lead to the whole problem in the first place... */
IF ~~ THEN DO ~IncrementGlobal("C#Brandock_Dialog","GLOBAL",1)~ EXIT
END

IF ~~ THEN know_freeing_souls_from_avernus_13
SAY @502 /* [Brandock]Ah, what an anti-prep talk... Well, *I* do feel a bit better, so - thanks. I'll be quiet now. */
IF ~~ THEN DO ~IncrementGlobal("C#Brandock_Dialog","GLOBAL",1)~ EXIT
END


END //APPEND
