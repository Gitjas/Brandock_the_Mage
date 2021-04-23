EXTEND_TOP c#brandj scribe_scoll_02
/* Brandock writes an own magic book */
+ ~LevelGT("C#Brandock",8)
GlobalGT("C#Br_WriteDurableScrolls","LOCALS",3)
GlobalLT("C#Br_WriteBook","LOCALS",2)~ + @3024 DO ~SetGlobal("C#Br_WriteBook","LOCALS",2)~ + scribe_book_01
+ ~GlobalGT("C#Br_WriteBook","LOCALS",1)
GlobalLT("C#Br_WriteBook","LOCALS",7)~ + @3025 + scribe_book_02

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


/* after scrolls with several charges and Brandock is level 9: Brandock starts to write a book of infinite spells - but only for mages.
Each page needs special ingredients to be written.
He can only write 5 in total. */

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

/* wrote the last page */
IF WEIGHT #-1
~Global("C#Br_Scrollscribing","GLOBAL",2)
Global("C#Br_WriteBook","LOCALS",7)~ THEN scribe_book_last
SAY @3601
IF ~~ THEN DO ~SetGlobal("C#Br_Scrollscribing","GLOBAL",3)
SetGlobal("C#Br_WriteBook","LOCALS",8)
ActionOverride("C#Brhelp",DestroySelf())~ EXIT
END

IF ~LevelGT("C#Brandock",8)
Global("c#brscrl","GLOBAL",1)
GlobalGT("C#Br_WriteDurableScrolls","LOCALS",3)
Global("C#Br_WriteBook","LOCALS",0)~ THEN scribe_book_00
SAY @3602
= @3603
IF ~~ THEN DO ~SetGlobal("C#Br_WriteBook","LOCALS",1)
SetGlobal("c#brscrl","GLOBAL",2)~ + scribe_scoll_02
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
Global("C#Br_WriteBookPage08","GLOBAL",0)~ THEN @3619
== c#brandj IF ~Global("C#Br_WriteBookPage19","GLOBAL",0)~ THEN @3620
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
SetGlobal("C#Br_Scrollscribing","GLOBAL",2) CreateCreatureObject("C#Brhelp",Myself,0,0,0)~ EXIT
END

IF ~~ THEN scribe_book_04
SAY @3636
IF ~~ THEN DO ~IncrementGlobal("C#Br_WriteBook","LOCALS",1)
IncrementGlobal("C#Br_ScribeBookComment","LOCALS",1)
SetGlobal("C#Br_Scrollscribing","GLOBAL",2) CreateCreatureObject("C#Brhelp",Myself,0,0,0)~ EXIT
END

/* De Simplex Magicae is restored & Brandock is level 5. Brandock writes scrolls with several charges 
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

/* Book is finished - Brandock realizes what he's done... */

IF ~Global("C#Br_WriteBook","LOCALS",9)~ THEN finished_book
SAY @3648
++ @3649 + finished_book_01
++ @3650 + finished_book_02
++ @3651 + finished_book_00
++ @3652 + finished_book_06
++ @3653 + finished_book_07
END 

IF ~~ THEN finished_book_00
SAY @3654
IF ~~ THEN + finished_book_02
END

IF ~~ THEN finished_book_01
SAY @3655
IF ~~ THEN + finished_book_02
END

IF ~~ THEN finished_book_02
SAY @3656
++ @3657 + finished_book_04
++ @3658 + finished_book_03
++ @3659 + finished_book_04
++ @3660 + finished_book_03
END

IF ~~ THEN finished_book_03
SAY @3661
IF ~~ THEN + finished_book_05
END

IF ~~ THEN finished_book_04
SAY @3662
IF ~~ THEN + finished_book_05
END

IF ~~ THEN finished_book_05
SAY @3663
= @3664
IF ~~ THEN + finished_book_08
END

IF ~~ THEN finished_book_06
SAY @3665
IF ~~ THEN + finished_book_05
END

IF ~~ THEN finished_book_07
SAY @3666
IF ~~ THEN + finished_book_08
END

IF ~~ THEN finished_book_08
SAY @3667
IF ~~ THEN DO ~SetGlobal("C#Br_WriteBook","LOCALS",10)~ EXIT
END


/* book of infinite spells */

IF ~Global("C#Br_BookOfInfiniteSpells","GLOBAL",1)~ THEN book_infinite_spells
SAY @3668
++ @3669 + book_infinite_spells_01
++ @3670 + book_infinite_spells_02
++ @3671 + book_infinite_spells_01
END

IF ~~ THEN book_infinite_spells_01
SAY @3672 
IF ~~ THEN + book_infinite_spells_02
END

IF ~~ THEN book_infinite_spells_02
SAY @3673
++ @3674 + book_infinite_spells_02_3
++ @3675 + book_infinite_spells_02_1
++ @3676 + book_infinite_spells_02_1
++ @3677 DO ~SetGlobal("C#Br_BookOfInfiniteSpells","GLOBAL",5)~ + book_infinite_spells_11
END

IF ~~ THEN book_infinite_spells_02_1
SAY @3678
IF ~~ THEN + book_infinite_spells_02_2
END

IF ~~ THEN book_infinite_spells_02_2
SAY @3679
IF ~~ THEN + book_infinite_spells_02_4
END

IF ~~ THEN book_infinite_spells_02_3
SAY @3680
IF ~~ THEN + book_infinite_spells_02_1
END

IF ~~ THEN book_infinite_spells_02_4
SAY @3681
= @3682
++ @3683 + book_infinite_spells_03
++ @3684 + book_infinite_spells_03
++ @3685 + book_infinite_spells_03
++ @3686 + book_infinite_spells_03
++ @3687 + book_infinite_spells_03
++ @3677 DO ~SetGlobal("C#Br_BookOfInfiniteSpells","GLOBAL",5)~ + book_infinite_spells_11
END

IF ~~ THEN book_infinite_spells_03
SAY @3688
+ ~GlobalGT("C#Br_BookRestore","GLOBAL",21)~ + @3689 + book_infinite_spells_04
+ ~GlobalGT("C#Br_BookRestore","GLOBAL",21)~ + @3690 + book_infinite_spells_04
+ ~GlobalLT("C#Br_BookRestore","GLOBAL",22)~ + @3689 + book_infinite_spells_03_1
+ ~GlobalLT("C#Br_BookRestore","GLOBAL",22)~ + @3690 + book_infinite_spells_03_1
++ @3677 DO ~SetGlobal("C#Br_BookOfInfiniteSpells","GLOBAL",5)~ + book_infinite_spells_11
END

IF ~~ THEN book_infinite_spells_03_1
SAY @3691
IF ~~ THEN DO ~SetGlobal("C#Br_BookOfInfiniteSpells","GLOBAL",2)~ + book_infinite_spells_11
END

IF ~~ THEN book_infinite_spells_04
SAY @3692
IF ~~ THEN + book_infinite_spells_04_2
END

IF ~Global("C#Br_BookOfInfiniteSpells","GLOBAL",3)~ THEN book_infinite_spells_04_1
SAY @3693
IF ~~ THEN + book_infinite_spells_04_2
END

END //APPEND

CHAIN
IF ~~ THEN c#brandj book_infinite_spells_04_2
@3694
== c#brandj IF ~GlobalGT("C#Br_WriteBook","LOCALS",7)~ THEN @3695
END
++ @3696 + book_infinite_spells_05
++ @3697 + book_infinite_spells_06
++ @3698 + book_infinite_spells_06
++ @3699 + book_infinite_spells_07
++ @3700 + book_infinite_spells_08
+ ~Global("C#Br_BookOfInfiniteSpells","GLOBAL",3)~ + @3677 DO ~SetGlobal("C#Br_BookOfInfiniteSpells","GLOBAL",5)~ + book_infinite_spells_13
+ ~GlobalLT("C#Br_BookOfInfiniteSpells","GLOBAL",3)~ + @3677 DO ~SetGlobal("C#Br_BookOfInfiniteSpells","GLOBAL",5)~ + book_infinite_spells_11

CHAIN
IF ~~ THEN c#brandj book_infinite_spells_05
@3701
== c#brandj IF ~GlobalGT("C#Brandock_Shapeshift","GLOBAL",17)~ THEN @3702
== c#brandj IF ~GlobalLT("C#Brandock_Shapeshift","GLOBAL",18)~ THEN @3703
END
IF ~~ THEN + book_infinite_spells_06_1


APPEND c#brandj 

IF ~~ THEN book_infinite_spells_06
SAY @3704
IF ~~ THEN + book_infinite_spells_08
END

IF ~~ THEN book_infinite_spells_06_1
SAY @3705
IF ~~ THEN + book_infinite_spells_06
END

IF ~~ THEN book_infinite_spells_07
SAY @3706
IF ~~ THEN + book_infinite_spells_06_1
END

IF ~~ THEN book_infinite_spells_08
SAY @3707
++ @3708 + book_infinite_spells_09
++ @3709 + book_infinite_spells_09
++ @3710 + book_infinite_spells_09
++ @3711 + book_infinite_spells_10
++ @3712 + book_infinite_spells_10
+ ~Global("C#Br_BookOfInfiniteSpells","GLOBAL",3)~ + @3677 DO ~SetGlobal("C#Br_BookOfInfiniteSpells","GLOBAL",5)~ + book_infinite_spells_13
+ ~GlobalLT("C#Br_BookOfInfiniteSpells","GLOBAL",3)~ + @3677 DO ~SetGlobal("C#Br_BookOfInfiniteSpells","GLOBAL",5)~ + book_infinite_spells_11
END 

IF ~~ THEN book_infinite_spells_09
SAY @3713
IF ~~ THEN + book_infinite_spells_10
END

END //APPEND  

CHAIN
IF ~~ THEN c#brandj book_infinite_spells_10
@3714
== c#brandj IF ~GlobalGT("C#Brando_sotsc_l#HIGBO","GLOBAL",1)~ THEN @3715
== c#brandj @3716
== c#brandj IF ~PartyHasItem("MISC3A9")~ THEN @3717
== c#brandj IF ~!PartyHasItem("MISC3A9")~ THEN @3718
END
IF ~PartyHasItem("MISC3A9")
Global("C#Br_BookOfInfiniteSpells","GLOBAL",3)~ THEN DO ~SetGlobal("C#Br_BookOfInfiniteSpells","GLOBAL",5)~ + book_infinite_spells_13
IF ~PartyHasItem("MISC3A9")
GlobalLT("C#Br_BookOfInfiniteSpells","GLOBAL",3)~ THEN DO ~SetGlobal("C#Br_BookOfInfiniteSpells","GLOBAL",5)~ + book_infinite_spells_11
+ ~!PartyHasItem("MISC3A9")~ + @3719 + book_infinite_spells_12
+ ~!PartyHasItem("MISC3A9")
Global("C#Br_BookOfInfiniteSpells","GLOBAL",3)~ + @3720 DO ~SetGlobal("C#Br_BookOfInfiniteSpells","GLOBAL",5)~ + book_infinite_spells_13
+ ~!PartyHasItem("MISC3A9")
GlobalLT("C#Br_BookOfInfiniteSpells","GLOBAL",3)~ + @3720 DO ~SetGlobal("C#Br_BookOfInfiniteSpells","GLOBAL",5)~ + book_infinite_spells_11

APPEND c#brandj 

IF ~~ THEN book_infinite_spells_11
SAY @3721
IF ~~ THEN DO ~ReallyForceSpellRES("c#brlob1",Myself)~ EXIT
END

END //APPEND

CHAIN
IF ~~ THEN c#brandj book_infinite_spells_12
@3722
== c#brandj IF ~OR(2)
PartyHasItem("MISC3AA")
PartyHasItem("MISC3A")~ THEN @3723 DO ~SetGlobal("C#Br_BoIS_AA","GLOBAL",1)~
== c#brandj IF ~PartyHasItem("MISC3A1")~ THEN @3724 DO ~SetGlobal("C#Br_BoIS_A1","GLOBAL",1)~
== c#brandj IF ~PartyHasItem("MISC3A2")~ THEN @3725 DO ~SetGlobal("C#Br_BoIS_A2","GLOBAL",1)~
== c#brandj IF ~PartyHasItem("MISC3A3")~ THEN @3726 DO ~SetGlobal("C#Br_BoIS_A3","GLOBAL",1)~
== c#brandj IF ~PartyHasItem("MISC3A4")~ THEN @3727 DO ~SetGlobal("C#Br_BoIS_A4","GLOBAL",1)~
== c#brandj IF ~PartyHasItem("MISC3A5")~ THEN @3728 DO ~SetGlobal("C#Br_BoIS_A5","GLOBAL",1)~
== c#brandj IF ~PartyHasItem("MISC3A6")~ THEN @3729 DO ~SetGlobal("C#Br_BoIS_A6","GLOBAL",1)~
== c#brandj IF ~PartyHasItem("MISC3A7")~ THEN @3730 DO ~SetGlobal("C#Br_BoIS_A7","GLOBAL",1)~
== c#brandj IF ~PartyHasItem("MISC3A8")~ THEN @3731 DO ~SetGlobal("C#Br_BoIS_A8","GLOBAL",1)~
== c#brandj @3732
END
IF ~Global("C#Br_BookOfInfiniteSpells","GLOBAL",3)~ THEN DO ~SetGlobal("C#Br_Rewrite_BoIS","LOCALS",1)
SetGlobal("C#Br_BookOfInfiniteSpells","GLOBAL",4)~ UNSOLVED_JOURNAL @10065 EXIT
IF ~GlobalLT("C#Br_BookOfInfiniteSpells","GLOBAL",3)~ THEN DO ~SetGlobal("C#Br_Rewrite_BoIS","LOCALS",1)
SetGlobal("C#Br_BookOfInfiniteSpells","GLOBAL",4)~ UNSOLVED_JOURNAL @10065 + book_infinite_spells_11

APPEND c#brandj 

IF ~~ THEN book_infinite_spells_13
SAY @3733
IF ~~ THEN EXIT
END

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