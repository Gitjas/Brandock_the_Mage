


/* group was expelled from Candlekeep - Elvenhair will not throw them out but make clear that being associated with PC is currently not favorable - ONLY if Brandock's book quest is valid. */
/* triggered either by talking to Elvenhair or by clicking on the desk in case Brandock is allowed to scrie scrolls. */

CHAIN
IF WEIGHT #-1
~InMyArea("C#Brandock")
OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2)
!StateCheck("C#Brandock",CD_STATE_NOTVALID)
GlobalGT("C#Br_BookRestore","GLOBAL",0)
Global("Chapter","GLOBAL",%tutu_chapter_7%)
Global("DukeThanks","GLOBAL",0)
Global("C#Brando_BookquestHold","GLOBAL",0)~ THEN FIREBE no_help_chapter6
@995 /* ~[Elvenhair]Ah, young <CHARNAME> and <PRO_HISHER> friends. I am very unsettled to say so, but I cannot well be seen with people wanted for murder in Candlekeep. I am sorry. I do know that Tethtoril thinks you do not deserve this, and I trust his judgement, but until this is resolved, I need you to leave.~ */
== c#brandj IF ~GlobalGT("C#Brandock_Shapeshift","GLOBAL",12)~ THEN @998 /* ~We... we understand, Master Elvenhair. You are alive and well - that is the most important thing right now and will hopefully stay that way. Er, I hope that didn't sound like a threat... <CHARNAME>, let us go, please.~ */
END
IF ~~ THEN DO ~SetGlobal("C#Brando_BookquestHold","GLOBAL",1)~ UNSOLVED_JOURNAL @10028 /* ~Brandock Wants to Restore his Book

Acursed murder accusations! Elvenhair will not help Brandock until we cleared our names from the murder accusation in Candlekeep. I hope once this is resolved, Elvenhair will continue to help Brandock with his troubles.~ */ EXIT
IF ~GlobalGT("C#Br_BookRestore","GLOBAL",5)~ THEN DO ~AddJournalEntry(@10054,QUEST) SetGlobal("C#Brando_BookquestHold","GLOBAL",1)~ UNSOLVED_JOURNAL @10028 /* ~Brandock Wants to Restore his Book

Acursed murder accusations! Elvenhair will not help Brandock until we cleared our names from the murder accusation in Candlekeep. I hope once this is resolved, Elvenhair will continue to help Brandock with his troubles.~ */ EXIT


/* after name is cleared */
CHAIN
IF WEIGHT #-1
~InMyArea("C#Brandock")
OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2)
!StateCheck("C#Brandock",CD_STATE_NOTVALID)
GlobalGT("C#Br_BookRestore","GLOBAL",0)
Global("DukeThanks","GLOBAL",1)
GlobalLT("C#Brando_BookquestHold","GLOBAL",2)~ THEN FIREBE help_after_chapter6
@997 /* ~[Elvenhair]Ah, young <CHARNAME> and <PRO_HISHER> friends - it is good to see you. With great relieve I heard that the accusations against you were false indeed. I am sorry you were the target of such a misunderstanding and it eases my heart to know that you did nothing wrong. Feel welcome in my house any time you wish.~ */
== c#brandj IF ~GlobalGT("C#Brandock_Shapeshift","GLOBAL",12)~ THEN @999 /* ~Thank you so much, Master Elvenhair. Let me stress that I am more than relieved to see you alive and well as well. We killed a doppelganger with your face in Candlekeep!~ */
== FIREBE IF ~GlobalGT("C#Brandock_Shapeshift","GLOBAL",12)~ THEN @1000 /* ~Yes, Tethtoril wrote to me about doppelgangers inside the keep - nasty, very nasty.~ */
END
IF ~~ THEN DO ~EraseJournalEntry(@10028)
EraseJournalEntry(@10054)
SetGlobal("C#Brando_BookquestHold","GLOBAL",2)
SetGlobal("C#Brandock_BG1BookMessenger","GLOBAL",2)~ EXIT


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


/* Brandock comes with ingredients */
/* POTN42 - potion of Regeneration */
/* Star Sapphire MISC41.itm */


/* octopus ink */
IF WEIGHT #-1
~OR(2)
	Global("C#Br_BookRestore","GLOBAL",2)
	Global("C#Br_BookRestore","GLOBAL",4)
OR(2) PartyHasItem("c#br0001") HasItem("c#br0001","C#Brandock")
OR(2) PartyHasItem("c#broink") HasItem("c#broink","C#Brandock")
Global("C#Br_HaveInk","MYAREA",0)
InMyArea(Player1)
InMyArea("C#Brandock")
OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2)
!StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN ingredient_01
SAY @751 /* ~Ah, the young <CHARNAME> and <PRO_HISHER> unfortunate friend. I see you have ingredients I requested.~ */
IF ~~ THEN DO ~SetGlobal("C#Br_HaveInk","MYAREA",1)~ + ingredient_04
IF ~HasItem("c#broink","C#Brandock") Global("C#BrandockJoined","GLOBAL",2)~ THEN DO ~ActionOverride("C#Brandock",GiveItem("c#broink",Player1))
SetGlobal("C#Br_HaveInk","MYAREA",1)~ + ingredient_04
END

/* potion of regeneration */
IF WEIGHT #-1
~OR(2)
	Global("C#Br_BookRestore","GLOBAL",2)
	Global("C#Br_BookRestore","GLOBAL",4)
OR(2) PartyHasItem("c#br0001") HasItem("c#br0001","C#Brandock")
OR(2) PartyHasItem("POTN42") HasItem("POTN42","C#Brandock")
Global("C#Br_HavePotion","MYAREA",0)
InMyArea(Player1)
InMyArea("C#Brandock")
OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2)
!StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN ingredient_02
SAY @751 /* ~Ah, the young <CHARNAME> and <PRO_HISHER> unfortunate friend. I see you have ingredients I requested.~ */
IF ~HasItem("POTN42","C#Brandock") Global("C#BrandockJoined","GLOBAL",2)~ THEN DO ~ActionOverride("C#Brandock",GiveItem("POTN42",Player1)) SetGlobal("C#Br_HavePotion","MYAREA",1)~ + ingredient_05
IF ~PartyHasItem("POTN42")~ THEN DO ~SetGlobal("C#Br_HavePotion","MYAREA",1)~ + ingredient_05
END

/* star saphire */
IF WEIGHT #-1
~OR(2)
	Global("C#Br_BookRestore","GLOBAL",2)
	Global("C#Br_BookRestore","GLOBAL",4)
OR(2) PartyHasItem("c#br0001") HasItem("c#br0001","C#Brandock")
OR(2) PartyHasItem("MISC41") HasItem("MISC41","C#Brandock")
Global("C#Br_HaveSaphire","MYAREA",0)
InMyArea(Player1)
InMyArea("C#Brandock")
OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2)
!StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN ingredient_03
SAY @751 /* ~Ah, the young <CHARNAME> and <PRO_HISHER> unfortunate friend. I see you have ingredients I requested.~ */
IF ~HasItem("MISC41","C#Brandock") Global("C#BrandockJoined","GLOBAL",2)~ THEN DO ~ActionOverride("C#Brandock",GiveItem("MISC41",Player1))
SetGlobal("C#Br_HaveSaphire","MYAREA",1)~ + ingredient_06
IF ~PartyHasItem("MISC41")~ THEN DO ~SetGlobal("C#Br_HaveSaphire","MYAREA",1)~ + ingredient_06
END

/* octopus ink */
IF ~~ THEN ingredient_04
SAY @754 /* ~Octopus ink!~ */
IF ~~ THEN DO ~ActionOverride("FIREBE",TakePartyItem("c#broink")) 
ActionOverride("FIREBE",DestroyItem("c#broink"))~ + ingredient_04_1
END

IF ~~ THEN ingredient_04_1
SAY @759 /* ~Always needed for the right consistency of magical ink.~ */
IF ~~ THEN + not_all_ingredients
IF ~Global("C#Br_HaveInk","MYAREA",1) Global("C#Br_HavePotion","MYAREA",1) Global("C#Br_HaveSaphire","MYAREA",1)~ THEN DO ~ActionOverride("C#Brandock",GiveItem("c#br0001",Player1))~ + bookrestore
IF ~Global("C#Br_HaveInk","MYAREA",1) Global("C#Br_HavePotion","MYAREA",1) Global("C#Br_HaveSaphire","MYAREA",1)
PartyHasItem("c#br0001")~ THEN + bookrestore
IF ~Global("C#Br_HaveSaphire","MYAREA",0) 
HasItem("MISC41","C#Brandock")
Global("C#BrandockJoined","GLOBAL",2)~ THEN DO ~ActionOverride("C#Brandock",GiveItem("MISC41",Player1))
SetGlobal("C#Br_HaveSaphire","MYAREA",1)~ + ingredient_06
IF ~Global("C#Br_HaveSaphire","MYAREA",0) PartyHasItem("MISC41")~ THEN DO ~SetGlobal("C#Br_HaveSaphire","MYAREA",1)~ + ingredient_06
IF ~Global("C#Br_HavePotion","MYAREA",0) HasItem("POTN42","C#Brandock")
Global("C#BrandockJoined","GLOBAL",2)~ THEN DO ~ActionOverride("C#Brandock",GiveItem("POTN42",Player1))
SetGlobal("C#Br_HavePotion","MYAREA",1)~ + ingredient_05
IF ~Global("C#Br_HavePotion","MYAREA",0) PartyHasItem("POTN42")~ THEN DO ~SetGlobal("C#Br_HavePotion","MYAREA",1)~ + ingredient_05
END

/* potion of regeneration */
IF ~~ THEN ingredient_05
SAY @762 /* ~A potion of Regeneration!~ */
IF ~~ THEN DO ~ActionOverride("FIREBE",TakePartyItemNum("POTN42",1)) 
ActionOverride("FIREBE",DestroyItem("POTN42"))~ + ingredient_05_1
END

IF ~~ THEN ingredient_05_1
SAY @983 /* ~A powerful magic, and useful in more than one way if you know how.~ */ 
IF ~~ THEN + not_all_ingredients
IF ~Global("C#Br_HaveInk","MYAREA",1) Global("C#Br_HavePotion","MYAREA",1) Global("C#Br_HaveSaphire","MYAREA",1)~ THEN DO ~ActionOverride("C#Brandock",GiveItem("c#br0001",Player1))~ + bookrestore
IF ~Global("C#Br_HaveInk","MYAREA",1) Global("C#Br_HavePotion","MYAREA",1) Global("C#Br_HaveSaphire","MYAREA",1)
PartyHasItem("c#br0001")~ THEN + bookrestore
IF ~Global("C#Br_HaveSaphire","MYAREA",0) 
HasItem("MISC41","C#Brandock")
Global("C#BrandockJoined","GLOBAL",2)~ THEN DO ~ActionOverride("C#Brandock",GiveItem("MISC41",Player1))
SetGlobal("C#Br_HaveSaphire","MYAREA",1)~ + ingredient_06
IF ~Global("C#Br_HaveSaphire","MYAREA",0) PartyHasItem("MISC41")~ THEN DO ~SetGlobal("C#Br_HaveSaphire","MYAREA",1)~ + ingredient_06
END

/* star spahire */
IF ~~ THEN ingredient_06
SAY @984 /* ~A Star Saphire!~ */
IF ~~ THEN DO ~ActionOverride("FIREBE",TakePartyItemNum("MISC41",1)) 
ActionOverride("FIREBE",DestroyItem("MISC41"))~ + ingredient_06_1
END


IF ~~ THEN ingredient_06_1
SAY @985 /* ~Always a sight for sore eyes.~ */ 
IF ~~ THEN + not_all_ingredients
IF ~Global("C#Br_HaveInk","MYAREA",1) Global("C#Br_HavePotion","MYAREA",1) Global("C#Br_HaveSaphire","MYAREA",1)~ THEN DO ~ActionOverride("C#Brandock",GiveItem("c#br0001",Player1))~ + bookrestore
IF ~Global("C#Br_HaveInk","MYAREA",1) Global("C#Br_HavePotion","MYAREA",1) Global("C#Br_HaveSaphire","MYAREA",1)
PartyHasItem("c#br0001")~ THEN + bookrestore
END

IF ~~ THEN not_all_ingredients
SAY @986 /* ~Come back when you have all needed ingredients.~ */
IF ~~ THEN EXIT
END

IF ~~ THEN bookrestore
SAY @987 /* ~Let us begin with preserving the remaining book snippets against further destruction, shall we?~ */
IF ~~ THEN DO ~ActionOverride("FIREBE",TakePartyItem("c#br0001")) 
ActionOverride("FIREBE",DestroyItem("c#br0001")) SetGlobal("C#Br_BookRestore","GLOBAL",5)
ClearAllActions() StartCutSceneMode() StartCutScene("c#brcu11")~ EXIT
END


END //APPEND


/* Brandock wants help with the destroyed book */
/* Brandock: initiates dialog if Global("TalkedToFirebead","GLOBAL",1): 
 If Firebead's book quest was given, Brandock will initiate dialogue. */

CHAIN
IF ~Global("C#Br_BookRestore","GLOBAL",1)
OR(2) PartyHasItem("c#br0001") HasItem("c#br0001","C#Brandock")
See("FIREBE")~ THEN c#brandj brandock_quest
@752
== FIREBE @753
== c#brandj @975
= @976
== FIREBE @755
= @756
= @977
= @978
= @979
== c#brandj @757
END
IF ~~ THEN DO ~EraseJournalEntry(@10021)
SetGlobal("C#Br_BookRestore","GLOBAL",2)~ UNSOLVED_JOURNAL @10022 EXIT

/* after book restore cutscene */
CHAIN
IF ~Global("C#Br_BookRestore","GLOBAL",5)~ THEN c#brandj bookrestore_01
@758
== FIREBE @980 /* ~Oh, I didn't expect this to happen. Hmm... Seems the creator of this book included a precautionary enchantment should it be damaged - the enchantment on the destroyed book latched onto our attempts to restore it and transformed back into a book.~ */
== c#brandj @760 /* ~You've... *got* to be kidding me.~ */
== FIREBE @981 /* ~But, since it was heavily damaged, it emptied the pages. Hmm... The spells need to be added back by a mage of high enough expertise... and it also seems to mention Oghma's wisdom. At least I *think* this is what the first pages are saying, but my Ruathlek is not the best. To understand it properly I'd need my lexicon, which is in Candlekeep.~ */
= @761  /* ~This is most fascinating, it seems this transformation is related to the simplified magic formulas characterizing the De Simplex Magicae. We just raised the book to its next level, and a lot could be learnt from that. You need to find a way into Candlekeep with this, young friend. Unfortunately, it is not valuable enough in its current state, but it will be a most precious object of study. If you ever earn the way into Candlekeep, I will make sure the sages know about this.~ */
= @972 /* But we cannot know when this will come to pass, and I am much too intrigued to wait for it to happen. I will do the following, my young mage. Next time my ways guide me to Candlekeep, I will bring my private copy of Ruathlek lexicon with me. I do not know yet when this will be, I fear it will be a while still. I will let you know once this happens.~ */
= @973 /* ~Until then we would be poorly advised to just try and do anything more with the book before we do not know what exactly it says how to proceed to restore it. Do not attempt to write spells into it on your own account, Brandock. I fear for you safety.~ */
== c#brandj @974  /* ~[Brandock] I would never, Master Elvenhair. I know how dangerous it can be, ahem. Thank you - thank you so much for all your help. I am completely stunned and don't know what to say.~ */
== FIREBE @971 /* ~This was a most interesting experience for me at my age, young man. Please, continue to note down what you remember from the book's spells as you already did. Until we know exactly what the first pages translate to we should not risk the recipes getting lost.~ */
= @982 /* ~But I do recommend you practice your scroll scribing skills so you are prepared for scribing spells into the De Simplex Magicae later. Just come here to do so. You can use my desk and utensils any time you want.~ */
== c#brandj @763 /* ~Thank you, Master Elvenhair. I don't know what to say... <CHARNAME>, I... I need to process what just happened. My head feels like it's gonna *explode*.~ */
END
IF ~~ THEN DO ~EraseJournalEntry(@10026)
AddJournalEntry(@10050,QUEST)
AddJournalEntry(@10051,QUEST)
SetGlobal("C#Br_ScribeScrollQuest","GLOBAL",1)
SetGlobal("C#Br_BookRestore","GLOBAL",6)~ UNSOLVED_JOURNAL @10044 EXIT

/* group has all needed ingredients */
CHAIN
IF ~Global("C#Brandock_AllIngredientsBG1","GLOBAL",1)~ THEN c#brandj all_ingredients
@764
== c#brandj IF ~Global("C#Brando_BookquestHold","GLOBAL",1)~ THEN @993 /* ~Please let's hold on to them, until we can go to Master Elvenhair again.~ */
END
IF ~~ THEN + return_elvenhair
IF ~!Global("C#Brando_BookquestHold","GLOBAL",1)~ THEN DO ~SetGlobal("C#Brandock_AllIngredientsBG1","GLOBAL",3)~ EXIT

APPEND c#brandj

/* Sarevok's scheme is revealed */

IF ~Global("C#Brandock_SarevoksScheme","GLOBAL",1)~ THEN sarevoks_scheme1
SAY @232 /* ~We did it! We cleared our names and saved the Dukes - for now. And we confronted Sarevok! Well, kind of. Sarevok, who apparently is the murderer of your foster father, Gorion! How do you feel?~ */
++ @991 /* ~Having out names cleared takes a huge weight from my shoulders.~ */ + sarevoks_scheme1_03
++ @233 + sarevoks_scheme1_01
++ @234 + sarevoks_scheme1_01
++ @235 + sarevoks_scheme1_01
++ @236 + sarevoks_scheme1_02
END

IF ~~ THEN sarevoks_scheme1_01
SAY @237 /* ~The situation has turned - now Sarevok is the hunted one. Let's go and stop him for good.~ */
IF ~~ THEN DO ~SetGlobal("C#Brandock_SarevoksScheme","GLOBAL",2)~ EXIT
IF ~Global("C#Brando_BookquestHold","GLOBAL",1)~ THEN DO ~SetGlobal("C#Brandock_SarevoksScheme","GLOBAL",2)~ + visit_elvenhair_again
END

IF ~~ THEN sarevoks_scheme1_02
SAY @238
IF ~~ THEN + sarevoks_scheme1_01
END

IF ~~ THEN sarevoks_scheme1_03
SAY @992 /* ~Oh yes, I can very much relate to that!~ */
IF ~~ THEN + sarevoks_scheme1_01
END

IF ~~ THEN visit_elvenhair_again
SAY @994 /* ~Now that we cleared our names, we probably can visit Elvenhair again, what do you think?~ */
IF ~~ THEN EXIT
IF ~Global("C#Brandock_AllIngredientsBG1","GLOBAL",3)~ THEN + return_elvenhair
END

IF ~~ THEN return_elvenhair
SAY @990 /* ~Please, <CHARNAME>, let us return to Master Elvenhair as soon as possible!~ */
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

IF ~~ THEN after_elvenhair_02
SAY @770 /* ~I'm sorry I'm so excited. But I'm *so* excited! I... arrrrrrgh, I will be calm now.~ */
IF ~~ THEN + after_elvenhair_05
IF ~OR(2)
PartyHasItem("POTN42") 
HasItem("POTN42","C#Brandock")
OR(2)
PartyHasItem("MISC41") 
HasItem("MISC41","C#Brandock")
OR(2)
PartyHasItem("c#broink")
HasItem("c#broink","C#Brandock")~ THEN + after_elvenhair_04
IF ~!PartyHasItem("POTN42") !PartyHasItem("MISC41") !PartyHasItem("c#broink")
!HasItem("POTN42","C#Brandock") !HasItem("MISC41","C#Brandock") !HasItem("c#broink","C#Brandock")~ THEN + after_elvenhair_03
END

IF ~~ THEN after_elvenhair_03
SAY @771  /* ~Let's go find the things he requested! I promise, I'll help retrieve the gold we need to acquire them.~ */
IF ~~ THEN DO ~SetGlobal("C#Br_BookRestore","GLOBAL",4)~ EXIT
END

IF ~~ THEN after_elvenhair_04
SAY @773 /* ~And we already have everything he requested! Er, why did we leave? Let's go back inside! Please!~ */
IF ~~ THEN DO ~SetGlobal("C#Brandock_AllIngredientsBG1","GLOBAL",2) EraseJournalEntry(@10022) AddJournalEntry(@10026,QUEST) SetGlobal("C#Br_BookRestore","GLOBAL",4)~ EXIT
END

IF ~~ THEN after_elvenhair_05
SAY @772 /* ~And we already have some of the required ingredients! Let's go find the other things he requested. I promise, I'll help retrieve the gold we need to acquire them!~ */
IF ~~ THEN DO ~SetGlobal("C#Br_BookRestore","GLOBAL",4)~ EXIT
END

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
SAY @785 /* ~What else could it be? Yes, I believe they did. The spells have to be added back by a mage of high enough expertise... But of course we will only know for sure once I have the chance to study it thoroughly. With which Master Elvenhair will help me by bringing his Ruathlek lexicon from Candlekeep... Candlekeep!~ */
IF ~~ THEN + transformed_book_05
END

IF ~~ THEN transformed_book_05
SAY @786 /* ~Master Elvenhair would even welcome me in Candlekeep with this book to study. He said that, didn't he? You heard it too?~ */
++ @787 /* ~Yes, he definitely was most fascinated by the whole thing.~ */ + transformed_book_06
++ @788 /* ~I am very happy for you, Brandock.~ */ + transformed_book_06
+ ~!PartyHasItem("BOOK68") !HasItem("BOOK68","C#Brandock")~ + @789 + transformed_book_07
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

END //APPEND

CHAIN
IF ~~ THEN c#brandj transformed_book_10
@796 /* ~But... to know the book is not lost! And the thought of not being expelled from Candlekeep - that I might be welcome, even! I have a goal again, <CHARNAME>. I will help you with your endeavors, and I will save my gold, and I will buy a new book, valuable enough to get entry into the monastery. Someday, <CHARNAME>. Someday I will be there!~ */
= @988 /* ~And on top of it all, Master Elvenhair offered me to train scroll scribing with him. I'd be ready to take him up on that offer any time you can spare a moment, <CHARNAME>. I would be daft not to!~ */
== c#brandj IF ~Global("C#Br_ScribeScrollQuest","GLOBAL",3)~ THEN @989 /* ~Albeit not today any more, of course.~ */
/* after wirnessing preservation spell: Brandock has an idea what to do but needs more experience if level < 9 */
== c#brandj IF ~LevelLT("C#Brandock",9)
OR(8)
GlobalGT("C#Br_HasScrollSCRL10","LOCALS",0)
GlobalGT("C#Br_HasScrollSCRL11","LOCALS",0)
GlobalGT("C#Br_HasScrollSCRL12","LOCALS",0)
GlobalGT("C#Br_HasScrollSCRL13","LOCALS",0)
GlobalGT("C#Br_HasScrollSCRL14","LOCALS",0)
GlobalGT("C#Br_HasScrollSCRL16","LOCALS",0)
GlobalGT("C#Br_HasScrollSCRL17","LOCALS",0)
GlobalGT("C#Br_HasScrollSCRL18","LOCALS",0)~ THEN @1026 /* ~Something else - after witnessing what happened to the De Simplx Magicae when Master Elvenhair cast the preservation spell I think I have an idea what to do with cursed scrolls to rewrite the magic inside to something useful - I just need more experience before I can actually try.~ */
END
IF ~~ THEN DO ~SetGlobal("C#Br_BookRestore","GLOBAL",8)~ EXIT


APPEND c#brandj

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
IF ~~ THEN DO ~SetGlobal("C#BR_KnowsBookName","LOCALS",1)~ + book1_07
END

IF ~~ THEN book1_06
SAY @825
+ ~Global("C#BR_KnowsBookName","LOCALS",1)~ + @1015 /* ~I did hear the title after Thalantyr helped you with your half-ogre problem, but I still don't know what it was.~ */ + book1_07
++ @826 DO ~SetGlobal("C#BR_KnowsBookName","LOCALS",1)~ + book1_07
++ @827 + book1_05
++ @828 + book1_08
++ @829 DO ~SetGlobal("C#BR_KnowsBookName","LOCALS",1)~ + book1_07
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
IF ~~ THEN DO ~SetGlobal("C#BR_KnowsBookName","LOCALS",1)~ + book1_07
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

/* Brandock falls asleep with his notes -> rest dialogue: */

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

/* After Sarevok's scheme is revealed: messenger calls Brandock to Elvenhair */
/* either after the wait for the lexicon or in case Elvenhair sent them away? */

CHAIN
IF ~Global("C#Brandock_BG1BookMessenger","GLOBAL",1)~ THEN c#brmess letter
@1001 /* ~[Messenger]Mister Brandock Deepwater? I have a message from Master Elvenhair in Beregost. He wants me to tell you that he is ready to help you again.~ */
== c#brandj @1002 /* ~That - that is fantastic! Thank you, good man, for coming all the way to letting me know. Here, take these coins. <CHARNAME> - I guess you know what I'll beg for next: let us return to Master Elvenhair as soon as our tasks will allow!~ */
END
IF ~~ THEN DO ~EraseJournalEntry(@10044)
ActionOverride("c#brmess",EscapeAreaDestroy(5)) SetGlobal("C#Brandock_BG1BookMessenger","GLOBAL",3)~ UNSOLVED_JOURNAL @10055 EXIT

CHAIN
IF WEIGHT #-1
~InMyArea("C#Brandock")
OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2)
!StateCheck("C#Brandock",CD_STATE_NOTVALID)
Global("C#Brando_BookquestHold","GLOBAL",2)
Global("C#Br_BookRestore","GLOBAL",10)~ THEN FIREBE book_translation
@1003 /* ~[Elvenhair]So, young Brandock. I have here my Ruathlek lexicon, and am ready to translate the note in the De Simplex Magicae with you. Shall we?~ */
== c#brandj @1004 /* ~[Brandock]Oooh - yes, please!~ */
== c#brandj IF ~GlobalGT("C#Brandock_Expelled","GLOBAL",0)~ THEN @1005 /* ~[Brandock]Master Elvenhair, I was in Candlekeep - but we got kicked out -which you already know. I was so devastated!~ */
== c#brandj IF ~Global("C#Brandock_BG1BookMessenger","GLOBAL",3)~ THEN @1027 /* ~I can't express how thankful I am that you reached out to me so quickly!~ */
== FIREBE IF ~GlobalGT("C#Brandock_Expelled","GLOBAL",0)~ THEN @1006 /* ~[Elvenhair]Yes, this was a most unfortunate affair. But at least your names are cleared now, so do not worry, young mage. If your steps will guide you to Candlekeep again in the future, you will find entry as a seeker again.~ */ DO ~EraseJournalEntry(@10053)~
== FIREBE @1007 /* ~[Elvenhair]So, let me see the book. This shouldn't take too long. I already prepared everything we need.~ */
END
IF ~~ THEN DO ~SetGlobal("C#Br_BookRestore","GLOBAL",11) ClearAllActions() StartCutSceneMode() StartCutScene("c#brcut4")~ EXIT

CHAIN
IF WEIGHT #-1
~Global("C#Br_BookRestore","GLOBAL",11)~ THEN FIREBE book_translation_01
@1008 /* ~[Elvenhair]"...Oghma's Wisdom". That's it, my young Brandock.~ */
== c#brandj @1009 
= @996
= @1010 
= @1011 /* ~"Oghma's Wisdom". I do not know yet whether this refers to an item, a spell - or just what the name says: wisdom hold by those who worship Oghma. But I already know where I will find an answer to this riddle. The greatest temple of Oghma I know is in my home land, in Athkatla.~ */
= @1012 /* ~<CHARNAME> - this book and any notes I'll write about the spells in it will accompany my until I'll return home. Thank you, Master Elvenhair, for your help in this. I am in your debt.~ */
== FIREBE @1013 /* ~[Elvenhair]It is most fotunate to see that this great book will indeed be restored. But the greatest knowledge out of this book is the magics that has the potential to preserve the contents even beyond the book's destruction. This knowledge will be most valuable to any sage in these realms. Let me know about your progress, young Brandock, so I can share the wisdom with the wise sages in Candlekeep~ */
== c#brandj @1014 /* ~[Brandock]I will certainly do so, Master Elvenhair. I promise. Just as much as I promise to restore the De Simplex Magicae, even if Oghma's priests will need to extract my brain to get the spell recipes out for restoration.~ */
END
IF ~~ THEN DO ~EraseJournalEntry(@10044)
EraseJournalEntry(@10051)
EraseJournalEntry(@10055)
AddJournalEntry(@10057,QUEST)
SetGlobal("C#Br_BookRestore","GLOBAL",13)~ UNSOLVED_JOURNAL @10056 EXIT

APPEND c#brandj
/* after the note got translated, stepping out of Elvenhair's home */

IF ~Global("C#Brandock_AddBookTalk","LOCALS",1)~ THEN book7
SAY @1016 /* ~[Brandock]So, to summarize. The De Simplex Magicae was destroyed - and yet, it wasn't, but transformed into a magic experiment, teaching book of a different kind. It wasn't meant to do that - or it was, with detailed instructions to... whomever about what to do with it afterwards. The whole restoration of the empty book was a prank - and at the same time a serious magical research project. I... my head is spinning.~ */
++ @1017 /* ~That note was hilarious. Do you believe it was Bowgentle who wrote that?~ */ + book7_01
++ @1018 /* ~What will you do now?~ */ + book7_03
++ @1019 /* ~It gave you a clue what to do next! That's helpful.~ */ + book7_02
++ @1022 /* ~So you'll be carrying that empty book with you in the future, too. That's great, it's not like we could use the space.~ */ + book7_03
END

IF ~~ THEN book7_01
SAY @1020 /* ~[Brandock]It's not really sure. It would make sense with regard to the preservation magic in the book never getting investigated any further, though - I'm sure I'd lose track of some of my research projects after being stuck in a dog's body for several years, too. As much as I know of him, it would fit, though.~ */
IF ~~ THEN + book7_03
END

IF ~~ THEN book7_02
SAY @1021 /* ~[Brandock]Indeed, it is.~ */
IF ~~ THEN + book7_03
END

END //APPEND

CHAIN
IF ~~ THEN c#brandj book7_03
@1023 /* ~[Brandock]I will watch it as if my life depends on it until my way leads me back to Athkatla for the wisdom of the Temple of Oghma, as requested in what we think are Bowgentle's notes.~ */
== c#brandj @1024 /* ~[Brandock]But after that I will search for someone talented enough to refill the pages with spells - and I doubt this will be me, <CHARNAME>. I will continue to make notes of what I remember from the spell recipes - what made them so special that even an unexperienced wizard cast use them, but I start to understand now that most of the magic was inside the book itself. No wonder I couldn't write the spells onto a scroll...~ */
== c#brandj @1025 /* ~[brandock]Let us continue our travels. I have a goal now - sort of, it's more like the next milestone. I admit that I appreciate that it leaves me in a state where I know exactly what my next step will be without having the chance to do it right away, giving me some sort of break from this... this extremely fascinating nightmare.~ */
END
IF ~~ THEN DO ~SetGlobal("C#Brandock_AddBookTalk","LOCALS",2)~ EXIT


