/* BGII */

/* Brandock asks to go to the Temple of Oghma if PID didn't happen */
/* -> in c#brandj_PID_BG2.d */


/* In Temple of Oghma, without needed ingredients / gold */

EXTEND_BOTTOM DOGHMA 0
+ ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2)
InMyArea("C#Brandock")
GlobalLT("C#Br_BookRestore","GLOBAL",16)
OR(2)
     HasItem("C#br0007","C#Brandock")
     PartyHasItem("C#br0007")~ + @1900 + bookrestore_oghma

/* group comes back and has all needed ingredients */
+ ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2)
InMyArea("C#Brandock")
OR(2)
GlobalGT("C#Br_BookRestore","GLOBAL",15)
GlobalLT("C#Br_BookRestore","GLOBAL",19)
OR(2)
     HasItem("C#br0007","C#Brandock")
     PartyHasItem("C#br0007")
PartyGoldGT(4999)
	OR(5)
		PartyHasItem("MISC44") 
		HasItem("MISC44","C#Solaufein")
		HasItem("MISC44","C#Grey")
		HasItem("MISC44","C#Husam1")
		HasItem("MISC44","C#Brandock")
	OR(3)
		!HasItem("MISC44","C#Solaufein")
		Global("C#SolauJoined","GLOBAL",2)
		InParty("C#Solaufein")
	OR(3)
		!HasItem("MISC44","C#Grey")
		Global("C#GreyJoined","GLOBAL",2)
		InParty("C#Grey")
	OR(3)
		!HasItem("MISC44","C#Husam1")
		Global("C#HusamJoined","GLOBAL",2)
		InParty("C#Husam")
	OR(3)
		!HasItem("MISC44","C#Brandock")
		Global("C#BrandockJoined","GLOBAL",2)
		InParty("C#Brandock")~ + @1901 + bookrestore_oghma_01
END

EXTEND_BOTTOM DOGHMA 7
+ ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2)
InMyArea("C#Brandock")
GlobalLT("C#Br_BookRestore","GLOBAL",16)
OR(2)
     HasItem("C#br0007","C#Brandock")
     PartyHasItem("C#br0007")~ + @1900 + bookrestore_oghma
/* group comes back and has all needed ingredients */
+ ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2)
InMyArea("C#Brandock")
OR(2)
GlobalGT("C#Br_BookRestore","GLOBAL",15)
GlobalLT("C#Br_BookRestore","GLOBAL",19)
OR(2)
     HasItem("C#br0007","C#Brandock")
     PartyHasItem("C#br0007")
PartyGoldGT(4999)
	OR(5)
		PartyHasItem("MISC44") 
		HasItem("MISC44","C#Solaufein")
		HasItem("MISC44","C#Grey")
		HasItem("MISC44","C#Husam1")
		HasItem("MISC44","C#Brandock")
	OR(3)
		!HasItem("MISC44","C#Solaufein")
		Global("C#SolauJoined","GLOBAL",2)
		InParty("C#Solaufein")
	OR(3)
		!HasItem("MISC44","C#Grey")
		Global("C#GreyJoined","GLOBAL",2)
		InParty("C#Grey")
	OR(3)
		!HasItem("MISC44","C#Husam1")
		Global("C#HusamJoined","GLOBAL",2)
		InParty("C#Husam")
	OR(3)
		!HasItem("MISC44","C#Brandock")
		Global("C#BrandockJoined","GLOBAL",2)
		InParty("C#Brandock")~ + @1901 + bookrestore_oghma_01
END

EXTEND_BOTTOM DOGHMA 9
+ ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2)
InMyArea("C#Brandock")
GlobalLT("C#Br_BookRestore","GLOBAL",16)
OR(2)
     HasItem("C#br0007","C#Brandock")
     PartyHasItem("C#br0007")~ + @1900 + bookrestore_oghma
/* group comes back and has all needed ingredients */
+ ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2)
InMyArea("C#Brandock")
OR(2)
GlobalGT("C#Br_BookRestore","GLOBAL",15)
GlobalLT("C#Br_BookRestore","GLOBAL",19)
OR(2)
     HasItem("C#br0007","C#Brandock")
     PartyHasItem("C#br0007")
PartyGoldGT(4999)
	OR(5)
		PartyHasItem("MISC44") 
		HasItem("MISC44","C#Solaufein")
		HasItem("MISC44","C#Grey")
		HasItem("MISC44","C#Husam1")
		HasItem("MISC44","C#Brandock")
	OR(3)
		!HasItem("MISC44","C#Solaufein")
		Global("C#SolauJoined","GLOBAL",2)
		InParty("C#Solaufein")
	OR(3)
		!HasItem("MISC44","C#Grey")
		Global("C#GreyJoined","GLOBAL",2)
		InParty("C#Grey")
	OR(3)
		!HasItem("MISC44","C#Husam1")
		Global("C#HusamJoined","GLOBAL",2)
		InParty("C#Husam")
	OR(3)
		!HasItem("MISC44","C#Brandock")
		Global("C#BrandockJoined","GLOBAL",2)
		InParty("C#Brandock")~ + @1901 + bookrestore_oghma_01
END

APPEND DOGHMA 
IF ~~ THEN bookrestore_oghma
SAY @1902
IF ~~ THEN DO ~EraseJournalEntry(@10021)
EraseJournalEntry(@10022)
EraseJournalEntry(@10026)
EraseJournalEntry(@10028)
EraseJournalEntry(@10044)
EraseJournalEntry(@10051)
EraseJournalEntry(@10053)
EraseJournalEntry(@10055)
EraseJournalEntry(@10057)
EraseJournalEntry(@10058)
SetGlobal("C#Br_BookRestore","GLOBAL",16)~ UNSOLVED_JOURNAL @10059 EXIT
IF ~PartyGoldGT(4999)
	OR(5)
		PartyHasItem("MISC44") 
		HasItem("MISC44","C#Solaufein")
		HasItem("MISC44","C#Grey")
		HasItem("MISC44","C#Husam1")
		HasItem("MISC44","C#Brandock")
	OR(3)
		!HasItem("MISC44","C#Solaufein")
		Global("C#SolauJoined","GLOBAL",2)
		InParty("C#Solaufein")
	OR(3)
		!HasItem("MISC44","C#Grey")
		Global("C#GreyJoined","GLOBAL",2)
		InParty("C#Grey")
	OR(3)
		!HasItem("MISC44","C#Husam1")
		Global("C#HusamJoined","GLOBAL",2)
		InParty("C#Husam")
	OR(3)
		!HasItem("MISC44","C#Brandock")
		Global("C#BrandockJoined","GLOBAL",2)
		InParty("C#Brandock")~ THEN EXTERN c#brandj bookrestore_temple_01
END

IF ~~ THEN bookrestore_oghma_01
SAY @1903
IF ~HasItem("MISC44","C#Solaufein")
InMyArea("C#Solaufein")
Global("C#SolauJoined","GLOBAL",2)~ THEN DO ~ActionOverride("C#Solaufein",GiveItem("MISC44",Player1))~ + bookrestore_oghma_02
IF ~HasItem("MISC44","C#Grey")
InMyArea("C#Grey")
Global("C#GreyJoined","GLOBAL",2)~ THEN DO ~ActionOverride("C#Grey",GiveItem("MISC44",Player1))~ + bookrestore_oghma_02
IF ~HasItem("MISC44","C#Husam1")
InMyArea("C#Husam1")
Global("C#HusamJoined","GLOBAL",2)~ THEN DO ~ActionOverride("C#Husam1",GiveItem("MISC44",Player1))~ + bookrestore_oghma_02
IF ~HasItem("MISC44","C#Brandock")
Global("C#BrandockJoined","GLOBAL",2)~ THEN DO ~ActionOverride("C#Brandock",GiveItem("MISC44",Player1))~ + bookrestore_oghma_02
IF ~PartyHasItem("MISC44") HasItem("c#br0007","C#Brandock")~ THEN + bookrestore_oghma_02
END

/* In Temple of Oghma, group has needed ingredient + gold: book gets restored */
/* If Global("C#Br_BookRestoreAlone","GLOBAL",3): no letter to Elvenhair! */
IF ~~ THEN bookrestore_oghma_02
SAY @1904
IF ~~ THEN DO ~ActionOverride("DOGHMA",TakePartyItemNum("MISC44",1))
ActionOverride("DOGHMA",DestroyItem("MISC44"))
DestroyGold(5000)
SetGlobal("C#Br_BookRestore","GLOBAL",19) ClearAllActions() StartCutSceneMode() StartCutScene("c#brcut5")~ EXIT
END

END //APPEND

CHAIN
IF ~Global("C#Br_BookRestore","GLOBAL",19)~ THEN c#brandj bookrestore_temple
@1905 
== c#brandj IF ~!Global("C#Br_BookRestoreAlone","GLOBAL",3)~ THEN @1906
== c#brandj IF ~Global("C#Br_BookRestoreAlone","GLOBAL",3)~ THEN @1907
== c#brandj @1908
= @1909
== DOGHMA @1910
END
IF ~~ THEN DO ~EraseJournalEntry(@10056)
EraseJournalEntry(@10058)
EraseJournalEntry(@10059)
EraseJournalEntry(@10060)
RealSetGlobalTimer("C#BrandockDialogTimer","GLOBAL",C#BRANDOCK_TIMERLONG)
SetGlobal("C#Br_BookRestore","GLOBAL",20)~ UNSOLVED_JOURNAL @10061 EXIT



APPEND c#brandj

IF ~~ THEN bookrestore_temple_01
SAY @1911
++ @1912 EXTERN DOGHMA bookrestore_oghma_01
++ @1913 + bookrestore_temple_02
END

IF ~~ THEN bookrestore_temple_02
SAY @1914
IF ~~ THEN DO ~EraseJournalEntry(@10021)
EraseJournalEntry(@10022)
EraseJournalEntry(@10026)
EraseJournalEntry(@10028)
EraseJournalEntry(@10044)
EraseJournalEntry(@10051)
EraseJournalEntry(@10053)
EraseJournalEntry(@10055)
EraseJournalEntry(@10057)
EraseJournalEntry(@10058)
SetGlobal("C#Br_BookRestore","GLOBAL",16)~ UNSOLVED_JOURNAL @10059 EXIT
END


/* group has King's Tear gem and needed amount of gold */
IF ~Global("C#Br_BookRestore","GLOBAL",17)~ THEN bookrestore_ingedients
SAY @1915
IF ~~ THEN DO ~SetGlobal("C#Br_BookRestore","GLOBAL",18)~ UNSOLVED_JOURNAL @10060 EXIT
END


/* follow-up after taking the book to the temple - timer run out */

IF ~Global("C#Br_BookRestore","GLOBAL",21)~ THEN bookrestore_after_temple
SAY @1927 /* ~[Brandock]<CHARNAME>, ever since we left the temple I am trying to wrap my head around a *decision* I already made and that's scaring me to hells. I... I decided to refill the De Simplex Magicae with spells myself.~ */
++ @1928 /* ~[PC Reply]That's a great idea! I am sure you can do it.~ */ + bookrestore_after_temple_03
++ @1929 /* ~[PC Reply]Why the shy look? Don't you think you can do it?~ */ + bookrestore_after_temple_02
++ @1930 /* ~[PC Reply]I figured as much, after seeing you holding on to it like that.~ */ + bookrestore_after_temple_04 
++ @1931 /* ~[PC Reply]If you think that's a good idea...~ */ + bookrestore_after_temple_01
+ ~Global("C#Br_OghmasWisdomPID","LOCALS",1)~ + @1920 /* ~[PC Reply]Ah, so that's what kept you occupied since we visited the monks.~ */ + bookrestore_after_temple_04
++ @1932 /* ~[PC Reply]I didn't expect you to. What made you change your mind?~ */ + bookrestore_after_temple_04
END 

IF ~~ THEN bookrestore_after_temple_01
SAY @1933 /* ~[Brandock]I never said it's a *good* idea.~ */
IF ~~ THEN + bookrestore_after_temple_04
END

IF ~~ THEN bookrestore_after_temple_02
SAY @1934 /* ~[Brandock]Yes, I *do* think I can do it. That's what scares me.~ */
IF ~~ THEN + bookrestore_after_temple_04
END

IF ~~ THEN bookrestore_after_temple_03
SAY @1935 /* ~[Brandock]Then you have a better judgement of my talent than me until I talked to the monks in the Tmple of Oghma.~ */
IF ~~ THEN + bookrestore_after_temple_04
END

IF ~~ THEN bookrestore_after_temple_04
SAY @1945 /* ~[Bandock]I walked into the temple, convinced that I would not take the book out again. Seeking the wisdom of the monks - Oghma's wisdom - was easy enough. But to refill the pages with spells? Spells that are as easy and cheap to cast as were the ones originally inside? I was *convinced* that I wasn't experienced enough, that I surely would finally destroy it - that I shouldn't even try.~ */
= @1946 /* ~[Brandock]And then I talked to the monks, and... and I started to understand. I started to *understand* the magic in that book, <CHARNAME>.~ */
= @1947 /* ~[Brandock]So - I think I can do this. I *know* I could do this, given a little more experience and some pre-studies before I tackle the real thing. But... but I didn't wrap my mind around the thought that I *will* be doing this. It's... it's the De Simplex Magicae! I'm stuck in a loop where my heart says yes - and my mind yells OH GODS NO.~ */
++ @1948 /* ~You should listen to your heart.~ */ + bookrestore_after_temple_05
++ @1950 /* ~If you feel this insecure then it means something. I wouldn't do this if you feel this way.~ */ + bookrestore_after_temple_06
++ @1953 /* ~The magic in the book was hidden for so long. It really is no problem to wait a little longer.~ */ + bookrestore_after_temple_07
++ @1954 /* ~Just tell me when you'll have something useful coming out of this. I don't want to talk about it any more until then.~ */ + bookrestore_after_temple_08
END

IF ~~ THEN bookrestore_after_temple_05
SAY @1957 /* ~[Brandock]That's what I think, too - right before I get the next nervous breakdown.~ */
IF ~~ THEN + bookrestore_after_temple_08
END

IF ~~ THEN bookrestore_after_temple_06
SAY @1958 /* ~[Brandock]I definitely will not do anything with the book unless I am really sure about what I'm doing.~ */
IF ~~ THEN + bookrestore_after_temple_08
END

IF ~~ THEN bookrestore_after_temple_07
SAY @1959 /* ~[Brandock]My thoughts, exactly. Now I only have to believe them myself.~ */
IF ~~ THEN + bookrestore_after_temple_08
END

IF ~~ THEN bookrestore_after_temple_08
SAY @1960 /* ~[Brandock]The book and its magic was hidden so long indeed. The gods put it into my hand... and for some reason, let me, er, "unlock" the hidden magic in it. I *know* I can make it whole again. I just... I just need some more time, and a lot more experience. And - a little more self-confidence would be great, too.~ */
IF ~~ THEN + bookrestore_after_temple_09
END

END //APPEND

CHAIN 
IF ~~ THEN c#brandj bookrestore_after_temple_09
@1961 /* ~[Brandock]Gods, I really was hoping to be rid of it after the visit to the temple... But nooo, I have to walk this path to the end, there is no easy way out... Oh, who am I kidding! I *want* to do this, <CHARNAME>! I *want* to understand its magic, every little last bit of it! I will never give it out of my hands, unless there is nothing more I could learn from it!~ */
== c#brandj IF ~LevelGT("C#Brandock",4)~ THEN @1955 /* ~I paid *very* close attention to how the book's preservation magic worked. I want to work with my new knowledge next time I'll sit down for scroll scribing.~ */
== c#brandj IF ~LevelLT("C#Brandock",5)~ THEN @1956 /* ~I paid *very* close attention to how the book's preservation magic worked. I'm not experienced enough to work myself with it yet, but I'll let you know as soon as I will be.~ */
END
IF ~~ THEN DO ~RealSetGlobalTimer("C#BrandockDialogTimer","GLOBAL",C#BRANDOCK_TIMERLONG)
SetGlobal("C#Br_BookRestore","GLOBAL",22)~ UNSOLVED_JOURNAL @10068 
EXIT

APPEND c#brandj
/* ToB - De Simplex Magicae is finally fully restored */

IF WEIGHT #-1
~Global("C#Br_Scrollscribing","GLOBAL",2)
Global("C#Br_WriteBook","LOCALS",10)~ THEN scribe_book_last
SAY @1964
IF ~~ THEN + bookrestore_completed
END

IF ~~ THEN bookrestore_completed
SAY @1916 /* ~<CHARNAME>, this is it. This is the moment I was waiting for, hoping for, *working* for for so long. The De Simplex Magicae is restored - my guilt is quenched.~ */
++ @1917 /* ~(teasingly) Oh no! That is horrible! What are you going to do with your time now?~ */ + bookrestore_completed_05
++ @1918 /* ~I'm so happy for you, Brandock.~ */ + bookrestore_completed_03
++ @1919 /* ~It was your dedication that brought you here.~ */ + bookrestore_completed_01
++ @1921 /* ~Yes, it's over. I surely hope I don't have to hear that name ever again.~ */ + bookrestore_completed_10
END

IF ~~ THEN bookrestore_completed_01
SAY @1922 /* ~Ha, yes, that is so true... It was my dedication to the book that made me study it until I fell asleep on the road where the foxes could get to it.~ */
++ @1923 /* ~You know what I meant.~ */ + bookrestore_completed_02
++ @1924 /* ~So, what are you goin to *do* now?~ */ + bookrestore_completed_07
++ @1921 /* ~Yes, it's over. I surely hope I don't have to hear that name ever again.~ */ + bookrestore_completed_10
END

IF ~~ THEN bookrestore_completed_02
SAY @1925 /* ~I did indeed.~ */
IF ~~ THEN + bookrestore_completed_03
END

IF ~~ THEN bookrestore_completed_03
SAY @1926 /* ~I thank you.~ */
++ @1924 /* ~So, what are you goin to *do* now?~ */ + bookrestore_completed_07
++ @1921 /* ~Yes, it's over. I surely hope I don't have to hear that name ever again.~ */ + bookrestore_completed_10
END

IF ~~ THEN bookrestore_completed_04
SAY @1951 /* ~[Brandock]The De Simplex Magicae... I was its owner for so long - I learned verything I could from it. I studied the spell recipes, I learned about the restoration magic. There is nothing else I could learn from it.~ */
= @1952 /* ~Oh wow, this sounded really arrogant. But... truth is, there is nothing more that I could learn from it without the help of someone even *more* experienced than me.~ */
= @1962 /* ~It's a very useful book, though. And it's *complete*! Did I mention that the De Simplex Magicae is *complete* again?~ */
IF ~~ THEN DO ~EraseJournalEntry(@10080)
RealSetGlobalTimer("C#BrandockDialogTimer","GLOBAL",C#BRANDOCK_TIMERSHORT)
SetGlobal("C#Br_Scrollscribing","GLOBAL",3)
SetGlobal("C#Br_WriteBook","LOCALS",11)
ActionOverride("C#Brhelp",DestroySelf())~ SOLVED_JOURNAL @10081 EXIT
END

IF ~~ THEN bookrestore_completed_05
SAY @1936 /* ~Hahaha! I'd have an idea or two, to be honest. Helping out a very good friend without being distracted by a self-sustained guilt trap would be one, for example.~ */
++ @1937 /* ~(teasingly) That sounds like a great idea, Brandock. Let's do that! Do I know them?~ */ + bookrestore_completed_06
++ @1918 /* ~I'm so happy for you, Brandock.~ */ + bookrestore_completed_03
++ @1919 /* ~It was your dedication that brought you here.~ */ + bookrestore_completed_01
++ @1921 /* ~Yes, it's over. I surely hope I don't have to hear that name ever again.~ */ + bookrestore_completed_10
END

IF ~~ THEN bookrestore_completed_06
SAY @1938 /* ~Hahaha! Gods, <CHARNAME>, how I enjoy your jesting. It feels so good to laugh like this - after all the time that passed.~ */
++ @1918 /* ~I'm so happy for you, Brandock.~ */ + bookrestore_completed_03
++ @1919 /* ~It was your dedication that brought you here.~ */ + bookrestore_completed_01
++ @1921 /* ~Yes, it's over. I surely hope I don't have to hear that name ever again.~ */ + bookrestore_completed_10
END

IF ~~ THEN bookrestore_completed_07
SAY @1939 /* ~Now we will continue with what the gods are forcing us to do, I guess... but without this constant nagging in the back of my head that, deep down, I'm nothing but a failure.~ */
IF ~~ THEN + bookrestore_completed_08
END

IF ~~ THEN bookrestore_completed_08
SAY @1940 /* ~I feel like I should hold onto something, or I'll float away - that's how relieved I am.~ */
++ @1941 /* ~(teasingly) I could stand on your foot for a little, if it helps.~ */ + bookrestore_completed_09
++ @1942 /* ~I can imagine.~ */ + bookrestore_completed_04
++ @1943 /* ~Are we done here?~ */ + bookrestore_completed_10
END

IF ~~ THEN bookrestore_completed_09
SAY @1944 /* ~Hahaha! That would definitely distract me, yes.~ */
IF ~~ THEN + bookrestore_completed_04
END

IF ~~ THEN bookrestore_completed_10
SAY @1949 /* ~[Brandock]Ouch...~ */
IF ~~ THEN + bookrestore_completed_04
END

/* Book is finished - Brandock realizes what he's done... */
IF ~Global("C#Br_WriteBook","LOCALS",12)~ THEN finished_book
SAY @3648 /* ~<CHARNAME>, I'm still grabbing the concept of having completed the De Simplex Magicae. It's a real magic book of spells again - Wait! (Brandock pauses.) Wow! I could go around, telling people I wrote a magic book! Heh.~ */
++ @3649 /* ~Indeed, Brandock. And a handy book it is!~ */ + finished_book_01
++ @3650 /* ~I would say so, yes.~ */ + finished_book_02
++ @3651 /* ~Well, if you think it's yours, try feed it to the foxes and see how far you can make yourself do it.~ */ + finished_book_00
++ @3652 /* ~Having written spells back into there is not *that* impressive. There is much more you could do with this, I am sure.~ */ + finished_book_06
++ @3653 /* ~Yeah, great. Let's move on.~ */ + finished_book_07
END 

IF ~~ THEN finished_book_00
SAY @3654 /* ~You are right there, I couldn't... but it still feels like my work - at least partly.~ */
IF ~~ THEN + finished_book_02
END

IF ~~ THEN finished_book_01
SAY @3655 /* ~It really is.~ */
IF ~~ THEN + finished_book_02
END

IF ~~ THEN finished_book_02
SAY @3656 /* ~I can't believe I really restored it. I was *convinced* I'd just keep it safe until a *really* talented sage can deal with cleaning up my mess.~ */
++ @3657 /* ~I'm not surprised at all, Brandock, after seeing you absorb knowledge the way you do.~ */ + finished_book_04
++ @3658 /* ~You, my friend, have a serious issue with self-perception, I think.~ */ + finished_book_03
++ @3659 /* ~I could watch you all day, realizing you are actually smart and a well-versed mage.~ */ + finished_book_04
++ @3660 /* ~Yes, it's surprising how daft some really intelligent people can be.~ */ + finished_book_03
END

IF ~~ THEN finished_book_03
SAY @3661 /* ~I sense a compliment in there... somewhere.~ */
IF ~~ THEN + finished_book_05
END

IF ~~ THEN finished_book_04
SAY @3662 /* ~You know me better than I do sometimes, it seems.~ */
IF ~~ THEN + finished_book_05
END

IF ~~ THEN finished_book_05
SAY @1965 /* ~Well, the books name translates to "of the simple magic". It was even simple for me! I'm *not* referring to how I discovered the preservation magic inside it. I meant for writing the spells back in to make it a powerful magic ressouce again. This book offered a "simple" way all the way through - from writing spells on the pages to casting them. */
++ @1966 /* ~I'm pretty sure your experience and talent helped quite a bit.~ */ + finished_book_09
++ @1967 /* ~Don't make it sound as if it was really easy. You came a long way until now.~ */ + finished_book_09
++ @1968 /* ~If it was that easy, I wonder why it took so long.~ */ + finished_book_09
++ @3653 /* ~Yeah, great. Let's move on.~ */ + finished_book_07
END 

IF ~~ THEN finished_book_06
SAY @3665 /* ~Of course, but I'm still trying to grasp the way I came so far.~ */
IF ~~ THEN + finished_book_05
END

IF ~~ THEN finished_book_07
SAY @3666 /* ~We don't have to talk about it if you don't feel like it.~ */
IF ~~ THEN + finished_book_08
END

IF ~~ THEN finished_book_08
SAY @3667 /* ~I'm not sure what I'll do with all this knowledge yet - other than I'll write own books, once these times of madness will be over and the gods will grant me a quiet life. What I do know is that I will feel responsible for this knowledge not getting into the wrong hands.~ */
IF ~~ THEN DO ~SetGlobal("C#Br_WriteBook","LOCALS",10)~ EXIT
END

IF ~~ THEN finished_book_09
SAY @3663 /* ~I know it wasn't "simple" like scribing a normal scroll. I indeed gathered a lot of knowledge to be able to complete it. I mean... I know I'm not the same young man staring at magic for the first time any more, but I don't *feel* any different - I still don't feel like I'd know much, it still thrills me to learn about it, and its full potential still scares me.~ */
= @3664 /* ~But for making a magic book of spells, it was simple enough as a prestudy. Suddenly, I'm holding what I'd call a magic book, and I learned quite a bit on my way here. I feel proud and humble at the same time - as every so often.~ */
IF ~~ THEN + finished_book_08
END

END //APPEND
