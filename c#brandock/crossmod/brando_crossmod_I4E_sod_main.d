/* In case Brandock was not in party when HC said good bye to Imoen in Palace, good bye dialogue becomes two inparty banter 
Global("C#Brandock_ImoenSoD_Palace","GLOBAL",0): interjection did not run */

CHAIN
IF WEIGHT #-1 
~%IT_IS_SOD%
CombatCounter(0) !See([ENEMY]) 
OR(2) InParty(Myself) Global("C#BrandockJoined","GLOBAL",2)
InParty("%IMOEN_DV%")  // Corwin
See("%IMOEN_DV%") See(Player1)
!StateCheck(Myself,CD_STATE_NOTVALID)
!StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)
Global("C#Brandock_ImoenSoD","GLOBAL",0)~ THEN C#BrandB brandockimoenSoD_1
@0 /* ~Imoen, I am happy that you are back with us now.~ */
DO ~SetGlobal("C#Brandock_ImoenSoD","GLOBAL",1)~
== C#BrandB IF ~Global("C#Brandock_ImoenSoD_Palace","GLOBAL",0)~ THEN @2 /* ~I can't tell you how glad I am to see you alive and well.~ */
== C#BrandB IF ~GlobalGT("C#Brandock_ImoenSoD_Palace","GLOBAL",0)~ THEN @1 /* ~I'm really glad to see you alive and well.~ */
== BDIMOENB @3 /* ~[Imoen] Oh, me too! Being poisoned was scary. Having trembling hands was scary! Letting <CHARNAME> go without me was very scary! I'm glad I'm back.~ */
EXIT

CHAIN
IF WEIGHT #-1 
~%IT_IS_SOD%
CombatCounter(0) !See([ENEMY]) 
OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2)
InParty("%IMOEN_DV%")  // Corwin
See("C#Brandock") See(Player1)
!StateCheck("C#Brandock",CD_STATE_NOTVALID)
!StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)
Global("C#Brandock_ImoenSoD","GLOBAL",1)~ THEN BDIMOENB brandockimoenSoD_2
@100285 
DO ~SetGlobal("C#Brandock_ImoenSoD","GLOBAL",2)~
== c#brandj @100286
== BDIMOENB @100287 
== c#brandj @4 /* ~You mean the one you left to follow <CHARNAME> into adventure? That well-known magic teacher?... NonoNONO! Keep your hands away. You know I'm ticklish as hell.~ */
== BDIMOENB @5 /* ~Still she chose me!~ */
== c#brandj @6 /* ~I know, Imoen. And she had all reason to. I never doubted your talent. Alright - *maybe* I doubted your talent, but never your ambition, which is a big part of the cake.~ */
== c#brandj @7 /* ~I... don't think I was jealous.~ */
== BDIMOENB @100288
== c#brandj @100289
== BDIMOENB @100290
EXIT

CHAIN
IF WEIGHT #-1 
~%IT_IS_SOD%
CombatCounter(0) !See([ENEMY]) 
OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2)
InParty("%IMOEN_DV%")  // Corwin
See("C#Brandock") See(Player1)
!StateCheck("C#Brandock",CD_STATE_NOTVALID)
!StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)
Global("C#Brandock_ImoenSoD","GLOBAL",3)~ THEN BDIMOENB brandockimoenSoD_3
@8 /* ~Brandoooock, you want to get better with magic, yes?~ */
DO ~SetGlobal("C#Brandock_ImoenSoD","GLOBAL",9)~
== c#brandj @9 /* ~I have a very strong feeling that answering "yes" to this question is something I will regret. Yes, Imoen, that is what I am striving at.~ */
== BDIMOENB @10 /* ~And is there a better way to learn something then by teaching it to someone?~ */
== c#brandj @11 /* ~Do you want me to teach you, Imoen?~ */
== c#brandj IF ~GlobalGT("C#Brandock_ImoenBG1NPC","GLOBAL",3)~ THEN @12 /* ~I know we talked about this before and I always said I would have an eye on your magical attempts.~ */
== c#brandj @13 /* ~I will teach you as much as I can, Imoen.~ */
== BDIMOENB @14 /* ~Wooo!~ */
== c#brandj @15 /* ~W... that's my spellbook! Give it BACK!~ */
EXIT

CHAIN
IF WEIGHT #-1 
~%IT_IS_SOD%
CombatCounter(0) !See([ENEMY]) 
OR(2) InParty(Myself) Global("C#BrandockJoined","GLOBAL",2)
InParty("%IMOEN_DV%")  // Corwin
See("%IMOEN_DV%") See(Player1)
!StateCheck(Myself,CD_STATE_NOTVALID)
!StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)
Global("C#Brandock_ImoenSoD","GLOBAL",3)~ THEN C#BrandB brandockimoenSoD_4
@16 /* ~Imoen, of course I can teach you what little I know about magic, but... you ditched one of the greatest mages of Baldur's Gate only recently - being teached by me will be a very poor substitute.~ */
DO ~SetGlobal("C#Brandock_ImoenSoD","GLOBAL",4)~
== BDIMOENB @17 /* ~But you are better suited than Liia, Brandock. Much, much, *much* better suited to teach me!~ */
== C#BrandB @18 /* ~Oh, that's very flattering to hear you say this, Imoen. Is it... my lore skill? My ability to memorize spell recipes, or... I see the jest in your eyes. So I guess it's just my overly amiable nature, hmm?~ */
== BDIMOENB @19 /* ~You are around <CHARNAME>!~ */
== C#BrandB @20 /* ~That - that is my great advantage as a teacher? Hahaha, that's hilarious! Yes, that is true. I am much better at staying close to <CHARNAME> than Duke Jannath!~ */
== C#BrandB IF ~!Class("%IMOEN_DV%",MAGE_ALL)~ THEN @21 /* ~But, Imoen, what you need to do - and soon - is to decide for real to start learning magic. Once you took the step to becoming a mage, I'll be ready to teach you whatever I can.~ */
EXIT