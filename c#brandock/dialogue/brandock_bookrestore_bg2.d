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
EraseJournalEntry(@10052)
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
Global("C#SolauJoined","GLOBAL",2)~ THEN DO ~ActionOverride("C#Solaufein",GiveItem("MISC44",Player1))
ActionOverride("C#Brandock",GiveItem("c#br0007",Player1))~ + bookrestore_oghma_02
IF ~HasItem("MISC44","C#Grey")
InMyArea("C#Grey")
Global("C#GreyJoined","GLOBAL",2)~ THEN DO ~ActionOverride("C#Grey",GiveItem("MISC44",Player1))
ActionOverride("C#Brandock",GiveItem("c#br0007",Player1))~ + bookrestore_oghma_02
IF ~HasItem("MISC44","C#Husam1")
InMyArea("C#Husam1")
Global("C#HusamJoined","GLOBAL",2)~ THEN DO ~ActionOverride("C#Husam1",GiveItem("MISC44",Player1))
ActionOverride("C#Brandock",GiveItem("c#br0007",Player1))~ + bookrestore_oghma_02
IF ~HasItem("MISC44","C#Brandock")
Global("C#BrandockJoined","GLOBAL",2)~ THEN DO ~ActionOverride("C#Brandock",GiveItem("MISC44",Player1))
ActionOverride("C#Brandock",GiveItem("c#br0007",Player1))~ + bookrestore_oghma_02
IF ~PartyHasItem("MISC44") HasItem("c#br0007","C#Brandock")~ THEN DO ~ActionOverride("C#Brandock",GiveItem("c#br0007",Player1))~ + bookrestore_oghma_02
END

/* In Temple of Oghma, group has needed ingredient + gold: book gets restored */
/* If Global("C#Br_BookRestoreAlone","GLOBAL",3): no letter to Elvenhair! */
IF ~~ THEN bookrestore_oghma_02
SAY @1904
IF ~~ THEN DO ~ActionOverride("DOGHMA",TakePartyItemNum("MISC44",1))
ActionOverride("DOGHMA",DestroyItem("MISC44"))
DestroyGold(5000)
ActionOverride("DOGHMA",TakePartyItem("c#br0007"))
ActionOverride("DOGHMA",DestroyItem("c#br0007"))
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
RealSetGlobalTimer("C#BrandockDialogTimer","GLOBAL",300)
SetGlobal("C#Br_BookRestore","GLOBAL",20)~ SOLVED_JOURNAL @10061 EXIT



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
EraseJournalEntry(@10052)
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


/* after leaving the book with the temple */

IF ~Global("C#Br_BookRestore","GLOBAL",21)~ THEN bookrestore_after_temple
SAY @1916
++ @1917 + bookrestore_after_temple_05
++ @1918 + bookrestore_after_temple_03
++ @1919 + bookrestore_after_temple_01
++ @1920 + bookrestore_after_temple_04
++ @1921 + bookrestore_after_temple_13
END

IF ~~ THEN bookrestore_after_temple_01
SAY @1922
++ @1923 + bookrestore_after_temple_02
++ @1920 + bookrestore_after_temple_04
++ @1924 + bookrestore_after_temple_07
++ @1921 + bookrestore_after_temple_13
END

IF ~~ THEN bookrestore_after_temple_02
SAY @1925
IF ~~ THEN + bookrestore_after_temple_03
END

IF ~~ THEN bookrestore_after_temple_03
SAY @1926
++ @1920 + bookrestore_after_temple_04
++ @1924 + bookrestore_after_temple_07
++ @1921 + bookrestore_after_temple_13
END

IF ~~ THEN bookrestore_after_temple_04
SAY @1927
= @1928
++ @1929 + bookrestore_after_temple_12 
++ @1930 + bookrestore_after_temple_12
++ @1931 + bookrestore_after_temple_10
++ @1932 + bookrestore_after_temple_11
++ @1933 + bookrestore_after_temple_13
++ @1934 + bookrestore_after_temple_11
++ @1935 + bookrestore_after_temple_14
END

IF ~~ THEN bookrestore_after_temple_05
SAY @1936
+ ~GlobalGT("C#IM_ImoenStays","GLOBAL",0)~ + @1937 + bookrestore_after_temple_06
++ @1918 + bookrestore_after_temple_03
++ @1919 + bookrestore_after_temple_01
++ @1920 + bookrestore_after_temple_04
++ @1921 + bookrestore_after_temple_13
END

IF ~~ THEN bookrestore_after_temple_06
SAY @1938
++ @1918 + bookrestore_after_temple_03
++ @1919 + bookrestore_after_temple_01
++ @1920 + bookrestore_after_temple_04
++ @1921 + bookrestore_after_temple_13
END

IF ~~ THEN bookrestore_after_temple_07
SAY @1939
IF ~~ THEN + bookrestore_after_temple_08
END

IF ~~ THEN bookrestore_after_temple_08
SAY @1940
++ @1941 + bookrestore_after_temple_09
++ @1942 + bookrestore_after_temple_15
++ @1943 + bookrestore_after_temple_16
END

IF ~~ THEN bookrestore_after_temple_09
SAY @1944
IF ~~ THEN + bookrestore_after_temple_15
END

IF ~~ THEN bookrestore_after_temple_10
SAY @1945
IF ~~ THEN + bookrestore_after_temple_15
END

IF ~~ THEN bookrestore_after_temple_11
SAY @1946
IF ~~ THEN + bookrestore_after_temple_15
END

IF ~~ THEN bookrestore_after_temple_12
SAY @1947
++ @1931 + bookrestore_after_temple_10
++ @1932 + bookrestore_after_temple_11
++ @1948 + bookrestore_after_temple_13
++ @1934 + bookrestore_after_temple_11
++ @1935 + bookrestore_after_temple_14
END

IF ~~ THEN bookrestore_after_temple_13
SAY @1949
IF ~~ THEN + bookrestore_after_temple_15
END

IF ~~ THEN bookrestore_after_temple_14
SAY @1950
IF ~~ THEN + bookrestore_after_temple_15
END

IF ~~ THEN bookrestore_after_temple_15
SAY @1951
= @1952
IF ~~ THEN + bookrestore_after_temple_16
END
END //APPEND

CHAIN 
IF ~~ THEN c#brandj bookrestore_after_temple_16
@1953
= @1954
== c#brandj IF ~LevelGT("C#Brandock",4)~ THEN @1955
== c#brandj IF ~LevelLT("C#Brandock",5)~ THEN @1956
END
IF ~~ THEN DO ~RealSetGlobalTimer("C#BrandockDialogTimer","GLOBAL",C#BRANDOCK_TIMERLONG)
SetGlobal("C#Br_BookRestore","GLOBAL",22)~ //UNSOLVED_JOURNAL @## 
EXIT


