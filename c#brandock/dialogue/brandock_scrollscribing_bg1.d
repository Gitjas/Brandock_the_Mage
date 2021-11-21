

/* after Candlekeep - Brandock tries scribing scrolls before rest 
Elvenhair's desk is out of reach and PC asked Brandock via PID to scribe scrolls elsewhere */

CHAIN
IF ~Global("C#Br_ScribeScrollQuest","GLOBAL",6)~ THEN c#brandj scribe_scrolls_restbanter
@3500
== c#brandj IF ~AreaType(OUTDOOR)~ THEN @3501
== c#brandj IF ~!AreaType(OUTDOOR)~ THEN @3502
END
++ @3503 + scribe_scrolls_restbanter_01
++ @3504 + scribe_scrolls_restbanter_01
++ @3505 + scribe_scrolls_restbanter_01

APPEND c#brandj 

IF ~~ THEN scribe_scrolls_restbanter_01
SAY @3506
++ @3507 + scribe_scrolls_restbanter_05
++ @3508 + scribe_scrolls_restbanter_02
++ @3509 + scribe_scrolls_restbanter_04
END

IF ~~ THEN scribe_scrolls_restbanter_02
SAY @3510
IF ~~ THEN + scribe_scrolls_restbanter_05
END

IF ~~ THEN scribe_scrolls_restbanter_03
SAY @3511
IF ~~ THEN + scribe_scrolls_restbanter_04
END

IF ~~ THEN scribe_scrolls_restbanter_04
SAY @3512
IF ~~ THEN DO ~GiveItemCreate("SCRL75",Player1,1,0,0) 
SetGlobal("C#Br_ScribeScrollQuest","GLOBAL",7) ClearAllActions() StartCutSceneMode() StartCutScene("c#brcut5")~ EXIT
END

IF ~~ THEN scribe_scrolls_restbanter_05
SAY @3513
IF ~~ THEN + scribe_scrolls_restbanter_03
END

IF ~Global("C#Br_ScribeScrollQuest","GLOBAL",7)~ THEN scribe_scrolls_restbanter_06
SAY @3514
++ @3515 + scribe_scrolls_restbanter_08
++ @3516 + scribe_scrolls_restbanter_07
++ @3517 + scribe_scrolls_restbanter_09
END

IF ~~ THEN scribe_scrolls_restbanter_07
SAY @3518
IF ~~ THEN + scribe_scrolls_restbanter_09
END

IF ~~ THEN scribe_scrolls_restbanter_08
SAY @3519
IF ~~ THEN + scribe_scrolls_restbanter_09
END

IF ~~ THEN scribe_scrolls_restbanter_09
SAY @3520
= @3521
IF ~~ THEN DO ~EraseJournalEntry(@10063)
SetGlobal("C#Br_ScribeScrollQuest","GLOBAL",8) RestParty()~ SOLVED_JOURNAL @10064
EXIT
END



/* Cursed scrolls. Cursed be the malice of some people! */


/*
Cursed Scroll of Weakness (SCRL10) -> Ray of Enfeeblement (SCRLAI)
Cursed Scroll of Clumsiness (SCRL11) -> Slow (SCRL1O)
Cursed Scroll of Foolishness (SCRL12) -> Confusion (?) (SCRL1U)
Cursed Scroll of Ugliness (SCRL13) -> Horror (SCRL89)
Cursed Scroll of Summon Monster (SCRL14) -> Monster Summoning I (SCRL1L) L3
Cursed Scroll of Petrification (SCRL16) -> Flesh to Stone (SCRL7H)
Cursed Scroll of Ailment (SCRL17) -> Finger of Death (SCRL8O)
Cursed Scroll of Stupidity (SCRL18) -> Feeblemind (SCRL5Q)
*/


IF 
~Global("C#Br_CommentsCursedScroll","LOCALS",1)~ THEN comment_cursed_scroll
SAY @3522
IF ~~ THEN DO ~SetGlobal("C#Br_CommentsCursedScroll","LOCALS",2)~ EXIT
END

END //APPEND

CHAIN
IF ~Global("C#Br_CommentsIndentScroll","LOCALS",1)~ THEN c#brandj cursed_protectionscroll
@3523
DO ~SetGlobal("C#Br_CommentsIndentScroll","LOCALS",2)~
= @3524
== c#brandj @3525
= @3526
END
IF ~~ THEN UNSOLVED_JOURNAL @10062 EXIT


/* Elvenhair's desk. Clicking on the table will trigger a dialogue: C#BREDSK.baf */

/* Brandock is ready to scribe a scroll */

CHAIN
IF WEIGHT #-1
~Global("C#Br_ScribeScrollQuest","GLOBAL",2)~ THEN FIREBE brandock_elvenhair_scrollscribing
@3527
== c#brandj @3528
END
++ @3529 DO ~SetGlobal("C#Br_ScribeScrollQuest","GLOBAL",3)~ EXTERN FIREBE brandock_elvenhair_scrollscribing_01
++ @3530 DO ~SetGlobal("C#Br_ScribeScrollQuest","GLOBAL",1)~ EXIT 

CHAIN
IF ~~ THEN FIREBE brandock_elvenhair_scrollscribing_01
@3531
== c#brandj @3532
END
IF ~~ THEN DO ~ClearAllActions() StartCutSceneMode() StartCutScene("c#brcut4")~ EXIT

CHAIN
IF WEIGHT #-1
~Global("C#Br_ScribeScrollQuest","GLOBAL",3)~ THEN FIREBE brandock_elvenhair_scrollscribing_02
@3533
== FIREBE IF ~LevelLT("C#Brandock",5)~ THEN @3534 DO ~GiveItemCreate("SCRL75",Player1,1,0,0)~
== FIREBE IF ~LevelGT("C#Brandock",4)~ THEN @3535 DO ~GiveItemCreate("SCRL6H",Player1,1,0,0)~
== c#brandj @3536
== FIREBE @3537
== c#brandj @3538
== FIREBE @3539
== c#brandj IF ~LevelLT("C#Brandock",5)~ THEN @3540
== c#brandj IF ~LevelGT("C#Brandock",4)~ THEN @3542
= @3541
END
IF ~~ THEN DO ~SetGlobal("C#Br_ScribeScrollQuest","GLOBAL",4)
SetGlobal("c#brscrl","GLOBAL",3)~ UNSOLVED_JOURNAL @10012 EXIT

