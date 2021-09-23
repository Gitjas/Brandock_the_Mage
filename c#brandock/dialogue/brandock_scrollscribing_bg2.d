EXTEND_TOP c#brandj scribe_scoll_02
/* Brandock writes an own magic book */
+ ~LevelGT("C#Brandock",8)
GlobalGT("C#Br_WriteDurableScrolls","LOCALS",3)
GlobalLT("C#Br_WriteBook","LOCALS",2)~ + @3024 DO ~SetGlobal("C#Br_WriteBook","LOCALS",2)~ + scribe_book_01
+ ~GlobalGT("C#Br_WriteBook","LOCALS",1)
GlobalLT("C#Br_WriteBook","LOCALS",7)~ + @3025 + scribe_book_02
/* one more page in ToB */
+ ~Global("C#Br_WriteBook","LOCALS",9)~ + @3025 + scribe_book_02

/* durable scrolls */
+ ~PartyGoldGT(999)
GlobalLT("C#Br_WriteDurableScrolls","LOCALS",2)
GlobalGT("C#Br_BookRestore","GLOBAL",21)~ + @3026 + scribe_durable_scoll_02
+ ~GlobalGT("C#Br_WriteDurableScrolls","LOCALS",3)
PartyGoldGT(999)~ + @3027 + scribe_durable_scoll_03
+ ~GlobalGT("C#Br_WriteDurableScrolls","LOCALS",3)
PartyGoldLT(1000)~ + @3028 + scribe_scoll_02
END


APPEND c#brandj 

/* Brandock is ready to scribe a scroll - BGII only content */


/* De Simplex Magicae received Oghma's Wisdom & Brandock is level 5. Brandock writes scrolls with several charges 
GlobalGT("C#Br_BookRestore","GLOBAL",21) */

IF ~Global("C#Br_WriteDurableScrolls","LOCALS",3)~ THEN scribe_durable_scoll
SAY @3637
++ @3638 + scribe_durable_scoll_00
++ @3639 + scribe_durable_scoll_00_b
++ @3640 + scribe_durable_scoll_00_b
END

IF ~~ THEN scribe_durable_scoll_00
SAY @3641
IF ~~ THEN + scribe_durable_scoll_00_b
END

IF ~~ THEN scribe_durable_scoll_00_a
SAY @3642
IF ~~ THEN + scribe_durable_scoll_00_b
END

IF ~~ THEN scribe_durable_scoll_00_b
SAY @3643
= @3644
IF ~~ THEN DO ~SetGlobal("C#Br_WriteDurableScrolls","LOCALS",4)
SetGlobal("C#Br_Scrollscribing","GLOBAL",3)~ EXIT
END

IF ~LevelGT("C#Brandock",4)
Global("c#brscrl","GLOBAL",1)
Global("C#Br_WriteDurableScrolls","LOCALS",0)
GlobalGT("C#Br_BookRestore","GLOBAL",21)~ THEN scribe_durable_scoll_01
SAY @3645
= @3646
IF ~~ THEN DO ~SetGlobal("C#Br_WriteDurableScrolls","LOCALS",1)~ + scribe_scoll_02
END

IF ~~ THEN scribe_durable_scoll_02
SAY @3647
IF ~~ THEN DO ~GiveItemCreate("C#BR1G",Player1,1,3,0) 
DestroyGold(1000) SetGlobal("C#Br_WriteDurableScrolls","LOCALS",3) ClearAllActions() StartCutSceneMode() StartCutScene("c#brcut5")~ EXIT
END


/* after scrolls with several charges and Brandock is level 15: Brandock starts to rewrite spells into the De Simplex Magicae
He can write 5 in SoA. 
1 more in ToB.
This is here and not in brandock_bookrestore_bg2.d because of state interconnections (and I'm lazy) */

/* after writing the first page */
IF WEIGHT #-1
~Global("C#Br_Scrollscribing","GLOBAL",2)
InMyArea("C#Brhelp")
Global("C#Br_ScribeBookComment","LOCALS",1)~ THEN scribe_book
SAY @3600
IF ~~ THEN DO ~SetGlobal("C#Br_Scrollscribing","GLOBAL",3)
SetGlobal("C#Br_ScribeBookComment","LOCALS",2)
ActionOverride("C#Brhelp",DestroySelf())~ EXIT
END

/* wrote the last page in SoA */
IF WEIGHT #-1
~Global("C#Br_Scrollscribing","GLOBAL",2)
Global("C#Br_WriteBook","LOCALS",7)~ THEN scribe_book_soa
SAY @3601
= @3699
IF ~~ THEN DO ~SetGlobal("C#Br_Scrollscribing","GLOBAL",3)
SetGlobal("C#Br_WriteBook","LOCALS",8)
ActionOverride("C#Brhelp",DestroySelf())~ UNSOLVED_JOURNAL @10079 EXIT
END

/* wrote very last page (in ToB) */
/* -> in brandock_bookrestore_bg2.d */

/* Brandock offers to write spells into the De Simple Magicae */
/* SoA */
IF ~LevelGT("C#Brandock",14)
Global("c#brscrl","GLOBAL",1)
GlobalGT("C#Br_WriteDurableScrolls","LOCALS",3)
Global("C#Br_WriteBook","LOCALS",0)~ THEN scribe_book_00
SAY @3602
= @3603
IF ~~ THEN DO ~EraseJournalEntry(@10068)
SetGlobal("C#Br_WriteBook","LOCALS",1)
SetGlobal("c#brscrl","GLOBAL",2)~ UNSOLVED_JOURNAL @10078 + scribe_scoll_02
END

/* ToB */
IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)
Global("c#brscrl","GLOBAL",1)
Global("C#Br_WriteBook","LOCALS",8)~ THEN scribe_book_00
SAY @3700 /* ~<CHARNAME>, the incredible happened - the last page of the De Simplex Magicae opened up for me. Let me know what you want me to write on it!~  */
IF ~~ THEN DO ~EraseJournalEntry(@10078)
EraseJournalEntry(@10079)
SetGlobal("C#Br_WriteBook","LOCALS",9)
SetGlobal("c#brscrl","GLOBAL",2)~ UNSOLVED_JOURNAL @10080 + scribe_scoll_02
END

IF ~~ THEN scribe_book_01
SAY @3604
IF ~~ THEN + scribe_book_02
END

END //APPEND

CHAIN
IF ~~ THEN c#brandj scribe_book_02
@3605
== c#brandj IF ~Global("C#Br_WriteBook","LOCALS",2)~ THEN @3606
== c#brandj IF ~Global("C#Br_WriteBook","LOCALS",3)~ THEN @3607
== c#brandj IF ~Global("C#Br_WriteBook","LOCALS",4)~ THEN @3608
== c#brandj IF ~Global("C#Br_WriteBook","LOCALS",5)~ THEN @3609
== c#brandj IF ~Global("C#Br_WriteBook","LOCALS",6)~ THEN @3610
== c#brandj IF ~Global("C#Br_WriteBookPage01","GLOBAL",0)~ THEN @3611
== c#brandj IF ~Global("C#Br_WriteBookPage02","GLOBAL",0)~ THEN @3612
== c#brandj IF ~Global("C#Br_WriteBookPage03","GLOBAL",0)~ THEN @3613
== c#brandj IF ~LevelGT("C#Brandock",11)
Global("C#Br_WriteBookPage04","GLOBAL",0)~ THEN @3614
== c#brandj IF ~LevelGT("C#Brandock",13)
Global("C#Br_WriteBookPage05","GLOBAL",0)~ THEN @3615
== c#brandj IF ~LevelGT("C#Brandock",13)
Global("C#Br_WriteBookPage06","GLOBAL",0)~ THEN @3616
== c#brandj IF ~LevelGT("C#Brandock",15)
Global("C#Br_WriteBookPage07","GLOBAL",0)~ THEN @3617
== c#brandj IF ~LevelGT("C#Brandock",15)
Global("C#Br_WriteBookPage08","GLOBAL",0)~ THEN @3618
== c#brandj IF ~LevelGT("C#Brandock",17)
Global("C#Br_WriteBookPage09","GLOBAL",0)~ THEN @3619
== c#brandj IF ~Global("C#Br_WriteBookPage10","GLOBAL",0)~ THEN @3620
== c#brandj IF ~LevelLT("C#Brandock",18)~ THEN @3621
== c#brandj IF ~LevelGT("C#Brandock",17)~ THEN @3622
END
/* "c#brbo01" */
+ ~Global("C#Br_WriteBook","LOCALS",2)
PartyHasItem("SCRL1G")
PartyGoldGT(4999)~ + @3623 DO ~GiveItemCreate("c#brbo01",Player1,1,0,0) SetGlobal("C#Br_WriteBookPage01","GLOBAL",1)~ + scribe_book_04
+ ~GlobalGT("C#Br_WriteBook","LOCALS",2)
PartyHasItem("SCRL1G")
PartyGoldGT(4999)~ + @3623 DO ~SetGlobal("C#Br_WriteBookPage01","GLOBAL",1)~ + scribe_book_03
+ ~Global("C#Br_WriteBook","LOCALS",2)
!PartyHasItem("SCRL1G")
HasItem("SCRL1G","C#Brandock")
PartyGoldGT(4999)~ + @3623 DO ~GiveItemCreate("c#brbo01",Player1,1,0,0) 
ActionOverride("C#Brandock",GiveItem("SCRL1G",Player1))
SetGlobal("C#Br_WriteBookPage01","GLOBAL",1)~ + scribe_book_04
+ ~GlobalGT("C#Br_WriteBook","LOCALS",2)
!PartyHasItem("SCRL1G")
HasItem("SCRL1G","C#Brandock")
PartyGoldGT(4999)~ + @3623 DO ~ActionOverride("C#Brandock",GiveItem("SCRL1G",Player1))
SetGlobal("C#Br_WriteBookPage01","GLOBAL",1)~ + scribe_book_03

/* "c#brbo02" */
+ ~Global("C#Br_WriteBook","LOCALS",2)
PartyHasItem("SCRL6P")
PartyGoldGT(4999)~ + @3624 DO ~GiveItemCreate("c#brbo02",Player1,1,0,0) SetGlobal("C#Br_WriteBookPage02","GLOBAL",1)~ + scribe_book_04
+ ~GlobalGT("C#Br_WriteBook","LOCALS",2)
PartyHasItem("SCRL6P")
PartyGoldGT(4999)~ + @3624 DO ~SetGlobal("C#Br_WriteBookPage02","GLOBAL",1)~ + scribe_book_03
+ ~Global("C#Br_WriteBook","LOCALS",2)
!PartyHasItem("SCRL6P")
HasItem("SCRL6P","C#Brandock")
PartyGoldGT(4999)~ + @3624 DO ~GiveItemCreate("c#brbo02",Player1,1,0,0) 
ActionOverride("C#Brandock",GiveItem("SCRL6P",Player1))
SetGlobal("C#Br_WriteBookPage02","GLOBAL",1)~ + scribe_book_04
+ ~GlobalGT("C#Br_WriteBook","LOCALS",2)
!PartyHasItem("SCRL6P")
HasItem("SCRL6P","C#Brandock")
PartyGoldGT(4999)~ + @3624 DO ~ActionOverride("C#Brandock",GiveItem("SCRL6P",Player1))
SetGlobal("C#Br_WriteBookPage02","GLOBAL",1)~ + scribe_book_03

/* "c#brbo03" */
+ ~Global("C#Br_WriteBook","LOCALS",2)
PartyHasItem("SCRL6U")
PartyGoldGT(4999)~ + @3625 DO ~GiveItemCreate("c#brbo03",Player1,1,0,0) SetGlobal("C#Br_WriteBookPage03","GLOBAL",1)~ + scribe_book_04
+ ~GlobalGT("C#Br_WriteBook","LOCALS",2)
PartyHasItem("SCRL6U")
PartyGoldGT(4999)~ + @3625 DO ~SetGlobal("C#Br_WriteBookPage03","GLOBAL",1)~ + scribe_book_03
+ ~Global("C#Br_WriteBook","LOCALS",2)
!PartyHasItem("SCRL6U")
HasItem("SCRL6U","C#Brandock")
PartyGoldGT(4999)~ + @3625 DO ~GiveItemCreate("c#brbo03",Player1,1,0,0) 
ActionOverride("C#Brandock",GiveItem("SCRL6U",Player1))
SetGlobal("C#Br_WriteBookPage03","GLOBAL",1)~ + scribe_book_04
+ ~GlobalGT("C#Br_WriteBook","LOCALS",2)
!PartyHasItem("SCRL6U")
HasItem("SCRL6U","C#Brandock")
PartyGoldGT(4999)~ + @3625 DO ~ActionOverride("C#Brandock",GiveItem("SCRL6U",Player1))
SetGlobal("C#Br_WriteBookPage03","GLOBAL",1)~ + scribe_book_03

/* "c#brbo04" */
+ ~Global("C#Br_WriteBook","LOCALS",2)
PartyHasItem("SCRL7V")
PartyGoldGT(4999)~ + @3626 DO ~GiveItemCreate("c#brbo04",Player1,1,0,0) SetGlobal("C#Br_WriteBookPage04","GLOBAL",1)~ + scribe_book_04
+ ~GlobalGT("C#Br_WriteBook","LOCALS",2)
PartyHasItem("SCRL7V")
PartyGoldGT(4999)~ + @3626 DO ~SetGlobal("C#Br_WriteBookPage04","GLOBAL",1)~ + scribe_book_03
+ ~Global("C#Br_WriteBook","LOCALS",2)
!PartyHasItem("SCRL7V")
HasItem("SCRL7V","C#Brandock")
PartyGoldGT(4999)~ + @3626 DO ~GiveItemCreate("c#brbo04",Player1,1,0,0) 
ActionOverride("C#Brandock",GiveItem("SCRL7V",Player1))
SetGlobal("C#Br_WriteBookPage04","GLOBAL",1)~ + scribe_book_04
+ ~GlobalGT("C#Br_WriteBook","LOCALS",2)
!PartyHasItem("SCRL7V")
HasItem("SCRL7V","C#Brandock")
PartyGoldGT(4999)~ + @3626 DO ~ActionOverride("C#Brandock",GiveItem("SCRL7V",Player1))
SetGlobal("C#Br_WriteBookPage04","GLOBAL",1)~ + scribe_book_03

/* "c#brbo05" */
+ ~Global("C#Br_WriteBook","LOCALS",2)
PartyHasItem("SCRL8W")
PartyGoldGT(4999)~ + @3627 DO ~GiveItemCreate("c#brbo05",Player1,1,0,0) SetGlobal("C#Br_WriteBookPage05","GLOBAL",1)~ + scribe_book_04
+ ~GlobalGT("C#Br_WriteBook","LOCALS",2)
PartyHasItem("SCRL8W")
PartyGoldGT(4999)~ + @3627 DO ~SetGlobal("C#Br_WriteBookPage05","GLOBAL",1)~ + scribe_book_03
+ ~Global("C#Br_WriteBook","LOCALS",2)
!PartyHasItem("SCRL8W")
HasItem("SCRL8W","C#Brandock")
PartyGoldGT(4999)~ + @3627 DO ~GiveItemCreate("c#brbo05",Player1,1,0,0) 
ActionOverride("C#Brandock",GiveItem("SCRL8W",Player1))
SetGlobal("C#Br_WriteBookPage05","GLOBAL",1)~ + scribe_book_04
+ ~GlobalGT("C#Br_WriteBook","LOCALS",2)
!PartyHasItem("SCRL8W")
HasItem("SCRL8W","C#Brandock")
PartyGoldGT(4999)~ + @3627 DO ~ActionOverride("C#Brandock",GiveItem("SCRL8W",Player1))
SetGlobal("C#Br_WriteBookPage05","GLOBAL",1)~ + scribe_book_03

/* "c#brbo06" */
+ ~Global("C#Br_WriteBook","LOCALS",2)
PartyHasItem("SCRL8S")
PartyGoldGT(4999)~ + @3628 DO ~GiveItemCreate("c#brbo06",Player1,1,0,0) SetGlobal("C#Br_WriteBookPage06","GLOBAL",1)~ + scribe_book_04
+ ~GlobalGT("C#Br_WriteBook","LOCALS",2)
PartyHasItem("SCRL8S")
PartyGoldGT(4999)~ + @3628 DO ~SetGlobal("C#Br_WriteBookPage06","GLOBAL",1)~ + scribe_book_03
+ ~Global("C#Br_WriteBook","LOCALS",2)
!PartyHasItem("SCRL8S")
HasItem("SCRL8S","C#Brandock")
PartyGoldGT(4999)~ + @3628 DO ~GiveItemCreate("c#brbo06",Player1,1,0,0) 
ActionOverride("C#Brandock",GiveItem("SCRL8S",Player1))
SetGlobal("C#Br_WriteBookPage06","GLOBAL",1)~ + scribe_book_04
+ ~GlobalGT("C#Br_WriteBook","LOCALS",2)
!PartyHasItem("SCRL8S")
HasItem("SCRL8S","C#Brandock")
PartyGoldGT(4999)~ + @3628 DO ~ActionOverride("C#Brandock",GiveItem("SCRL8S",Player1))
SetGlobal("C#Br_WriteBookPage06","GLOBAL",1)~ + scribe_book_03

/* "c#brbo07" */
+ ~Global("C#Br_WriteBook","LOCALS",2)
PartyHasItem("SCRLB1")
PartyGoldGT(4999)~ + @3629 DO ~GiveItemCreate("c#brbo07",Player1,1,0,0) SetGlobal("C#Br_WriteBookPage07","GLOBAL",1)~ + scribe_book_04
+ ~GlobalGT("C#Br_WriteBook","LOCALS",2)
PartyHasItem("SCRLB1")
PartyGoldGT(4999)~ + @3629 DO ~SetGlobal("C#Br_WriteBookPage07","GLOBAL",1)~ + scribe_book_03
+ ~Global("C#Br_WriteBook","LOCALS",2)
!PartyHasItem("SCRLB1")
HasItem("SCRLB1","C#Brandock")
PartyGoldGT(4999)~ + @3629 DO ~GiveItemCreate("c#brbo07",Player1,1,0,0) 
ActionOverride("C#Brandock",GiveItem("SCRLB1",Player1))
SetGlobal("C#Br_WriteBookPage07","GLOBAL",1)~ + scribe_book_04
+ ~GlobalGT("C#Br_WriteBook","LOCALS",2)
!PartyHasItem("SCRLB1")
HasItem("SCRLB1","C#Brandock")
PartyGoldGT(4999)~ + @3629 DO ~ActionOverride("C#Brandock",GiveItem("SCRLB1",Player1))
SetGlobal("C#Br_WriteBookPage07","GLOBAL",1)~ + scribe_book_03

/* "c#brbo08" */
+ ~Global("C#Br_WriteBook","LOCALS",2)
PartyHasItem("SCRL9A")
PartyGoldGT(4999)~ + @3630 DO ~GiveItemCreate("c#brbo08",Player1,1,0,0) SetGlobal("C#Br_WriteBookPage08","GLOBAL",1)~ + scribe_book_04
+ ~GlobalGT("C#Br_WriteBook","LOCALS",2)
PartyHasItem("SCRL9A")
PartyGoldGT(4999)~ + @3630 DO ~SetGlobal("C#Br_WriteBookPage08","GLOBAL",1)~ + scribe_book_03
+ ~Global("C#Br_WriteBook","LOCALS",2)
!PartyHasItem("SCRL9A")
HasItem("SCRL9A","C#Brandock")
PartyGoldGT(4999)~ + @3630 DO ~GiveItemCreate("c#brbo08",Player1,1,0,0) 
ActionOverride("C#Brandock",GiveItem("SCRL9A",Player1))
SetGlobal("C#Br_WriteBookPage08","GLOBAL",1)~ + scribe_book_04
+ ~GlobalGT("C#Br_WriteBook","LOCALS",2)
!PartyHasItem("SCRL9A")
HasItem("SCRL9A","C#Brandock")
PartyGoldGT(4999)~ + @3630 DO ~ActionOverride("C#Brandock",GiveItem("SCRL9A",Player1))
SetGlobal("C#Br_WriteBookPage08","GLOBAL",1)~ + scribe_book_03

/* "c#brbo09" */
+ ~Global("C#Br_WriteBook","LOCALS",2)
PartyHasItem("SCRLB2")
PartyGoldGT(4999)~ + @3631 DO ~GiveItemCreate("c#brbo09",Player1,1,0,0) SetGlobal("C#Br_WriteBookPage09","GLOBAL",1)~ + scribe_book_04
+ ~GlobalGT("C#Br_WriteBook","LOCALS",2)
PartyHasItem("SCRLB2")
PartyGoldGT(4999)~ + @3631 DO ~SetGlobal("C#Br_WriteBookPage09","GLOBAL",1)~ + scribe_book_03
+ ~Global("C#Br_WriteBook","LOCALS",2)
!PartyHasItem("SCRLB2")
HasItem("SCRLB2","C#Brandock")
PartyGoldGT(4999)~ + @3631 DO ~GiveItemCreate("c#brbo09",Player1,1,0,0) 
ActionOverride("C#Brandock",GiveItem("SCRLB2",Player1))
SetGlobal("C#Br_WriteBookPage09","GLOBAL",1)~ + scribe_book_04
+ ~GlobalGT("C#Br_WriteBook","LOCALS",2)
!PartyHasItem("SCRLB2")
HasItem("SCRLB2","C#Brandock")
PartyGoldGT(4999)~ + @3631 DO ~ActionOverride("C#Brandock",GiveItem("SCRLB2",Player1))
SetGlobal("C#Br_WriteBookPage09","GLOBAL",1)~ + scribe_book_03

/* "c#brbo10" */
+ ~Global("C#Br_WriteBook","LOCALS",2)
PartyHasItem("SCRL9Q")
PartyGoldGT(4999)~ + @3632 DO ~GiveItemCreate("c#brbo10",Player1,1,0,0) SetGlobal("C#Br_WriteBookPage10","GLOBAL",1)~ + scribe_book_04
+ ~GlobalGT("C#Br_WriteBook","LOCALS",2)
PartyHasItem("SCRL9Q")
PartyGoldGT(4999)~ + @3632 DO ~SetGlobal("C#Br_WriteBookPage10","GLOBAL",1)~ + scribe_book_03
+ ~Global("C#Br_WriteBook","LOCALS",2)
!PartyHasItem("SCRL9Q")
HasItem("SCRL9Q","C#Brandock")
PartyGoldGT(4999)~ + @3632 DO ~GiveItemCreate("c#brbo10",Player1,1,0,0) 
ActionOverride("C#Brandock",GiveItem("SCRL9Q",Player1))
SetGlobal("C#Br_WriteBookPage10","GLOBAL",1)~ + scribe_book_04
+ ~GlobalGT("C#Br_WriteBook","LOCALS",2)
!PartyHasItem("SCRL9Q")
HasItem("SCRL9Q","C#Brandock")
PartyGoldGT(4999)~ + @3632 DO ~ActionOverride("C#Brandock",GiveItem("SCRL9Q",Player1))
SetGlobal("C#Br_WriteBookPage10","GLOBAL",1)~ + scribe_book_03

/* not yet */
+ ~LevelLT("C#Brandock",18)~ + @3633 + scribe_scoll_02
++ @3634 + scribe_scoll_02


APPEND c#brandj 

IF ~~ THEN scribe_book_03
SAY @3635
IF ~~ THEN DO ~//SetGlobal("c#brbok1","GLOBAL",0)
//ClearAllActions() StartCutSceneMode() StartCutScene("c#brcut5")
IncrementGlobal("C#Br_WriteBook","LOCALS",1)
SetGlobal("C#Br_Scrollscribing","GLOBAL",2) 
DestroyGold(5000) CreateCreatureObject("C#Brhelp",Myself,0,0,0)~ EXIT
END

IF ~~ THEN scribe_book_04
SAY @3636
IF ~~ THEN DO ~IncrementGlobal("C#Br_WriteBook","LOCALS",1)
IncrementGlobal("C#Br_ScribeBookComment","LOCALS",1)
SetGlobal("C#Br_Scrollscribing","GLOBAL",2) 
DestroyGold(5000) CreateCreatureObject("C#Brhelp",Myself,0,0,0)~ EXIT
END


/* book of infinite spells */

IF ~Global("C#Br_BookOfInfiniteSpells","GLOBAL",1)~ THEN book_infinite_spells
SAY @3668 /* ~Oh, look at this book - it makes casting spells possible for anyone!... This... this is even more powerful than the De Simplex Magicae! I need to study this...~ */
++ @3669 /* ~Don't drool on it, please.~ */ + book_infinite_spells_01
++ @3670 /* ~Anything you could learn from that?~ */ + book_infinite_spells_07
++ @3671 /* ~Yeah, right, just take the book right out of my hands to look at it yourself. I can wait.~ */ + book_infinite_spells_01
END

IF ~~ THEN book_infinite_spells_01
SAY @3672 /* ~Oh, I'm sorry, it's just - I'll be quick.~ */
IF ~~ THEN + book_infinite_spells_02
END

IF ~~ THEN book_infinite_spells_02
SAY @3681 /* ~Hmm... not as well explained as the De Simplex Magicae, though. It focuses on the practical use of throwing the spells. And the magic of the book restricts only random pages being opened, without the possibility to scroll back.~ */
= @3682 /* ~That's a very good safety feature. It makes people careful and teaches them how precious this magic is - I guess.~ */
++ @3683 /* ~Please, don't add this "feature" to any books you will be writing. It's too random.~ */ + book_infinite_spells_03
++ @3684 /* ~I'd rather it would work like a normal book where pages can be turned at will.~ */ + book_infinite_spells_03
++ @3685 /* ~I think it's completely unnecessary and restricts the usage of this book for no obvious reasons.~ */ + book_infinite_spells_03
++ @3686 /* ~Once the last page is reached we'll be stuck with whatever spell it holds. All others will be lost forever! How can you find excuses for such a restriction?~ */ + book_infinite_spells_03
++ @3687 /* ~Safety feature? I think the mage who implemented this thought they were really funny. Or liked being sadistic.~ */ + book_infinite_spells_03
++ @3677 /* ~I don't care. Study the book if you want, but do so in silence.~ */ + book_infinite_spells_11
END

IF ~~ THEN book_infinite_spells_03
SAY @3688 /* ~I think it is very restrictive. But it would be far too powerful if all pages could be opened at will.~ */
++ @3690 /* ~Are you saying such a book could be written where I could scroll back and forth?~ */ + book_infinite_spells_04
++ @3693 /* ~Could you rewrite this book so the pages can be turned freely?~ */ + book_infinite_spells_04
++ @3695 /* ~I would prefer to have such a book.~ */ + book_infinite_spells_05
++ @3696 /* ~I agree that it is already a powerful magic item.~ */ + book_infinite_spells_06
++ @3677 /* ~I don't care. Study the book if you want, but do so in silence.~ */ + book_infinite_spells_11
END

IF ~~ THEN book_infinite_spells_04
SAY @3691 /* ~Not this book, not like it is now, no. Not me, anyway. As much as it would interest me to know more about it...~ */
IF ~~ THEN + book_infinite_spells_05
END

IF ~~ THEN book_infinite_spells_05
SAY @3694 /* ~This book with pages so they could be turned both ways would make the book incradibly poweful. Imagine such a book in the wrong hands!~ */
IF ~~ THEN + book_infinite_spells_06
END

IF ~~ THEN book_infinite_spells_06
SAY @3707 /* ~The thought of such spells in the hands of non-magic skilled people is already frightening enough... and... so fascinating. Absolutely fascinating. How did they do that?...~ */
++ @3712 /* ~I'll leave you to it, then. Maybe you'll be able to learn something from it for your own work.~ */ + book_infinite_spells_10
++ @3708 /* ~Here he goes again. Let me know when you're back to this conversation.~ */ + book_infinite_spells_09
++ @3711 /* ~Can you do anything with this knowledge?~ */ + book_infinite_spells_10
++ @3677 /* ~I don't care. Study the book if you want, but do so in silence.~ */ + book_infinite_spells_11
END 

IF ~~ THEN book_infinite_spells_07
SAY @3709 /* ~Oh - *lots*, I hope!~ */
IF ~~ THEN + book_infinite_spells_02
END

IF ~~ THEN book_infinite_spells_09
SAY @3713 /* ~What? Oh.~ */
IF ~~ THEN + book_infinite_spells_10
END

END //APPEND  

CHAIN
IF ~~ THEN c#brandj book_infinite_spells_10
@3716 /* ~This is *most* fascinating. It uses the wisdom from the De Simplex Magicae, to some extend. And at the same time surpasses it in its implementation... I won't be able to write scrolls that work that way - not anytime soon, anyway.~ */
== c#brandj IF ~GlobalGT("C#Brando_sotsc_l#HIGBO","GLOBAL",1)~ THEN @3715 /* ~It's similar to the magic spell we got as a reward from Thalantyr's bookshelf... This sounds even when spoken out loud.~ */
== c#brandj IF ~PartyHasItem("MISC3A9")~ THEN @3717 /* ~A pity it is already at the last page. I'd have liked to see the other spell pages...~ */
END
IF ~~ THEN + book_infinite_spells_11

APPEND c#brandj 

IF ~~ THEN book_infinite_spells_11
SAY @3721 /* ~I'll study the book some more when we'll find the time. Whoever wrote this knew exactly what they were doing...~ */
IF ~~ THEN DO ~SetGlobal("C#Br_BookOfInfiniteSpells","GLOBAL",2) ReallyForceSpellRES("c#brlob1",Myself)~ EXIT
END

/* follow up dialogue: book of Infinite Spells. Brandock offers to hold the pages open */

IF ~Global("C#Br_BookOfInfiniteSpells","GLOBAL",3)~ THEN book_infinite_spells2
SAY @3673 /* ~I was studying the Book of Infinite Spells, <CHARNAME>. This looks like a book from Bowgentle, actually. I wonder whether it also has such a safety feature as the De Simplex Magicae had! This would be a great specimen to test a theory of mine. <CHARNAME>, can I subject this book to some destruction experim... - (Brandock's face splits into a wide grin.) Dang it, I knew I couldn't fool you. I can never hold my grin when I try!~ */
++ @3674 /* ~(smile) You are an honest person through and through, Brandock, and it's one of the things I like about you.~ */ + book_infinite_spells2_02_3
++ @3675 /* ~You did have me there for a very short moment, Brandock. Before you started grinning, of course.~ */ + book_infinite_spells2_02_1
++ @3676 /* ~Do you really think this is a laughing matter? What came out of the destroyed De Simplex Magicae surely went to your head, it seems.~ */ + book_infinite_spells2_02_1
++ @3689 /* Did you find out anything?~ */ + book_infinite_spells2_02_4
++ @3714 /* ~I don't care about that book, Brandock.~ */ DO ~SetGlobal("C#Br_BookOfInfiniteSpells","GLOBAL",5)~ + book_infinite_spells2_13
END

IF ~~ THEN book_infinite_spells2_02_1
SAY @3678 /* ~[Brandock]I was jesting, of course. I would indeed never destroy a book on purpose - unless I'd know *exactly* what I'm doing.~ */
IF ~~ THEN + book_infinite_spells2_02_2
END

IF ~~ THEN book_infinite_spells2_02_2
SAY @3679 /* ~[Brandock]I do hope you'll let me study this in earnest, though.~ */
IF ~~ THEN + book_infinite_spells2_02_4
END

IF ~~ THEN book_infinite_spells2_02_3
SAY @3680 /* ~I'm glad you see it that way. Most people called me a spoilsport.~ */
IF ~~ THEN + book_infinite_spells2_02_1
END

IF ~~ THEN book_infinite_spells2_02_4
SAY @3697 /* I admit all knowledge I so far gathered is that I'll never be able to write something like this - unless I dedicate myself to study the arts of making magic books at Candlekeep or Alisarhold. It is a very powerful book, even with the restriction of pages being lost. I wonder who wrote it - I think making it restricted like this is a rather sensible thing to do. *Or* someone with a lot of power had a lot of fun when doing it.~ */
IF ~~ THEN DO ~SetGlobal("C#Br_BookOfInfiniteSpells","GLOBAL",4)~ EXIT
IF ~!PartyHasItem("MISC3A9")~ THEN + book_infinite_spells2_02_5
END

IF ~~ THEN book_infinite_spells2_02_5
SAY @3692 /* ~That said, I believe I could do... *something* with this book. Seeing the magic behind the De Simplex Magicae teached me a lot of things. I think it should be possible to mark the pages - so that the ones opened could be reopened again.~ */
= @3718 /* ~Ah - I'm still unsure this is a good idea, but - do you want me to do that?~ */
++ @3698 /* Is that a question?! YES!~ */ + book_infinite_spells2_12
++ @3719 /* ~Yes, please.~ */ + book_infinite_spells2_12
++ @3720 /* ~No, leave the book as it is.~ */ DO ~SetGlobal("C#Br_BookOfInfiniteSpells","GLOBAL",5)~ + book_infinite_spells2_13
END
END //APPEND

CHAIN
IF ~~ THEN c#brandj book_infinite_spells2_12
@3722 /* ~Alright. This is how this will work: First I need you to scroll through the book. Any page you'll open I will mark so I can scroll back to it. Once you reach the last page I'll fix the markings so all of those pages can be reopened again like in a normal book. This is all I can offer. I can't force pages open that won't show by itself.~ */
== c#brandj IF ~OR(2)
PartyHasItem("MISC3AA")
PartyHasItem("MISC3A")~ THEN @3723 /* ~I already marked the first page with the spell "Fireball" on it.~ */ DO ~SetGlobal("C#Br_BoIS_AA","GLOBAL",1)~
== c#brandj IF ~PartyHasItem("MISC3A1")~ THEN @3724 /* ~I already marked the page with the spell "Invisibility" on it.~ */ DO ~SetGlobal("C#Br_BoIS_A1","GLOBAL",1)~
== c#brandj IF ~PartyHasItem("MISC3A2")~ THEN @3725 /* ~I already marked the page with the spell "Protection From Evil" on it.~ */ DO ~SetGlobal("C#Br_BoIS_A2","GLOBAL",1)~
== c#brandj IF ~PartyHasItem("MISC3A3")~ THEN @3726 /* ~I already marked the page with the spell "True Seeing" on it.~ */ DO ~SetGlobal("C#Br_BoIS_A3","GLOBAL",1)~
== c#brandj IF ~PartyHasItem("MISC3A4")~ THEN @3727 /* ~I already marked the page with the spell "Farsight" on it.~ */ DO ~SetGlobal("C#Br_BoIS_A4","GLOBAL",1)~
== c#brandj IF ~PartyHasItem("MISC3A5")~ THEN @3728 /* ~I already marked the page with the spell "Spell Turning" on it.~ */ DO ~SetGlobal("C#Br_BoIS_A5","GLOBAL",1)~
== c#brandj IF ~PartyHasItem("MISC3A6")~ THEN @3729 /* ~I already marked the page with the spell "Wyvern Call" on it.~ */ DO ~SetGlobal("C#Br_BoIS_A6","GLOBAL",1)~
== c#brandj IF ~PartyHasItem("MISC3A7")~ THEN @3730 /* ~I already marked the page with the spell "Stinking Cloud" on it.~ */ DO ~SetGlobal("C#Br_BoIS_A7","GLOBAL",1)~
== c#brandj IF ~PartyHasItem("MISC3A8")~ THEN @3731 /* ~I already marked the page with the spell "Lightning Bolt" on it.~ */ DO ~SetGlobal("C#Br_BoIS_A8","GLOBAL",1)~
== c#brandj @3732 /* ~Once you opened a new page, give me a little time before turning the next one. I'll let you know when I'm done. I won't comment on pages we already saw.~ */
END
IF ~~ THEN DO ~SetGlobal("C#Br_Rewrite_BoIS","LOCALS",1)
SetGlobal("C#Br_BookOfInfiniteSpells","GLOBAL",4)~ UNSOLVED_JOURNAL @10065 EXIT

APPEND c#brandj 

IF ~~ THEN book_infinite_spells2_13
SAY @3733 /* ~As you wish.~ */
IF ~~ THEN EXIT
END

/* Brandock marks the opened pages */
IF ~Global("C#Br_Rewrite_BoIS","LOCALS",2)~ THEN book_infinite_spells_A9
SAY @3734 
IF ~~ THEN DO ~SetGlobal("C#Br_Rewrite_BoIS","LOCALS",3)
SetGlobal("C#Br_BoIS_A9","GLOBAL",1)
ClearAllActions() StartCutSceneMode() StartCutScene("c#brcut5")~ EXIT
END

IF ~Global("C#Br_Rewrite_BoIS","LOCALS",3)~ THEN book_infinite_spells_rewritten
SAY @3735
IF ~~ THEN DO ~ActionOverride(Player1,TakePartyItem("MISC3A9"))
ActionOverride(Player1,DestroyItem("MISC3A9"))
GiveItemCreate("c#brboA9",Player1,1,0,0)
EraseJournalEntry(@10065)
SetGlobal("C#Br_Rewrite_BoIS","LOCALS",4)~ SOLVED_JOURNAL @10066 EXIT
END



END //APPEND