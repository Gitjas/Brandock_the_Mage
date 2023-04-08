

/* Brandock - Imoen 1 */
CHAIN
IF WEIGHT #-1 
~%BG1_BEFORE_TRANSITION%
CombatCounter(0) !See([ENEMY]) 
OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2)
InParty("%IMOEN_DV%")
See("%IMOEN_DV%") See(Player1)
!StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)
!StateCheck(Myself,CD_STATE_NOTVALID)
Global("C#Brandock_ImoenBG1","GLOBAL",0)
Global("C#BR_KnowGorionsDeath","GLOBAL",1)~ THEN C#BrandB brandockimoen1
@0
DO ~SetGlobal("C#Brandock_ImoenBG1","GLOBAL",1)~
== ~%IMOEN_BANTER%~ @1
= @2
== C#BrandB @3
== ~%IMOEN_BANTER%~ @4
EXIT

/* Brandock - Neera 1 */
CHAIN
IF WEIGHT #-1 
~%BG1_BEFORE_TRANSITION%
CombatCounter(0) !See([ENEMY]) 
OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2)
See("Neera") See(Player1)
!StateCheck("Neera",CD_STATE_NOTVALID)
!StateCheck(Myself,CD_STATE_NOTVALID)
InParty("Neera")
Global("C#Brandock_NeeraBG1","GLOBAL",0)~ THEN C#BrandB brandockneera
@5
DO ~SetGlobal("C#Brandock_NeeraBG1","GLOBAL",1)~
== ~%NEERA_BANTER%~ @6
== C#BrandB @7
== C#BrandB @8
EXIT

/* Brandock - Ajantis, after book found 1 */
CHAIN
IF WEIGHT #-1 
~%BG1_BEFORE_TRANSITION%
CombatCounter(0) !See([ENEMY]) 
OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2)
See("C#Brandock") See(Player1)
!StateCheck("C#Brandock",CD_STATE_NOTVALID)
!StateCheck(Myself,CD_STATE_NOTVALID)
InParty(Myself)
GlobalGT("C#Brandock_Possessions","GLOBAL",3)
Global("C#Brandock_AjantisBOOKBG1","GLOBAL",0)
~ THEN ~%AJANTIS_BANTER%~ brandockajantis_book
@9 DO ~SetGlobal("C#Brandock_AjantisBOOKBG1","GLOBAL",1)~
== C#BrandJ @10
== ~%AJANTIS_BANTER%~ @11
== C#BrandJ @12
== ~%AJANTIS_BANTER%~ @13
== C#BrandJ @14
== ~%AJANTIS_BANTER%~ @15
== C#BrandJ @16
== C#BrandJ IF ~!HasItem("BOOK87","C#Brandock") !HasItem("BOOK68","C#Brandock")~ THEN @17
== C#BrandJ IF ~OR(2) HasItem("BOOK87","C#Brandock") HasItem("BOOK68","C#Brandock")~ THEN @18
EXIT

/* Brandock - Ajantis, after book found 2 */
CHAIN
IF WEIGHT #-1 
~%BG1_BEFORE_TRANSITION%
CombatCounter(0) !See([ENEMY]) 
OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2)
See("C#Brandock") See(Player1)
!StateCheck("C#Brandock",CD_STATE_NOTVALID)
!StateCheck(Myself,CD_STATE_NOTVALID)
InParty(Myself)
Global("C#Brandock_AjantisBOOKBG1","GLOBAL",1)
~ THEN ~%AJANTIS_BANTER%~ brandockajantis_book_02
@19 DO ~SetGlobal("C#Brandock_AjantisBOOKBG1","GLOBAL",2)~
== C#BrandJ @20
== ~%AJANTIS_BANTER%~ @21
== C#BrandJ @22
== ~%AJANTIS_BANTER%~ @23
EXIT

/* Brandock - Ajantis, after book was restored by Elvenhair */

CHAIN
IF WEIGHT #-1 
~%BG1_BEFORE_TRANSITION%
CombatCounter(0) !See([ENEMY]) 
OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2)
See("C#Brandock") See(Player1)
!StateCheck("C#Brandock",CD_STATE_NOTVALID)
!StateCheck(Myself,CD_STATE_NOTVALID)
InParty(Myself)
GlobalGT("C#Br_BookRestore","GLOBAL",5)
Global("C#Brandock_AjantisBOOKBG1","GLOBAL",2)~ THEN ~%AJANTIS_BANTER%~ brandockajantis_book_03
@534 /* ~[Ajantis]Brandock, the unexpected magic in the destroyed book took me by surprise.~ */ DO ~SetGlobal("C#Brandock_AjantisBOOKBG1","GLOBAL",3)~
== C#BrandJ @535 /* ~[Brandock]Oh yes. Me too!~ */
== ~%AJANTIS_BANTER%~ @536 /* ~[Ajantis]It is fascinating to see that this was - albeit maybe not a *planned* ocurrence, but definitely an *accounted for* instance from Master Bowgentle himself!~ */
== C#BrandJ @537 /* ~[Brandock]You have no idea how that makes me feel. I am not proud of what happened, but finding this note - and holding the restored book in my hands is like a miracle come true.~ */
EXIT

CHAIN
IF WEIGHT #-1 
~%BG1_BEFORE_TRANSITION%
CombatCounter(0) !See([ENEMY]) 
OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2)
See("C#Brandock") See(Player1)
!StateCheck("C#Brandock",CD_STATE_NOTVALID)
!StateCheck(Myself,CD_STATE_NOTVALID)
InParty(Myself)
Global("C#Brandock_AjantisBOOKBG1","GLOBAL",3)~ THEN ~%AJANTIS_BANTER%~ brandockajantis_book_04
@538 /* ~[Ajantis]It is your responsibility now to restore the book to its full glory again, Brandock.~ */ DO ~SetGlobal("C#Brandock_AjantisBOOKBG1","GLOBAL",4)~
== C#BrandJ @539 /* ~[Brandock]Oh yes, I am aware of that.~ */
== ~%AJANTIS_BANTER%~ @540 /* ~[Ajantis]Adding in spells as unique as the ones lost to the destruction...~ */
== C#BrandJ @541 /* ~[Brandock]Yes...~ */
== ~%AJANTIS_BANTER%~ @542 /* ~[Ajantis]It will not be an easy tast. And we do not know yet what "Oghnma's Wisom" stands for. It will be your responsibility to find out what it means.~ */
== C#BrandJ @543 /* ~[Brandock]It definitey will be... */
== ~%AJANTIS_BANTER%~ @544 /* ~[Ajantis]To see what Master Bowgentle expected his students to accomplish with it, and fulfill these expectations, even though you are not them, but a random mage who tinkered with Master Bowgentles' magic hundreds of years later.~ */
== C#BrandJ @545 /* ~[Brandock]I... thank you for your words of... er, of comfort? And maybe trust? But I'd rather we'd -~ */
== ~%AJANTIS_BANTER%~ @546 /* ~[Ajantis]It will be a journey of hardship, only to be mastered with full dedication to the task.~ */
== C#BrandJ @547 /* ~[Brandock]Ajantis, I'm more than ready to dedicate my life to this. I am and I will! Please stop talking. Please!~ */
EXIT

CHAIN
IF WEIGHT #-1 
~%BG1_BEFORE_TRANSITION%
CombatCounter(0) !See([ENEMY]) 
OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2)
See("C#Brandock") See(Player1)
!StateCheck("C#Brandock",CD_STATE_NOTVALID)
!StateCheck(Myself,CD_STATE_NOTVALID)
InParty(Myself)
Global("C#Brandock_AjantisBOOKBG1","GLOBAL",4)~ THEN ~%AJANTIS_BANTER%~ brandockajantis_book_04
@548 /* ~[Ajantis]Brandock, you ended our last conversation about your restored book rather abruptly. Was anything the matter?~ */ DO ~SetGlobal("C#Brandock_AjantisBOOKBG1","GLOBAL",5)~
== C#BrandJ @549 /* ~[Brandock]Was anything...? Well, how to put this. You listing all the things that are expected of me now - calling it a hardship etcetera - it was a little too much, to be honest. You know I scare easily. The whole thing with the book really got to me. Having to hear all these expectations now just made me feel... small and helpless - with a lumb in my stomach.~ */
== ~%AJANTIS_BANTER%~ @550 /* ~[Ajantis]What you are facing *is* much, Brandock. Anyone would feel overwhelmed by such a task.~ */
== C#BrandJ @551 /* ~[Brandock]Oh, gods, please have mercy...~ */
== ~%AJANTIS_BANTER%~ @552 /* ~[Ajantis]That is why you will not have to face this on your own, Brandock. Do not despair. You will find helpful souls along the way, and I am ready to support you if you need help with this task! Noone expects you to face these expectations alone.~ */
== C#BrandJ @553 /* ~[Brandock]Oh - that... that was actually pretty nice of you to say. I think I understand your earlier words better now, too. Thank you for this offer, Ajantis - you have my sincerest thanks.~ */
EXIT

/* Brandock - Neera 2 */
CHAIN
IF WEIGHT #-1 
~%BG1_BEFORE_TRANSITION%
CombatCounter(0) !See([ENEMY]) 
OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2)
See("C#Brandock") See(Player1)
!StateCheck("C#Brandock",CD_STATE_NOTVALID)
!StateCheck(Myself,CD_STATE_NOTVALID)
InParty(Myself)
Global("C#Brandock_NeeraBG1","GLOBAL",1)~ THEN ~%NEERA_BANTER%~ brandockneera_2
@24
DO ~SetGlobal("C#Brandock_NeeraBG1","GLOBAL",2)~
== C#BrandJ @25
== ~%NEERA_BANTER%~ @26
== C#BrandJ @27 
== ~%NEERA_BANTER%~ @28
== C#BrandJ @29
== C#BrandJ @30
== ~%NEERA_BANTER%~ @31
EXIT

/* Brandock - Ajantis normal Banter cycle, after Brandocks 2nd FT */
/* Brandock - Ajantis 1 */
CHAIN
IF ~%BG1_BEFORE_TRANSITION%
OR(2) InParty(Myself) Global("C#BrandockJoined","GLOBAL",2)
  !See([ENEMY])
  !Range([NEUTRAL],10)
  See("Ajantis") 
  !StateCheck("Ajantis",CD_STATE_NOTVALID)
  InParty("Ajantis")
  CombatCounter(0)
  Global("C#Brandock_AjantisBG1","GLOBAL",0)
  Global("C#BR_KnowsAmn","GLOBAL",1)~ THEN C#BrandB brandockajantis
@32 DO ~SetGlobal("C#Brandock_AjantisBG1","GLOBAL",1)~
== ~%AJANTIS_BANTER%~ @33
== C#BrandB @34
== ~%AJANTIS_BANTER%~ @35
== C#BrandB @36
== ~%AJANTIS_BANTER%~ @37
== C#BrandB @38
EXIT

/* Brandock - Xan 1 */
CHAIN
IF  
~%BG1_BEFORE_TRANSITION%
CombatCounter(0) !See([ENEMY]) 
OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2)
See("Xan") See(Player1)
!StateCheck("Xan",CD_STATE_NOTVALID)
!StateCheck(Myself,CD_STATE_NOTVALID)
InParty("Xan")
Global("C#Brandock_XanBG1","GLOBAL",0)~ THEN C#BrandB brandockxan
@39
DO ~SetGlobal("C#Brandock_XanBG1","GLOBAL",1)~
= @40
== ~%XAN_BANTER%~ @41
== C#BrandB @42
EXIT

/* Brandock - Imoen 2 */
CHAIN
IF  
~%BG1_BEFORE_TRANSITION%
CombatCounter(0) !See([ENEMY]) 
OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2)
InParty("%IMOEN_DV%")
See("%IMOEN_DV%") See(Player1)
!StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)
!StateCheck(Myself,CD_STATE_NOTVALID)
Global("C#Brandock_ImoenBG1","GLOBAL",1)~ THEN C#BrandB brandockimoen2
@43 DO ~SetGlobal("C#Brandock_ImoenBG1","GLOBAL",2)~
= @44
== ~%IMOEN_BANTER%~ @45
== C#BrandB @46
EXIT

/* Brandock - Neera 3 */
CHAIN
IF WEIGHT #-1 
~%BG1_BEFORE_TRANSITION%
CombatCounter(0) !See([ENEMY]) 
OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2)
See("C#Brandock") See(Player1)
!StateCheck("C#Brandock",CD_STATE_NOTVALID)
!StateCheck(Myself,CD_STATE_NOTVALID)
InParty(Myself)
Global("C#Brandock_NeeraBG1","GLOBAL",2)~ THEN ~%NEERA_BANTER%~ brandockneera_3
@47
DO ~SetGlobal("C#Brandock_NeeraBG1","GLOBAL",3)~
== C#BrandJ @48
= @49
EXIT

/* Brandock - Ajantis 2 */
CHAIN
IF  
~%BG1_BEFORE_TRANSITION%
CombatCounter(0) !See([ENEMY])
OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2)
See("C#Brandock") See(Player1)
!StateCheck("C#Brandock",CD_STATE_NOTVALID)
!StateCheck(Myself,CD_STATE_NOTVALID)
InParty(Myself)
Global("C#Brandock_AjantisBG1","GLOBAL",1)
~ THEN ~%AJANTIS_BANTER%~ brandockajantis_02
@50 DO ~SetGlobal("C#Brandock_AjantisBG1","GLOBAL",2)~
== C#BrandJ @51
= @52
== ~%AJANTIS_BANTER%~ @53
== C#BrandJ @54
EXIT

/* Brandock - Xan 2 */
CHAIN
IF  
~%BG1_BEFORE_TRANSITION%
CombatCounter(0) !See([ENEMY]) 
OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2)
See("C#Brandock") See(Player1)
!StateCheck("C#Brandock",CD_STATE_NOTVALID)
!StateCheck(Myself,CD_STATE_NOTVALID)
InParty(Myself)
Global("C#Brandock_XanBG1","GLOBAL",1)~ THEN ~%XAN_BANTER%~ brandockxan_2
@55
DO ~SetGlobal("C#Brandock_XanBG1","GLOBAL",2)~
== C#BrandJ @56
== ~%XAN_BANTER%~ @57
== C#BrandJ @58
== ~%XAN_BANTER%~ @59
== C#BrandJ @60
EXIT

/* Brandock - Neera 4 */
CHAIN
IF  
~CombatCounter(0) !See([ENEMY]) 
OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2)
Global("C#BR_KnowsAmn","GLOBAL",1) //After his home is revealed 
See("C#Brandock") See(Player1)
!StateCheck("C#Brandock",CD_STATE_NOTVALID)
!StateCheck(Myself,CD_STATE_NOTVALID)
InParty(Myself)
//##
GlobalLT("C#Brandock_NeeraBG1","GLOBAL",4)~ THEN ~%NEERA_BANTER%~ brandockneera_4
@61
DO ~SetGlobal("C#Brandock_NeeraBG1","GLOBAL",4)~
== C#BrandJ @62 
== ~%NEERA_BANTER%~ @63
== C#BrandJ @64
EXIT

/* Brandock - Ajantis 3 */
CHAIN
IF ~%BG1_BEFORE_TRANSITION%
OR(2) InParty(Myself) Global("C#BrandockJoined","GLOBAL",2)
  !See([ENEMY])
  !Range([NEUTRAL],10)
  See("Ajantis") 
  !StateCheck("Ajantis",CD_STATE_NOTVALID)
  InParty("Ajantis")
  CombatCounter(0)
  Global("C#Brandock_AjantisBG1","GLOBAL",2)~ THEN C#BrandB brandockajantis_03
@65 DO ~SetGlobal("C#Brandock_AjantisBG1","GLOBAL",3)~
== ~%AJANTIS_BANTER%~ @66
== C#BrandB @67
== ~%AJANTIS_BANTER%~ @68
== C#BrandB @69
== ~%AJANTIS_BANTER%~ @70
EXIT

/* Brandock - Xan 3 */
CHAIN
IF  
~%BG1_BEFORE_TRANSITION%
CombatCounter(0) !See([ENEMY]) 
OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2)
See("Xan") See(Player1)
!StateCheck("Xan",CD_STATE_NOTVALID)
!StateCheck(Myself,CD_STATE_NOTVALID)
InParty("Xan")
Global("C#Brandock_XanBG1","GLOBAL",2)~ THEN C#BrandB brandockxan_3
@509 DO ~SetGlobal("C#Brandock_XanBG1","GLOBAL",3)~
= @510 /* ~What I wanted to say is, I am impressed with what you achieved and are still achieving. You might say and perhaps even believe that life is hollow, but you surely strive to fill it with your actions nontheless, which stirrs hope in others.~ */
== ~%XAN_BANTER%~ @511 
== C#BrandB @512 
= @513 
== ~%XAN_BANTER%~ @514 
= @526 
EXIT

/* Brandock - Neera 5 */
CHAIN
IF ~OR(2) InParty(Myself) Global("C#BrandockJoined","GLOBAL",2)
  !See([ENEMY])
  !Range([NEUTRAL],10)
  See("Neera") 
  !StateCheck("Neera",CD_STATE_NOTVALID)
  InParty("Neera")
  CombatCounter(0)
  Global("C#Brandock_NeeraBG1","GLOBAL",4)~ THEN C#BrandB brandockneera_5
@71
DO ~SetGlobal("C#Brandock_NeeraBG1","GLOBAL",5)~
== ~%NEERA_BANTER%~ @72
== C#BrandB @73
== ~%NEERA_BANTER%~ @74
EXIT

/* Brandock - Imoen 3 */
CHAIN
IF  
~%BG1_BEFORE_TRANSITION%
CombatCounter(0) !See([ENEMY]) 
OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2)
InParty("%IMOEN_DV%")
See("%IMOEN_DV%") See(Player1)
!StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)
!StateCheck(Myself,CD_STATE_NOTVALID)
Global("C#Brandock_ImoenBG1","GLOBAL",2)~ THEN C#BrandB brandockimoen3
@75 DO ~SetGlobal("C#Brandock_ImoenBG1","GLOBAL",3)~
== ~%IMOEN_BANTER%~ @76
== C#BrandB @77
== ~%IMOEN_BANTER%~ @78
== C#BrandB @79
== ~%IMOEN_BANTER%~ @80
== C#BrandB @81
= @82
EXIT

/* Brandock - Ajantis 4 */
CHAIN
IF ~%BG1_BEFORE_TRANSITION%
OR(2) InParty(Myself) Global("C#BrandockJoined","GLOBAL",2)
  !See([ENEMY])
  !Range([NEUTRAL],10)
  See("Ajantis") 
  !StateCheck("Ajantis",CD_STATE_NOTVALID)
  InParty("Ajantis")
  CombatCounter(0)
  Global("C#Brandock_AjantisBG1","GLOBAL",3)~ THEN C#BrandB brandockajantis_04
@83 DO ~SetGlobal("C#Brandock_AjantisBG1","GLOBAL",4)~
== ~%AJANTIS_BANTER%~ @84
== C#BrandB @85
== ~%AJANTIS_BANTER%~ @86
== C#BrandB @87
EXIT

/* Brandock - Xan 4 */
CHAIN
IF  
~%BG1_BEFORE_TRANSITION%
CombatCounter(0) !See([ENEMY]) 
OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2)
See("Xan") See(Player1)
!StateCheck("Xan",CD_STATE_NOTVALID)
!StateCheck(Myself,CD_STATE_NOTVALID)
InParty("Xan")
Global("C#Brandock_XanBG1","GLOBAL",3)~ THEN C#BrandB brandockxan_4
@515 
DO ~SetGlobal("C#Brandock_XanBG1","GLOBAL",4)~
== ~%XAN_BANTER%~ @516
== C#BrandB @517
== ~%XAN_BANTER%~ @518
== C#BrandB @519
= @520
EXIT

/* Brandock - Imoen 4 */
CHAIN
IF  
~%BG1_BEFORE_TRANSITION%
CombatCounter(0) !See([ENEMY]) 
OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2)
InParty("%IMOEN_DV%")
See("C#Brandock") See(Player1)
!StateCheck("C#Brandock",CD_STATE_NOTVALID)
!StateCheck(Myself,CD_STATE_NOTVALID)
Global("C#Brandock_ImoenBG1","GLOBAL",3)~ THEN ~%IMOEN_BANTER%~ brandockimoen4
@527 /* Brandock, did you know about me, too? When you learnt about Candlekeep, and <CHARNAME>, I mean.~ */ 
DO ~SetGlobal("C#Brandock_ImoenBG1","GLOBAL",4)~
== C#BrandJ @528 /* ~Er, no. I'm sorry, Imoen, but there is no mentioning of you.~ */
== ~%IMOEN_BANTER%~ @529 /* ~Really? No mentionings of Imoen, foster child of Winthrop, the known keeper of Candlekeep Inn and her legendary tales of sneaking though Dreppin's hay in the search of a lost gold coin?~ */
== C#BrandJ @530 /* ~...No. But you see, there is not much about <CHARNAME>, either. It's basically just the name, and that's only because Gorion was such a well versed sage.~ */
== ~%IMOEN_BANTER%~ @531 /* ~Well, maybe it's better this way. leaves me unknown and unnoticed - ideal conditions to suddenly sneak up on people!~ */
== C#BrandJ @532 /* ~Wha... Wait! Give me back my... oh, you didn't take anything. Imoen, that was extremely sneaky!~ */
== ~%IMOEN_BANTER%~ @533 /* ~[Imoen]See? I'm *made* for this!~ */
EXIT

/* Brandock - Neera 6 */
CHAIN
IF ~OR(2) InParty(Myself) Global("C#BrandockJoined","GLOBAL",2)
  !See([ENEMY])
  !Range([NEUTRAL],10)
  See("Neera") 
  !StateCheck("Neera",CD_STATE_NOTVALID)
  InParty("Neera")
  CombatCounter(0)
  Global("C#Brandock_NeeraBG1","GLOBAL",5)~ THEN C#BrandB brandockneera_6
@88
DO ~SetGlobal("C#Brandock_NeeraBG1","GLOBAL",6)~
== ~%NEERA_BANTER%~ @89
== C#BrandB @90
== ~%NEERA_BANTER%~ @91
EXIT

/* Brandock - Ajantis 5 */
CHAIN
IF ~%BG1_BEFORE_TRANSITION%
OR(2) InParty(Myself) Global("C#BrandockJoined","GLOBAL",2)
  !See([ENEMY])
  !Range([NEUTRAL],10)
  See("Ajantis") 
  !StateCheck("Ajantis",CD_STATE_NOTVALID)
  InParty("Ajantis")
  CombatCounter(0)
  Global("C#Brandock_AjantisBG1","GLOBAL",4)~ THEN C#BrandB brandockajantis_05
@92 DO ~SetGlobal("C#Brandock_AjantisBG1","GLOBAL",5)~
== ~%AJANTIS_BANTER%~ @93
== C#BrandB @94
== ~%AJANTIS_BANTER%~ @95
== C#BrandB @96
EXIT

/* Brandock - Xan 5 */
CHAIN
IF  
~%BG1_BEFORE_TRANSITION%
CombatCounter(0) !See([ENEMY]) 
OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2)
See("Xan") See(Player1)
!StateCheck("Xan",CD_STATE_NOTVALID)
!StateCheck(Myself,CD_STATE_NOTVALID)
InParty("Xan")
Global("C#Brandock_XanBG1","GLOBAL",4)~ THEN C#BrandB brandockxan_5
@521 
DO ~SetGlobal("C#Brandock_XanBG1","GLOBAL",5)~
== ~%XAN_BANTER%~ @522
== C#BrandB @523
== ~%XAN_BANTER%~ @524
== C#BrandB @525
EXIT

/* Brandock - Neera 7 */
CHAIN
IF  
~CombatCounter(0) !See([ENEMY]) 
OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2)
See("C#Brandock") See(Player1)
!StateCheck("Neera",CD_STATE_NOTVALID)
!StateCheck(Myself,CD_STATE_NOTVALID)
InParty(Myself)
Global("C#Brandock_NeeraBG1","GLOBAL",6)~ THEN ~%NEERA_BANTER%~ brandockneera_7
@97 
DO ~SetGlobal("C#Brandock_NeeraBG1","GLOBAL",7)~ 
== C#BrandJ @98
== ~%NEERA_BANTER%~ @99
EXIT

/* Brandock - Ajantis 6 */
CHAIN
IF ~%BG1_BEFORE_TRANSITION%
OR(2) InParty(Myself) Global("C#BrandockJoined","GLOBAL",2)
  !See([ENEMY])
  !Range([NEUTRAL],10)
  See("Ajantis") 
  !StateCheck("Ajantis",CD_STATE_NOTVALID)
  InParty("Ajantis")
  CombatCounter(0)
  Global("C#Brandock_AjantisBG1","GLOBAL",5)~ THEN C#BrandB brandockajantis_06
@100 DO ~SetGlobal("C#Brandock_AjantisBG1","GLOBAL",6)~
== ~%AJANTIS_BANTER%~ @101
= @102
EXIT

/* Brandock - Ajantis 7 */
CHAIN
IF  
~%BG1_BEFORE_TRANSITION%
CombatCounter(0) !See([ENEMY]) 
OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2)
See("C#Brandock") See(Player1)
!StateCheck("C#Brandock",CD_STATE_NOTVALID)
!StateCheck(Myself,CD_STATE_NOTVALID)
InParty(Myself)
Global("C#Brandock_AjantisBG1","GLOBAL",6)
~ THEN ~%AJANTIS_BANTER%~ brandockajantis_07
@103 
DO ~SetGlobal("C#Brandock_AjantisBG1","GLOBAL",7)~ //last banter
== C#BrandJ @104
= @105
EXIT





