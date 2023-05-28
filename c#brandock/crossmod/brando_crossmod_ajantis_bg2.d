
APPEND c#brandj

IF WEIGHT #-1
~Global("C#Br_LorePathARAC04BG2","GLOBAL",1)~ THEN lorepath_aj04
SAY @0 /* ~Oh, books - collected by a dragon. <CHARNAME>... do we have the time? Please, this is exciting just by looking at the covers!~ */
++ @1 /* ~How could I deny that. Take as much wisdom from this place as you can.~ */ + lorepath_aj04_02
++ @2 /* ~I'm sorry, Brandock. I don't feel comfortable enough to linger here.~ */ + lorepath_aj04_01
END

IF ~~ THEN lorepath_aj04_01
SAY @4
IF ~~ THEN DO ~SetGlobal("C#Br_LorePathARAC04BG2","GLOBAL",2)~ EXIT
END

END //APPEND

CHAIN
IF ~~ THEN c#brandj lorepath_aj04_02
@3 /* ~Thank you! Wooo...~ */
== IMOEN2J IF ~InParty("imoen2") InMyArea("imoen2") 
!StateCheck("imoen2",CD_STATE_NOTVALID)~ THEN @5
== c#brandj IF ~InParty("imoen2") InMyArea("imoen2") 
!StateCheck("imoen2",CD_STATE_NOTVALID)~ THEN @12
== ANOMENJ IF ~Global("AnomenIsNotKnight","GLOBAL",0)
InParty("anomen")
See("anomen")
!StateCheck("anomen",CD_STATE_NOTVALID)~ THEN @7 = @8
== c#brandj IF ~Global("AnomenIsNotKnight","GLOBAL",0)
InParty("anomen")
See("anomen")
!StateCheck("anomen",CD_STATE_NOTVALID)~ THEN @9
== KELDORJ IF ~InParty("Keldorn")
See("Keldorn")
!StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @10
== c#brandj IF ~InParty("Keldorn")
See("Keldorn")
!StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @11
== c#brandj @6
END
IF ~~ THEN DO ~ReallyForceSpellRES("c#brlob2",Myself) IncrementGlobal("C#Br_LorePathIncrease","GLOBAL",1)
SetGlobal("C#Br_LorePathARAC04BG2","GLOBAL",2) ClearAllActions() StartCutSceneMode() StartCutScene("c#brftb")~ EXIT