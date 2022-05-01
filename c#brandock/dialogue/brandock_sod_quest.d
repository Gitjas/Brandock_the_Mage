CHAIN
IF WEIGHT #-1
/* this should really only fire if all participants can talk, so this dialogue state includes the additional triggers */
~Global("C#Brando_SoD_QuestBookQuarrel","GLOBAL",1)
   !StateCheck("c#brsqu1",CD_STATE_NOTVALID)
   !StateCheck("c#brsqu2",CD_STATE_NOTVALID)
   !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN bdrayphu book_quarrel
~[Rayphus]...The hero of Baldur's Gate, for example. - <CHARNAME>, I apologize, but would you lend us a short moment of your time? These two refugees, Mander and Eldom, have a dispute we need to settle. They are fighting over a book they both say belongs to them.~
== c#brsqu1 ~I am Mander. It is my book, but he just took it from me!~
== c#brsqu2 ~My name is Eldom. I took it *back* because it is *my* book that Mander stole from me while I was sleeping.~
== bdrayphu ~[Rayphus]And this is the discussion we had for the last 15 minutes. <CHARNAME>, you have the authority - and also needed assertiveness to settle this dispute. I beg you to take this on and make a verdict.~
END
+ ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2)
InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ + ~Of course. I need more details to decide this, though.~ EXTERN c#brandj book_quarrel_brando 
+ ~Detect("C#Brandock") Global("C#BrandockJoined","GLOBAL",0) !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ + ~Of course. I need more details to decide this, though.~ EXTERN c#brandp book_quarrel_brando 
+ ~OR(2) !Detect("C#Brandock") StateCheck("C#Brandock",CD_STATE_NOTVALID)~ + ~Of course. I need more details to decide this, though.~ + book_quarrel_01

+ ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2)
InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ + ~Sure. Let me have a look at the book in question, first.~ EXTERN c#brandj book_quarrel_brando 
+ ~Detect("C#Brandock") Global("C#BrandockJoined","GLOBAL",0) !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ + ~Sure. Let me have a look at the book in question, first.~ EXTERN c#brandp book_quarrel_brando 
 + ~OR(2) !Detect("C#Brandock") StateCheck("C#Brandock",CD_STATE_NOTVALID)~ + ~Sure. Let me have a look at the book in question, first.~ + book_quarrel_01

+ ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2)
InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ + ~How should I know who the book belongs to?~ EXTERN c#brandj book_quarrel_brando 
+ ~Detect("C#Brandock") Global("C#BrandockJoined","GLOBAL",0) !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ + ~How should I know who the book belongs to?~ EXTERN c#brandp book_quarrel_brando 
+ ~OR(2) !Detect("C#Brandock") StateCheck("C#Brandock",CD_STATE_NOTVALID)~ + ~How should I know who the book belongs to?~ + book_quarrel_01

++ ~We don't have time for this. Get help elsewhere.~ DO ~SetGlobal("C#Brando_SoD_QuestBookQuarrel","GLOBAL",4)~ + book_quarrel_05 


APPEND c#brandp

IF ~~ THEN book_quarrel_brando 
SAY ~[Brandock]Ooh - is that the book? Let me have a look... It's a book that describes magic enchantments, <CHARNAME>. This is fascinating...~
++ ~Maybe it's a good idea you have a look at the book and help me find out who of the two is the rightful owner, Brandock.~ + book_quarrel_brando_02
++ ~I wanted to have a look at it myself, Brandock, you know?~ + book_quarrel_brando_01 
++ ~Why do I even think I could hold a magic book for longer than 3 seconds if Brandock is around?~ + book_quarrel_brando_01 
++ ~You want to settle this dispute, Brandock?~ + book_quarrel_brando_02
++ ~You two - just tell me whatever you can about that book so I can make a decision.~ + book_quarrel_brando_03
++ ~We don't have time for this. Get help elsewhere.~ DO ~SetGlobal("C#Brando_SoD_QuestBookQuarrel","GLOBAL",4)~ FLAGS 0x400 EXTERN bdrayphu book_quarrel_05  
END

IF ~~ THEN book_quarrel_brando_01 
SAY ~[Brandock]I'm sorry... of course.~
IF ~~ THEN + book_quarrel_brando_03
END

IF ~~ THEN book_quarrel_brando_02
SAY ~[Brandock]Oh, I'm not sure I can... but I can surely judge their knowledge about the book's content, if you'll have me around for the investigation.~
++ ~You two - just tell me whatever you can about that book so I can make a decision.~ + book_quarrel_brando_03
++ ~We don't have time for this. Get help elsewhere.~ DO ~SetGlobal("C#Brando_SoD_QuestBookQuarrel","GLOBAL",4)~ FLAGS 0x400 EXTERN bdrayphu book_quarrel_05  
END

IF ~~ THEN book_quarrel_brando_03
SAY ~Please have me around when you interrogate them. I can't hear everything that is said from over here.~
IF ~~ THEN EXTERN bdrayphu book_quarrel_01
END

END //APPEND

APPEND c#brandj

IF ~~ THEN book_quarrel_brando 
SAY ~[Brandock]Ooh - is that the book? Let me have a look... It's a book that describes magic enchantments, <CHARNAME>. This is fascinating...~
++ ~Maybe it's a good idea you have a look at the book and help me find out who of the two is the rightful owner, Brandock.~ + book_quarrel_brando_02
++ ~I wanted to have a look at it myself, Brandock, you know?~ + book_quarrel_brando_01 
++ ~Why do I even think I could hold a magic book for longer than 3 seconds if Brandock is around?~ + book_quarrel_brando_01 
++ ~You want to settle this dispute, Brandock?~ + book_quarrel_brando_02
++ ~You two - just tell me whatever you can about that book so I can make a decision.~ EXTERN bdrayphu book_quarrel_01
++ ~We don't have time for this. Get help elsewhere.~ DO ~SetGlobal("C#Brando_SoD_QuestBookQuarrel","GLOBAL",4)~ EXTERN bdrayphu book_quarrel_05 
END

IF ~~ THEN book_quarrel_brando_01 
SAY ~[Brandock]I'm sorry... of course.~
IF ~~ THEN EXTERN bdrayphu book_quarrel_01
END

IF ~~ THEN book_quarrel_brando_02
SAY ~[Brandock]Oh, I'm not sure I can... but I can surely judge their knowledge about the book's content, if you'll have me around for the investigation.~
++ ~You two - just tell me whatever you can about that book so I can make a decision.~ EXTERN bdrayphu book_quarrel_01
++ ~We don't have time for this. Get help elsewhere.~ DO ~SetGlobal("C#Brando_SoD_QuestBookQuarrel","GLOBAL",4)~ EXTERN bdrayphu book_quarrel_05
END

IF ~~ THEN book_quarrel_brando_03
SAY ~[Brandock]Oh, I'm sorry. I didn't mean to derail the investigation.~
IF ~~ THEN + book_quarrel_c#brsqu2_03_brando
END

IF ~~ THEN book_quarrel_brando_04
SAY ~[Brandock]Not necessarily, though - I had fellow apprentices who could have cited a whole book without knowing the exact title of it.~
++ ~I made a decision. Mander is the owner.~ DO ~SetGlobal("C#Brando_SoD_QuestBookQuarrel","GLOBAL",4)~ EXTERN bdrayphu book_quarrel_06
++ ~Hmm, maybe I should investigate a little more.~ EXTERN bdrayphu book_quarrel_07 
END

IF ~~ THEN book_quarrel_brando_05
SAY ~[Brandock]Really? But we talked to them, and it is obvious that Eldom *knows* the book better.~
++ ~I made a decision. Mander is the owner.~ DO ~SetGlobal("C#Brando_SoD_QuestBookQuarrel","GLOBAL",4)~ EXTERN bdrayphu book_quarrel_06
++ ~Hmm, maybe you are right.~ EXTERN bdrayphu book_quarrel_03
END

IF ~~ THEN book_quarrel_brando_06
SAY ~[Brandock]Then I would like to decide this, if I may? I vote for Eldom, who knows the content, understood it, and *must* have worked with the knowledge already. This is nothing one can do in a couple of hours, of which several were spent arguing about who is the owner of the book!~
IF ~~ THEN DO ~SetGlobal("C#Brando_SoD_QuestBookQuarrel","GLOBAL",5)~ EXTERN bdrayphu book_quarrel_06
END

END //APPEND

EXTEND_BOTTOM bdrayphu 12
+ ~Global("C#Brando_SoD_QuestBookQuarrel","GLOBAL",3)~ + ~About the quarrel over the magic book by these two refugees...~ + book_quarrel_03
END

APPEND bdrayphu

IF ~~ THEN book_quarrel_01
SAY ~[Rayphus]This is the book in question.~
++ ~(You only glimps at the title. It's "Item Enchantments: a Step to Step Guide", written by a Sir Lembold.)~ + book_quarrel_02
++ ~(You flip through the pages. You notice some illustrations of magic ingredients and two pages sticking slightly together by what seems to be the leftovers from a sticky liquid spilled over them.)~ + book_quarrel_02
END

IF ~~ THEN book_quarrel_02
SAY ~[Rayphus]You two, please wait nearby so either cannot hear what the other is replying to <CHARNAME>'s questions. <CHARNAME>, please, interrogate them and let me know when you have decided.~ 
IF ~~ THEN DO ~SetGlobal("C#Brando_SoD_QuestBookQuarrel","GLOBAL",2)~ UNSOLVED_JOURNAL @10077 + book_quarrel_04
END

IF WEIGHT #-1
~Global("C#Brando_SoD_QuestBookQuarrel","GLOBAL",3) Global("C#Brando_BookInterrogation","LOCALS",0)~ THEN book_quarrel_03
SAY ~[Rayphus]Did you come to a conclusion about who is the owner of the magic book?~
+ ~Global("C#brando_SoD_TalkedToMander","GLOBAL",1)
Global("C#brando_SoD_TalkedToEldom1","GLOBAL",1)
GlobalLT("C#brando_SoD_TalkedToEldom2","GLOBAL",2)
GlobalLT("C#brando_SoD_TalkedToEldom3","GLOBAL",2)
OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2)
InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ + ~I think it is Mander. He knows the title, whereas Eldom couldn't remember it. That's pretty obvious, I think.~ EXTERN c#brandj book_quarrel_brando_04
+ ~Global("C#brando_SoD_TalkedToMander","GLOBAL",1)
OR(2) Global("C#brando_SoD_TalkedToEldom2","GLOBAL",2)
Global("C#brando_SoD_TalkedToEldom3","GLOBAL",2)
OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2)
InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ + ~I think it is Mander. He knows the title, whereas Eldom couldn't remember it. That's pretty obvious, I think.~ EXTERN c#brandj book_quarrel_brando_05
+ ~Global("C#brando_SoD_TalkedToMander","GLOBAL",1)
Global("C#brando_SoD_TalkedToEldom1","GLOBAL",1)
OR(3) Global("C#BrandockJoined","GLOBAL",0)
!InMyArea("C#Brandock") StateCheck("C#Brandock",CD_STATE_NOTVALID)~ + ~I think it is Mander. He knows the title, whereas Eldom couldn't remember it. That's pretty obvious, I think.~ DO ~SetGlobal("C#Brando_SoD_QuestBookQuarrel","GLOBAL",4)~ + book_quarrel_06
+ ~OR(2) Global("C#brando_SoD_TalkedToEldom2","GLOBAL",2)
Global("C#brando_SoD_TalkedToEldom3","GLOBAL",2)~ + ~I think it is Eldom. He definitely knows his way around inside the book and seem to have studied it extensively.~ DO ~SetGlobal("C#Brando_SoD_QuestBookQuarrel","GLOBAL",6)~ + book_quarrel_06
+ ~GlobalLT("C#brando_SoD_TalkedToEldom2","GLOBAL",2)
GlobalLT("C#brando_SoD_TalkedToEldom3","GLOBAL",2)~ + ~I will leave the book with Eldom. He has it now and I don't see a reason to take it from him.~ DO ~SetGlobal("C#Brando_SoD_QuestBookQuarrel","GLOBAL",5)~ + book_quarrel_06A
+ ~GlobalLT("C#brando_SoD_TalkedToEldom2","GLOBAL",2)
GlobalLT("C#brando_SoD_TalkedToEldom3","GLOBAL",2)~ + ~I'm not decided yet. I think I am missing something.~ + book_quarrel_04
+ ~Global("C#brando_SoD_TalkedToMander","GLOBAL",1)
OR(2) Global("C#brando_SoD_TalkedToEldom2","GLOBAL",2)
Global("C#brando_SoD_TalkedToEldom3","GLOBAL",2)
OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2)
InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ + ~I really do not know. They have both valid points. I'm sorry, but I do not feel like deciding this.~ EXTERN c#brandj  book_quarrel_brando_06
+ ~Global("C#brando_SoD_TalkedToMander","GLOBAL",1)
OR(2) Global("C#brando_SoD_TalkedToEldom2","GLOBAL",2)
Global("C#brando_SoD_TalkedToEldom3","GLOBAL",2)
OR(3) Global("C#BrandockJoined","GLOBAL",0)
!InMyArea("C#Brandock") StateCheck("C#Brandock",CD_STATE_NOTVALID)~ + ~I really do not know. They have both valid points. I'm sorry, but I do not feel like deciding this.~ DO ~SetGlobal("C#Brando_SoD_QuestBookQuarrel","GLOBAL",4)~ + book_quarrel_05
++ ~I'm still on it.~ + book_quarrel_07
++ ~We don't have time for this. Get help elsewhere.~ DO ~SetGlobal("C#Brando_SoD_QuestBookQuarrel","GLOBAL",4)~ + book_quarrel_05
END
END //APPEND bdrayphu

CHAIN
IF ~~ THEN bdrayphu book_quarrel_04
~[Rayphus]I'd suggest having someone with you who knows about magic books and understands what it is about to help with the interrogation.~
== c#brandp IF ~Global("C#Brando_RayphusBQ1","MYAREA",0)
Detect("C#Brandock") Global("C#BrandockJoined","GLOBAL",0) !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN ~Oh, I can do that. I could totally be this someone.~ DO ~SetGlobal("C#Brando_RayphusBQ1","MYAREA",1)~
EXIT


APPEND bdrayphu
IF ~~ THEN book_quarrel_05
SAY ~[Rayphus]I see. Well, then the book will go back to Mander who knew the title and author perfectly although the book was in Eldom's possession last. I do not have the ressources to investigate this further.~
IF ~~ THEN + book_quarrel_08
END

IF ~~ THEN book_quarrel_06
SAY ~[Rayphus]I accept this decision.~
IF ~~ THEN + book_quarrel_08
END

IF ~~ THEN book_quarrel_06A
SAY ~[Rayphus]Well... I asked for your verdict so I'll accept this descision.~
IF ~~ THEN + book_quarrel_08
END

IF ~~ THEN book_quarrel_07
SAY ~Please, interrogate them and let me know when you have decided.~
IF ~~ THEN EXIT
END
END //APPEND

CHAIN
IF ~~ THEN bdrayphu book_quarrel_08
~Due to the unclear status I will refrain from any other charges regarding an attempted theft. Make sure you keep the book safe now and I do not want to hear about any follow up of any kind with regard to this.~
== c#brsqu2 IF ~GlobalGT("C#Brando_SoD_QuestBookQuarrel","GLOBAL",4)~ THEN ~Thank you, thank you, *thank you*! The first thing I'll do now will be making a copy of the contents - I do not care about having the original book, it's about what is written inside that interests me. I nearly lost this knowledge - never again.~
== c#brsqu2 IF ~GlobalGT("C#Brando_SoD_QuestBookQuarrel","GLOBAL",4)~ THEN ~Oh, take this as a thank you for believing me. When I realized I do not remember the exact title I started sweating quite a bit. These are just a few of my ingredients, I hope they can be of use to you.~ DO ~GiveItemCreate("POTN37",[PC],2,0,0)~
== c#brsqu2 IF ~Global("C#brando_SoD_TalkedToEldom2","GLOBAL",2)
GlobalGT("C#Brando_SoD_QuestBookQuarrel","GLOBAL",4)~ THEN ~Talking to - Haddock, I think it was? - already cleared up my problem to put this guide to use.~ 
== c#brandj IF ~Global("C#brando_SoD_TalkedToEldom2","GLOBAL",2)
GlobalGT("C#Brando_SoD_QuestBookQuarrel","GLOBAL",4)
OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2)
InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN ~It's *Brandock*, but - er, yes.~
== c#brsqu2 IF ~Global("C#brando_SoD_TalkedToEldom2","GLOBAL",2)
GlobalGT("C#Brando_SoD_QuestBookQuarrel","GLOBAL",4)
OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2)
InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN ~Brandock! Right, right.~
== c#brsqu2 IF ~Global("C#brando_SoD_TalkedToEldom2","GLOBAL",2)
GlobalGT("C#Brando_SoD_QuestBookQuarrel","GLOBAL",4)~ THEN ~Come and talk to me later, <CHARNAME>. I might have something for you.~
== c#brsqu2 IF ~GlobalLT("C#brando_SoD_TalkedToEldom2","GLOBAL",2)
GlobalGT("C#Brando_SoD_QuestBookQuarrel","GLOBAL",4)~ THEN ~I'll have to go now and see how to put it to use. There is still some things I didn't quite get and I probably won't understand them trying to read in this bustle.~
== c#brsqu1 IF ~Global("C#Brando_SoD_QuestBookQuarrel","GLOBAL",4)~ THEN ~This is settled - at *last*! Give me the book - thank you, goodbye.~
== c#brsqu2 IF ~Global("C#Brando_SoD_QuestBookQuarrel","GLOBAL",4)~ THEN ~Please - can I make a copy of the book before you sell it? I'll pay you, but I do not have the gold to *buy* it from you... I do not care about having the original book, it's about what is written inside that interests me.~
== c#brsqu1 IF ~Global("C#Brando_SoD_QuestBookQuarrel","GLOBAL",4)~ THEN ~Forget it. I won't lessen the value of this book by spreading copies.~
== c#brsqu2 IF ~Global("C#Brando_SoD_QuestBookQuarrel","GLOBAL",4)~ THEN ~Ah, godsdammit. This is unfortunate. Well, I don't blame you, <CHARNAME>, I'd probably wouldn't have believed me, either.~
END
IF ~Global("C#Brando_SoD_QuestBookQuarrel","GLOBAL",4)~ THEN DO ~SetGlobal("C#Brando_SoD_QuestBookQuarrel","GLOBAL",6) EraseJournalEntry(@10077)~ SOLVED_JOURNAL @10083 EXIT
IF ~Global("C#Brando_SoD_QuestBookQuarrel","GLOBAL",5)~ THEN DO ~SetGlobal("C#Brando_SoD_QuestBookQuarrel","GLOBAL",7) EraseJournalEntry(@10077)~ SOLVED_JOURNAL @10091
EXIT 
IF ~Global("C#Brando_SoD_QuestBookQuarrel","GLOBAL",6)~ THEN DO ~SetGlobal("C#Brando_SoD_QuestBookQuarrel","GLOBAL",8) EraseJournalEntry(@10077)~ SOLVED_JOURNAL @10084
EXIT IF ~Global("C#brando_SoD_TalkedToEldom2","GLOBAL",2)
Global("C#Brando_SoD_QuestBookQuarrel","GLOBAL",6)~ THEN DO ~SetGlobal("C#Brando_SoD_QuestBookQuarrel","GLOBAL",9) EraseJournalEntry(@10077)~ SOLVED_JOURNAL @10084 EXIT



/* Mander */
BEGIN c#brsqu1

IF ~Global("C#Brando_SoD_QuestBookQuarrel","GLOBAL",3)~ THEN book_quarrel_c#brsqu1
SAY ~Can I have my book back now? It's an important asset and I promised it to someone else.~
++ ~What is the title of the book and the author's name?~ DO ~SetGlobal("C#brando_SoD_TalkedToMander","GLOBAL",1)~ + book_quarrel_c#brsqu1_01
+ ~Global("C#Brando_Mander2","MYAREA",0)~ + ~What is the book about?~ + book_quarrel_c#brsqu1_02
++ ~Is there anything special on the book you can tell me about?~ + book_quarrel_c#brsqu1_03
++ ~I'll see what I can do.~ EXIT 
END

CHAIN
IF ~~ THEN c#brsqu1 book_quarrel_c#brsqu1_01
~The title is "Item Enchantments: a Step to Step Guide". It was written by Sir Lembold.~
== bdrayphu IF ~Global("C#brando_Mander1","MYAREA",0)~ THEN ~That is correct.~ DO ~SetGlobal("C#brando_Mander1","MYAREA",1)~
END
IF ~~ THEN + book_quarrel_c#brsqu1

CHAIN
IF ~~ THEN c#brsqu1 book_quarrel_c#brsqu1_02
~It is about enchanting items. A step to step guide. It's fairly easy to understand, if you are into these things.~
== c#brandj IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2)
InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN ~[Brandock]It presents a very special and fascinating way of doing it, actually.~ DO ~SetGlobal("C#Brando_Mander2","MYAREA",1)~
== c#brsqu1 IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2)
InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN ~Well, it's a step to step guide to enchant items, so I guess it's a fascinating read for a mage.~
== c#brandj IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2)
InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN ~[Brandock]Not just a step to step guide though. The title is tongue in cheek, actually.~
== c#brsqu1 IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2)
InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN ~Well... I didn't read it that detailed, I don't understand these matters.~
== c#brandj IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2)
InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN ~[Brandock]Oh. You just said it's easy to understand, so I thought you understood it when reading.~
== c#brsqu1 IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2)
InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN ~No, it's what is written on the cover. It's a very special book to me because it's valuable. There is no shame in that! These are difficult times.~
END
IF ~~ THEN + book_quarrel_c#brsqu1

CHAIN
IF ~~ THEN c#brsqu1 book_quarrel_c#brsqu1_03
~It's wrapped in lamb skin leather, a very fine and special kind of leather. It's very expensive material.~
== bdrayphu IF ~Global("C#Brando_RayphusBQ2","MYAREA",0)~ THEN ~[Rayphus]Hmm, the leather seems to be softer than usual, but I can't prove whether it's lamb skin.~ DO ~SetGlobal("C#Brando_RayphusBQ2","MYAREA",1)~
/*
~[Husam]I can identify the leather type - it seems to be lamb leather, indeed. Interesting. This is a very valuable book, and not necessarily due to what is written inside.~
*/
END
IF ~~ THEN + book_quarrel_c#brsqu1


BEGIN c#brsqu2

IF ~Global("C#Brando_SoD_QuestBookQuarrel","GLOBAL",3)~ THEN book_quarrel_c#brsqu2
SAY ~Tell me how I can prove the book is mine.~
+ ~GlobalLT("C#brando_SoD_TalkedToEldom3","GLOBAL",2)~ + ~What is the title of the book and the author's name?~ DO ~SetGlobal("C#brando_SoD_TalkedToEldom1","GLOBAL",1)~ + book_quarrel_c#brsqu2_01

+ ~GlobalLT("C#brando_SoD_TalkedToEldom2","GLOBAL",2)
Global("C#brando_SoD_TalkedToEldom3","GLOBAL",2)~ + ~What is the title of the book and the author's name?~ DO ~SetGlobal("C#brando_SoD_TalkedToEldom1","GLOBAL",1)~ + book_quarrel_c#brsqu2_00

+ ~GlobalLT("C#brando_SoD_TalkedToEldom2","GLOBAL",2)~ + ~What is the book about?~ DO ~SetGlobal("C#brando_SoD_TalkedToEldom2","GLOBAL",1)~ + book_quarrel_c#brsqu2_02
+ ~GlobalLT("C#brando_SoD_TalkedToEldom3","GLOBAL",2)~ + ~Is there anything special about the book you can tell me about?~ DO ~SetGlobal("C#brando_SoD_TalkedToEldom3","GLOBAL",1)~ + book_quarrel_c#brsqu2_04
+ ~Global("C#brando_SoD_TalkedToEldom2","GLOBAL",2)
Global("C#brando_SoD_TalkedToEldom3","GLOBAL",2)~ + ~I think you told me everything you could. I guess I need to make a decision.~ EXIT 
+ ~OR(2) GlobalLT("C#brando_SoD_TalkedToEldom2","GLOBAL",2)
GlobalLT("C#brando_SoD_TalkedToEldom3","GLOBAL",2)~ + ~I'll see what I can do.~ EXIT 
END

IF ~~ THEN book_quarrel_c#brsqu2_00
SAY ~It is written by Sir Lembold - I recalled that now.~
IF ~~ THEN + book_quarrel_c#brsqu2_01A
END

IF ~~ THEN book_quarrel_c#brsqu2_01
SAY ~I don't remember the author's name, a Sir something?~
IF ~~ THEN + book_quarrel_c#brsqu2_01A
END

CHAIN
IF ~~ THEN c#brsqu2 book_quarrel_c#brsqu2_01A
~The title is something about enchanting items and a step guide, I didn't learn the title by heart and can't seem to remember the exact wording.~
== bdrayphu IF ~Global("C#Brando_RayphusBQ3","MYAREA",0)~ THEN ~[Rayphus]How can you not know the title of the book if you claim it's yours?!~ 
== c#brsqu2 IF ~Global("C#Brando_RayphusBQ3","MYAREA",0)~ THEN ~I wasn't expecting to be interrogated about it. I read the book for its content, not the title.~ DO ~SetGlobal("C#Brando_RayphusBQ3","MYAREA",1)~
== c#brandj IF ~Global("C#Brando_c#brsqu2_01","MYAREA",0)
OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2)
InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN ~[Brandock]Ha, I had some fellow students who read books that way. I guess it works for some.~ DO ~SetGlobal("C#Brando_c#brsqu2_01","MYAREA",1)~
END
IF ~~ THEN + book_quarrel_c#brsqu2

CHAIN
IF ~~ THEN c#brsqu2 book_quarrel_c#brsqu2_02
~It's about item enchantment, a special way of doing it. A very special way, so it's easier to do. I... think I understood it, but I am missing the last bit to really be able to work with it. I'm not a mage, I guess a mage can understand it more easily.~
= ~What's especially interesting is that the author wasn't a mage, these findings aren't from well-known mages at all, but collected from smithies all over the lands. The way he experimented with them and made the enchantment lists is nothing less than what a mage would have done, though. It's really fascinating.~
== c#brandj IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2)
InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN ~[Brandock]It takes up a lot of material, but still, very fascinating idea. It reminds me of the De Simplex Magicae. Who had thought that enchantment *amplification* could be the solution to make highly enchanted items with lesser magic skills.~
== c#brsqu2 IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2)
InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN ~It *is*! You are a mage, I take it? Did you undestand how he - (The discussion between the two turns into a detailed discussion about what the book is about, the pros and cons of what is suggested in the book, and Brandock answering some of Eldom's question about some of the features.)~ DO ~SetGlobal("C#brando_SoD_TalkedToEldom2","GLOBAL",2)~ 
END
+ ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2)
InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ + ~(You wait until the two are done with their discussion.)~ EXTERN c#brandj book_quarrel_c#brsqu2_03_brando
+ ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2)
InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ + ~Brandock - this was not meant to become a specialists' discussion.~ EXTERN c#brandj book_quarrel_brando_03
IF ~OR(3) Global("C#BrandockJoined","GLOBAL",0)
!InMyArea("C#Brandock") StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN + book_quarrel_c#brsqu2

CHAIN
IF ~~ THEN c#brandj book_quarrel_c#brsqu2_03_brando
~[Brandock]Say what you want - but this man knows the *content* of the book alright.~
END
+ ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2)
InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ + ~Which proves nothing, since you do, too, and you didn't read it for long, either.~ EXTERN c#brsqu2 book_quarrel_c#brsqu2
+ ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2)
InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ + ~Definitely sounds like someone who treasured the book and read it thoroughly, yes.~ EXTERN c#brsqu2 book_quarrel_c#brsqu2
IF ~OR(3) Global("C#BrandockJoined","GLOBAL",0)
!InMyArea("C#Brandock") StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN EXTERN c#brsqu2 book_quarrel_c#brsqu2

CHAIN
IF ~~ THEN c#brsqu2 book_quarrel_c#brsqu2_04
~Er... pages 234 and 235 are stained because I spilled ale on it once?~
== bdrayphu ~[Rayphus]Pages 234... that's right - the pages are strained and a little bit sticky. It's something anyone who takes the book into their hands and flips through the pages would notice instantly, though.~
== c#brandj IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2)
InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN ~[Brandock]Oh, I see why you would have these pages open.~
== c#brsqu2 IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2)
InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN ~Definitely. It's the ones with the lists about the enchantment steps suggested by the author - oh, I remember his name now. It was Sir Lembold.~ DO ~SetGlobal("C#brando_SoD_TalkedToEldom3","GLOBAL",2)~ 
== bdrayphu IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2)
InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN ~[Rayphus]And - both these statements are correct.~
END
IF ~~ THEN + book_quarrel_c#brsqu2

APPEND c#brsqu2

/* NumItemsGT(S:ResRef*,O:Object*,I:Num*) */
/* NumItemsPartyGT(S:ResRef*,I:Num*) */
/* normal bolts: BOLT01.itm
Bolt +1: BOLT02.itm
Bolt +2: BOLT06.itm
Bolt +3: bdbolt03.itm

normal Arrows: AROW01.itm
Arrows +1: AROW02.itm
Arrows +2: AROW11.itm
Arrows +3: bdarow04.itm

normal Bullets: BULL01.itm
Bullets +1: BULL02.itm
Bullets +2: BULL03.itm
Bullets +3: bdbull03.itm */

IF ~GlobalGT("C#Brando_SoD_QuestBookQuarrel","GLOBAL",9)
Global("C#Brando_SoD_squ2","GLOBAL",0)
Detect(Player1)~ THEN munition_shop
SAY ~Ah, it is you. I think I can put the knowledge of the book to good use and would offer you my services - and for you, I'll do it without further cost! Bring me 10 pieces of any munition I will transform it into 1 piece with higher enchantment. I won't be able to do it for all sorts of ammo, of course, but normal bolts, arrows, and bullets should be easy enough.~
= ~I have a problem, though. +2 enchantement is the highest I can do currently. It seems Mander took out the recipes for the +3 enchantments - tore the pages out, that fool! He'll probably try to sell it separately. It's interesting to a mage or a smith - only that it's of no use without the ingredients list in the appendix. You get around quite a bit, just in case you find the page, bring it to me and I'll be able to enchant +2 munition to +3 munition, too!~
IF ~~ THEN DO ~SetGlobal("C#Brando_SoD_squ2","GLOBAL",1) AddJournalEntry(@10088,QUEST)~ JOURNAL @10085 + munition_shop_00
END

IF ~Global("C#Brando_SoD_squ2","GLOBAL",1)~ THEN munition_shop_00
SAY ~Do you want me to enchant your munition? I'd need 10 to make one higher enchanted specimen. And I will use all I'll find in your and your comrades' backpacks, so if you want to keep some, put them into your chest before giving me access to your stuff.~
+ ~NumItemsPartyGT("BOLT01",9)~ + ~Please change all normal bolts to bolts +1.~ DO ~SetGlobal("C#Brando_SoD_squ2","GLOBAL",11)~ + munition_shop_01
+ ~NumItemsPartyGT("AROW01",9)~ + ~Please change all normal arrows to arrows +1.~ DO ~SetGlobal("C#Brando_SoD_squ2","GLOBAL",21)~ + munition_shop_01
+ ~NumItemsPartyGT("bull01",9)~ + ~Please change all normal bullets to bullets +1.~ DO ~SetGlobal("C#Brando_SoD_squ2","GLOBAL",31)~ + munition_shop_01
+ ~NumItemsPartyGT("BOLT02",9)~ + ~Please change all +1 bolts to bolts +2.~ DO ~SetGlobal("C#Brando_SoD_squ2","GLOBAL",12)~ + munition_shop_01
+ ~NumItemsPartyGT("AROW02",9)~ + ~Please change all +1 arrows to arrows +2.~ DO ~SetGlobal("C#Brando_SoD_squ2","GLOBAL",22)~ + munition_shop_01
+ ~NumItemsPartyGT("BULL02",9)~ + ~Please change all +1 bullets to bullets +2.~ DO ~SetGlobal("C#Brando_SoD_squ2","GLOBAL",32)~ + munition_shop_01
+ ~Global("C#Brando_SoD_QuestBookQuarrel","GLOBAL",12)
NumItemsPartyGT("BOLT06",9)~ + ~Please change all +2 bolts to bolts +3.~ DO ~SetGlobal("C#Brando_SoD_squ2","GLOBAL",13)~ + munition_shop_01
+ ~Global("C#Brando_SoD_QuestBookQuarrel","GLOBAL",12)
NumItemsPartyGT("AROW11",9)~ + ~Please change all +2 arrows to arrows +3.~ DO ~SetGlobal("C#Brando_SoD_squ2","GLOBAL",23)~ + munition_shop_01
+ ~Global("C#Brando_SoD_QuestBookQuarrel","GLOBAL",12)
NumItemsPartyGT("BULL03",9)~ + ~Please change all +2 bullets to bullets +3.~ DO ~SetGlobal("C#Brando_SoD_squ2","GLOBAL",33)~ + munition_shop_01
+ ~PartyHasItem("c#brsql1") OR(2) Global("C#Brando_SoD_QuestBookQuarrel","GLOBAL",10)
Global("C#Brando_SoD_QuestBookQuarrel","GLOBAL",11)~ + ~I found the missing book page.~ DO ~SetGlobal("C#Brando_SoD_QuestBookQuarrel","GLOBAL",12)~ + munition_shop_02
++ ~Not right now. I'll be back.~ EXIT
END

IF ~Global("C#Brando_SoD_squ2","GLOBAL",2)~ THEN munition_shop_0B
SAY ~That's all I could find. Take care!~
IF ~~ THEN DO ~SetGlobal("C#Brando_SoD_squ2","GLOBAL",1)~ EXIT
END

IF ~~ THEN munition_shop_01
SAY ~With pleasure!~
IF ~~ THEN DO ~ClearAllActions() StartCutSceneMode() FadeToColor([20.0],0) StartCutSceneEx("c#brsquc",TRUE)~ EXIT
END

IF ~~ THEN munition_shop_02
SAY ~Really? That - that's *awesome*! I didn't think you would, to be honest. That is really a miracle. Well, I guess it's no wonder that scoundrel found a buyer nearby considering there is a lot of mages and smiths busy in the area currently... Take these as a reward.~
IF ~~ THEN DO ~EraseJournalEntry(@10088) EraseJournalEntry(@10085) AddJournalEntry(@10087,INFO) GiveItemCreate("POTN37",[PC],2,0,0) GiveItemCreate("BULL03",[PC],20,0,0)~ SOLVED_JOURNAL @10090 EXIT
END

END //APPEND