
APPEND c#brandj

IF WEIGHT #-1
~Global("C#Br_LorePathC#AJ04BG2","GLOBAL",1)~ THEN lorepath_aj04
SAY @0 /* ~Oh, books - collected by a dragon. <CHARNAME>... do we have the time? Please, this is exciting just by looking at the covers!~ */
++ @1 /* ~How could I deny that. Take as much wisdom from this place as you can.~ */ + lorepath_aj04_02
++ @2 /* ~I'm sorry, Brandock. I don't feel comfortable enough to linger here.~ */ + lorepath_aj04_01
END

IF ~~ THEN lorepath_aj04_01
SAY @4
IF ~~ THEN DO ~SetGlobal("C#Br_LorePathC#AJ04BG2","GLOBAL",2)~ EXIT
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
SetGlobal("C#Br_LorePathC#AJ04BG2","GLOBAL",2) ClearAllActions() StartCutSceneMode() StartCutScene("c#brftb")~ EXIT

I_C_T c#aja25j %ajantis_saradush_34% C#BranToB_c#aja25j_34
== C#brandJ IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2)
Detect("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)
OR(3)
!InParty("sarevok") !InMyArea("sarevok") StateCheck("sarevok",CD_STATE_NOTVALID)~ THEN ~[Brandock]I haven't felt that bad since Thurdon made himself explode during the magic apprenticeship with Theos. That moment where you know how to help but then realize it's too late... Er, I am babbling again. I am sorry.~
END

I_C_T SAREV25J %ajantis_saradush_35% C#BranToB_c#aja25j_35
== C#brandJ IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2)
Detect("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN ~[Brandock]I haven't felt that bad since Thurdon made himself explode during the magic apprenticeship with Theos. That moment where you know how to help but then realize it's too late... Er, I am babbling again. I am sorry.~
END

/* ~[Brandock]I mean, duh. We are inside a besieged city.~ */
I_C_T C#BrandJ %in_saradush% C#AjToB_brandj_insaradush
== c#aja25j IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN ~[Ajantis]I know exactly what you mean, Brandock. The desperation is palpable.~
END
