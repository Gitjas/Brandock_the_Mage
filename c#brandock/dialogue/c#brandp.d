
BEGIN c#brandP 


/* BG1. Brandock waits at Jovial Juggler after shapeshifter quest */

IF ~AreaCheck("%Beregost_JovialJuggler_L1%") 
Global("C#Brandock_Shapeshift","GLOBAL",10)~ hello_again
SAY @0 /* ~<CHARNAME>! Just passing through or did you change your mind?~ */
++ @1 /* ~No, just passing through.~ */ + kickout_01
++ @2 /* ~Indeed. I would like to take you along once more, Brandock.~ */ + hello_again_01
END

IF ~~ THEN hello_again_01
SAY @3 /* ~Great! Well, then let's go!~ */
= @4 /* ~And <CHARNAME>: Unless you start kidnapping grannies or turturing puppies, I'll be on your side with no further interruptions. You have my word for that.~ */

IF ~~ THEN DO ~SetGlobal("C#Brandock_Shapeshift","GLOBAL",11)
SetGlobal("C#BrandockJoined","GLOBAL",1)
EraseJournalEntry(@10001) 
JoinParty()~ EXIT

END

IF ~~ THEN wait_jovial_juggler
SAY @10 /* ~I'll be in Beregost inn, in case you need me.~ */
IF ~~ THEN DO ~SetGlobal("C#BrandockJoined","GLOBAL",0)
EscapeAreaMove("%Beregost_JovialJuggler_L1%",479,841,0)~ JOURNAL @10001 /* ~Brandock the Mage

Brandock is waiting for me in Beregost at the Jovial Juggler.~ */ EXIT
END

IF ~~ THEN farewell
SAY @11 /* ~I... I see. Then I wish you well, <CHARNAME>.~ */
IF ~~ THEN DO ~
EraseJournalEntry(@10000)
EraseJournalEntry(@10001)
SetGlobal("C#BrandockJoined","GLOBAL",0)
SetGlobal("C#Brandock_Gone","GLOBAL",1)
EscapeArea()~ EXIT
/* Brandock has his possessions: he will be in BGII */
IF ~GlobalGT("C#Brandock_Possessions","GLOBAL",2)~ THEN DO ~
EraseJournalEntry(@10000)
EraseJournalEntry(@10001)
SetGlobal("C#BrandockJoined","GLOBAL",0)
EscapeArea()~ EXIT
END

IF ~~ THEN farewell_sod
SAY @12 /* ~I see. I'll return home, then. I wish you well, <CHARNAME>.~ */
IF ~~ THEN DO ~
SetInterrupt(FALSE)
EraseJournalEntry(@10000)
EraseJournalEntry(@10001)
MakeGlobal()
SetGlobal("C#BrandockJoined","GLOBAL",0)
SetGlobal("bd_joined","locals",0)
SetInterrupt(TRUE)
EscapeArea()~ EXIT
END




/* SoD */
/* If kicked out in Avernus (so Caelar can join) in bd4700.are
This sets Global("C#Brandock_kicked_bd4700","global",1) which is used in bdcut59b.baf */
/* Brandock can't go home from here - so he will stay and say something brave. */
IF ~AreaCheck("bd4700")
    GlobalLT("bd_plot","global",570)~ THEN BEGIN kickout_sod_avernus
  SAY ~I, er, I'll stay nearby, alright?~
  IF ~~ THEN DO ~SetGlobal("C#BrandockJoined","GLOBAL",0)
SetGlobal("C#Brandock_kicked_bd4700","global",1)
                 SetGlobal("bd_joined","locals",0)~ EXIT
END


/* BG1 / SoD kickout dialogue */

IF ~!InParty(Myself) Global("C#BrandockJoined","GLOBAL",1)
%BGT_VAR%~ THEN kickout
SAY @26 /* ~What do you need me to do?~ */
++ @20 /* ~I just need you to make some room. Get in line behind me.~ */ + follow_companion

+ ~%BG1_BEFORE_TRANSITION%~ + @16 /* ~Please wait here.~ */ + kickout_01


/* send him to an inn - for BG1 (not SoD, not BGII) */
+ ~%BG1_BEFORE_TRANSITION%
!AreaCheck("%Beregost_JovialJuggler_L1%")~ + @17 /* ~Can you wait somewhere for me?~ */ + wait_jovial_juggler 

/* wait here for me - SoD */
+ ~%IT_IS_SOD%
OR(2)
!AreaCheck("bd4700")
!GlobalLT("bd_plot","global",570)
!AreaCheck("BD0120")
!AreaCheck("BD0130")~ + @16 /* ~Please wait here.~ */ + kickout_01
+ ~OR(2)
AreaCheck("BD0120")
AreaCheck("BD0130")~ + ~Wait at the entrance of the crypt.~ + kickout_sod_korlaszcrypt
+ ~GlobalGT("bd_npc_camp_chapter","global",1)
GlobalLT("bd_npc_camp_chapter","global",5)
OR(2)
!Range("ff_camp",999)
%NextTriggerObject_ff_camp%
!IsOverMe("C#Brandock")~ + ~I want you to go back to the camp. I'll come and find you later.~ DO ~SetGlobal("bd_npc_camp","locals",1)~ + kickout_camp_sod

/* BG1 farewell - Brandock will only be in BGII if his possessions where found */
+ ~%BG1_BEFORE_TRANSITION%~ + @18 /* ~Brandock, it's been great and all, but I don't need you any more.~ */ + farewell

//##other inaccessible areas?
+ ~GlobalGT("bd_plot","global",0) //SoD
!AreaCheck("bd4700")
!GlobalLT("bd_plot","global",570)~ + @18 /* ~Brandock, it's been great and all, but I don't need you any more.~ */ + farewell_sod



++ @19 /* ~My mistake - stay where you were.~ */ + kickout_02
END

IF ~~ THEN kickout_sod_korlaszcrypt
  SAY ~Very well.~
  IF ~Global("C#BRIH","GLOBAL",0) 
~ THEN DO ~SetGlobal("C#BrandockJoined","GLOBAL",0)
SetGlobal("C#BrandockSpawn","GLOBAL",7)
EscapeAreaMove("bd0120",956,1670,14)
~ EXIT
IF ~Global("C#BRIH","GLOBAL",1)~ THEN DO ~ApplySpellRES("C#BRSHNF",Myself) SetGlobal("C#BrandockJoined","GLOBAL",0)
SetGlobal("C#BrandockSpawn","GLOBAL",7)
SetGlobal("bd_joined","locals",0)
EscapeAreaMove("bd0120",956,1670,14)
~ EXIT
END

IF ~~ THEN BEGIN kickout_camp_sod
SAY ~I will be there.~
IF ~Global("C#BRIH","GLOBAL",0) 
~ THEN DO ~SetGlobal("C#BrandockJoined","GLOBAL",0)~ EXIT
IF ~Global("C#BRIH","GLOBAL",1)~ THEN DO ~ApplySpellRES("C#BRSHNF",Myself) SetGlobal("C#BrandockJoined","GLOBAL",0) SetGlobal("bd_joined","locals",0)~ EXIT
END


/* BGII kickout dialogue */

IF ~!InParty(Myself) Global("C#BrandockJoined","GLOBAL",1)~ THEN kickout
SAY ~What do you need me to do?~
++ @20 /* ~I just need you to make some room. Get in line behind me.~ */ + follow_companion
++ @16 /* ~Please wait here.~ */ + kickout_01
++ @19 /* ~My mistake - stay where you were.~ */ + kickout_02
+ ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%) 
!Global("C#Brandock_HasApprentices","GLOBAL",1)~ + @17 /* ~Can you wait somewhere for me?~ */ + return_to_house
+ ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%) 
Global("C#Brandock_HasApprentices","GLOBAL",1)~ + @17 /* ~Can you wait somewhere for me?~ */ + return_to_sphere
+ ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)
!Global("C#Brandock_HasApprentices","GLOBAL",1)~ + @18 /* ~Brandock, it's been great and all, but I don't need you any more.~ */ + return_to_house
END


IF ~~ THEN follow_companion
SAY @27 /* ~Sure! I'll fall in line at the back.~ */
IF ~~ THEN DO ~SetInterrupt(FALSE)
EraseJournalEntry(@10015)
EraseJournalEntry(@10018)
MakeGlobal()
ChangeEnemyAlly(Myself, FAMILIAR)
AddFamiliar()
SetDialog("c#brandj")
ChangeAIScript("c#brand2",OVERRIDE)
ChangeAIScript("DEFAULT",CLASS)
ChangeAIScript("",RACE)
ChangeAIScript("",GENERAL)
ChangeAIScript("",DEFAULT)
RealSetGlobalTimer("C#BrandockNPCBanterTimer","GLOBAL",400)
SetGlobal("C#BrandockJoined","GLOBAL",2)
SetInterrupt(TRUE)
~ EXIT
IF ~%BGT_VAR%~ THEN DO ~SetInterrupt(FALSE)
EraseJournalEntry(@10001)
MakeGlobal()
ChangeEnemyAlly(Myself, FAMILIAR)
AddFamiliar()
SetDialog("c#brandj")
ChangeAIScript("DEFAULT",CLASS)
ChangeAIScript("",RACE)
ChangeAIScript("",GENERAL)
ChangeAIScript("",DEFAULT)
RealSetGlobalTimer("C#BrandockNPCBanterTimer","GLOBAL",400)
SetGlobal("C#BrandockJoined","GLOBAL",2)
SetInterrupt(TRUE)~ EXIT
END


IF ~~ THEN kickout_01
SAY @21 /* ~Aaaaaalright.~ */
IF ~Global("C#BRIH","GLOBAL",0)~ THEN DO ~SetGlobal("C#BrandockJoined","GLOBAL",0) SetGlobal("bd_joined","locals",0)~ EXIT
IF ~Global("C#BRIH","GLOBAL",1)~ THEN DO ~ApplySpellRES("C#BRSHNF",Myself) SetGlobal("C#BrandockJoined","GLOBAL",0) SetGlobal("bd_joined","locals",0)~ EXIT

END

IF ~~ THEN kickout_02
SAY @22 /* ~My pleasure.~ */
IF ~~ THEN DO ~SetGlobal("C#BrandockJoined","GLOBAL",1)
EraseJournalEntry(@10015)
EraseJournalEntry(@10018)
ActionOverride("C#Brandock",ChangeAIScript("c#brand2",OVERRIDE))
JoinParty()~ EXIT
IF ~%BGT_VAR%~ THEN DO ~SetGlobal("C#BrandockJoined","GLOBAL",1)
EraseJournalEntry(@10001)
JoinParty()~ EXIT
END

/* Brandock stays in the house */
IF ~~ THEN return_to_house
SAY ~Very well, I'll be at Ebrel's house... mixing and spilling substances.~
IF ~!AreaCheck("c#br03") Global("C#BRIH","GLOBAL",0)~ THEN DO ~SetGlobal("C#BrandockJoined","GLOBAL",0) 
EscapeAreaMove("c#br03",390,250,0)~ JOURNAL @10015 EXIT
IF ~AreaCheck("c#br03") Global("C#BRIH","GLOBAL",0)~ THEN DO ~SetGlobal("C#BrandockJoined","GLOBAL",0)~ JOURNAL @10015 EXIT
IF ~!AreaCheck("c#br03") Global("C#BRIH","GLOBAL",1)~ THEN DO ~ApplySpellRES("C#BRSHNF",Myself) SetGlobal("C#BrandockJoined","GLOBAL",0) 
EscapeAreaMove("c#br03",390,250,1)~ JOURNAL @10015 EXIT
IF ~AreaCheck("c#br03") Global("C#BRIH","GLOBAL",0)~ THEN DO ~ApplySpellRES("C#BRSHNF",Myself) SetGlobal("C#BrandockJoined","GLOBAL",0)~ JOURNAL @10015 EXIT
END


/* Brandock stays in sphere with apprentices */
IF ~~ THEN return_to_sphere
SAY ~Very well, I'll be in the sphere, watching over my apprentices.~
IF ~!See("MGAPPR02") Global("C#BRIH","GLOBAL",0)~ THEN DO ~SetGlobal("C#BrandockJoined","GLOBAL",0) 
EscapeAreaMove("AR0411",210,1360,0)~ JOURNAL @10018 EXIT
IF ~See("MGAPPR02") Global("C#BRIH","GLOBAL",0)~ THEN DO ~SetGlobal("C#BrandockJoined","GLOBAL",0)~ JOURNAL @10018 EXIT
IF ~!See("MGAPPR02") Global("C#BRIH","GLOBAL",1)~ THEN DO ~ApplySpellRES("C#BRSHNF",Myself) SetGlobal("C#BrandockJoined","GLOBAL",0) 
EscapeAreaMove("AR0411",210,1360,0)~ JOURNAL @10018 EXIT
IF ~See("MGAPPR02") Global("C#BRIH","GLOBAL",1)~ THEN DO ~ApplySpellRES("C#BRSHNF",Myself) SetGlobal("C#BrandockJoined","GLOBAL",0)~ JOURNAL @10018 EXIT
END



/* BG1, SoD, SoA. Brandock waits and is ready to rejoin */

IF ~Global("C#BrandockJoined","GLOBAL",0)~ THEN hello_again
SAY @23 /* ~Nice to see you again!~ */
++ @24 /* ~Ready to come along once more?~ */ + kickout_02
++ @25 /* ~Wait a bit longer, please.~ */ + kickout_01
END