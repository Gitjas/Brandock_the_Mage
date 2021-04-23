/* Dialogues that could happen anywhere along the saga, in case the player changes too quickly from BG1 to BGII/SoD */

/* Brandock verwandelt sich das erste mal in einen Halboger (über die Fähigkeit) */

APPEND c#brandj

IF ~Global("C#Brando_ShapeFollowup","LOCALS",5)~ THEN is_halfogre
SAY @1496
= @1497
IF ~~ THEN DO ~SetGlobal("C#Brando_ShapeFollowup","LOCALS",6)~ EXIT
END


/* Brandock hat sich zurück verwandelt */
IF ~Global("C#Brando_ShapeFollowup","LOCALS",7)~ THEN human_again
SAY @1498
= @1499
IF ~~ THEN DO ~EraseJournalEntry(@10071)
SetGlobal("C#Brando_ShapeFollowup","LOCALS",8)~ SOLVED_JOURNAL @10072 EXIT
END

END //APPEND














