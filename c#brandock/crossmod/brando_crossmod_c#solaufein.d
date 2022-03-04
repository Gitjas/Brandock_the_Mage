/* Solaufein crossmod  */

/* @1119 = ~Let's hope <PRO_HESHE>'ll finish <PRO_HISHER> destiny-shaping before I start turning into the slayer or some giant werechicken.~ */
I_C_T ~BIMOEN25~ %BIMOEN25_1119% C#Brando_BIMOEN25_1119
== C#BrandJ IF ~GlobalGT("C#Brandock_Shapeshift","GLOBAL",10)
OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2)
See("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN @0 /* ~Imoen, you *had* to chose that example, yes?~ */
END

/* banter 1 */

CHAIN
IF WEIGHT #-1
~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2)
CombatCounter(0)
!See([ENEMY])
!StateCheck("C#Brandock",CD_STATE_NOTVALID)
Global("C#Brandock_SolaufeinRescueBanter","GLOBAL",0)
OR(2) InParty("C#Solaufein") Global("C#SolauJoined","GLOBAL",2)
InMyArea("C#Solaufein") !StateCheck("C#Solaufein",CD_STATE_NOTVALID)
%IT_IS_BGII%~ THEN C#BrandB solaufeinrescue_banter
@1 /* ~[Brandock]Solaufein, you lost your ability to wield magic like you used to.~ */
DO ~SetGlobal("C#Brandock_SolaufeinRescueBanter","GLOBAL",1)~
== C#SOLAUB @2 /* ~[Solaufein]Yes, mage. I did.~ */
== C#BrandB @3 /* ~[Brandock]I... I didn't mean to poke the wound - but I obviously did. I'm sorry.~ */
== C#SOLAUB @4 /* ~[Solaufein]That, or you stated the obvious. I am not sure why humans would do that, unless they are the kind that needs to phrase everything aloud to actually understand it.~ */
== C#BrandB @5 /* ~[Brandock]Oh, stating the obvious as well as needing to *talk* about things to understand them sounds like me alright. I should stop wasting your time.~ */
EXIT

/* banter 2 */
CHAIN
IF 
~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2)
CombatCounter(0)
!See([ENEMY])
!StateCheck("C#Brandock",CD_STATE_NOTVALID)
Global("C#Brandock_SolaufeinRescueBanter","GLOBAL",1)
OR(2) InParty("C#Solaufein") Global("C#SolauJoined","GLOBAL",2)
InMyArea("C#Solaufein") !StateCheck("C#Solaufein",CD_STATE_NOTVALID)
%IT_IS_BGII%~ THEN C#BrandB solaufeinrescue_banter_02
@6 /* ~[Brandock]Solaufein, when speaking recently I was trying to start a personal conversation with you, actually. I'm - I'm still insecure how to approach you, to be honest.~ */
DO ~SetGlobal("C#Brandock_SolaufeinRescueBanter","GLOBAL",2)~
== C#SOLAUB @7 /* ~[Solaufein]And for warming up to me, the drow, you chose to point out one of my most aggravating weaknesses here on the surface?~ */
== C#BrandB @8 /* ~[Brandock]Uhm, when you put it that way I agree that it wasn't the best starting line. I'm sorry.~ */
== C#SOLAUB @9 /* ~[Solaufein]Now you apologized twice for starting a conversation - about a topic that in the end - as much as it unsettles me - is a mere fact.~ */
== C#BrandB @10 /* ~[Brandock]Yeah, that sounds like me alright. I'm s... er, never mind.~ */
EXIT

/* Banter 3 */
CHAIN
IF 
~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2)
CombatCounter(0)
!See([ENEMY])
!StateCheck("C#Brandock",CD_STATE_NOTVALID)
Global("C#Brandock_SolaufeinRescueBanter","GLOBAL",2)
OR(2) InParty("C#Solaufein") Global("C#SolauJoined","GLOBAL",2)
InMyArea("C#Solaufein") !StateCheck("C#Solaufein",CD_STATE_NOTVALID)
%IT_IS_BGII%~ THEN C#BrandB solaufeinrescue_banter_03
@11 /* ~[Brandock]Solaufein, I wasn't very sensitive about it last time - *two* last times, actually... It's just that imagining to lose one's used way of wielding magic is a thought that is scaring me, and very much so. I, er, I meant to show my sympathy. I do see that sometimes it can be seen as poking the wound, though.~ */
DO ~SetGlobal("C#Brandock_SolaufeinRescueBanter","GLOBAL",3)~
== C#BrandB @12 /* ~[Brandock]Losing one's magic is one of the worst things I could think of. I had one or two situations in my life where I couldn't use my magic the way I know it and am used to and it was absolutely *horrible*. I can't imagine what you must go though.~ */
== C#SOLAUB @13 /* ~[Solaufein]Well, I am sure my lamentations about the loss of my magic might help others with imagining it.~ */
== C#BrandB @14 /* ~[Brandock]It does indeed! I feel with you every time you mention it and - oh, that was sarcasm. I'm usualy quite good in detecting sarcasm but with you, my sensor seems to be broken... Which just *might* be related to me still being surprisingly afraid of you...~ */
== C#SOLAUB @15 /* ~[Solaufein]Being afraid of a drow is always a smart sentiment. I can only assure you that I do not mean you or anyone in this group any harm.~ */
== C#BrandB @16 /* ~[Brandock]I know. I'd be running away screaming if I wouldn't.~ */
EXIT

/* 

/* Banter 4 */
CHAIN
IF WEIGHT #-1
~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2)
CombatCounter(0)
!See([ENEMY])
!StateCheck("C#Brandock",CD_STATE_NOTVALID)
Global("C#Brandock_SolaufeinRescueBanter","GLOBAL",3)
OR(2) InParty("C#Solaufein") Global("C#SolauJoined","GLOBAL",2)
InMyArea("C#Solaufein") !StateCheck("C#Solaufein",CD_STATE_NOTVALID)
%IT_IS_BGII%~ THEN C#SOLAUB solaufeinrescue_banter_04
~[Solaufein]##~
DO ~SetGlobal("C#Brandock_SolaufeinRescueBanter","GLOBAL",4)~

*/



