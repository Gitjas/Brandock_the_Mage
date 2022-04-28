BEGIN bdrayphu

CHAIN
IF WEIGHT #-1
~Global("C#Brando_SoD_QuestBookQuarrel","GLOBAL",1)~ THEN bdrayphu book_quarrel
~[Rayphus]This is Rayphus' first line. Yadda.~
END
IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2)
InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN EXTERN c#brandj book_quarrel_brando 

APPEND c#brandj

IF ~~ THEN book_quarrel_brando 
SAY ~Brandock says a line.~
++ ~This line ends the first dialogue so PC can talk to Rayphus.~ DO ~SetGlobal("C#Brando_SoD_QuestBookQuarrel","GLOBAL",3)~ EXIT
++ ~This answer sets the variable but leads to a NVROL.~ DO ~SetGlobal("C#Brando_SoD_TestTest","GLOBAL",4)~ EXTERN bdrayphu book_quarrel_06  
END

IF ~~ THEN book_quarrel_brando_04
SAY ~Blabla~
++ ~This line sets the variable and works.~ DO ~SetGlobal("C#Brando_SoD_TestTest","GLOBAL",4)~ EXTERN bdrayphu book_quarrel_06
END
END //APPEND


APPEND bdrayphu

IF WEIGHT #-1
~Global("C#Brando_SoD_QuestBookQuarrel","GLOBAL",3) Global("C#Brando_BookInterrogation","LOCALS",0)~ THEN book_quarrel_03
SAY ~Yadda?~
++ ~Brandock says a line.~ EXTERN c#brandj book_quarrel_brando_04
END
END //APPEND bdrayphu


APPEND bdrayphu
IF ~~ THEN book_quarrel_06
SAY ~Also one line blabla.~
IF ~~ THEN + book_quarrel_08
END
END //APPEND

BEGIN c#brsqu1

CHAIN
IF ~~ THEN bdrayphu book_quarrel_08
~Another line blabla.~
== c#brsqu1 IF ~Global("C#Brando_SoD_TestTest","GLOBAL",4)~ THEN ~This line should always run.~
END
IF ~Global("C#Brando_SoD_TestTest","GLOBAL",4)~ THEN DO ~SetGlobal("C#Brando_SoD_QuestBookQuarrel","GLOBAL",6) EraseJournalEntry(@10077)~ SOLVED_JOURNAL @10083 EXIT
