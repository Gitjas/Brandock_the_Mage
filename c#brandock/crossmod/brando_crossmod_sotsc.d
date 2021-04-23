/* Shades otSC */

APPEND c#brandj

/* reactions to items */
/* l#ICERE.itm ~Tome of Lore~
  SAY DESC ~This powerful tome holds all kinds of information on magical items, important places and researches conducted by well-respected scholars. */
IF WEIGHT #-1
~Global("C#Brando_sotsc_l#ICERE","GLOBAL",1)~ THEN tome_of_lore
SAY @21 /* ~[Brandock] Ooh... This is a mighty tome. A very mighty tome. I'd be honored if I could use it, <CHARNAME>. If not - then take it away from me quickly or I'll absorb it anyhow...~ */
IF ~~ THEN DO ~SetGlobal("C#Brando_sotsc_l#ICERE","GLOBAL",2)~ EXIT
END

/* l#HIGKE.itm~ ~Thalantyr's Ward Stone~
~This ward stone must belong to Thalantyr. He must have lost it. Perhaps it may be used to open a door to his secret chamber? Should I check it out or return it to the mage?
*/
IF WEIGHT #-1
~Global("C#Brando_sotsc_l#HIGKE","GLOBAL",1)~ THEN thalantyr_wardstone
SAY @22 /* ~[Brandock] Oh the GODS - if that is indeed a wardstone to Thalantyr's very private chambers then the *only* right thing we can do with it is to... use it to go there and have a peek at his magic books... I did say that out loud, didn't I...~ */
IF ~~ THEN DO ~SetGlobal("C#Brando_sotsc_l#HIGKE","GLOBAL",2)~ EXIT
END
END //APPEND

/* l#HIGBO.itm~ ~Book of Swirling Stones~
  SAY DESC ~This book is a magic item that allows you to trigger a special magic that will lift stones surrounding you into the air and throw them at your targets. */
CHAIN
IF WEIGHT #-1
~Global("C#Brando_sotsc_l#HIGBO","GLOBAL",1)~ THEN c#brandj book_swirling_stones
@0 /* ~Oh, that's a powerful book. It enables everyone to cast a spell who is bright enough to grasp the concept.~ */
== c#brandj IF ~GlobalGT("C#Brandock_Possessions","GLOBAL",1)~ THEN @1 /* ~It's even mightier than the Simplex Magicae because anyone could use it.~ */
== c#brandj @2 /* ~This is stronger magic than what I ever saw before! Wow. I need to study this...~ */
END
IF ~~ THEN DO ~ReallyForceSpellRES("c#brlob1",Myself) IncrementGlobal("C#Br_LorePathIncrease","GLOBAL",1) SetGlobal("C#Brando_sotsc_l#HIGBO","GLOBAL",2)~ EXIT


/* Thalantyr's private room: that shelf! */

/* Brandock blurts out as soon as he enters Thalantyr's private room */
CHAIN
IF WEIGHT #-1
~Global("C#Brando_WasInThalanRoom","GLOBAL",1)~ THEN c#brandj thalantyr_sotsc
@3 /* ~Ooh! Look at that big bookshelf!~ */
DO ~SetGlobal("C#Brando_WasInThalanRoom","GLOBAL",2)~
== c#brandj IF ~GlobalGT("C#Brandock_Shapeshift","GLOBAL",10)~ THEN @4 /* ~It's even bigger now that I see it with my body in the right proportions...~ */
== c#brandj @5 /* ~Can we go over there so I can have a look at the covers? Please come with me, <CHARNAME>... I don't dare to do that alone in case Master Thalantyr notices us... Yes, I'm a coward.~ */
EXIT

/* interjections into the shelf's dialogue */
/* ==L#HIGBO ~Well, it's me, my lord. I'm this bookshelf. It's nice to meet you, but I'd rather you don't touch me without permission.~ */
I_C_T ~L#HIGBO~ 1 C#Brando_L#HIGBO_1
== C#BrandJ IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2)
See("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN @8 /* ~[Brandock] Bookshelf? OH MY GOD were you transformed into a shelf? Are you a person?!~ */
== L#HIGBO @9 /* ~What? Why would I be a person? Look at me closely - do I look like a peson to you? Who is asking this?~ */
END

/* ==L#HIGBO ~Remember, tome XIII.~ */
I_C_T L#HIGBO 11 C#Brando_L#HIGBO_11
== C#BrandJ IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2)
See("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN @10 /* ~[Brandock] I think we could do that... yes, <CHARNAME>? I'm talking to a book shelf... Enchanted book shelf, of course, but... well, I guess it *is* fitting for a mage of Master Thalantyr's status.~ */
== C#BrandJ IF ~GlobalGT("C#Brandock_Shapeshift","GLOBAL",10)
OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2)
See("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN @11 /* ~[Brandock] Gods, am I glad I didn't touch *that* shelf when going through Thalantyr's books as a half-ogre. Hearing it talk with my reduced brain capacity would have probably killed me.~ */
END

/* after shelf gave its quest, Brandock asks for permission to study books */
CHAIN
IF WEIGHT #-1
~Global("C#Brando_WasInThalanRoom","GLOBAL",3)~ THEN C#BrandJ talk_to_shelf
@12 /* ~Erm, mister... misses... er, bookshelf? Would you mind if I have a look at some of your tomes, like... this one for example? I will treat them with utmost respect and put them back exactly where they were, I swear.~ */
== L#HIGBO @13 /* ~Well, I can't prevent it, now can I? Hmm... your hands are all soft. Very soft hands. Very good. Well, go ahead - but make sure you won't besmudge any pages. *I* can't do much but I will tell Thalantyr there were visitors if you do!~ */
== C#BrandJ @14 /* ~Of course! <CHARNAME>, I think I just fell in love. I'll need such a bookshelf myself... one day... Ahem.~ */
= @15 /* ~Do we have time? Are we bold enough to risk it?...~ */
END
++ @16 /* ~Yes, we will risk it. I know what it means to you.~ */ DO ~ActionOverride("L#HIGBO",DestroySelf())~ + talk_to_shelf_01
++ @17 /* ~Ah, what the hell. Go ahead. As you said, we are probably dead already anyway.~ */ + talk_to_shelf_01
++ @18 /* ~No, of course not! Talking to that shelf was dangerous enough. We'll make our way out of here as soon as possible before the landlord finds us here.~ */ + talk_to_shelf_02

APPEND c#brandj

IF ~~ THEN talk_to_shelf_01
SAY @19 /* ~Ooh... (For some time Brandock is lost in reading through some of the bigger tomes in Thalantyr's library.)~ */
IF ~~ THEN DO ~ReallyForceSpellRES("c#brlob2",Myself) 
IncrementGlobal("C#Br_LorePathIncrease","GLOBAL",1) 
ActionOverride("L#HIGBO",DestroySelf())
SetGlobal("C#Brando_WasInThalanRoom","GLOBAL",4) ClearAllActions() StartCutSceneMode() StartCutScene("c#brftb")~ EXIT
END

IF ~~ THEN talk_to_shelf_02
SAY @20 /* ~(sigh) Yes, I know what you mean and I guess it's the wiser choice, considering who is the landlord here.~ */
IF ~~ THEN DO ~ActionOverride("L#HIGBO",DestroySelf())
SetGlobal("C#Brando_WasInThalanRoom","GLOBAL",4)~ EXIT
END

END //APPEND






