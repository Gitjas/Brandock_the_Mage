/* Brandock crossmod bg1re */

/* necromancer */

/* Lore increse */
APPEND C#BrandJ 
IF WEIGHT #-1
~Global("C#BrCross_bg1reNecro_LorePath","GLOBAL",1)~ THEN narcillicus_spellbook
SAY @11 /* ~Oh, what a sad, sad ending. His spell book is full of necromancer stuff - well, that's not a surprise, I guess. (sigh)~ */
IF ~~ THEN DO ~ReallyForceSpellRES("c#brlob1",Myself) IncrementGlobal("C#Br_LorePathIncrease","GLOBAL",1) SetGlobal("C#BrCross_bg1reNecro_LorePath","GLOBAL",2)~ EXIT
END
END //APPEND

/*
@78   = ~Beth and I fell in love, she caught an incurable disease. I promised her to heal her - she died, since then I have been researching how to raise her... Raise her in good health.~
*/
I_C_T ~C#q11nec~ %C#q11nec_78% C#Brando_C#q11nec_78
== C#BrandJ IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2)
See("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN @0 /* ~I really *really* understand the urge to know, to *understand* things and I definitely can't judge you for why you did it but - did it ever cross your mind that there is something like "too much"?~ */
END

CHAIN
IF WEIGHT #-1 
~%BG1_BEFORE_TRANSITION%
CombatCounter(0) !See([ENEMY]) 
OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2)
See(Player1)
!StateCheck(Player1,CD_STATE_NOTVALID)
!StateCheck(Myself,CD_STATE_NOTVALID)
Global("C#Brando_C#q11nec_78","GLOBAL",1)~ THEN C#BrandB brandocknecromancer
@1 /* ~[Brandock] Seeing the necromancer who tried to resurrect his love. This was the first time it scared me to see someone striving for knowledge, <CHARNAME>. I know there's a "too much" for everything, but...~ */
DO ~SetGlobal("C#Brando_C#q11nec_78","GLOBAL",2)~
== C#BrandB IF ~GlobalGT("C#Brandock_PrismBG1","GLOBAL",1)~ THEN @2 /* ~[Brandock] We already talked about it with regard to poor, driven Prism...~ */
== C#BrandB @3 /* ~Seeing this... this *insane* man amidst of all the corpses, frantically muttering "I need to know, I need to know" - well, alright, that's not how it was, he actually looked all sad and *tired*. But in my head that's what it looked like! It scared me. Which is not a surprise to anyone in particular, I guess.~ */
END
++ @4 /* ~I see what you mean. It's always a thin line between ambition and obsession.~ */ + brandocknecromancer_01 
++ @5 /* ~Being scared by such a sight is nothing to be ashamed of.~ */ + brandocknecromancer_01 
++ @6 /* ~No, it's not a surprise at all that you are scared.~ */ + brandocknecromancer_02
++ @7 /* ~Whatever, Brandock.~ */ + brandocknecromancer_02

APPEND C#BrandB
IF ~~ THEN brandocknecromancer_01 
SAY @8 /* ~[Brandock] That's what I mean exactly!~ */
IF ~~ THEN + brandocknecromancer_03
END

IF ~~ THEN brandocknecromancer_02
SAY @9 /* ~[Brandock] You on the other hand are calm as a frozen lake.~ */
IF ~~ THEN + brandocknecromancer_03
END

IF ~~ THEN brandocknecromancer_03
SAY @10 /* ~[Brandock] I mean - even obsession is fine. It's fine... as long as you don't plaster your home with dead bodies while pursuing it. (shudders).~ */
IF ~~ THEN EXIT
END

END //APPEND