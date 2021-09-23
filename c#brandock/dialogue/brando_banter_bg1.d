

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
== C#BrandB @10
== ~%AJANTIS_BANTER%~ @11
== C#BrandB @12
== ~%AJANTIS_BANTER%~ @13
== C#BrandB @14
== ~%AJANTIS_BANTER%~ @15
== C#BrandB @16
== C#BrandB IF ~!HasItem("BOOK87","C#Brandock") !HasItem("BOOK68","C#Brandock")~ THEN @17
== C#BrandB IF ~OR(2) HasItem("BOOK87","C#Brandock") HasItem("BOOK68","C#Brandock")~ THEN @18
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
== C#BrandB @20
== ~%AJANTIS_BANTER%~ @21
== C#BrandB @22
== ~%AJANTIS_BANTER%~ @23
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
== C#BrandB @25
== ~%NEERA_BANTER%~ @26
== C#BrandB @27 
== ~%NEERA_BANTER%~ @28
== C#BrandB @29
== C#BrandB @30
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
== C#BrandB @48
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
== C#BrandB @51
= @52
== ~%AJANTIS_BANTER%~ @53
== C#BrandB @54
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
== C#BrandB @56
== ~%XAN_BANTER%~ @57
== C#BrandB @58
== ~%XAN_BANTER%~ @59
== C#BrandB @60
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
== C#BrandB @62 
== ~%NEERA_BANTER%~ @63
== C#BrandB @64
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
== C#BrandB @98
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
== C#BrandB @104
= @105
EXIT





