

CHAIN
IF WEIGHT #-1
~Global("C#Br_LorePathARAC04BG2","GLOBAL",1)~ THEN c#brandj lorepath_arac04
@0
== c#brandj IF ~Global("C#Br_LorePathDurlagsTower","GLOBAL",2)~ THEN @1 /* ~Different ones than in Durlag's library... Pleeeease?~ */
END
++ @2 + lorepath_arac04_02
++ @3 + lorepath_arac04_01

APPEND c#brandj
IF ~~ THEN lorepath_arac04_01
SAY @5
IF ~~ THEN DO ~SetGlobal("C#Br_LorePathARAC04BG2","GLOBAL",2)~ EXIT
END

IF ~~ THEN lorepath_arac04_02
SAY @4
IF ~~ THEN DO ~ReallyForceSpellRES("c#brlob2",Myself) IncrementGlobal("C#Br_LorePathIncrease","GLOBAL",1)
SetGlobal("C#Br_LorePathARAC04BG2","GLOBAL",2) ClearAllActions() StartCutSceneMode() StartCutScene("c#brftb")~ EXIT
END

END //APPEND