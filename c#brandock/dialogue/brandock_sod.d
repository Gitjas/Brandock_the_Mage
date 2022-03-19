/* SoD content */

/* last follower's dungeon */

I_C_T BDAMMON 4 C#Brando_BDAMMON4
== c#brandj IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN ~Hm... Standing in front of an alchemist's table doing experiments all day... That sounds completely dull - and like something I'll probably end up doing in the future...~
== BDAMMON IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN ~It's the results that matters, young mage. The results! And for that, someone was supposed to help me find the needed ingredients.~
END

I_C_T BDAMMON 17 C#Brando_BDAMMON17
== c#brandj IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN ~You want to apply this to a tome in Candlekeep, and you were preparing this potion *here*? In the family tomb of Korlasz? And will carry the potion all the way to Candlekeep now? (I don't have to understand this, do I?)~
END

I_C_T BDAMMON 18 C#Brando_BDAMMON17
== c#brandj IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN ~You want to apply this to a tome in Candlekeep, and you were preparing this potion *here*? In the family tomb of Korlasz? And will carry the potion all the way to Candlekeep now? (I don't have to understand this, do I?)~
END

I_C_T BDAMMON 20 C#Brando_BDAMMON20
== c#brandj IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN ~You don't even have an entrance book yet? (Am I the only one who thinks she should work on her priorities?)~
END

I_C_T BDAMMON 21 C#Brando_BDAMMON21
== c#brandj IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN ~(Psst - <CHARNAME>? I think this woman is c-r-a-z-y.)~
END

/* IF ~~ THEN BEGIN 31 // from: 32.0 30.0
  SAY #45594 /* ~Oh, thank you, thank you! I'll leave for Candlekeep at once. Here, take this as a small token of my appreciation.~ */ */
I_C_T BDAMMON 31 C#Brando_BDAMMON31
== c#brandj IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN ~Well, who would have known. You changed from outcast of your own home and no-entry-without-valuable-book-like-everyone-else to a source of connections and "who know who"! If only you knew when seeking entrance to Candlekeep yourself.~
END

/* IF ~~ THEN BEGIN 33 // from: 32.1 30.2
  SAY #45598 /* ~Fair enough. I had to ask, you understand, yes? Well, I'm off to Candlekeep regardless. Here's a little reward for your help with the moss.~ */ */
I_C_T BDAMMON 33 C#Brando_BDAMMON31
== c#brandj IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN ~Well, who would have known. You changed from outcast of your own home and no-entry-without-valuable-book-like-everyone-else to a source of connections and "who know who"! If only you knew when seeking entrance to Candlekeep yourself.~
= ~Thank you for not giving her that signature. That woman scared the hell out of me!~
END




/* Korlasz defeated, before transition to Ducal Palace  */
CHAIN 
IF ~Global("C#Brando_SoDKorlaszDefeated","GLOBAL",1)~ THEN c#brandj korlasz_defeated
~We did it! We ended the bandit threat, the threat of war, and did all the cleanup, too. That should be impressive even for Amnish authorities, don't you think?~ [c#ablank]
END
IF ~~ THEN DO ~SetGlobal("C#Brando_SoDKorlaszDefeated","GLOBAL",2)~ EXIT


/* note about Sarevok's Sword in Korlash's Tomb (bdshkoro.itm) */

APPEND c#brandj 

IF ~Global("C#Brando_bdshkoro","LOCALS",1)~ THEN bdshkoro
SAY ~They sent the sword to Athkatla? - Ah, nothing you can't make to gold in the City of Coin...~
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
Global("C#Brandock_Gone","GLOBAL",0)
!Allegiance("C#Brandock",ENEMY)~ THEN JOURNAL @10016 + mynpc
END

APPEND bdschael

IF ~~ THEN mynpc
SAY ~There is a mage names Brandock who claimed to know you. He was last seen outside the Palace's gates. I think he also slept there last night.~
COPY_TRANS bdschael 39 
END

END //APPEND






/* Brandock stands outside the Ducal Palace */

/* 766.482 BD0010.are. DisplayStringHead ~Hey, <CHARNAME>! <CHARNAME>, over here!~ */

BEGIN c#brands

IF ~Global("C#BrandockSpawn","GLOBAL",6)~ THEN sod_meeting
SAY ~<CHARNAME>! <CHARNAME>!! Oh, thank the gods, you heard me. It is so good to see you!~ [c#ablank]
++ ~Good to see you, too! I feared you were gone!~ + sod_meeting_01
++ ~Hello, Brandock. You are still here, too, as I see.~ + sod_meeting_01
++ ~What are you doing, standing outside the Ducal Palace?~ + sod_meeting_02
END

IF ~~ THEN sod_meeting_01
SAY ~After some time on studying the remains of the De Simplex Magicae and dawdling away time at the Sorcerous Sundries, ongoings caught up with me. Look at all these people! Look at all these frightened people.~
= ~I thought - maybe you would like me to join you again? Ah, I need to be honest. *I* would like to accompany you again. Life seems far easier when I am travelling with you.~
++ ~I've agreed to take forces against this Caelar and her crusade, Brandock.~ + sod_meeting_05
++ ~I have no use for a mage I'd need to babysit, thank you.~ + sod_meeting_06
END

IF ~~ THEN sod_meeting_02
SAY ~Right now - trying not to panic! And waiting for you, actually.~
IF ~~ THEN + sod_meeting_01
END

IF ~~ THEN sod_meeting_04
SAY ~Oh, thank you. Thank you! I'll try to be of use.~
IF ~~ THEN DO ~SetInterrupt(FALSE)
EraseJournalEntry(@10016)
SetGlobal("C#BrandockSpawn","GLOBAL",8)
SetGlobal("C#BrandockJoined","GLOBAL",1)
SetGlobal("C#Brandock_Dialog","GLOBAL",101)
RealSetGlobalTimer("C#BrandockDialogTimer","GLOBAL",180)
RealSetGlobalTimer("C#BrandockNPCBanterTimer","GLOBAL",3600)
SetInterrupt(TRUE)
JoinParty()~ EXIT
END

IF ~~ THEN sod_meeting_05
SAY ~I'll happily march against Caelar with you. Anything, anything, but don't leave me inside these lands with people going nuts of fear. I'd rather run into a pointed spear than sit here, feeling like a rabbit in its hole.~
++ ~Then come along.~ + sod_meeting_04
++ ~Wait for me. Be sure to be there when we leave for the crusade, will you?~ + sod_meeting_08
++ ~I have no use for a mage I'd need to babysit, thank you.~ + sod_meeting_06
END

IF ~~ THEN sod_meeting_06
SAY ~Oh, this is too bad... Farewell, then.~
IF ~~ THEN DO ~EraseJournalEntry(@10016)
SetGlobal("C#BrandockJoined","GLOBAL",0)
EscapeArea()~ EXIT
END

IF ~~ THEN sod_meeting_08
SAY ~Yes! I will do that. I'll follow anywhere you'll go, ready in case you need me. Thank you, <CHARNAME>!~
IF ~~ THEN DO ~EraseJournalEntry(@10016) SetGlobal("C#BrandockSpawn","GLOBAL",7)~ EXIT
END

IF ~Global("C#BrandockSpawn","GLOBAL",7)
!AreaCheck("bd0101")~ THEN sod_meeting_09
SAY ~Can I come along now?~
++ ~Yes, join me.~ + sod_meeting_04
++ ~Not at my side, but be sure to come along when we move to camp.~ + sod_meeting_08
++ ~On second thoght, I won't need you, Brandock.~ + sod_meeting_06
END

IF ~Global("C#BrandockSpawn","GLOBAL",7)
AreaCheck("bd0101")~ THEN sod_meeting_10
SAY ~So many people! I'm right behind you, <CHARNAME>.~
IF ~~ THEN EXIT
END




/////////////////////////////////////////////////////////////////////////
/* SoD campaign - I_C_T and scene reactions */



/* Imoen - without I4E the only chance we have to let those two banter is when Brandock comes with CHARNAME before the last night in the Ducal Palace 
Interjection will be short if Imoen rejoins later (I4E is detected, i.e. Global("C#IM_ImoenComesBackSoD","GLOBAL",0) is not set to 1 ) */

I_C_T BDIMOEN 85 C#Brandock_ImoenSoD_Palace
== c#brandj IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) !StateCheck("C#Brandock",CD_STATE_NOTVALID) InMyArea("C#Brandock")~ THEN ~Imoen, I can't tell you how glad I am to see you alive and well.~
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
!StateCheck("C#Brandock",CD_STATE_NOTVALID) InMyArea("C#Brandock")~ THEN ~I... don't think so.~
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
!StateCheck("C#Brandock",CD_STATE_NOTVALID) InMyArea("C#Brandock")~ THEN ~Thanks, Brandock. Good bye, <CHARNAME>. Take care!~
END



/* HC is working with doppelganger of prison */

I_C_T BDFFDOPP 73 C#Brando_BDFFDOPP_73
== c#brandj IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN ~Ah, it doesn't sit well, making deals with a doppelganger. And on top of it all it's impersonating a Flaming Fist officer! Doesn't it give you the shivers to take gold from it? Could be one of the monsters we faced at Sarevok's side. Could be one of those who infiltrated Candlekeep and killed half of your childhood friends!~
END


/* Rayphus, before departing */
/* It was fear that compelled me, the fear of not rising to the call. And so I took the mantle, and faced my fear—and when I did, I embraced it, and discovered purpose, courage, and life.
(StrRef: 235545) */
I_C_T3 BDRAYPHU 7 C#Brando_BDRAYPHU_7
== c#brandj IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) Detect("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)
GlobalGT("C#Brandock_Shapeshift","GLOBAL",19)~ THEN ~There you have it. Some deal with fear and become a paladin. Others turn into a half-ogre. Life is not fair.~ 
== c#brandP IF ~!InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",0) Detect("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)
GlobalGT("C#Brandock_Shapeshift","GLOBAL",19)~ THEN ~There you have it. Some deal with fear and become a paladin. Others turn into a half-ogre. Life is not fair.~ 
END


/* conspiring nobles */

/* ~You say you would join us in our efforts to, shall we say, improve the city? The hero of Baldur's Gate could be a valuable ally.~ */
I_C_T BDTHERTO 1 C#Brando_BDTHERTO_1
== c#brandj IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN ~...And just when I thought we have enough problems already, we go all political...~
END

ADD_TRANS_ACTION BDARAYA BEGIN 1 END BEGIN 0 END ~SetGlobal("C#Brandock_NoblesSoD","GLOBAL",1)~

APPEND c#brandj

IF ~OR(2) Global("C#Brandock_NoblesSoD","GLOBAL",2)
Global("C#Brandock_NoblesSoD","GLOBAL",3)~ THEN nobles_sod
SAY ~Damn. Did we just have to kill city's nobles? Why... why did they attack? Attacking the hero of Baldur's Gate in evening wear, who had thought...~ [c#ablank]
+ ~Global("C#Brandock_NoblesSoD","GLOBAL",3)~ + ~I am grieving about this myself, Brandock.~ + nobles_sod_01
++ ~Planning a conspiracy but not even having mercenaries to do the fighting - no further comment.~ + nobles_sod_03
++ ~They seemed to be very desperate.~ + nobles_sod_01
+ ~Global("C#Brandock_NoblesSoD","GLOBAL",3)~ + ~I don't know what happend there, either. I hope it won't have any negative consequences.~ + nobles_sod_01
++ ~Those idiots didn't deserve better. I did the city a good deed by this.~ + nobles_sod_03
END

IF ~~ THEN nobles_sod_01
SAY ~They literally jumped at you! Even threatening them with murder isn't a reason for someone unarmed to engage in a lethal fight!~
IF ~~ THEN + nobles_sod_02
END

IF ~~ THEN nobles_sod_02
SAY ~Sometimes you don't know how to do it - maybe pretending to agree and then reporting to authorities would have been better.... but, that's not your style, is it?~
+ ~Global("C#Brandock_NoblesSoD","GLOBAL",3)~ + ~What do you mean, 'my style'. Do you think killing them in fight is 'my style'?~ + nobles_sod_04
+ ~Global("C#Brandock_NoblesSoD","GLOBAL",3)~ + ~I tend to tell people honestly what I am planning to do. It tells a lot about human nature if this leads to more violence.~ + nobles_sod_07
++ ~No, it's not.~ + nobles_sod_05
++ ~Whatever, Brandock. What's done is done.~ + nobles_sod_06
END

IF ~~ THEN nobles_sod_03
SAY ~You know, sometimes I envy you for your straight views on this world.~
IF ~~ THEN + nobles_sod_01
END

IF ~~ THEN nobles_sod_04
SAY ~No, of course not! That's what I meant...~
IF ~~ THEN + nobles_sod_06
END

IF ~~ THEN nobles_sod_05
SAY ~(scoff) No, indeed. You have to provoke them with a threat...~
IF ~~ THEN + nobles_sod_06
END

IF ~~ THEN nobles_sod_06
SAY ~(sigh) Oh well, it's too late now anyhow.~
IF ~~ THEN DO ~SetGlobal("C#Brandock_NoblesSoD","GLOBAL",4)~ EXIT
END

IF ~~ THEN nobles_sod_07
SAY ~Telling the truth is something I value very much - usually.~
IF ~~ THEN + nobles_sod_06
END

END //APPEND


/* Takos' burnt-down inn */

I_C_T BDTAKOS 4 C#Brando_BDTAKOS_4
== c#brandj IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN ~Oh no, it's always the same if people are 'inn' the wrong mood... (I didn't just say that to his face. Get a grip, Brandock.)~
END


/* Statues in BD1000: */
CHAIN
IF ~Global("C#Brandock_SoDStonePeople","GLOBAL",1)~ THEN c#brandj statues
~Stonestatues! I meant stone people! Er, people turned to stone! Quick, <CHARNAME>, there seems to be basilisks around. We need to get protection against their gaze!~ [c#ablank] DO ~SetGlobal("C#Brandock_SoDStonePeople","GLOBAL",2)~ 
== c#brandj IF ~GlobalGT("BD_PET_MAIN","MYAREA",0)~ THEN ~One, two... it's five, <CHARNAME>. Er... are these the missing people that man talked about? Oh, boy...~
EXIT

/* BDTELERI Global("BD_PET_MAIN","MYAREA",80) */

APPEND c#brandj

IF ~Global("C#Brandock_SoD_BD_PET_MAIN80","GLOBAL",1)~ THEN lure_statues
SAY ~Er, we are not actually *doing* this, right? We are not luring innocent people away so they can be turned into stone, no? You just said that so you don't have to fight that madwoman, yes?~ [c#ablank]
++ ~No, Brandock. I would never do that to someone. Just let me figure out how we can stop her without having to fight.~ + lure_statues_02
++ ~What if I'm planning to?~ + lure_statues_01
++ ~Why not? It's not like we would kill anyone, just... preserve a little time for them.~ + lure_statues_03
++ ~Yes, we are doing this, and if you have a problem with it, you are free to go.~ + lure_statues_03
END

IF ~~ THEN lure_statues_01
SAY ~Are you out of your mind?~
++ ~No, Brandock. I would never do that to someone. Just let me figure out how we can stop her without having to fight.~ + lure_statues_02
++ ~Why not? It's not like we would kill anyone, just... preserve a little time for them.~ + lure_statues_03
++ ~Yes, we are doing this, and if you have a problem with it, you are free to go.~ + lure_statues_03
END

IF ~~ THEN lure_statues_02
SAY ~Well, thank goodness! Let's fix this while we can.~
IF ~~ THEN DO ~SetGlobal("C#Brandock_SoD_BD_PET_MAIN80","GLOBAL",2)~ EXIT
END

IF ~Global("C#Brandock_SoDLuredStatues","GLOBAL",1)~ THEN lure_statues_03
SAY ~What can I say - I am surprised I misjudged you so. Luring people to their stone deaths, lying to me... I'm not stupid, so I know I can't beat you even if I tried, and I'm not a paladin so I will not charge you for it and risk my life against all odds, but I will not be part of this any longer. Our ways part here, <CHARNAME>.~
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
SAY ~So... it seems you have a golem now. Of which you know nothing - neither what it was designed for, nor to whom it will be loyal to. Oh, don't mind me. I'm sure it will be alright.~ [c#ablank]
IF ~~ THEN DO ~SetGlobal("C#Brandock_SoDBoughtGolem","GLOBAL",2)~ + teleri_defeated
END

END //APPEND

ADD_TRANS_ACTION BDTELERI BEGIN 28 END BEGIN 0 END ~SetGlobal("C#Brandock_SoD_GotSCRLPET","GLOBAL",1)~

APPEND c#brandj

IF ~Global("C#Brandock_SoD_GotSCRLPET","GLOBAL",2)~ THEN teleri_scrolls
SAY ~So, not only did you talk that madwoman into giving up on her 'art' project and allowing you to free those people, you actually made her giving us 5! - scrolls of stone to flesh to do so! I'm not decided whether I should be impressed - or scared.~ [c#ablank]
IF ~~ THEN DO ~SetGlobal("C#Brandock_SoD_GotSCRLPET","GLOBAL",3)~ + teleri_defeated
END

END //APPEND

/* PC defeated Teleri */
CHAIN
IF ~Global("C#Brandock_SoDTeleriEnd","GLOBAL",1)~ THEN c#brandj teleri_defeated
~What a madwoman! At least the poor souls she petrified can be saved now.~ [c#ablank] DO ~SetGlobal("C#Brandock_SoDTeleriEnd","GLOBAL",2)~
== c#brandj IF ~GlobalGT("C#Br_LorePathNarcillicusBG1","GLOBAL",1)~ THEN ~At least she had the decency not to attack us with basilisks like this crazy dwarf we met in the wilderness... and yes that was a meak attempt for a jest.~
END
IF ~Dead("BDTELERI")~ THEN + teleri_defeated_02
IF ~!Dead("BDTELERI")~ THEN + teleri_defeated_01


APPEND c#brandj

IF ~~ THEN teleri_defeated_01
SAY ~I'm not sure it was a wise decision to let her go like this, though. I mean it's obvious her 'art' is supposed to consume living persons, one way or another!~
IF ~~ THEN EXIT
END

IF ~~ THEN teleri_defeated_02
SAY ~I'll have a look at that woman's spell book. She doesn't need it any more...~
IF ~~ THEN DO ~ReallyForceSpellRES("c#brlob1",Myself) IncrementGlobal("C#Br_LorePathIncrease","GLOBAL",1)
SetGlobal("C#Br_LorePathDurlagsTower","GLOBAL",2) ClearAllActions() StartCutSceneMode() StartCutScene("c#brftb")~ EXIT
END


/* after meeting C. at the bridge 
GlobalGT("bd_plot","global",170)
*/

IF ~Global("C#Brando_SoDCaelarBridge","GLOBAL",1)~ THEN caelar_bridge
SAY ~So, this is Caelar? Did she just give that 'I sacrificed a lot of people but it's all justified for a greater good because I will save a few (I'm personally interested in)' speech? She really thinks she's righteous and doing good, doesn't she? She is actually *believing* she is doing good... Gnah. This woman is deluded to a point where it leaves a real bitter taste in the mouth to hear her talk.~ [c#ablank]
++ ~Bitter is a mild description for the taste I have in my mouth after talking to this deluded madwoman...~ + caelar_bridge_01_01
++ ~Well, if she really found a way to rescue all those souls from avernus it would *be* a righteous cause...~ + caelar_bridge_01
++ ~I'm not sure what to make of her just yet. She talks with much confidence, but her grand words do not add up with her actions.~ + caelar_bridge_01_02
++ ~But how can it be wrong if so many people believe in her?~ + caelar_bridge_05
++ ~Sometimes a lesser evil has to be accepted to do greater good.~ DO ~SetGlobal("C#Brandock_SoDlesserEvil","LOCALS",1)~ + caelar_bridge_02
END

IF ~~ THEN caelar_bridge_01_01
SAY ~Ha!...~
++ ~Well, if she really found a way to rescue all those souls from avernus it would *be* a righteous cause...~ + caelar_bridge_01
++ ~I'm not sure what to make of her just yet. She talks with much confidence, but her grand words do not add up with her actions.~ + caelar_bridge_01_02
++ ~But how can it be wrong if so many people believe in her?~ + caelar_bridge_05
END

IF ~~ THEN caelar_bridge_01_02
SAY ~No, they do not.~
++ ~Well, if she really found a way to rescue all those souls from avernus it would *be* a righteous cause...~ + caelar_bridge_01
++ ~But how can it be wrong if so many people believe in her?~ + caelar_bridge_05
++ ~There's nothing we can do about her now, I'm afraid.~ + caelar_bridge_03
END

END //APPEND

CHAIN
IF ~~ THEN c#brandj caelar_bridge_01
~*Cause*, maybe - when it was still an idea in someone's head or written on a piece of paper. But now? With all the death and destruction she and her blasted crusade already cost?~
/* know Caelar will open portal - from Road to Discovery */
== c#brandj IF ~GlobalGT("C#RtD_CaelarPlan","GLOBAL",3)~ THEN ~And with the knowledge that her glorious plan is just opening the portal - again?...~
== c#brandj ~No way, <CHARNAME>. No way this is still a righteous cause!~
END
++ ~You are right, I was only judging the idea, not the execution.~ + caelar_bridge_03
++ ~How about: "Sometimes a lesser evil has to be accepted to do greater good"?~ DO ~SetGlobal("C#Brandock_SoDlesserEvil","LOCALS",1)~ + caelar_bridge_02
++ ~But how can it be wrong if so many people believe in her?~ + caelar_bridge_05

CHAIN
IF ~~ THEN c#brandj caelar_bridge_02
~A lesser... a *lesser* evil? You mean all the death, destruction, evictions were not enough to call it a greater evil?~
/* know Caelar will open portal - from Road to Discovery */
== c#brandj IF ~GlobalGT("C#RtD_CaelarPlan","GLOBAL",3)~ THEN ~Plus, you know, the fact that she is planning on letting hell loose on the Sword Coast - again?!~
END
++ ~You are right, I was only judging the idea, not the execution.~ + caelar_bridge_04_a
++ ~I was jesting with you, Brandock. We share the same opinion on this. I only wanted to see you go all red and puffy again.~ + caelar_bridge_04
++ ~There are thousands of people thinking that way, Brandock - the wole crusade! They joined her out of free will, or do you think all of them were forced to follow her?~ + caelar_bridge_05
++ ~But how can it be wrong if so many people believe in her?~ + caelar_bridge_05

APPEND c#brandj 

IF ~~ THEN caelar_bridge_03
SAY ~I can't believe that she is this deluded. Surely she knows about the destruction the crusade is causing? I mean, how could she not?~
IF ~~ THEN + caelar_bridge_08
END 

IF ~~ THEN caelar_bridge_04
SAY ~You... (scoffs)~
IF ~~ THEN + caelar_bridge_04_a
END

IF ~~ THEN caelar_bridge_04_a
SAY ~Well, thank you for that, <CHARNAME>. For a moment I really thought I had lost you there.~
IF ~~ THEN + caelar_bridge_03
END

END //APPEND

CHAIN

IF ~~ THEN c#brandj caelar_bridge_05
~Because they are all deluded? Because they are expecting to be rewarded in some way? Because people believe what they want to believe - and they do it thankfully if it spares them to have to think by themselves? Because not everyone of them has the right moral compass...~
== c#brandj IF ~Global("C#Brandock_SoDlesserEvil","LOCALS",1)~ THEN ~And, and... and they use the same argument about the lesser and greater evil like you just did to justify it to themselves?!~
END
+ ~Global("C#Brandock_SoDlesserEvil","LOCALS",1)~ + ~Hm, alright, alright, I am convinced.~ + caelar_bridge_04_a
+ ~Global("C#Brandock_SoDlesserEvil","LOCALS",0)~ + ~I fear you are right about that.~ + caelar_bridge_03
++ ~I am not convinced, Brandock. I think Caelar is on the right path, even if the execution of her plan is lacking.~ + caelar_bridge_07
++ ~Not everyone who is not of your opinion is necessarily deluded, Brandock.~ + caelar_bridge_06


APPEND c#brandj

IF ~~ THEN caelar_bridge_06
SAY ~No - but people who accept plundering and murder and whatnot because they are serving a 'greater good' definitely are! Please tell me we are on the same page here.~
++ ~Hm, alright, alright, I am convinced.~ + caelar_bridge_04_a
++ ~I am not convinced, Brandock. I think Caelar is on the right path, even if the execution of her plan is lacking.~ + caelar_bridge_07
END

END //APPEND

CHAIN
IF ~~ THEN c#brandj caelar_bridge_07
~I... I can't believe to hear you talk like this. Not after what we already saw and heard. Think of what the city turned into with all the refugees! Saving some souls is never a valid reason to condemn others for it.~
== c#brandj IF ~Class(Player1,PALADIN_ALL)
!Kit(Player1,Blackguard)~ THEN ~You of all people, <CHARNAME>, as a paladin! You should know!~
== c#brandj ~Well, let's go on with our cause and see what we'll see next of the crusade. I am *sure* we'll come to a point where I will be tempted to say 'I told you so'... (mutters) I'm afraid I will.~
END
IF ~~ THEN + caelar_bridge_08


APPEND c#brandj

IF ~~ THEN caelar_bridge_08
SAY ~Anyways - this bridge will no longer give passage across this river. Seems we need to take a detour.~
IF ~~ THEN DO ~SetGlobal("C#Brando_SoDCaelarBridge","GLOBAL",2)~ EXIT
END




/* Bridgefort */

/* Arcane Scroll of Impactful Doom, PartyHasItem("BDSCRL02") */
IF ~Global("C#Brando_SoDScrollOfDoom","GLOBAL",1)~ THEN doom_scroll
SAY ~(sigh) Seeing something like this I start to wonder whether I chose the right profession... I know I do harmful magics as well to damage our foes, but... this has an evil cling to it. At least we know how to stop the energy drain now, before more people inside the fort will die.~
= ~Er, I'm talking about the scroll. Who calls their own creation "Arcane Scroll of Impactful Doom"?~
IF ~~ THEN DO ~SetGlobal("C#Brando_SoDScrollOfDoom","GLOBAL",2)~ EXIT
END

END //APPEND

EXTEND_BOTTOM bdwynan 14 
+ ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ + ~I do. Brandock, would you use it and end the stone's curse?~ EXTERN c#brandj bridgefort_stone
END

I_C_T3 bdwynan 21 C#Brando_bdwynan_21
== c#brandj IF ~Global("c#_bd_sdd200_brandock","bd2100",1)
OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN ~NonononoNO dammit -~
== c#brandj IF ~Global("c#_bd_sdd200_brandock","bd2100",0)
!IsValidForPartyDialogue("Edwin")
OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN ~Ooh, this doesn't -~
END

I_C_T bdwynan 22 C#Brando_bdwynan_22
== c#brandj IF ~Global("c#_bd_sdd200_brandock","bd2100",1)
OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN ~I felt it - I *felt* it the moment I spoke the words. This mage knew what he was doing!~
END

APPEND c#brandj

IF ~~ THEN BEGIN bridgefort_stone
  SAY ~I - I could try... Yes, I can do that.~
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
+ ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ + ~Brandock, any ideas?~ EXTERN c#brandj answer_bees
END

APPEND c#brandj

IF ~~ THEN BEGIN answer_bees
  SAY ~Erm... that all points to "bees". But I'm not sure that answer is actualy inside the scope of this riddle?...~
  IF ~~ THEN EXTERN BDVIDYAD 10
END

END //APPEND

/* catapult at castle */
I_C_T BDHELDMO 5 C#Brando_BDHELDMO_5
== c#brandj IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN ~Alright, that was effective - but I feel sorry for him. Anyone else feels sorry for this man?~
END


/* Elandro and the Feyr */
/* bdelandr.d */

I_C_T bdelandr 1 C#Brando_bdelandr_1
== c#brandj IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN ~There is a difference in doing experiments and doing things where you *know* it will go wrong... But yes, I'm definitely the wrong to talk to here.~
END

I_C_T bdelandr 2 C#Brando_bdelandr_2
== c#brandj IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN ~Well, thank goodness. This would have been one of those 'I'm dying to see the results' kind of experiments. Literally...~
END

I_C_T bdelandr 12 C#Brando_bdelandr_12
== c#brandj IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN ~Oh, how I do know how that feels... <CHARNAME>, the atmosphere is thick with despair, I'm barely holding it together myself. Gods, why do I have to be so receptive towards people's emotions...~
END

/* chicken in the well easter egg */
I_C_T3 BDDOGW01 0 C#Brando_BDDOGW01_0
== c#brandj IF ~!GlobalGT("C#Brandock_Shapeshift","GLOBAL",8)
OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN ~Am I the onle one who has the feeling this dog is watching over that chicken?~
== c#brandj IF ~GlobalGT("C#Brandock_Shapeshift","GLOBAL",8)
OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN ~And to add to the creepiness, now an *almost* talking dog appeared out of nowhere who seems to be watching over that chicken. I'll... I'll be over there until this is done.~
== BDDOGW01 IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)
OR(2) IsValidForPartyDialogue("KHALID")
IsValidForPartyDialogue("JAHEIRA")~ THEN ~Woof!~
END

/* "knotted" Wyverns - in case Jaheira talks first */
I_C_T bdjaheij 47 C#Brando_BD_SDD317_WYRMS
== c#brandj IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN ~This... this feeling - it's so intense! Pain and sorrow, and anger... and *pain*! It's nearly taking my breath away.~
END

/* "knotted" Wyverns - in case M'Khiin talks first */
I_C_T bdmkhiij 80 C#Brando_BD_SDD317_WYRMS
== c#brandj IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN ~This... this feeling - it's so intense! Pain and sorrow... and *pain*! It's nearly taking my breath away.~
END

/* "knotted" Wyverns - in case Dynaheir talks first */
I_C_T bddynahj 85 C#Brando_BD_SDD317_WYRMS
== c#brandj IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN ~This... this feeling - it's so intense! Pain and sorrow, and anger... and *pain*! It's nearly taking my breath away.~
END

/* "knotted" Wyverns - in case Minsc talks first */
I_C_T bdminscj 85 C#Brando_BD_SDD317_WYRMS
== c#brandj IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN ~This... this feeling - it's so intense! Pain and sorrow, and anger... and *pain*! It's nearly taking my breath away.~
END

APPEND c#brandj

IF ~Global("C#Brando_BD_SDD317_WYRMS","GLOBAL",2)~ THEN tangled_wyrms
SAY ~This... this feeling - it's so intense! Pain and sorrow, and anger... and *pain*! Something gruesome awaits us near here, <CHARNAME> - it's nearly taking my breath away.~
IF ~~ THEN DO ~SetGlobal("C#Brando_BD_SDD317_WYRMS","GLOBAL",3)~ EXIT
END

/* after Bhaal sign incident at bridge */
IF ~Global("C#Brandock_SoDSignDialog","GLOBAL",1)~ THEN bhaal_bridge
SAY ~What in the nine hells' name was that? <CHARNAME>, are you alright?~
++ ~What can I say. I fainted, there was Bhaal's sign on the ground...~ + bhaal_bridge_02
++ ~I feel a bit dizzy.~ + bhaal_bridge_02
++ ~That is a very good question, indeed.~ + bhaal_bridge_02
++ ~It's nothing, Brandock. Let's move on.~ + bhaal_bridge_01
END

IF ~~THEN bhaal_bridge_01
SAY ~Well, it was a *lot* to see for "nothing", but fine, I'll be quiet.~
IF ~~ THEN DO ~SetGlobal("C#Brandock_SoDSignDialog","GLOBAL",2)~ EXIT
END

IF ~~THEN bhaal_bridge_02
SAY ~It sure as hell looked very impressive. It was a real show off, now that I think about it. So much unlike your Bhaal dreams. Do you feel any different? Any new abilities or somesuch?~
++ ~Not that I notice, no.~ + bhaal_bridge_03
++ ~Nothing yet.~ + bhaal_bridge_03
++ ~It's nothing, Brandock. Let's move on.~ + bhaal_bridge_01
END

IF ~~THEN bhaal_bridge_03
SAY ~Hm. Weird. One thing is for sure: the way people will perceive you might have changed, though. It was really impressive. Not to say frightening. Good that I know you so well already, or my imagination would go wild. Almost as if someone planned it to give you a worse stand with people...~
= ~... Still I'd prefer it to be the explanation for this, because this arising out of godly intervention would be even scarier.~
IF ~~ THEN DO ~SetGlobal("C#Brandock_SoDSignDialog","GLOBAL",2)~ EXIT
END

END //APPEND

/* coalition camp - training the recruits */
/* Hester */
EXTEND_BOTTOM BDHESTER 6
+ ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ + ~Brandock, any advice for our nervous private how to overcome his fear in battle?~ EXTERN c#brandj teach_hester
END

CHAIN
IF ~~ THEN c#brandj teach_hester
~[Brandock]What? Just because I'm nervous as hell and fought - haha, what a game of words! - my way into not losing my head in battle (and over a lot of trivial things for that matter) doesn't make me a good advisor! I'd rather suggest I'll keep my distance to this poor chap until he learned how to focus positive energy to overcome the feelings of inevitable doom...~
== BDHESTER ~[Hester]That's it! I feel absolutely and utterly doomed... like the sword is already at my throat, no matter what I'll do.~
== bdimoen IF ~IsValidForPartyDialogue("%IMOEN_DV_SOD%")~ THEN ~[Imoen]Uh-oh... I'm not sure this conversation is going the direction it should.~
== c#brandj ~[Brandock]And so weak that anything you'll do won't change a thing, right? Anyone could do this better - just being on the battle field will probably lead to allies dying because we do not really belong there.~
== BDHESTER ~[Hester]That's... that's exactly what I'm feeling. I'll die in the battle anyway - but I'll probably also take friends with me who could have lived otherwise. But you... you overcame these feelings?~
== c#brandj ~[Brandock]Yes, I did - but it was a long way, and I'm still not finished. It's a tedious fight against your own anxiety - and it starts every day anew. But to know that there are friends to fight and die *for* helps me to overcome it - because if I'll have to die anyway, I want to take as many of them bastards with me so they can't threaten my loved ones any more.~
= ~Gods, why am I still talking to this poor man? My babbling probably dragged him down so much he's thinking about how to escape this whole thing now.~
== BDHESTER ~[Hester]No! On the contrary. I... I have hope now. Everyone I ever talked to made it sound like not being afraid is the normal way to be, and that I'd have to overcome my fear *right now* or I'd be doomed. So I believed to be doomed, because I couldn't just stop being anxious. You confirmed what I always thought: that I'm not strange - and that it's not easy. But you managed to overcome your fears - and so will I!~
== bdimoen IF ~IsValidForPartyDialogue("%IMOEN_DV_SOD%")~ THEN ~[Imoen]Wait - did we just fight fire with fire? And it *worked*?~
== c#brandj ~[Brandock]You... you do? This is fabulous! That means you made the first, huge step to overcoming your fears! You faught your first battle - and it could have been the most difficult one. How do you feel?~
END
IF ~~ THEN DO ~IncrementGlobal("BD_FIGHTERS_SKILL","BD3000",2)
SetGlobal("bd_sdd301_hester_skill","global",2)~ EXTERN bdhester 13

/* Garrold */
EXTEND_BOTTOM BDGARROL 1
+ ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ + ~Brandock, you seem like you want to say something?~ EXTERN c#brandj teach_garrold
END

CHAIN
IF ~~ THEN c#brandj teach_garrold
~[Brandock]You have a certain way of conentrating when doing your fight patterns. You seem to enjoy memorizing things. Watching you reminds me of my early years as a mage apprentice - where the precise execution of specific steps is crucial, lest one dies from one's own mislead magic...~
== BDGARROL ~I am here because I think it's my duty. I did enjoy my schooling, but waving weapons around doesn't feel right, it's so arbitrary... Mage, you say?~
== c#brandj ~You definitely have potential. More than with what you do here. Would the battle mages take on new recruits as well?~
END
IF ~~ THEN DO ~IncrementGlobal("BD_FIGHTERS_SKILL","BD3000",2)
SetGlobal("bd_sdd301_garrold_skill","global",2)~ EXTERN BDGARROL 3

/* Coroniir board game against Knight Commander Tristian */
/* bdtristi */
EXTEND_BOTTOM bdtristi 14
  + ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ + ~Brandock.~ DO ~SetGlobal("bd_tristian_vs_npc","locals",1)
~ EXTERN c#brandj tristi_boardgame
END

CHAIN
IF ~~ THEN c#brandj tristi_boardgame
~Gods, <CHARNAME>... I will try my best.~
== c#brandj IF ~Global("C#Brando_SoDbdmisc22","GLOBAL",2)~ THEN ~You just had to take me up on what I said, yes?~
END 
IF ~~ THEN EXTERN ~BDTRISTI~ 15



APPEND c#brandB 
/* banter dialogue because this fires if Brandock is not in party, too */


/* after first dream of Sarevok-slayer */

IF WEIGHT #-1
~Global("C#Brandock_SoDNightmare","GLOBAL",1)~ THEN first_nightmare
SAY ~You had a nightmare, again.~ [c#ablank]
++ ~This time it was Sarevok talking to me.~ EXTERN c#brandB first_nightmare_01
++ ~Well, noone really expected that to stop now that I know where they come from, no?~ EXTERN c#brandB first_nightmare_11 
++ ~Whatever, Brandock. I'm fine.~ EXTERN c#brandB first_nightmare_06
END

IF ~~ THEN first_nightmare_01
SAY ~Oh, another fallen foe who gets into an alleged dialogue with you? How original!~
++ ~He turned into some obscure creature with huge fangs...~ + first_nightmare_02
++ ~He turned into the slayer, my father's avatar.~ + first_nightmare_03
++ ~I don't want to talk about this, Brandock.~ + first_nightmare_06
END

IF ~~ THEN first_nightmare_02
SAY ~Sounds a bit like the slayer, avatar of your father.~
IF ~~ THEN + first_nightmare_03
END

IF ~~ THEN first_nightmare_03
SAY ~So, your heritage gives you dreams about your heritage. It's a little less thrilling if put like that.~
++ ~He kept on about whether I'd 'see' something or not.~ + first_nightmare_04
++ ~I think it just wanted to scare and hurt me.~ + first_nightmare_05
++ ~I don't want to talk about this, Brandock.~ + first_nightmare_06
END

IF ~~ THEN first_nightmare_04
SAY ~Any idea what it means?~
++ ~No, not really.~ + first_nightmare_07
++ ~How Sarevok and I were connected, maybe?~ + first_nightmare_07
++ ~I think it just wanted to scare and hurt me.~ + first_nightmare_05
++ ~I don't want to talk about this, Brandock.~ + first_nightmare_06
END

IF ~~ THEN first_nightmare_05
SAY ~Did it succeed?~
++ ~No. I will not be scared, hurt, or even tempted by my father's heritage!~ + first_nightmare_10 
++ ~A little.~ + first_nightmare_09
++ ~This whole thing is still so new and shocking I am not sure I need my subconsciousness adding to it.~ + first_nightmare_08
++ ~I don't want to talk about this, Brandock.~ + first_nightmare_06
END 

IF ~~ THEN first_nightmare_06
SAY ~Then we won't talk about it. I hope you got some rest nevertheless, though.~
IF ~~ THEN DO ~SetGlobal("C#Brandock_SoDNightmare","GLOBAL",2)~ EXIT
END

IF ~~ THEN first_nightmare_07
SAY ~I fear that it wasn't the last one - I'm sure there will be more dreams to ponder.~
IF ~~ THEN DO ~SetGlobal("C#Brandock_SoDNightmare","GLOBAL",2)~ EXIT
END

IF ~~ THEN first_nightmare_08
SAY ~True.~
IF ~~ THEN + first_nightmare_07
END

IF ~~ THEN first_nightmare_09
SAY ~I really think this could be one of those self-fulfilling prophecy kind of things, so don't let it scare you - or hurt you.~
IF ~~ THEN + first_nightmare_07
END

IF ~~ THEN first_nightmare_10
SAY ~I really think this could be one of those self-fulfilling prophecy kind of things, so it's good to hear you talking like this.~
IF ~~ THEN + first_nightmare_07
END

IF ~~ THEN first_nightmare_11
SAY ~Hey! That should have been my line.~
++ ~This time it was Sarevok talking to me.~ + first_nightmare_01
++ ~Whatever, Brandock. I'm fine.~ + first_nightmare_06
END

END //APPEND

APPEND c#brandj
/* many mentionings of Athkatla */

IF ~Global("C#Brando_bdscrl1","LOCALS",1)~ THEN athkatla_everywhere
SAY ~Athkatla, Athkatla - is it me or is the name of my home's capital mentioned a bit too often lately?~ [c#ablank]
++ ~It is a big city and capital with lots of trade.~ DO ~SetGlobal("C#Brando_bdscrl1","LOCALS",2)~ + athkatla_everywhere_04
++ ~Yes, there are even mages from Athkatla around, or so I heard.~ DO ~SetGlobal("C#Brando_bdscrl1","LOCALS",2)~ + athkatla_everywhere_05
++ ~What do you mean?~ DO ~SetGlobal("C#Brando_bdscrl1","LOCALS",2)~ + athkatla_everywhere_04
++ ~Whatever, Brandock.~ DO ~SetGlobal("C#Brando_bdscrl1","LOCALS",2)~ + athkatla_everywhere_01
END

IF ~~ THEN athkatla_everywhere_01
SAY ~I guess I am taking it way too seriously. It surely is a coincidence. And if not, it probably doesn't have anything to do with you.~
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
		InParty("C#Husam")
	OR(3)
		!HasItem("bdure2a","C#Brandock")
		Global("C#BrandockJoined","GLOBAL",2)
		InParty("C#Brandock")~ THEN + athkatla_everywhere_02
END

IF ~~ THEN athkatla_everywhere_02
SAY ~Er, except this very note, of course.~
IF ~~ THEN + athkatla_everywhere_03
END

IF ~Global("C#Brando_bdure2a","LOCALS",1)~ THEN athkatla_everywhere_03
SAY ~Well, I guess it was only a matter of time until some shady organisation took interest in you... I shouldn't be so surprised.~ [c#ablank]
IF ~~ THEN DO ~SetGlobal("C#Brando_bdure2a","LOCALS",2)~ EXIT
END

IF ~~ THEN athkatla_everywhere_04
SAY ~Such clusters are not normal. Or did we stumble upon several unrelated notes about ongoings in Kara-Tur while travelling the Sword Coast? Or an increasing interest in Waterdeep? No, it's always Athkatla lately.~
IF ~~ THEN + athkatla_everywhere_01
END

IF ~~ THEN athkatla_everywhere_05
SAY ~Really? We should teach 'em a lesson, we should! Heh.~
IF ~~ THEN + athkatla_everywhere_04
END

END //APPEND

/* Vampire */


I_C_T BDTSOLAK 2 C#Brando_BDTSOLAK_2
== c#brandj IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN ~Did that vampire just appeal to our sense of justness? That's... unexpected. (And... well, quite audacious.)~
END

I_C_T BDTSOLAK 3 C#Brando_BDTSOLAK_3
== c#brandj IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN ~Did that vampire just appeal to our sense of justness? That's... unexpected. (And... well, quite audacious.)~
END


/* musings about vampire Tsolak */

APPEND c#brandj


IF ~Global("C#Brando_BDTSOLAK_2","GLOBAL",2)~ about_tsolak
SAY ~What a perplexing moment - a monster arguing about the righteousness in killing it although it didn't do anything evil to *us*. Very unsettling, a monster that starts arguing. I mean... no, they can't do that! What a philosophical question! Do we have the right to kill a non-hostile monster, just because its way of living will lead it to killing people?~ [c#ablank]

+ ~!Dead("bdisabel")~ + ~Yes! This is not a question, Brandock.~ + about_tsolak_06
+ ~!Dead("bdisabel")~ + ~There were vampire hunters. Their word was good enough to me.~ + about_tsolak_06
++ ~Not an easy decision. It never is.~ + about_tsolak_01
+ ~Dead("bdisabel")~ + ~There is no sense in useless killing. The vampire didn't do anything to me, nor was it threatening anyone in particular.~ + about_tsolak_05
+ ~Dead("bdisabel")~ + ~I'd say no to that. I only need to kill what is threatening me.~ + about_tsolak_05
++ ~I go where the gold is leading me.~ + about_tsolak_03
END

IF ~~ THEN about_tsolak_01
SAY ~There is a line that shouldn't be crossed. A creature *living* of other people...~
IF ~!Dead("bdisabel")~ THEN + about_tsolak_02
IF ~Dead("bdisabel")~ THEN + about_tsolak_04
END

IF ~~ THEN about_tsolak_02
SAY ~I am glad you didn't let yourself be talked into sparing that vampire. I am not sure I would have been so steadfast. Imagine it starting a 'but I only drink of animals' discussion.~
IF ~~ THEN + about_tsolak_08
END

END //APPEND

CHAIN
IF ~~ THEN c#brandj about_tsolak_03
~Rrrrright. I think I should reevaluate my motivation why I am following you.~
== c#brandj IF ~Global("C#Brando_BDFFDOPP_73","GLOBAL",1)~ THEN ~You are true to your motives then, though. Considering you took a sack of gold from that doppelganger, as well.~
END
IF ~!Dead("bdisabel")~ THEN + about_tsolak_02
IF ~Dead("bdisabel")~ THEN + about_tsolak_04

APPEND c#brandj

IF ~~ THEN about_tsolak_04
SAY ~Now the vampire hunters are dead. On the other hand... Well, yes, it was kind of *their* decision to go hostile.~
IF ~~ THEN + about_tsolak_07
END

IF ~~ THEN about_tsolak_05
SAY ~But it led to useless killing! Don't you see it? Two people are dead because of a cunning monster starting to argue! Do you think *it* lets itself argue into not drinking of its victims?~
IF ~~ THEN + about_tsolak_01
END

IF ~~ THEN about_tsolak_06
SAY ~I totally agree, <CHARNAME>. In theory, I am all steadfast in deciding this. But when facing it...~
IF ~~ THEN + about_tsolak_01
END

IF ~~ THEN about_tsolak_07
SAY ~(sigh) Still, I am happy you got to decide this, <CHARNAME>. But I have doubts it was a good decision.~
IF ~~ THEN + about_tsolak_08
END

END //APPEND

CHAIN
IF ~~ THEN c#brandj about_tsolak_08
~What makes me wonder, though - do you also question yourself what 'important mission' it was supposed to be on? With contacts and 'masters' in far away lands? A vampire? What am I missing here?~ DO ~SetGlobal("C#Brando_BDTSOLAK_2","GLOBAL",3)~
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
		InParty("C#Husam")
	OR(3)
		!HasItem("dbscrl1","C#Brandock")
		Global("C#BrandockJoined","GLOBAL",2)
		InParty("C#Brandock")~ THEN ~Seeing how it is *Athkatla* it was supposed to go, I wonder whether I'll meet some of his friends again when I'll return home. I sure as hell hope I don't!~
EXIT



/* bandits in bd7100 */

I_C_T BDURE10B 1 C#Brando_BDURE10B_1
== c#brandj IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN ~They flee! Finally, some credit for our deeds that make our life easier! I have waited for this for so long. And all we had to do was merely saving the Sword Coast!~
END



APPEND c#brandj

/* green dragon bd7210 */

IF ~Global("C#Brando_SoDMorentherene","GLOBAL",1)~ THEN morentherene
SAY ~Oh m... (Brandock's sentence ends in a choked sound. He points frantically with his finger, mouthing 'DRAGON!'.)~ [c#ablank]
IF ~~ THEN DO ~SetGlobal("C#Brando_SoDMorentherene","GLOBAL",2)~ EXIT
END

/* Skie fighting off crusaders in bd7000 */

IF ~Global("C#Brando_SoDSkie7000","GLOBAL",2)~ THEN morentherene
SAY ~Er, that was Skie, right? Skie? The Duke's daughter, the 'I will never leave Eldoth'-Skie, the 'I broke a finger nail'-Skie? This Skie, that was her, right?~ [c#ablank]
= ~Maybe I should join the Flaming Fist so I will become brave, too. (mumbles)~
IF ~~ THEN DO ~SetGlobal("C#Brando_SoDSkie7000","GLOBAL",3)~ EXIT
END

END //APPEND


/* PC threatens to kill the crusaders with the spikes in bd7230.are */
I_C_T bdkharmy 6 C#Brando_bdkharmy_6
== c#brandj IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN ~Er, you are not planning on using the spike trap, are you? That would be... evil. I mean - really, *really* evil.~
END




/* PC handed over the Bridgefort Castle to the crusaders */

I_C_T BDKHALIJ 33 C#Brando_bd_betrayal_discussion
== c#brandj IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN ~Whoa, <CHARNAME>, this cost a lot of lives... But was it more than if we would have fought - I don't know, and I am glad I didn't have to make this decision.~
END

APPEND c#brandj

/* dusty chicken 
bdchickn.itm */

IF ~Global("C#Brando_SoDChicken","LOCALS",1)~ THEN dusty_chicken
SAY ~Why are we taking this chicken along? Oh, gods - it's not going to start *talking*, is it? (I will not talk to it. I will *not*.)~ [c#ablank]
++ ~No worries, Brandock. This is an ordinary chicken - maybe a little dusty.~ + dusty_chicken_01
++ ~(You lower your ear to the chicken's head, pretending to listen) What? Yes? You think?~ + dusty_chicken_03
++ ~Let's keep moving, Brandock.~ + dusty_chicken_02
END

IF ~~ THEN dusty_chicken_01
SAY ~But why are we taking it along? It already tricked itself into your backpack, and I don't know why! I know that there is a trivial explanation. But the only trivial explanation coming into my mind is - that it's a magical chicken!~
IF ~~ THEN + dusty_chicken_02
END

IF ~~ THEN dusty_chicken_02
SAY ~Whatever it wants - I'm not gonna help it!~
IF ~~ THEN DO ~SetGlobal("C#Brando_SoDChicken","LOCALS",2)~ EXIT
END

IF ~~ THEN dusty_chicken_03
SAY ~What... what are you... Please tell me you are joking!~
++ ~Yes, I was joking. Sorry, Brandock.~ + dusty_chicken_04
++ ~It's Melicamp's cousin, and she wants me to tell you - ~ + dusty_chicken_05
++ ~Did you just turn pale? Hahaha, you think this is another Melicamp?~ + dusty_chicken_04
++ ~Let's keep moving, Brandock.~ + dusty_chicken_02
END

IF ~~ THEN dusty_chicken_04
SAY ~(exhales) This is not a joking matter, <CHARNAME>. I... I do get it, though. (smiles)~
IF ~~ THEN + dusty_chicken_01
END

IF ~~ THEN dusty_chicken_05
SAY ~WHA - NO! (Brandock covers his ears for a moment, before realizing the mischief in your eyes.)~
IF ~~ THEN + dusty_chicken_04
END

END //APPEND

/* reaction to spider egg -bdegg01.itm - spider egg [bgqe] ~Reminds me of another egg we got some time ago...~ */

CHAIN
IF ~Global("C#Brando_SoDSpiderEgg","LOCALS",1)~ THEN c#brandj spider_egg
~Is it a good idea to place a spider egg inside one's backpack?~ [c#ablank]
== BDJAHEIJ IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN ~It's a child of nature, just as you and I. But we are well adviced not to let it hatch while we carry it around.~
== c#brandj IF ~OR(2)
GlobalGT("C#Q04_WyvernDeliverer","GLOBAL",5)
GlobalGT("C#Q04_ThalantyrSpider","LOCALS",0)~ THEN ~Kind of reminds me of that spider egg you got back there in a cave by a kidnapped delivery man, do you remember?~
== c#brandj ~We do know how to prevent it from hatching. Yes? Yes?~
== c#brandj IF ~GlobalGT("C#Brandock_GavinBG1NPC","GLOBAL",0)~ THEN ~Oh boy, am I glad Gavin is not here right now.~
END
IF ~~ THEN DO ~SetGlobal("C#Brando_SoDSpiderEgg","LOCALS",2)~ EXIT


/* more Item reactions */
/* BDMISC21 Hephernaan's Ritual Notes -> lorepath */

/* bdmisc22 Coroniir boardgame */

APPEND c#brandj
IF ~Global("C#Brando_SoDbdmisc22","GLOBAL",1)~ THEN coroniir
SAY ~This is an interesting strategy game! Oh, I wished we'd play it for some. I always loved to play games like these - but usually didn't have a suitable opponent. Besides, these things were seen as idling away time, which was never an acceptable way to spend one's time where I come from.~
IF ~~ THEN DO ~SetGlobal("C#Brando_SoDbdmisc22","GLOBAL",2)~ EXIT
END

/* bdamul02 "Archer's Eyes" */
IF ~Global("C#Brando_SoDbdamul02","GLOBAL",1)~ THEN archers_eyes
SAY ~Those are *real* eyes, probably really from some famous archer. I mean... They could have given the magic to literally everything...~
IF ~~ THEN DO ~SetGlobal("C#Brando_SoDbdamul02","GLOBAL",2)~ EXIT
END

/* bdclck06 "Cloak of Minor Arkana" */
IF ~Global("C#Brando_SoDbdclck06","GLOBAL",1)~ THEN cloak_minor_arkana
SAY ~[Brandock]This cloak is a dream for any mage. Maybe not as much for an *adventuring* mage as it doesn't grant any protection, but its magic - I'd call it profession enhancements - are formidable.~
IF ~~ THEN DO ~SetGlobal("C#Brando_SoDbdclck06","GLOBAL",2)~ EXIT
END

/* bdalnt07 -02 */
IF ~Global("C#Brando_SoDbdalnt","GLOBAL",2)~ THEN alveus_notes
SAY ~[Brandock]These thoughts and - "wisdoms" of the "greates first level mage" are hilarious. Not the megalomanicial ones, but the "how do I minimize the risk while adventuring" ones. I knew people who thought that way. It's surprising how far they came without taking responsibility for *anything*.~
IF ~~ THEN DO ~SetGlobal("C#Brando_SoDbdalnt","GLOBAL",3)~ EXIT
END

END //APPEND

/* Inside Boareskyr Bridge: "Tender of the Dead"
BDJUNIA

~There, I interrupted his ritual and killed him. Then I cleansed his body through Lathander's grace in a ritual to strengthen our troops. I wanted only to protect our people!
(StrRef: 50083)~ */
I_C_T BDJUNIA 33 C#Brando_BDJUNIA_33
== c#brandj IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN ~'Cleansed his body'? You mutilated him, and heavily so!~
END


/* Ophyllis in camp */
APPEND c#brandj
IF ~Global("C#BR_OphyllisDead","GLOBAL",1)~ THEN ophyllis_dead
SAY ~The... the poor man. It's a long time since I saw someone try so hard and fail so horribly. Kind of reminds me... Ah, no, forgive me. I will not take this poor man's death as an excuse to dwell on my own self-pity. I'm embarrassed my thoughts even started to wander into that direction.~
IF ~~ THEN DO ~SetGlobal("C#BR_OphyllisDead","GLOBAL",2)~ EXIT
END
END //APPEND


/* Messenger with letter from Brandock's parents */

CHAIN
IF ~Global("C#Brandock_SoDMessenger","GLOBAL",1)~ THEN c#brmess letter
~Mister Brandock Deepwater? I have a letter for you, sir.~ [c#ablank]
== c#brandj ~A letter? For me? Here? Man, what did you go through to get this to me?! Here, take these coins... and save travels. Keep out of the danger!~
= ~Oh, it's a letter from my parents, <CHARNAME>... From my parents! That means they sent their third letter of their whole lifetime to me. Let me have a quick peak inside, it can't be much text... (Reads in silence).~
= ~Oh boy.~
END
++ ~What is it?~ EXTERN c#brandj letter_02
++ ~Brandock, in case you haven't noticed, but we are in the middle of something.~ EXTERN c#brandj letter_01
++ ~This has to wait, Brandock.~ EXTERN c#brandj letter_01

APPEND c#brandj 

IF ~~ THEN letter_01
SAY ~I *know*!~
IF ~~ THEN + letter_02
END

IF ~~ THEN letter_02
SAY ~My parents want me to come home, <CHARNAME>. As 'soun as posible'. Spelling isn't their strongest ability... My mother is 'syck'. Oh dear.~
++ ~Then go, Brandock. One man less won't change the tide.~ + letter_03
++ ~You know I wish you and your family all the best in this world, Brandock. But I need you for the fight in Dragonspear Castle.~ + letter_04
++ ~There is no way you'll leave now. Not until this is finished.~ + letter_04
END

IF ~~ THEN letter_03
SAY ~What? No, I won't leave now! I will not abandon the fight. Not now.~ 
IF ~~ THEN + letter_05
END

IF ~~ THEN letter_04
SAY ~Don't worry, I won't leave now.~
IF ~~ THEN + letter_05
END

IF ~~ THEN letter_05
SAY ~This letter travelled I don't know how many miles for I don't know how many days, if not weeks. My mother was sick when they sent it, but how she is now, I don't know. I will not leave the fight for a message that might be completely outdated. She might as well be, er - well, I surely hope she got better, already. Better not dwell on the other possibility...~
= ~But I *will* leave as soon as everything is settled, of course. Just so you know.~
IF ~~ THEN DO ~ActionOverride("c#brmess",EscapeAreaDestroy(5))
SetGlobal("C#Brandock_SoDMessenger","GLOBAL",2)~ EXIT
END

END //APPEND

/* bdnederl looking for Skie */
I_C_T BDNEDERL 36 C#Brando_BDNEDERL_36
== c#brandj IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN ~Yes, "displeased" is putting it mildly.~
END

/* before attack Caelar in castle */
I_C_T BDSTONEH 47 C#Brando_BDSTONEH_47
== c#brandj IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN ~Sounds... fair?~
END

/* Torsin de Lancie sent PC to infiltrate the castle */
I_C_T BDDELANC 16 C#Brando_BDDELANC_16
== c#brandj IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN ~So - we will go right inside the enemy's hideout. I got that right, yes? And we are on our own? That's... terrific.~
END

/* wall came down with the barrel of Bwoosh! */
I_C_T BDDELANC 65 C#Brando_BDDELANC_65
== c#brandj IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN ~What do you mean, you weren't sure - you let us carry that... that *stuff* all the way through the enemy's territory without being sure it'd actually work?!~
END

/* portal is open, talk to Torsin de Lancie through the closed door */
I_C_T BDDELANC 75 C#Brando_BDDELANC_75
== c#brandj IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN ~I hope they'll do more than just smile. There is an OPEN HELL MOUTH next to us!~
END

/* after return from Avernus, Torsin de Lancie */
I_C_T BDDELANC 79 C#Brando_BDDELANC_79
== c#brandj IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN ~Is... is this really over? Like, *over* over? I feel so sick...~
END


APPEND c#brandj 

/* in Avernus - imagine Caelar would have gone after Sarevok */

IF ~Global("C#Brandock_SoDCaelarSarevok","GLOBAL",1)~ THEN caelar_sarevok
SAY ~(All of a sudden, Brandock starts to laugh.)~ [c#ablank]
++ ~What is it, Brandock?~ + caelar_sarevok_01
++ ~If you see anything funny in here, let me know. I want to know, too.~ + caelar_sarevok_01
++ ~You alright?~ + caelar_sarevok_01
++ ~Brandock, get a grib on yourself. We need to focus!~ + caelar_sarevok_01
END

IF ~~ THEN caelar_sarevok_01
SAY ~I... I just (smirks) I just imagined Caelar would have come sooner. Let's say... two, three months. She would have gone after Sarevok! Sarevok! And we would ha-hahaha! - have had to face only one foe. Isn't the thought hilarious?~
++ ~(smile) I see the irony, yes.~ + caelar_sarevok_02
++ ~It's an interesting thought, indeed.~ + caelar_sarevok_02
++ ~To hell with your funny ideas, Brandock. Heh.~ + caelar_sarevok_04
++ ~No, it's stupid.~ + caelar_sarevok_03
++ ~I want you to stop being funny this instant.~ + caelar_sarevok_03
END

IF ~~ THEN caelar_sarevok_02
SAY ~(Brandock chuckles to himself for another short moment.)~
IF ~~ THEN + caelar_sarevok_03
END

IF ~~ THEN caelar_sarevok_03
SAY ~(He stops laughing. Looking at him, you see his real expression - anxious eyes in a pale face.) I am all serious again now, <CHARNAME>. Let's do what is necessary and get the hell out of here. (pauses) The *hell* out of here... Gods, I need to be quiet now or I'll start laughing uncontrollably... again...~
IF ~~ THEN DO ~SetGlobal("C#Brandock_SoDCaelarSarevok","GLOBAL",2)~ EXIT
END

IF ~~ THEN caelar_sarevok_04
SAY ~Heh! I see you got the point.~
IF ~~ THEN + caelar_sarevok_02
END

END //APPEND



/* ~BDXHOST~ Fiend in Avernus 
IF ~~ THEN BEGIN 3 // from: 2.0 2.1
  SAY #45175 /* ~I shall take my leave of you. There are many plans I have to foil, many preparations to ruin. Take this blade as my gift. Treat it well. A boon from my kind is rare.~ [BD45175] */
*/
I_C_T BDXHOST 3 C#Brando_BDXHOST3
== c#brandj IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN ~If that was our good deed for today, then I fear for our future.~
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
  SAY ~Your insecure mage shakes with fear already. Lose the riddle and I will make his life hell indeed.~
  IF ~~ THEN REPLY ~You want Brandock? Then he will be yours if I lose.~ DO ~SetGlobal("C#Brandock_SoDThrix","GLOBAL",2)
SetGlobal("bd_thrix_sacrifice_companion","global",1)
~ EXTERN C#BrandJ thrix_01

  IF ~RandomNum(4,1)~ THEN REPLY ~Brandock came back to me for guidance and protection. I will not trade his soul to you.~ DO ~SetGlobal("C#Brandock_SoDThrix","GLOBAL",1) IncrementGlobal("BD_NumInParty","bd4500",1)~ + 70
  IF ~RandomNum(4,2)~ THEN REPLY ~Brandock came back to me for guidance and protection. I will not trade his soul to you.~ DO ~SetGlobal("C#Brandock_SoDThrix","GLOBAL",1) IncrementGlobal("BD_NumInParty","bd4500",1)~ + 71
  IF ~RandomNum(4,3)~ THEN REPLY ~Brandock came back to me for guidance and protection. I will not trade his soul to you.~ DO ~SetGlobal("C#Brandock_SoDThrix","GLOBAL",1) IncrementGlobal("BD_NumInParty","bd4500",1)~ + 72
  IF ~RandomNum(4,4)~ THEN REPLY ~Brandock came back to me for guidance and protection. I will not trade his soul to you.~ DO ~SetGlobal("C#Brandock_SoDThrix","GLOBAL",1) IncrementGlobal("BD_NumInParty","bd4500",1)~ + 73

  IF ~!Global("BD_NumInParty","bd4500",1)
!Global("BD_NumInParty","bd4500",2)
!Global("BD_NumInParty","bd4500",3)
!Global("BD_NumInParty","bd4500",4)~ THEN REPLY ~Brandock came back to me for guidance and protection. I will not trade his soul to you.~ DO ~SetGlobal("C#Brandock_SoDThrix","GLOBAL",1)~ + 114

  IF ~~ THEN REPLY ~He has his faults, but I'll not risk Brandock's soul in so blithe a fashion. If I cannot answer your riddle, mine is the soul you will take. Agreed?~ GOTO 113
  IF ~~ THEN REPLY ~I'll feed you your own limbs if you don't let me into the tower, you wretched creature. I'm done playing games with you.~ GOTO 12
END

IF ~~ THEN brandock_01
SAY ~Thrix has marked your soul, mage. Your soul is mine!~ 
++ ~Well, I guess that settles it, then. Go with your new master, Brandock.~ DO ~SetGlobal("C#Brandock_SoDThrix","GLOBAL",3)~ EXTERN C#BrandJ thrix_02
++ ~No, you will not take his soul, devil. We will fight you!~ GOTO 10
END

END //APPEND

/*

Global("C#Brandock_SoDThrix","GLOBAL",1): PC declined Thrix' choice

Global("C#Brandock_SoDThrix","GLOBAL",2)-> 5: PC agreed on Brandock's soul before the riddle

Global("C#Brandock_SoDThrix","GLOBAL",3)-> 6: PC agreed on Brandock's soul before the riddle and did not fight for Brandock after riddle was lost


*/


APPEND C#BrandJ

IF ~~ THEN thrix_01
SAY ~Er... do I get a say in this?~
IF ~~ THEN EXTERN ~BDTHRIX~ 116
END

IF ~~ THEN thrix_02
  SAY ~I... I... I really think it should be me doing the descision here!~
  IF ~~ THEN DO ~SetGlobal("bd_thrix_won","global",1)~ EXTERN ~BDTHRIX~ 140
END 

IF ~OR(2)
Global("C#Brandock_SoDThrix","GLOBAL",6)
Global("C#Brandock_SoDThrix","GLOBAL",5)~ THEN after_thrix
SAY ~You gambled for my soul with a fiend!~ [c#ablank]
++ ~That I did, yes. It granted us passage!~ + after_thrix_02
+ ~!Global("BD_Thrix_riddle_won","GLOBAL",1)~ + ~I gambled, I lost. Such is life.~ + after_thrix_02
+ ~Global("BD_Thrix_riddle_won","GLOBAL",1)~ + ~I won, though!~ + after_thrix_02
++ ~I am sorry I accepted your soul as a wager, Brandock.~ + after_thrix_02
++ ~And?~ + after_thrix_02
END

IF ~Global("C#Brandock_SoDThrix","GLOBAL",7)~ THEN after_thrix_01
SAY ~You gambled for a companion's soul with a fiend!~ [c#ablank]
++ ~That I did, yes. It granted us passage!~ + after_thrix_04
+ ~!Global("BD_Thrix_riddle_won","GLOBAL",1)~ + ~I gambled, I lost. Such is life.~ + after_thrix_04
+ ~Global("BD_Thrix_riddle_won","GLOBAL",1)~ + ~I won, though!~ + after_thrix_04
++ ~I am sorry I accepted a soul as a wager, Brandock.~ + after_thrix_04
++ ~And?~ + after_thrix_04
END

END

CHAIN
IF ~~ THEN C#BrandJ after_thrix_02
~My soul! My *soul*! You know we are talking about my soul, yes?~ DO ~SetGlobal("C#Brandock_SoDThrix","GLOBAL",9)~
== C#BrandJ IF ~!Global("BD_Thrix_riddle_won","GLOBAL",1)~ THEN ~Which I *lost*. According to some obscure fiend-hell-game logic.~
== C#BrandJ IF ~Global("BD_Thrix_riddle_won","GLOBAL",1)~ THEN ~Don't tell me it's not important because in the end you won!~ 
== C#BrandJ IF ~!Global("BD_Thrix_riddle_won","GLOBAL",1)~ THEN ~I should be scared as *hell* about the fiend coming for me. When we were standing in front of it, I was. But now...~
END
IF ~~ THEN + after_thrix_03

APPEND C#BrandJ

IF ~~ THEN after_thrix_03
SAY ~Two things I want to say to this: firstly, your soul - that of a Bhaal spawn - should be far more interesting than mine. A fiend not seeing this and playing for a normal mortal life doesn't really want the soul it's gambling for, it wants to gamble for gamble's sake - or is scared to touch the really interesting things out of fear to burn his fingers - or maybe gamble to prevent a fight with a foe he knows is more fierce than <PRO_HESHE> seems.~
= ~Wich leads me to my second thought. It was your blood that opened the portal to this hell, <CHARNAME>. You have a connection to the hell dimension because of who and what your father was. You might be much stronger down here than you think. Maybe even in ways we don't want to find out...~
= ~You trading a soul to this fiend scared me, <CHARNAME>. Not because of the fiend - for some obscure reason I can't take his threat seriously, as I pointed out. No, I am scared as *hell* because it might have shown a glimpse of what is going on inside you, and if it was then that's an abyss I hope I don't have to look into again any time soon.~
END

IF ~~ THEN after_thrix_04
SAY ~A soul! A *soul*! You know we are talking about a soul, yes?~ 
IF ~~ THEN DO ~SetGlobal("C#Brandock_SoDThrix","GLOBAL",9)~ + after_thrix_03
END

IF ~Global("C#Brandock_SoDThrix","GLOBAL",8)~ THEN after_thrix_05
SAY ~You traded your own soul to that fiend. That was a brave thing to do! A bit naive, maybe... but brave!~ [c#ablank]
+ ~!Global("BD_Thrix_riddle_won","GLOBAL",1)~ + ~I couldn't bet another one's soul! And I didn't want to fight the fiend. At least not now.~ + after_thrix_06
+ ~!Global("BD_Thrix_riddle_won","GLOBAL",1)~ + ~I gambled, I lost. Such is life.~ + after_thrix_06
+ ~!Global("BD_Thrix_riddle_won","GLOBAL",1)~ + ~Don't remind me of that.~ + after_thrix_06
+ ~Global("BD_Thrix_riddle_won","GLOBAL",1)~ + ~I couldn't bet another one's soul! And I didn't want to fight the fiend. At least not now.~ + after_thrix_07
+ ~Global("BD_Thrix_riddle_won","GLOBAL",1)~ + ~I gambled, I won. Sometimes a risk pays off.~ + after_thrix_07
+ ~Global("BD_Thrix_riddle_won","GLOBAL",1)~ + ~Don't remind me of that.~ + after_thrix_07
END

IF ~~ THEN after_thrix_06
SAY ~I'll happily help you fight it off, should it come for you and I'll still be around.~
IF ~~ THEN + after_thrix_08
END

IF ~~ THEN after_thrix_07
SAY ~I'm glad you solved the riddle and this danger is over, though.~
IF ~~ THEN + after_thrix_08
END

IF ~~ THEN after_thrix_08
SAY ~I am very impressed, <CHARNAME>. Considering your godly heritage and what people start suspecting after the incident on the bridge, that was a very selfless thing to do. Not 'god of murder' like, at all.~
IF ~~ THEN DO ~SetGlobal("C#Brandock_SoDThrix","GLOBAL",9)~ EXIT
END

/* back from Avernus. Brandock takes his leave */

IF ~Global("C#Brandock_SoDEnd","GLOBAL",1)~ THEN back_hell
SAY ~We... Excuse me a moment.~ [c#ablank]
IF ~~ THEN DO ~	FadeToColor([20.0],0)
	SetGlobal("C#Brandock_SoDEnd","GLOBAL",2)
	Wait(1)
	FadeFromColor([20.0],0)~ + back_hell_00
END

IF ~Global("C#Brandock_SoDEnd","GLOBAL",2)~ THEN back_hell_00
SAY ~Aplogies... I am really sorry. I *will* clean this up if anyone requests I do it myself.~
++ ~Did you just empty your stomach in that corner over there?~ + back_hell_01
++ ~Feeling better now?~ + back_hell_02
++ ~I can't believe what a wimp you are.~ + back_hell_03
END

IF ~~ THEN back_hell_01
SAY ~Your power of observation is astounding. Yes, that's what I did.~
++ ~Feeling better now?~ + back_hell_02
++ ~I can't believe what a wimp you are.~ + back_hell_03
END

IF ~~ THEN back_hell_02
SAY ~Very much so, thank you. I don't think I will eat much tonight, though. Celebrations or no.~
IF ~~ THEN + back_hell_03
END

IF ~~ THEN back_hell_03
SAY ~I wasn't prepared for going into Avernus and back again. Not that I'd complain about the coming back part.~
IF ~~ THEN + back_hell_04
END

IF ~~ THEN back_hell_04
SAY ~That reminds me - I said I would leave as soon as it's all over. And I really think it's all over now, don't you?~
++ ~You want to go right away? No celebrations? No rest?~ + back_hell_05
++ ~I'd say it's over, yes.~ + back_hell_06
++ ~Yes, go! Your family is waiting.~ + back_hell_07
END

IF ~~ THEN back_hell_05
SAY ~If I rest now my brain might catch up with my memories. And as soon as that'll happen I don't know whether I might be able to get myself moving or whether I'll be paralysed for the rest of the tenday.~
IF ~~ THEN + back_hell_07
END

IF ~~ THEN back_hell_06
SAY ~It is, indeed. I still can't believe where we went and what we did.~
IF ~~ THEN + back_hell_07
END

IF ~~ THEN back_hell_07
SAY ~My family is waiting and I surely hope they are alright, letter or no. It's time to find out.~
++ ~Thank you for staying with me, Brandock.~ + back_hell_08
++ ~Would you mind waiting a tad longer? There are some things I would like to take off your backpack before you go.~ + back_hell_10
++ ~I rally think you should stay for a bit. You seem a bit in shock, actually.~ + back_hell_10
++ ~I wish you a good journey, Brandock.~ + back_hell_09
++ ~Go then. More ale for me!~ + back_hell_09
END

IF ~~ THEN back_hell_08
SAY ~My pleasure, <CHARNAME>. Although - a visit in hell is something we won't do again, alright?~
++ ~Would you mind waiting a tad longer? There are some things I would like to take off your backpack before you go.~ + back_hell_10
++ ~I rally think you should stay for a bit. You seem a bit in shock, actually.~ + back_hell_10
++ ~I wish you a good journey, Brandock.~ + back_hell_09
++ ~Go then. More ale for me!~ + back_hell_09
END

IF ~~ THEN back_hell_09
SAY ~I... I will go. Or maybe I won't...~
IF ~~ THEN + back_hell_11
END

IF ~~ THEN back_hell_10
SAY ~No, I really should go right away. Really.. or maybe I shouldn't...~
IF ~~ THEN + back_hell_11
END

IF ~~ THEN back_hell_11
SAY ~I will stay a bit longer. But I will go before the night.~
IF ~~ THEN DO ~SetGlobal("C#Brandock_SoDEnd","GLOBAL",3)~ EXIT
END

END //APPEND

/* before PC goes to rest that night. Brandock takes his leave */

I_C_T3 BDDAZZO 2 C#Brandock_BDDAZZO_2
== c#brandj IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2)
InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN @0 /* ~It was an honor travelling with you. And quite scary, to be honest... I'll be on my way then. Straight south to my parents and no distractions this time.~ */
== C#BrandJ IF ~GlobalGT("C#Brando_bdscrl1","LOCALS",0)
OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2)
InMyArea("C#Brandock")
!StateCheck(Myself,CD_STATE_NOTVALID)~ THEN @1 /* ~Seeing how everthing points to Athkatla these days, maybe we will meet there? Who knows, maybe I'll have an influencial position when next we meet - it's always good to have friends, if you are in Amn.~ */

/* Brandock is party member */
== C#BrandJ IF ~InParty("C#Brandock")
InMyArea("C#Brandock")
!StateCheck(Myself,CD_STATE_NOTVALID)~ THEN @2 /* ~Farewell, <CHARNAME>.~ */
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
== C#BrandJ IF ~Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN @2 /* ~Farewell, <CHARNAME>.~ */ DO ~SetInterrupt(FALSE)
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
InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN @0 /* ~It was an honor travelling with you. And quite scary, to be honest... I'll be on my way then. Straight south to my parents and no distractions this time.~ */
== C#BrandJ IF ~GlobalGT("C#Brando_bdscrl1","LOCALS",0)
OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2)
InMyArea("C#Brandock")
!StateCheck(Myself,CD_STATE_NOTVALID)~ THEN @1 /* ~Seeing how everthing points to Athkatla these days, maybe we will meet there? Who knows, maybe I'll have an influencial position when next we meet - it's always good to have friends, if you are in Amn.~ */
== C#BrandJ IF ~InParty("C#Brandock") 
InMyArea("C#Brandock")
!StateCheck(Myself,CD_STATE_NOTVALID)~ THEN @2 /* ~Farewell, <CHARNAME>.~ */ 
DO ~SetInterrupt(FALSE)
MakeGlobal()
SetGlobal("C#BrandockJoined","GLOBAL",0)
ChangeAIScript("",DEFAULT)
LeaveParty()
EscapeArea() 
SetInterrupt(TRUE)~ 

/* Brandock was 7th party member */
== C#BrandJ IF ~Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN @2 /* ~Farewell, <CHARNAME>.~ */ DO ~SetInterrupt(FALSE)
MakeGlobal()
SetGlobal("C#BrandockJoined","GLOBAL",0)
ChangeAIScript("",DEFAULT)
RemoveFamiliar()
ChangeEnemyAlly(Myself,NEUTRAL)
EscapeArea() 
SetInterrupt(TRUE)~ 
END



/* scenery dialogues that use the same friendship timer */


/* Caelar no child of Bhaal 
GlobalGT("bd_mdd018","global",0) */

APPEND c#brandj

IF ~Global("C#Brandock_CaelarCoB","GLOBAL",1)~ THEN caelar_no_childofbhaal
SAY ~Hm, Caelar is not a child of Bhaal. In a way, it's reassuring - to see that it's not a unique feature of Bhaal children to fall prey to megalomania. Erm, no offence meant.~ [c#ablank]
++ ~None taken.~ + caelar_no_childofbhaal_04
++ ~Then be careful with statements like that. Some Bhaalchildren are also quite ill-tempered, or so I heard.~ + caelar_no_childofbhaal_03
++ ~I'm quite happy she's not another 'half-sibling', indeed.~ + caelar_no_childofbhaal_01
++ ~I wouldn't have minded. It made kind of sense.~ + caelar_no_childofbhaal_01
++ ~Well, I'm 'hero of Baldur's Gate' and a warlord myself, so to speak - not sure that counts for megalomania, though.~ + caelar_no_childofbhaal_02
++ ~Look how high I have risen - and without wanting to. Seems it can just *happen* to some people.~ + caelar_no_childofbhaal_02
END

IF ~~ THEN caelar_no_childofbhaal_01
SAY ~On the other hand - maybe I'm not so fond of the idea that literally *everyone* can rise to be an usurper... oh well.~
IF ~~ THEN DO ~SetGlobal("C#Brandock_CaelarCoB","GLOBAL",2)~ EXIT
END

IF ~~ THEN caelar_no_childofbhaal_02
SAY ~It's not megalomania if you only go because people asked you for help, though.~
IF ~~ THEN + caelar_no_childofbhaal_01
END

IF ~~ THEN caelar_no_childofbhaal_03
SAY ~Their sense of humor is not so bad, either, I reccon. Heh.~
++ ~I'm quite happy she's not another 'half-sibling', indeed.~ + caelar_no_childofbhaal_01
++ ~I wouldn't have minded. It made kind of sense.~ + caelar_no_childofbhaal_01
++ ~Well, I'm 'hero of Baldur's Gate' and a warlord myself, so to speak - not sure that counts for megalomania, though.~ + caelar_no_childofbhaal_02
++ ~Look how high I have risen - and without wanting to. Seems it can just *happen* to some people.~ + caelar_no_childofbhaal_02
END

IF ~~ THEN caelar_no_childofbhaal_04
SAY ~Thanks!~
++ ~I'm quite happy she's not another 'half-sibling', indeed.~ + caelar_no_childofbhaal_01
++ ~I wouldn't have minded. It made kind of sense.~ + caelar_no_childofbhaal_01
++ ~Well, I'm 'hero of Baldur's Gate' and a warlord myself, so to speak - not sure that counts for megalomania, though.~ + caelar_no_childofbhaal_02
++ ~Look how high I have risen - and without wanting to. Seems it can just *happen* to some people.~ + caelar_no_childofbhaal_02
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
		InParty("C#Husam")
	OR(3)
		!HasItem("bdmisc56","C#Brandock")
		Global("C#BrandockJoined","GLOBAL",2)
		InParty("C#Brandock")~ THEN bounty_notice
SAY ~Oh, another bounty notice? Let me take a look. Hm... Yes, these fellows did catch your nose right. Definitely!~ [c#ablank]
++ ~It's not a joking matter, Brandock.~ + bounty_notice_01

+ ~Global("C#Brando_SoDDPEvents1","LOCALS",0)~ + ~These were assassins, probably sent by Caelar Agent.~ DO ~SetGlobal("C#Brando_SoDDPEvents1","LOCALS",1)~ + bounty_notice_03
+ ~Global("C#Brando_SoDDPEvents2","LOCALS",0) GlobalLT("BD_plot","global",54)~ + ~They poisoned Imoen. She is not well - at all.~ DO ~SetGlobal("C#Brando_SoDDPEvents2","LOCALS",1)~ + bounty_notice_04
+ ~Global("C#Brando_SoDDPEvents3","LOCALS",0)~ + ~You're right. Maybe I should start a collection of these things. 'My life in pictures - volume I: Bounty notices by my foes.'~ DO ~SetGlobal("C#Brando_SoDDPEvents3","LOCALS",1)~ + bounty_notice_05

++ ~What?! No way! It's far off. That's *not* my nose!~ + bounty_notice_02
++ ~Lets stop talking and return to doing something.~ + bounty_notice_08
END

IF ~~ THEN bounty_notice_01
SAY ~But... that's the best moment to take life with a grain of jest - when it's all bitter sweet already. No?~
++ ~No.~ + bounty_notice_02
++ ~Sometimes it's helping to swallow the bitterness, I agree.~ + bounty_notice_06

+ ~Global("C#Brando_SoDDPEvents1","LOCALS",0)~ + ~These were assassins, probably sent by Caelar Agent.~ DO ~SetGlobal("C#Brando_SoDDPEvents1","LOCALS",1)~ + bounty_notice_03
+ ~Global("C#Brando_SoDDPEvents2","LOCALS",0) GlobalLT("BD_plot","global",54)~ + ~They poisoned Imoen. She is not well - at all.~ DO ~SetGlobal("C#Brando_SoDDPEvents2","LOCALS",1)~ + bounty_notice_04
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
		InParty("C#Husam")
	OR(3)
		!HasItem("bdmisc56","C#Brandock")
		Global("C#BrandockJoined","GLOBAL",2)
		InParty("C#Brandock")~ + ~You're right. Maybe I should start a collection of these things. 'My life in pictures - volume I: Bounty notices by my foes.'~ DO ~SetGlobal("C#Brando_SoDDPEvents3","LOCALS",1)~ + bounty_notice_05

++ ~Lets stop talking and return to doing something.~ + bounty_notice_08
END

IF ~~ THEN bounty_notice_02
SAY ~Then I apologize, I didn't mean to offend you. (They *did* catch your nose right, though.)~ 
++ ~No offence taken.~ + bounty_notice_06
++ ~It's not a topic worth arguing over. We've got important things to do.~ + bounty_notice_07

+ ~Global("C#Brando_SoDDPEvents1","LOCALS",0)~ + ~These were assassins, probably sent by Caelar Agent.~ DO ~SetGlobal("C#Brando_SoDDPEvents1","LOCALS",1)~ + bounty_notice_03
+ ~Global("C#Brando_SoDDPEvents2","LOCALS",0) GlobalLT("BD_plot","global",54)~ + ~They poisoned Imoen. She is not well - at all.~ DO ~SetGlobal("C#Brando_SoDDPEvents2","LOCALS",1)~ + bounty_notice_04
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
		InParty("C#Husam")
	OR(3)
		!HasItem("bdmisc56","C#Brandock")
		Global("C#BrandockJoined","GLOBAL",2)
		InParty("C#Brandock")~ + ~You're right. Maybe I should start a collection of these things. 'My life in pictures - volume I: Bounty notices by my foes.'~ DO ~SetGlobal("C#Brando_SoDDPEvents3","LOCALS",1)~ + bounty_notice_05

++ ~Lets stop talking and return to doing something.~ + bounty_notice_08
END

IF ~~ THEN bounty_notice_03
SAY ~The warlord? ...Warlady? Assassins, for you! She seems to fear you a lot! Was that before or after you agreed to lead the counter army?~
++ ~Before I agreed.~ + bounty_notice_10
++ ~Who knows, maybe the Dukes were talking about it for some time before requesting it from me.~ + bounty_notice_10

+ ~Global("C#Brando_SoDDPEvents2","LOCALS",0) GlobalLT("BD_plot","global",54)~ + ~They poisoned Imoen. She is not well - at all.~ DO ~SetGlobal("C#Brando_SoDDPEvents2","LOCALS",1)~ + bounty_notice_04
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
		InParty("C#Husam")
	OR(3)
		!HasItem("bdmisc56","C#Brandock")
		Global("C#BrandockJoined","GLOBAL",2)
		InParty("C#Brandock")~ + ~You're right. Maybe I should start a collection of these things. 'My life in pictures - volume I: Bounty notices by my foes.'~ DO ~SetGlobal("C#Brando_SoDDPEvents3","LOCALS",1)~ + bounty_notice_05

++ ~Lets stop talking and return to doing something.~ + bounty_notice_08
END


IF ~~ THEN bounty_notice_04
SAY ~Imoen is sick and Duke Jannath can't help her? This is bad. This is really bad!~
++ ~It is, and I won't stop until I found who's behind this.~ + bounty_notice_07

+ ~Global("C#Brando_SoDDPEvents1","LOCALS",0)~ + ~These were assassins, probably sent by Caelar Agent.~ DO ~SetGlobal("C#Brando_SoDDPEvents1","LOCALS",1)~ + bounty_notice_03
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
		InParty("C#Husam")
	OR(3)
		!HasItem("bdmisc56","C#Brandock")
		Global("C#BrandockJoined","GLOBAL",2)
		InParty("C#Brandock")~ + ~You're right. Maybe I should start a collection of these things. 'My life in pictures - volume I: Bounty notices by my foes.'~ DO ~SetGlobal("C#Brando_SoDDPEvents3","LOCALS",1)~ + bounty_notice_05

++ ~Lets stop talking and return to doing something.~ + bounty_notice_08
END

IF ~~ THEN bounty_notice_05
SAY ~Ha! Make sure you get a bag of holding for those.~
+ ~Global("C#Brando_SoDDPEvents1","LOCALS",0)~ + ~These were assassins, probably sent by Caelar Agent.~ DO ~SetGlobal("C#Brando_SoDDPEvents1","LOCALS",1)~ + bounty_notice_03
+ ~Global("C#Brando_SoDDPEvents2","LOCALS",0) GlobalLT("BD_plot","global",54)~ + ~They poisoned Imoen. She is not well - at all.~ DO ~SetGlobal("C#Brando_SoDDPEvents2","LOCALS",1)~ + bounty_notice_04

++ ~Lets stop talking and return to doing something.~ + bounty_notice_08
END


IF ~~ THEN bounty_notice_06
SAY ~Thanks.~
+ ~Global("C#Brando_SoDDPEvents1","LOCALS",0)~ + ~These were assassins, probably sent by Caelar Agent.~ DO ~SetGlobal("C#Brando_SoDDPEvents1","LOCALS",1)~ + bounty_notice_03
+ ~Global("C#Brando_SoDDPEvents2","LOCALS",0) GlobalLT("BD_plot","global",54)~ + ~They poisoned Imoen. She is not well - at all.~ DO ~SetGlobal("C#Brando_SoDDPEvents2","LOCALS",1)~ + bounty_notice_04
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
		InParty("C#Husam")
	OR(3)
		!HasItem("bdmisc56","C#Brandock")
		Global("C#BrandockJoined","GLOBAL",2)
		InParty("C#Brandock")~ + ~You're right. Maybe I should start a collection of these things. 'My life in pictures - volume I: Bounty notices by my foes.'~ DO ~SetGlobal("C#Brando_SoDDPEvents3","LOCALS",1)~ + bounty_notice_05

++ ~Lets stop talking and return to doing something.~ + bounty_notice_08
END

IF ~~ THEN bounty_notice_07
SAY ~Indeed.~
+ ~Global("C#Brando_SoDDPEvents1","LOCALS",0)~ + ~These were assassins, probably sent by Caelar Agent.~ DO ~SetGlobal("C#Brando_SoDDPEvents1","LOCALS",1)~ + bounty_notice_03
+ ~Global("C#Brando_SoDDPEvents2","LOCALS",0) GlobalLT("BD_plot","global",54)~ + ~They poisoned Imoen. She is not well - at all.~ DO ~SetGlobal("C#Brando_SoDDPEvents2","LOCALS",1)~ + bounty_notice_04
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
		InParty("C#Husam")
	OR(3)
		!HasItem("bdmisc56","C#Brandock")
		Global("C#BrandockJoined","GLOBAL",2)
		InParty("C#Brandock")~ + ~You're right. Maybe I should start a collection of these things. 'My life in pictures - volume I: Bounty notices by my foes.'~ DO ~SetGlobal("C#Brando_SoDDPEvents3","LOCALS",1)~ + bounty_notice_05

++ ~Lets stop talking and return to doing something.~ + bounty_notice_08
END

IF ~~ THEN bounty_notice_08
SAY ~Alright!~
IF ~~ THEN DO ~SetGlobal("C#Brandock_Dialog","GLOBAL",103)
RealSetGlobalTimer("C#BrandockDialogTimer","GLOBAL",600)~ EXIT
IF ~GlobalLT("BD_plot","global",54)~ THEN + bounty_notice_09
END

IF ~~ THEN bounty_notice_09
SAY ~Poor Imoen - I hope she'll be alright soon. (Not a calming thought, going against a foe with such powerful poison.)~
IF ~~ THEN DO ~SetGlobal("C#Brandock_Dialog","GLOBAL",103)
RealSetGlobalTimer("C#BrandockDialogTimer","GLOBAL",600)~ EXIT
END

IF ~~ THEN bounty_notice_10
SAY ~Which could mean she could have spies in the palace... which is not a thought I want to think about any further. At all.~
++ ~Interesting thought. We'll keep our eyes open.~ + bounty_notice_07
++ ~Or they were after me because of my heritage. It's not a secret any more.~ + bounty_notice_07

+ ~Global("C#Brando_SoDDPEvents1","LOCALS",0)~ + ~These were assassins, probably sent by Caelar Agent.~ DO ~SetGlobal("C#Brando_SoDDPEvents1","LOCALS",1)~ + bounty_notice_03
+ ~Global("C#Brando_SoDDPEvents2","LOCALS",0) GlobalLT("BD_plot","global",54)~ + ~They poisoned Imoen. She is not well - at all.~ DO ~SetGlobal("C#Brando_SoDDPEvents2","LOCALS",1)~ + bounty_notice_04
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
		InParty("C#Husam")
	OR(3)
		!HasItem("bdmisc56","C#Brandock")
		Global("C#BrandockJoined","GLOBAL",2)
		InParty("C#Brandock")~ + ~You're right. Maybe I should start a collection of these things. 'My life in pictures - volume I: Bounty notices by my foes.'~ DO ~SetGlobal("C#Brando_SoDDPEvents3","LOCALS",1)~ + bounty_notice_05

++ ~Lets stop talking and return to doing something.~ + bounty_notice_08
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
		!InParty("C#Husam")
	OR(3)
		!HasItem("bdmisc56","C#Brandock")
		Global("C#BrandockJoined","GLOBAL",0)
		!InParty("C#Brandock")~ THEN imoen_down
SAY ~Imoen stayed with Duke Jannath, I take it?~ [c#ablank]
++ ~She was attacked by assassins.~ + imoen_down_01
+ ~GlobalLT("BD_plot","global",54)~ + ~(scoffs) As her research material for finding a cure, maybe.~ DO ~SetGlobal("C#Brando_SoDDPEvents2","LOCALS",1)~ + bounty_notice_04
+ ~GlobalLT("BD_plot","global",54)~ + ~Imoen's poisoned, and fighting for her life.~ DO ~SetGlobal("C#Brando_SoDDPEvents2","LOCALS",1)~ + bounty_notice_04
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
		!InParty("C#Husam")
	OR(3)
		!HasItem("bdmisc56","C#Brandock")
		Global("C#BrandockJoined","GLOBAL",0)
		!InParty("C#Brandock")~ THEN imoen_down_00
SAY ~Imoen needed treatment earlier, I heard? What happened?~ [c#ablank]
++ ~She was attacked by assassins.~ + imoen_down_01
END

IF ~~ THEN imoen_down_01
SAY ~Assassins?!~
++ ~Yes, probably sent by Caelar and ment for me.~ DO ~SetGlobal("C#Brando_SoDDPEvents1","LOCALS",1) SetGlobal("C#Brando_SoDDPEvents2","LOCALS",1)~ + bounty_notice_03
+ ~GlobalLT("BD_plot","global",54)~ + ~Imoen's poisoned, and fighting for her life.~ DO ~SetGlobal("C#Brando_SoDDPEvents2","LOCALS",1)~ + bounty_notice_04
++ ~Lets stop talking and return to doing something.~ + bounty_notice_08
END



/* 2nd Friendship dialogue - About Imoen */

IF ~Global("C#Brandock_Dialog","GLOBAL",104)~ THEN about_imoen
SAY ~Assassins coming for you, but Imoen taking the blow. Don't blame yourself for this, <CHARNAME>!~ [c#ablank]
/* doesn't know that Caelar wants to kidnap PC - from Road to Discovery */
+ ~Global("C#RtD_CaelarKidnap","GLOBAL",0)~ + ~It's hard not to. We all know why I'm so special and drawing all the attention.~ + about_imoen_02
/* knows that Caelar wants to kidnap PC - from Road to Discovery */
+ ~GlobalGT("C#RtD_CaelarKidnap","GLOBAL",0)~ + ~It's hard not to, especially with the knowledge that the attack was meant for getting to me.~ + about_imoen_02
++ ~I don't blame myself. I didn't send the assassins.~ + about_imoen_04
++ ~What? Imoen run off like a nosy kitten, instead of waiting for me! It's hardly my fault.~ + about_imoen_04 
++ ~I don't want to talk about this further.~ + about_imoen_01
END

IF ~~ THEN about_imoen_01
SAY ~Then we won't.~
IF ~~ THEN DO ~SetGlobal("C#Brandock_Dialog","GLOBAL",105)
RealSetGlobalTimer("C#BrandockDialogTimer","GLOBAL",1200)~ EXIT
END

IF ~~ THEN about_imoen_02
SAY ~And you can't blame yourself for *that* in the first place!~
++ ~Yes and no. I didn't chose my heritage, but it's my actions that influences how others see me.~ + about_imoen_05
++ ~I'm the target and others take the pain. Will it be always like this?~ + about_imoen_03
++ ~I don't want to talk about this further.~ + about_imoen_01
END

IF ~~ THEN about_imoen_03
SAY ~I am sure it won't. Life is unfair, that is true, but usually it's unfair to *other* people, as well, and while it's doing that one has a chance of having a good time. Erm, this allegory works better if someone complains about bad things happening to *<PRO_HIMHER>self*, not to others, of course. You know what I mean.~
IF ~~ THEN + about_imoen_07
IF ~GlobalLT("BD_plot","global",54)~ THEN + about_imoen_06
END

IF ~~ THEN about_imoen_04
SAY ~That's a healthy approach to see this. For you, I mean. And I didn't mean this sarcastically.~
IF ~~ THEN + about_imoen_07
IF ~GlobalLT("BD_plot","global",54)~ THEN + about_imoen_06
END

END //APPEND

CHAIN
IF ~~ THEN c#brandj about_imoen_05
~Well, it's not all true, that the way people see you would be only dependent on how you behave. Sometimes, life goes into entirely different directions no matter what one did. Er, which probably wasn't a very comforting thing to say.~
/* knows that Caelar wants to kidnap PC - from Road to Discovery */
== c#brandj IF ~GlobalGT("C#RtD_CaelarKidnap","GLOBAL",0)~ THEN ~Caelar wanting to kidnap you for whatever purpose is a good - or better, *bad* example of what I mean.~
/* doesn't know that Caelar wants to kidnap PC - from Road to Discovery */
== c#brandj IF ~Global("C#RtD_CaelarKidnap","GLOBAL",0)~ THEN ~This Caelar obviously sees you as a threat to her 'crusade', otherwise she wouldn't sent assassins to get rid of you. I think that's a good sign. For how people see you, I mean.~
END
IF ~~ THEN + about_imoen_07
IF ~GlobalLT("BD_plot","global",54)~ THEN + about_imoen_06

APPEND c#brandj

IF ~~ THEN about_imoen_06
SAY ~I really hope Imoen gets better soon. I hope she'll be better at all!~
IF ~~ THEN DO ~SetGlobal("C#Brandock_Dialog","GLOBAL",105)
RealSetGlobalTimer("C#BrandockDialogTimer","GLOBAL",1200)~ EXIT
END

IF ~~ THEN about_imoen_07
SAY ~Let's continue and make sure something like this won't happen again!~
IF ~~ THEN DO ~SetGlobal("C#Brandock_Dialog","GLOBAL",105)
RealSetGlobalTimer("C#BrandockDialogTimer","GLOBAL",1200)~ EXIT
END



/* 3rd Friendship dialogue - What is happening? */

IF ~Global("C#Brandock_Dialog","GLOBAL",106)~ THEN sod_story1
SAY ~I am scared about what is going on. Didn't we just *end* a threat of war? Look at this, <CHARNAME>... People are in more trouble now than before. And assassins - coming after you, again. Or should I say: still? How did this happen? Did I miss something? It all went so fast. I wanted to travel some more, now that the bandit threats are ended and the roads are save again. Ha. Ha. Ha. Oh, I so wish I could laugh about this.~ [c#ablank]
++ ~I wish I could laugh, too. But it's really happening.~ + sod_story1_03
++ ~No one expected the crusade coming this far south. Everyone was surprised we see it here at all.~ + sod_story1_03
++ ~It went very quick, yes.~ + sod_story1_03
++ ~Maybe it's *because* the Sword Coast just faced times of chaos.~ + sod_story1_05
+ ~OR(2)
	GlobalGT("bd_skie_entar_caelar","global",0)
	Global("C#RtD_CoalCaelarBhaalChild","GLOBAL",1)
Global("bd_mdd018","global",0) 
GlobalLT("C#RtD_CoalCaelarBhaalChild","GLOBAL",2)~ + ~I wonder whether this rumor about Caelar being a child of Bhaal is true or not.~ + sod_story1_01
++ ~Well, no use talking about it. It's here and we have to deal with it.~ + sod_story1_04
END

IF ~~ THEN sod_story1_01
SAY ~Caelar would be a child of Bhaal? Yes, that would make sense... more than I am happy to admit, if thinking of Sarevok.~
IF ~~ THEN + sod_story1_02
END

IF ~~ THEN sod_story1_02
SAY ~And what did Sarevok and the Iron Throne do to get this far. Poisoned the ore, enslaved miners, woven a net of conspiracy across the land, replaced influencial persons by doppelgangers. He didn't even stop at infiltrating Candlekeep!~
= ~Now look at the city! All because a war lord raised an army and just started marching. I wonder whether he'd be envious. Sarevok, I mean.~
IF ~~ THEN DO ~SetGlobal("C#Brandock_Dialog","GLOBAL",107)~ EXIT
END

IF ~~ THEN sod_story1_03
SAY ~That is true, indeed. This Caelar is about to spread chaos to the Sword Coast, indeed...~
++ ~Maybe it's *because* the Sword Coast just faced times of chaos.~ + sod_story1_05
+ ~OR(2)
	GlobalGT("bd_skie_entar_caelar","global",0)
	Global("C#RtD_CoalCaelarBhaalChild","GLOBAL",1)
Global("bd_mdd018","global",0) 
GlobalLT("C#RtD_CoalCaelarBhaalChild","GLOBAL",2)~ + ~I wonder whether this rumor about Caelar being a child of Bhaal is true or not.~ + sod_story1_01
++ ~We have to deal with it best we can, I guess.~ + sod_story1_02
++ ~Well, no use talking about it. It's here and we have to deal with it.~ + sod_story1_04
END

IF ~~ THEN sod_story1_04
SAY ~You are right about the latter. But in my opinion, for some topics there is never such a thing as too much talking. But I respect that you prefer not to hear it from me, and not now.~
IF ~~ THEN DO ~SetGlobal("C#Brandock_Dialog","GLOBAL",107)~ EXIT
END

IF ~~ THEN sod_story1_05
SAY ~Oh, that's a very interesting thought, indeed!~
+ ~OR(2)
	GlobalGT("bd_skie_entar_caelar","global",0)
	Global("C#RtD_CoalCaelarBhaalChild","GLOBAL",1)
Global("bd_mdd018","global",0) 
GlobalLT("C#RtD_CoalCaelarBhaalChild","GLOBAL",2)~ + ~I wonder whether this rumor about Caelar being a child of Bhaal is true or not.~ + sod_story1_01
++ ~We have to deal with it best we can, I guess.~ + sod_story1_02
++ ~Well, no use talking about it. It's here and we have to deal with it.~ + sod_story1_04
END


/* 5th FP:  after first meeting of Caelar - Why a crusade? */

IF ~Global("C#Brandock_Dialog","GLOBAL",108)
GlobalLT("bd_plot","GLOBAL",391)
GlobalLT("C#RtD_CaelarPlan","GLOBAL",3)~ THEN why_crusade
SAY ~I don't get it, <CHARNAME>... Why a crusade?~ [c#ablank]
++ ~What?~ + why_crusade_02
++ ~You are wondering why Caelar is marching with a crusade to get to her goal?~ + why_crusade_01
++ ~I don't want to talk about it, Brandock.~ + why_crusade_07
END

IF ~Global("C#Brandock_Dialog","GLOBAL",108)
OR(2)
GlobalGT("bd_plot","GLOBAL",390)
GlobalGT("C#RtD_CaelarPlan","GLOBAL",2)~ THEN why_crusade_00
SAY ~At the beginning, when we started marching against the crusade, I was asking myself...~
IF ~~ THEN + why_crusade_02
END

IF ~~ THEN why_crusade_01
SAY ~Exactly.~
IF ~~ THEN + why_crusade_02
END

END //APPEND

CHAIN
IF ~~ THEN c#brandj why_crusade_02
~What does Caelar need a crusade for? Why a crusade, why all these angry people, why all the followers - why? What is she marching against? It's not necessary to get into Dragonspear Castle - she could have travelled there in peace, before stomping the lands with thousands of people. So why?~
== c#brandj IF ~OR(2)
GlobalGT("bd_plot","GLOBAL",390)
GlobalGT("C#RtD_CaelarPlan","GLOBAL",2)~ THEN ~Well, that was before I heard that she's planning on *marching into Avernus*, of course.~
END
+ ~GlobalLT("bd_plot","GLOBAL",391)
GlobalLT("C#RtD_CaelarPlan","GLOBAL",3)~ + ~Because many people are power!~ + why_crusade_03
+ ~GlobalLT("bd_plot","GLOBAL",391)
GlobalLT("C#RtD_CaelarPlan","GLOBAL",3)~ + ~I think they just kind of followed her after she told them what she's up to.~ DO ~SetGlobal("C#Brandock_WhyCrusade4","LOCALS",1)~ + why_crusade_04
+ ~GlobalLT("bd_plot","GLOBAL",391)
GlobalLT("C#RtD_CaelarPlan","GLOBAL",3)~ + ~You think it's more than just to stress her point and to force authorities to listen to her?~ DO ~SetGlobal("C#Brandock_WhyCrusade6","LOCALS",1)~ + why_crusade_06
+ ~GlobalLT("bd_plot","GLOBAL",391)
GlobalLT("C#RtD_CaelarPlan","GLOBAL",3)~ + ~Well, she *was* talking about freeing souls from Avernus...~ + why_crusade_05
+ ~GlobalLT("bd_plot","GLOBAL",391)
GlobalLT("C#RtD_CaelarPlan","GLOBAL",3)~ + ~I don't want to talk about it, Brandock.~ + why_crusade_07

+ ~OR(2)
GlobalGT("bd_plot","GLOBAL",390)
GlobalGT("C#RtD_CaelarPlan","GLOBAL",2)~ + ~Yes, now we know why she needs so many people with her.~ + why_crusade_08
+ ~OR(2)
GlobalGT("bd_plot","GLOBAL",390)
GlobalGT("C#RtD_CaelarPlan","GLOBAL",2)~ + ~I don't want to talk about it, Brandock.~ + why_crusade_09

APPEND c#brandj 

IF ~~ THEN why_crusade_03
SAY ~Definitely. But what are they for?~
++ ~I think they just kind of followed her after she told them what she's up to.~ DO ~SetGlobal("C#Brandock_WhyCrusade4","LOCALS",1)~ + why_crusade_04
++ ~You think it's more than just to stress her point and to force authorities to listen to her?~ DO ~SetGlobal("C#Brandock_WhyCrusade6","LOCALS",1)~ + why_crusade_06
++ ~Well, she *was* talking about freeing souls from Avernus...~ + why_crusade_05
++ ~I don't want to talk about it, Brandock.~ + why_crusade_07
END

IF ~~ THEN why_crusade_04
SAY ~I don't know... I had the impression she set out to gather all these people around her. No, it was definitely her aim to collect all the disappointed and hurting.~
+ ~Global("C#Brandock_WhyCrusade6","LOCALS",0)~ + ~You think it's more than just to stress her point and to force authorities to listen to her?~ DO ~SetGlobal("C#Brandock_WhyCrusade6","LOCALS",1)~ + why_crusade_06
++ ~Well, she *was* talking about freeing souls from Avernus...~ + why_crusade_05
++ ~I don't want to talk about it, Brandock.~ + why_crusade_07
END

IF ~~ THEN why_crusade_05
SAY ~Do you... do you think she is leading them into Avernus? But she said she found a way to free the souls... She wasn't only referring to marching there and fighting them free, no? Surely she found another way, godchild and all?~
IF ~~ THEN + why_crusade_07
END

IF ~~ THEN why_crusade_06
SAY ~She definitely has the authorities' attention with a thousand people in her follow...~
+ ~Global("C#Brandock_WhyCrusade4","LOCALS",1)~ + ~I think they just kind of followed her after she told them what she's up to.~ DO ~SetGlobal("C#Brandock_WhyCrusade4","LOCALS",1)~ + why_crusade_04
++ ~Well, she *was* talking about freeing souls from Avernus...~ + why_crusade_05
++ ~I don't want to talk about it, Brandock.~ + why_crusade_07
END

IF ~~ THEN why_crusade_07
SAY ~Well, I am sure we'll learn her motives eventually... Something tells me I won't feel happy about it.~
IF ~~ THEN DO ~IncrementGlobal("C#Brandock_Dialog","GLOBAL",1)~ EXIT
END

IF ~~ THEN why_crusade_08
SAY ~Yes, we do. (sigh)~
IF ~~ THEN + why_crusade_09
END

IF ~~ THEN why_crusade_09
SAY ~If I'm honest, I don't want to talk about this. I don't want to have to *think* about it. I just hope we'll stop her in time!~
IF ~~ THEN DO ~IncrementGlobal("C#Brandock_Dialog","GLOBAL",1)~ EXIT
END



END //APPEND
