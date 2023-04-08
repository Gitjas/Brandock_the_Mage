/* Brandock crossmod bg1re */

/* Dinner with Thalantyr */

/* @78   = ~Then it is settled. Come to me tomorrow. But bear with me - I have not been in sophisticated company for a long time.~ */
I_C_T ~Thalan~ %Thalan_78% C#Brando_Thalan_78
== C#BrandJ IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2)
See("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN @20 /* ~What? Did you just agree to a dinner with <CHARNAME>? Did he just agree to a dinner with you? What... what did you do to this grumpy... er, wise, very wise mage?...~ */
END


/* @340  = ~Well then... Follow me. (May the gods help me.)~ */
I_C_T ~Thalan~ %Thalan_340% C#Brando_Thalan_340
== C#BrandJ IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2)
See("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN @21 /* ~Did I mention before that I am jealous? Well, now I am even more. Yes, just go and spend the *second* evening in private conversation with the most powerful mage in these parts of the Sword Coast and - enjoy yourself, <CHARNAME>, alright?~ */
END

/* Reaktion, enn man das Buch findet, das Thalantyr haben wollte PartyHasItem("C#LCTHBO") */

CHAIN
IF WEIGHT #-1
~Global("C#Br_LorePathC#LCTHBO","GLOBAL",1)~ THEN C#BrandJ has_thalantyrs_book
@39 /* ~"Thee Oldde Magyck: Volume II" surely looks like a very interesting book. It's a pity I'd have to study the language it is written in first, though.~ */
DO ~SetGlobal("C#Br_LorePathC#LCTHBO","GLOBAL",2)~
== C#BrandJ IF ~Global("C#LC_ThalantyrAsked","GLOBAL",2)
GlobalLT("C#BE_bg1re_C#LCTHBO","GLOBAL",2)~ THEN @40 /* ~This is the book Master Thalantyr was looking after, is it not?~ */ DO ~SetGlobal("C#BE_bg1re_C#LCTHBO","GLOBAL",2)~
EXIT


/* Reaktion zu Thalantyrs Bücherei - in case SotSC isn't active (Brandock wasn't in Thalantyr's PQ himself */
CHAIN
IF WEIGHT #-1 
~%BG1_BEFORE_TRANSITION%
CombatCounter(0) !See([ENEMY]) 
OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2)
See(Player1)
!StateCheck(Player1,CD_STATE_NOTVALID)
!StateCheck(Myself,CD_STATE_NOTVALID)
Global("C#Brando_Thalan_bg1re","LOCALS",0)
OR(2)
	Global("C#Brando_Thalan_78","GLOBAL",1)
	Global("C#Brando_Thalan_340","GLOBAL",1)
!AreaCheck("l#hig1")
!AreaCheck("%HighHedge_ThalanthyrsAbode%")~ THEN C#BrandB thalantyr_bg1re
@22 /* ~You were in Thalantyr's private quarters!~ */
DO ~SetGlobal("C#Brando_Thalan_bg1re","LOCALS",1)~
== C#BrandB IF ~GlobalGT("C#Brandock_Shapeshift","GLOBAL",10) Global("C#Brando_WasInThalanRoom","GLOBAL",0)~ THEN @23 /* ~As was I of course... I even went through some of his books with my half-ogre hands, as embarrassing as it is.~ */
== C#BrandB  IF ~GlobalGT("C#Brando_WasInThalanRoom","GLOBAL",0)~ THEN @24 /* ~As was I, of course - but you got to spend private time with him!~ */
== C#BrandB @25 /* ~Oh, it must have been *so* exciting! Please tell me!~ */
END
++ @26 /* ~(cheeky) It was quite stimulating, yes.~ */ + thalantyr_bg1re_02
++ @27 /* ~Excuse me? What are you implying?~ */ + thalantyr_bg1re_01
++ @28 /* ~It wasn't what you are thinking.~ */ + thalantyr_bg1re_01
++ @29 /* ~Brandock - that's usually not what you ask if someone had a private evening with someone else.~ */ + thalantyr_bg1re_03
++ @30 /* ~None of your business I would say.~ */ + thalantyr_bg1re_05

APPEND C#BrandB 

IF ~~ THEN thalantyr_bg1re_01
SAY @31 /* ~Oh, you mean you didn't have a highly intellectual conversation with him and couldn't study some of his rarer books? That's disappointing.~ */
++ @32 /* ~No, we actually had a very fine dinner only. But we talked a bit.~ */ + thalantyr_bg1re_04
++ @33 /* ~Brandock, your innocence is boundless. Didn't you even notice the innuendo in your previous question?~ */ + thalantyr_bg1re_03
++ @34 /* ~I do think the details are none of your business.~ */ + thalantyr_bg1re_05
END

IF ~~ THEN thalantyr_bg1re_02
SAY @35 /* ~Oh, you mean you had a highly intellectual conversation with him and could study some of his rarer books? That's exciting! ...I am jealous.~ */
++ @32 /* ~No, we actually had a very fine dinner only. But we talked a bit.~ */ + thalantyr_bg1re_04
++ @33 /* ~Brandock, your innocence is boundless. Didn't you even notice the innuendo in your previous question?~ */ + thalantyr_bg1re_03
++ @34 /* ~I do think the details are none of your business.~ */ + thalantyr_bg1re_05
END

IF ~~ THEN thalantyr_bg1re_03
SAY @36 /* ~Oh. OH! I am sorry, <CHARNAME>! I didn't mean to imply... the gods, now I feel embarassed. I *was* talking about having a long conversation with a well-versed mage like Thalantyr. Nothing else. Uhm...~ */
IF ~~ THEN + thalantyr_bg1re_04
END

IF ~~ THEN thalantyr_bg1re_04
SAY @37 /* ~I am a bit scared, <CHARNAME>. If you can charm this old "grumpyhead" - then you are really poweful. I am kidding of course... and yet - he surrounded himself with flesh golems. People who do that usually aren't the most social type.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN thalantyr_bg1re_05
SAY @38 /* ~Of course not. You are right. I'm just jealous of you getting some of his private time... he *is* the most powerful mage around after all.~ */
IF ~~ THEN EXIT
END

END //APPEND
