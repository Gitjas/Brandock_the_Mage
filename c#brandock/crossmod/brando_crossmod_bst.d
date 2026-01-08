/* lore path: bst Master Shizell's library */
CHAIN
IF ~Global("C#BrCross_bst_LorePath","GLOBAL",1)~ THEN c#brandj lorepath_bst
@0 /* ~Oh, what a magnificent library... Small, but I see some very interesting names on the covers.~ */
== bstrmage @1 /* ~Ah, I know a like-minded soul when I see one. Feel free to have a look at the books, as long as they'll stay as they were.~ */
== c#brandj @2 /* ~Of course! I'd never damage or steal a book. Not on purpose, anyway... <CHARNAME>?~ */
END
++ @3 /* ~Sure, go ahead.~ */ + lorepath_bst_02
++ @4 /* ~No, Brandock, let's move on.~ */ + lorepath_bst_01

APPEND c#brandj
IF ~~ THEN lorepath_bst_01
SAY @5 /* ~Ah, well.~ */
IF ~~ THEN DO ~SetGlobal("C#BrCross_bst_LorePath","GLOBAL",2)~ EXIT
END

IF ~~ THEN lorepath_bst_02
SAY @6 /* ~Thanks!~ */
IF ~~ THEN DO ~ReallyForceSpellRES("c#brlob2",Myself) IncrementGlobal("C#Br_LorePathIncrease","GLOBAL",1)
SetGlobal("C#BrCross_bst_LorePath","GLOBAL",2) ClearAllActions() StartCutSceneMode() StartCutScene("c#brftb")~ EXIT
END
END //APPEND

/* found Martina's body */
I_C_T ~BSLENARD~ 10 C#Brandock_BSLENARD_10
== ~c#brandj~ IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN @7 /* ~We are so sorry for your loss! Ah, I really wished this would have gone differently...~ */
END

/*
/* Klaus and his rabbits */
I_C_T ~BSGHAST2~ 20 C#Brando_AskedRabbits_bst_CM
== ~c#brandj~ IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN @8 /* ~Oh no, that is horrible! I wish you to get well soon, Klaus. And <CHARNAME> - thank you for asking this question. I was curious as well.~ */
== ~c#brandj~ IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN @12 /* ~I didn't even know Vampiric Rabbits existed, not to mention conjuring them was possible...~ */
== ~BSTQ004~ IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN @11 /* ~Not so difficult... just focus on the fur - and the teeth.~ */
== ~c#brandj~ IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN @13 /* ~Erm... Thanks. I'll keep that in mind!~ */
END 

I_C_T ~BSTQ004~ 11 C#Brando_AskedRabbits_bst_CM
== ~c#brandj~ IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN @9 /* ~Klaus - just one question. Why Vampiric rabbits?~ */
== ~BSTQ004~ IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN @10 /* ~Didn't mean to call them specifically... but my aim was too weak for anything stronger.~ */
== ~c#brandj~ IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN @12 /* ~I didn't even know Vampiric Rabbits existed, not to mention conjuring them was possible...~ */
== ~BSTQ004~ IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN @11 /* ~Not so difficult... just focus on the fur - and the teeth.~ */
== ~c#brandj~ IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN @13 /* ~Erm... Thanks. I'll keep that in mind!~ */
END
*/

/* Seatower Mage's "Mimic Powder" */
/* ~Yes, please take this. This is a bottle of my Mimic Powder. Er, it's actually a liquid now because I mixed it into the - never mind. Just walk it past a doppelganger and they will be driven to rage by the smell. Be prepared to fight them.~ */
I_C_T ~BSTRMAGE~ %BSTRMAGE_ICT1% C#Brando_BSTRMAGE_MimicPowder
== ~c#brandj~ IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN @14 /* ~Wow, you developped this yourself? That's impressive!... Your naming scheme is as intelligent as I'd imagined mine to be, though...~ */
== ~BSTRMAGE~ IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN @15 /* ~Yes, I know, I didn't have time to think about a proper name yet... but I do admit that I also think that's not important, as long as it works!~ */
END
/* ~I mean it was originally *meant* as a mimic powder, which we had need of to deal with another situation some time ago. Due to the obvious situation on our hands, in order to save time I've used the same base in the creation of an alchemical solution to unmask the doppelgangers currently plaguing us. And it works! The doppelganger you saw here became so irritated by my mimic powder it was driven to change into its natural form and attack.~ */
I_C_T ~BSTRMAGE~ %BSTRMAGE_ICT2% C#Brando_BSTRMAGE_MimicPowder //same as above!
== ~c#brandj~ IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN @14 /* ~Wow, you developped this yourself? That's impressive!... Your naming scheme is as intelligent as I'd imagined mine to be, though...~ */
== ~BSTRMAGE~ IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN @15 /* ~Yes, I know, I didn't have time to think about a proper name yet... but I do admit that I also think that's not important, as long as it works!~ */
END
