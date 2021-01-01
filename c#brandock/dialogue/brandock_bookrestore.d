
APPEND FIREBE

/* Firebead will give his book quest first if he hasn't already. It only triggers for "IsGabber(Player1) in BGT. BG:EE rearranged the whole FIREBE dialogue states for reasons unknown. */
IF WEIGHT #-1
~Global("TalkedToFirebead","GLOBAL",0)
//Global("C#Br_BookRestore","GLOBAL",1)
//PartyHasItem("c#br0001")
InMyArea(Player1)
InMyArea("C#Brandock")
OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2)
!StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN greeting_brandock
SAY @750
IF ~~ THEN + %FIREBE_Bookqueststate%
END

/* Brandock comes with all ingredients */
/* POTN42 - potion of Regeneration */
/* Star Sapphire MISC41.itm */

IF WEIGHT #-1
~OR(2)
	Global("C#Br_BookRestore","GLOBAL",2)
	Global("C#Br_BookRestore","GLOBAL",4)
PartyHasItem("c#br0001")
PartyHasItem("POTN42") PartyHasItem("MISC41") PartyHasItem("c#broink")
InMyArea(Player1)
InMyArea("C#Brandock")
OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2)
!StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN bookrestore
SAY @751
IF ~~ THEN DO ~SetGlobal("C#Br_BookRestore","GLOBAL",5)
ClearAllActions() StartCutSceneMode() StartCutScene("c#brcu11")~ EXIT
END


END //APPEND


/* Brandock wants help with the destroyed book */
/* Brandock: initiates dialog if Global("TalkedToFirebead","GLOBAL",1): 
 If Firebead's book quest was given, Brandock will initiate dialogue. */

CHAIN
IF ~Global("C#Br_BookRestore","GLOBAL",1)
PartyHasItem("c#br0001")
See("FIREBE")~ THEN c#brandj brandock_quest
@752
== FIREBE @753
== c#brandj @975
= @976
== FIREBE @755
= @977
= @982
= @978
= @979
== c#brandj @757
END
IF ~~ THEN DO ~EraseJournalEntry(@10021)
AddJournalEntry(@10050,QUEST)
SetGlobal("C#Brandock_ScrollscribingElvenhair","GLOBAL",1)
SetGlobal("C#Br_BookRestore","GLOBAL",2)~ UNSOLVED_JOURNAL @10022 EXIT

/* after book restore cutscene */
CHAIN
IF ~Global("C#Br_BookRestore","GLOBAL",5)~ THEN c#brandj bookrestore
@758
== FIREBE @980 /* ~Oh, I didn't expect this to happen. Hmm... Seems the creator of this book included a precautionary enchantment should it be damaged - the enchantment on the destroyed book latched onto our attempts to restore it and transformed back into a book.~ */
== c#brandj @760 /* ~You've... *got* to be kidding me.~ */
== FIREBE @981 /* ~But, since it was heavily damaged, it emptied the pages. Hmm... The spells need to be added back by a mage of high enough expertise. At least I *think* this is what the first pages are saying, but my Ruathlek is not the best. To understand the rest I'd need my lexicon, which is in Candlekeep.~ */
= @761  /* ~This is most fascinating, it seems this transformation is related to the simplified magic formulas characterizing the De Simplex Magicae. We just raised the book to its next level, and a lot could be learnt from that. You need to find a way into Candlekeep with this, young friend. Unfortunately, it is not valuable enough in its current state, but it will be a most precious object of study. If you ever earn the way into Candlekeep, I will make sure the sages know about this.~ */
= @972 /* But we cannot know when this will come to pass, and I am much too intrigued to wait for it to happen. I will do the following, my young mage. Next time my ways guide me to Candlekeep, I will bring my private copy of Ruathlek lexicon with me. I do not know yet when this will be, I fear it will be a while still. I will let you know once this happens.~ */
= @973 /* ~Until then we would be poorly advised to just try and do anything more with the book before we do not know what exactly it says how to proceed to restore it. Do not attempt to write spells into it on your own account, Brandock. I fear for you safety.~ */
== c#brandj @974  /* ~[Brandock] I would never, Master Elvenhair. I know how dangerous it can be, ahem. Thank you - thank you so much for all your help. I am completely stunned and don't know what to say.~ */
= @971 /* ~This was a most interesting experience for me at my age, young man. Please, continue to note down what you remember from the book's spells as you already did. Until we know exactly what the first pages translate to we should not risk the recipes getting lost.~ */
== c#brandj @763 /* ~Thank you, Master Elvenhair. I don't know what to say... <CHARNAME>, I... I need to process what just happened. My head feels like it's gonna *explode*.~ */
END
IF ~~ THEN DO ~EraseJournalEntry(@10026)
SetGlobal("C#Br_BookRestore","GLOBAL",6)~ UNSOLVED_JOURNAL @10051 EXIT


APPEND c#brandj

/* group has all needed ingredients */

IF ~Global("C#Brandock_AllIngredientsBG1","GLOBAL",1)~ THEN all_ingredients
SAY @764
IF ~~ THEN DO ~SetGlobal("C#Brandock_AllIngredientsBG1","GLOBAL",2)~ UNSOLVED_JOURNAL @10026 EXIT
END



/* Brandock after leaving Elvenhair's home: restore book quest */

IF ~Global("C#Br_BookRestore","GLOBAL",3)~ THEN after_elvenhair
SAY @765
++ @766 + after_elvenhair_01
++ @767 + after_elvenhair_02
++ @768 + after_elvenhair_02
END

IF ~~ THEN after_elvenhair_01
SAY @769
IF ~~ THEN + after_elvenhair_02
END

END //APPEND
CHAIN
IF ~~ THEN c#brandj after_elvenhair_02
@770 
DO ~SetGlobal("C#Br_BookRestore","GLOBAL",4)~
== c#brandj IF ~!PartyHasItem("POTN42") !PartyHasItem("MISC41") !PartyHasItem("c#broink")~ THEN @771
== c#brandj IF ~OR(3)
!PartyHasItem("POTN42") !PartyHasItem("MISC41") !PartyHasItem("c#broink")
OR(3)
PartyHasItem("POTN42") PartyHasItem("MISC41") PartyHasItem("c#broink")~ THEN @772
== c#brandj IF ~PartyHasItem("POTN42") PartyHasItem("MISC41") PartyHasItem("c#broink")~ THEN @773 DO ~SetGlobal("C#Brandock_AllIngredientsBG1","GLOBAL",2) EraseJournalEntry(@10022) AddJournalEntry(@10026,QUEST)~
EXIT

APPEND c#brandj

/* after book transformed */
IF ~Global("C#Br_BookRestore","GLOBAL",7)~ THEN transformed_book
SAY @774 /* ~Well, that-that definitely went differently than expected.~ [c#ablank] */
++ @775 /* ~It definitely did, yes.~ */ + transformed_book_02
++ @776 /* ~Your book is a book again!~ */ + transformed_book_02
++ @777 /* ~You "lifted the book to its next level", eh?~ */ + transformed_book_02
++ @778 /* ~Don't tell me we will go through *another* "I can't believe what happened" phase!~ */ + transformed_book_01
++ @779 /* ~Great, now we can go back to do important things.~ */ + transformed_book_09
END

IF ~~ THEN transformed_book_01
SAY @780 /* ~But I definitely am in such a phase! Or did you understand what happened?~ */
IF ~~ THEN + transformed_book_02
END

IF ~~ THEN transformed_book_02
SAY @781 /* ~It-it turned into a whole book - I mean a book in whole - I mean a real book, with cover and pages, not "whole" in the sense of "everything is inside". By itself! From those snippets and pieces I recovered from the fox hole. Because of a preservation spell!~ */
++ @782 /* ~You really think the creators of that book put such a spell on it on purpose?~ */ + transformed_book_04
++ @783 /* ~I know, Brandock, I was there when it happened.~ */ + transformed_book_03
++ @779 /* ~Great, now we can go back to do important things.~ */ + transformed_book_09
END

IF ~~ THEN transformed_book_03
SAY @784 /* ~I'm sorry, I'm still trying to process what happened.~ */
++ @782 /* ~You really think the creators of that book put such a spell on it on purpose?~ */ + transformed_book_04
++ @779 /* ~Great, now we can go back to do important things.~ */ + transformed_book_09
END

IF ~~ THEN transformed_book_04
SAY /* @##  @785 */ ~What else could it be? Yes, I believe they did. The spells have to be added back by a mage of high enough expertise... But of course we will only know for sure once I have the chance to study it thoroughly. With which Master Elvenhair will help me by bringing his Ruathlek lexicon from Candlekeep... Candlekeep!~ 
IF ~~ THEN + transformed_book_05
END

IF ~~ THEN transformed_book_05
SAY /* @##  @786 */ ~Master Elvenhair would even welcome me in Candlekeep with this book to study. He said that, didn't he? You heard it too?~ 
++ @787 /* ~Yes, he definitely was most fascinated by the whole thing.~ */ + transformed_book_06
++ @788 /* ~I am very happy for you, Brandock.~ */ + transformed_book_06
+ ~!PartyHasItem("BOOK68")~ + @789 + transformed_book_07
++ @779 /* ~Great, now we can go back to do important things.~ */ + transformed_book_09
END

IF ~~ THEN transformed_book_06
SAY @790 /* ~He made it sound as if I'd even be *welcome* there, with this book. "Next level", and all it needed was a little teeth-work and a preservation spell.~ */
IF ~~ THEN + transformed_book_07
END

IF ~~ THEN transformed_book_07
SAY @791 /* ~I can't believe how fate turned. It-it *did* turn, didn't it? Something good came out of this, this *mess*. I feel blessed and cursed at the same time, <CHARNAME>. Cursed, because I will remain the laughing stock of every mage out there, but blessed because it gave me the opportunity to not only restore the original magic spells the book contained, but also to discover unknown protection spells the creators put onto it.~ */
IF ~~ THEN + transformed_book_08
END

IF ~~ THEN transformed_book_08
SAY @792 /* ~But, oh no, I will not start to think I *achieved* anything with what happened. It will be a fine specimen for examination, and maybe no one would have found out if it wouldn't have happened, but... No, I will never pretend it was a great achievement to have it destroyed first.~ */
++ @793 /* ~I understand what you mean.~ */ + transformed_book_10
++ @794 /* ~Still, it's true. Protected in the high halls of some monastery, no one would have discovered that secret.~ */ + transformed_book_11
++ @779 /* ~Great, now we can go back to do important things.~ */ + transformed_book_09
END

IF ~~ THEN transformed_book_09
SAY @795 /* ~That we can! That we definitely can.~ */
IF ~~ THEN + transformed_book_10
END

IF ~~ THEN transformed_book_10
SAY /* @## @796 */ ~But... to know the book is not lost! And the thought of not being expelled from Candlekeep - that I might be welcome, even! I have a goal again, <CHARNAME>. I will help you with your endeavors, and I will save my gold, and I will buy a new book, valuable enough to get entry into the monastery. Someday, <CHARNAME>. Someday I will be there!~ 
IF ~~ THEN DO ~SetGlobal("C#Br_BookRestore","GLOBAL",8)~ EXIT
END

IF ~~ THEN transformed_book_11
SAY @797 /* ~I know it's true, but... I will never be anything compared to being proud about it, you know.~ */
IF ~~ THEN + transformed_book_10
END


/* follow-up: restored book */

IF ~Global("C#Br_BookRestore","GLOBAL",9)~ THEN transformed_book2
SAY @798
++ @799 + transformed_book2_01
++ @800 + transformed_book2_02
++ @801 + transformed_book2_03
++ @802 + transformed_book2_01
END 

IF ~~ THEN transformed_book2_01
SAY @803
++ @800 + transformed_book2_02
++ @801 + transformed_book2_03
++ @802 + transformed_book2_05
END

IF ~~ THEN transformed_book2_02
SAY @804
IF ~~ THEN + transformed_book2_04
END

IF ~~ THEN transformed_book2_03
SAY @805
IF ~~ THEN + transformed_book2_04
END

IF ~~ THEN transformed_book2_04
SAY @806
++ @807 + transformed_book2_07
++ @808 + transformed_book2_06
++ @809 + transformed_book2_07
END

IF ~~ THEN transformed_book2_05
SAY @810
IF ~~ THEN + transformed_book2_04
END

IF ~~ THEN transformed_book2_06
SAY @811
IF ~~ THEN + transformed_book2_07
END

IF ~~ THEN transformed_book2_07
SAY @812
IF ~~ THEN DO ~SetGlobal("C#Br_BookRestore","GLOBAL",10)~ EXIT
END






/* book cycle: dialogues after destroyed book is found */


/* ponders about scrumbled book #1 */

IF ~Global("C#Brandock_Possessions","GLOBAL",5)~ THEN book1
SAY @813
++ @814 + book1_03
++ @815 + book1_03
++ @816 + book1_01
+ ~GlobalGT("C#Brandock_Shapeshift","GLOBAL",8)~ + @817 + book1_02
++ @818 + book1_05
++ @819 DO ~SetGlobal("C#BR_BCSelfPity","LOCALS",1)~ + book1_01
END

IF ~~ THEN book1_01
SAY @820
IF ~~ THEN + book1_04
END

IF ~~ THEN book1_02
SAY @821
IF ~~ THEN + book1_04
END

IF ~~ THEN book1_03
SAY @822
IF ~~ THEN + book1_04
END

IF ~~ THEN book1_04
SAY @823
IF ~~ THEN + book1_06
END

IF ~~ THEN book1_05
SAY @824
IF ~~ THEN + book1_07
END

IF ~~ THEN book1_06
SAY @825
++ @826 + book1_07
++ @827 + book1_05
++ @828 + book1_08
++ @829 + book1_07
++ @830 + book1_14
END

IF ~~ THEN book1_07
SAY @831
++ @832 + book1_09
++ @833 + book1_10
++ @834 + book1_11
++ @830 + book1_14 
END

IF ~~ THEN book1_08
SAY @835
IF ~~ THEN + book1_07
END

IF ~~ THEN book1_09
SAY @836
++ @834 + book1_11
++ @830 + book1_14 
END

IF ~~ THEN book1_10
SAY @837
++ @834 + book1_11
++ @830 + book1_14 
END

IF ~~ THEN book1_11
SAY @838
IF ~~ THEN + book1_12
END

IF ~~ THEN book1_12
SAY @839
++ @840 + book1_13
++ @841 + book1_13
++ @842 + book1_14
++ @843 + book1_14
++ @830 + book1_14 
END

IF ~~ THEN book1_13
SAY @844
IF ~~ THEN + book1_14
END

IF ~~ THEN book1_14
SAY @845
IF ~~ THEN DO ~SetGlobal("C#Brandock_Possessions","GLOBAL",6)~ EXIT 
END



/* second dialogue book cycle */

IF ~Global("C#Brandock_Possessions","GLOBAL",7)~ THEN book2
SAY @846
++ @847 + book2_01
++ @848 + book2_03
++ @849 + book2_02
++ @850 + book2_14
END

IF ~~ THEN book2_01
SAY @851
IF ~~ THEN + book2_03
END

IF ~~ THEN book2_02
SAY @852
IF ~~ THEN + book2_03
END

IF ~~ THEN book2_03
SAY @853
+ ~Global("C#BR_TryBookCKPID","LOCALS",1)~ + @854 + book2_15
++ @855 + book2_04
++ @856 + book2_04
++ @857 + book2_05
++ @858 DO ~SetGlobal("C#BR_Book2_06","LOCALS",1)~ + book2_06
++ @859 DO ~SetGlobal("C#BR_Book2_07","LOCALS",1)~ + book2_07
++ @860 DO ~SetGlobal("C#BR_Book2_09","LOCALS",1)~ + book2_09
++ @861 + book2_11
END

IF ~~ THEN book2_04
SAY @862
+ ~Global("C#BR_Book2_06","LOCALS",0)~ + @858 DO ~SetGlobal("C#BR_Book2_06","LOCALS",1)~ + book2_06
+ ~Global("C#BR_Book2_07","LOCALS",0)~ + @859 DO ~SetGlobal("C#BR_Book2_07","LOCALS",1)~ + book2_07
++ @860 + book2_09
++ @861 + book2_11
END

IF ~~ THEN book2_05
SAY @863
+ ~Global("C#BR_Book2_06","LOCALS",0)~ + @858 DO ~SetGlobal("C#BR_Book2_06","LOCALS",1)~ + book2_06
+ ~Global("C#BR_Book2_07","LOCALS",0)~ + @859 DO ~SetGlobal("C#BR_Book2_07","LOCALS",1)~ + book2_07
++ @860 + book2_09
++ @861 + book2_11
END

IF ~~ THEN book2_06
SAY @864
++ @865 + book2_08
+ ~Global("C#BR_Book2_07","LOCALS",0)~ + @859 DO ~SetGlobal("C#BR_Book2_07","LOCALS",1)~ + book2_07
++ @860 + book2_09
++ @861 + book2_11
END

IF ~~ THEN book2_07
SAY @866
+ ~Global("C#BR_Book2_06","LOCALS",0)~ + @858 DO ~SetGlobal("C#BR_Book2_06","LOCALS",1)~ + book2_06
++ @860 + book2_09
++ @861 + book2_11
END

IF ~~ THEN book2_08
SAY @867
+ ~Global("C#BR_Book2_07","LOCALS",0)~ + @859 DO ~SetGlobal("C#BR_Book2_07","LOCALS",1)~ + book2_07
++ @860 + book2_09
++ @861 + book2_11
END

IF ~~ THEN book2_09
SAY @868
IF ~~ THEN + book2_10
END

IF ~~ THEN book2_10
SAY @869
IF ~~ THEN + book2_12
END

IF ~~ THEN book2_11
SAY @870
++ @871 + book2_12
++ @872 + book2_13
++ @873 + book2_14
END

IF ~~ THEN book2_12
SAY @874
= @875
IF ~~ THEN DO ~IncrementGlobal("C#Brandock_Possessions","GLOBAL",1)~ EXIT
END

IF ~~ THEN book2_13
SAY @876
IF ~~ THEN + book2_12
END

IF ~~ THEN book2_14
SAY @877
IF ~~ THEN DO ~IncrementGlobal("C#Brandock_Possessions","GLOBAL",1)~ EXIT
END

IF ~~ THEN book2_15
SAY @878
++ @855 + book2_04
++ @856 + book2_04
++ @857 + book2_05
++ @858 DO ~SetGlobal("C#BR_Book2_06","LOCALS",1)~ + book2_06
++ @859 DO ~SetGlobal("C#BR_Book2_07","LOCALS",1)~ + book2_07
++ @860 DO ~SetGlobal("C#BR_Book2_09","LOCALS",1)~ + book2_09
++ @861 + book2_11
END

/* book cycle 3rd talk */

IF ~Global("C#Brandock_Possessions","GLOBAL",9)~ THEN book3
SAY @879
++ @880 + book3_02
++ @881 + book3_03
++ @882 + book3_04
++ @883 + book3_01
END

IF ~~ THEN book3_01
SAY @884
IF ~~ THEN DO ~IncrementGlobal("C#Brandock_Possessions","GLOBAL",1)
SetGlobal("C#BR_AlisarholdPID","LOCALS",1)~ EXIT
END

IF ~~ THEN book3_02
SAY @885
++ @882 + book3_04
++ @883 + book3_01
END

IF ~~ THEN book3_03
SAY @886
++ @882 + book3_04
++ @883 + book3_01
END

IF ~~ THEN book3_04
SAY @887
IF ~~ THEN DO ~IncrementGlobal("C#Brandock_Possessions","GLOBAL",1)
SetGlobal("C#BR_AlisarholdPID","LOCALS",1)~ EXIT
END


/* book cycle 4th dialogue */
IF ~Global("C#Brandock_Possessions","GLOBAL",11)~ THEN book4
SAY @888
++ @889 + book4_01
++ @890 + book4_01
++ @891 + book4_01
++ @892 + book4_02
END

IF ~~ THEN book4_01
SAY @893
IF ~~ THEN DO ~IncrementGlobal("C#Brandock_Possessions","GLOBAL",1)~ EXIT
END

IF ~~ THEN book4_02
SAY @894
IF ~~ THEN DO ~IncrementGlobal("C#Brandock_Possessions","GLOBAL",1)~ EXIT
END



/* book cycle 5th dialogue */
IF ~Global("C#Brandock_Possessions","GLOBAL",13)~ THEN book5
SAY @895
++ @896 + book5_03
++ @897 + book5_01
++ @898 + book5_02
++ @899 + book5_08
END

IF ~~ THEN book5_01
SAY @900
IF ~~ THEN + book5_03
END

IF ~~ THEN book5_02
SAY @901
IF ~~ THEN + book5_03
END

IF ~~ THEN book5_03
SAY @902
= @903
++ @904 + book5_04
++ @905 + book5_04
++ @906 + book5_06
++ @907 + book5_05
END

IF ~~ THEN book5_04
SAY @908
++ @909 + book5_07
++ @910 + book5_07
++ @911 + book5_07
END

IF ~~ THEN book5_05
SAY @912
IF ~~ THEN + book5_04
END

IF ~~ THEN book5_06
SAY @913
IF ~~ THEN + book5_04
END

IF ~~ THEN book5_07
SAY @914
IF ~~ THEN DO ~IncrementGlobal("C#Brandock_Possessions","GLOBAL",1) SetGlobal("C#BR_FireTablePID","LOCALS",1)~ EXIT
END

IF ~~ THEN book5_08
SAY @915
IF ~~ THEN DO ~IncrementGlobal("C#Brandock_Possessions","GLOBAL",1)~ EXIT
END


/* 6th dialogue book cycle */

IF ~Global("C#Brandock_Possessions","GLOBAL",15)~ THEN book6
SAY @916
= @917
++ @918 + book6_01
++ @848 + book6_01
++ @919 + book6_04
END

END //APPEND

CHAIN
IF ~~ THEN c#brandj book6_01
@920 
== c#brandj IF ~!GlobalGT("C#Brandock_Shapeshift","GLOBAL",5)~ THEN @921
== c#brandj IF ~GlobalGT("C#Brandock_Shapeshift","GLOBAL",5)~ THEN @922
== c#brandj @923
END
++ @924 + book6_03
++ @925 + book6_02
++ @926 + book6_03

APPEND c#brandj 

IF ~~ THEN book6_02
SAY @927
IF ~~ THEN + book6_03
END

IF ~~ THEN book6_03
SAY @928
IF ~~ THEN DO ~IncrementGlobal("C#Brandock_Possessions","GLOBAL",1)~ UNSOLVED_JOURNAL @10019 /* ~Brandock Wants to Restore his Book

Brandock mentioned that almost all spells from his desroyed book are in his memory, and he wants to restore the book. For this he needs a friendly mage who would help him with it. I should talk to him again about it.~ */ EXIT
END

IF ~~ THEN book6_04
SAY @929
IF ~~ THEN + book6_03
END


/* Brandock wants to write down his own wisdom -> rest dialogue: */

IF ~Global("C#Brandock_Possessions","GLOBAL",17)~ THEN book_rest
SAY @930
++ @931 + book_rest_01
++ @932 + book_rest_01
++ @933 DO ~SetGlobal("C#Brandock_Possessions","GLOBAL",17)~ + book_rest_02
++ @934 DO ~SetGlobal("C#Brandock_Possessions","GLOBAL",19)~ + book_rest_02
END

IF ~~ THEN book_rest_01
SAY @935
++ @933 DO ~SetGlobal("C#Brandock_Possessions","GLOBAL",18)~ + book_rest_02
++ @934 DO ~SetGlobal("C#Brandock_Possessions","GLOBAL",20)~ + book_rest_02
END

IF ~~ THEN book_rest_02
SAY @936
IF ~~ THEN DO ~RestParty()~ EXIT
END

/* Wake up dialogues */
/* PC put the book away */
IF ~Global("C#Brandock_Possessions","GLOBAL",18)~ THEN book_rest_wakeup_01
SAY @937
= @938
++ @939 + book_rest_wakeup_01_02
++ @940 + book_rest_wakeup_01_02
++ @941 + book_rest_wakeup_01_01
END

IF ~~ THEN book_rest_wakeup_01_01
SAY @942
IF ~~ THEN + book_rest_wakeup_01_02
END

IF ~~ THEN book_rest_wakeup_01_02
SAY @943
IF ~~ THEN DO ~SetGlobal("C#Brandock_Possessions","GLOBAL",21)~ EXIT
END

/* PC did not put the book away */
IF ~Global("C#Brandock_Possessions","GLOBAL",20)~ THEN book_rest_wakeup_02
SAY @944
= @945
= @946
IF ~~ THEN DO ~SetGlobal("C#Brandock_Possessions","GLOBAL",21)~ EXIT
END

END //APPEND

/* fisherman, sells octopus ink */
BEGIN C#BRFISH

IF ~True()~ THEN fisherman
SAY @947
++ @948 DO ~StartStore("c#brfish",LastTalkedToBy())~ EXIT
++ @949 + fisherman_01
END

IF ~~ THEN fisherman_01
SAY @950
IF ~~ THEN EXIT
END


APPEND c#brandj


/* Sarevok dead, after leaving the ThievesGuild */

IF ~Global("C#Brando_BG1SarevokDeadTalk","GLOBAL",1)~ THEN after_sarevok
SAY @951 
++ @952 + after_sarevok_04
++ @953 + after_sarevok_02
++ @954 + after_sarevok_01
++ @955 + after_sarevok_03
++ @956 + after_sarevok_05
END

IF ~~ THEN after_sarevok_01
SAY @957
IF ~~ THEN + after_sarevok_05
END

IF ~~ THEN after_sarevok_02
SAY @958
IF ~~ THEN + after_sarevok_05
END

IF ~~ THEN after_sarevok_03
SAY @959
IF ~~ THEN + after_sarevok_01
END

IF ~~ THEN after_sarevok_04
SAY @960
IF ~~ THEN + after_sarevok_05
END

IF ~~ THEN after_sarevok_05
SAY @961
+ ~Global("C#EndlessBG1","GLOBAL",1) Global("C#st_HeroOfBG","GLOBAL",0)~ + @962 + after_sarevok_08
++ @963 + after_sarevok_08
++ @964 + after_sarevok_08
++ @965 + after_sarevok_07
++ @966 + after_sarevok_06
END

IF ~~ THEN after_sarevok_06
SAY @967
IF ~~ THEN + after_sarevok_09
END

IF ~~ THEN after_sarevok_07
SAY @968
IF ~~ THEN + after_sarevok_09
END

IF ~~ THEN after_sarevok_08
SAY @969
IF ~~ THEN + after_sarevok_09
END

IF ~~ THEN after_sarevok_09
SAY @970
IF ~~ THEN DO ~SetGlobal("C#Brando_BG1SarevokDeadTalk","GLOBAL",2)~ EXIT
END

END //APPEND

