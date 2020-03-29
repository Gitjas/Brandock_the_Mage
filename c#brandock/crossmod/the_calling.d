/* The Calling */

/* cdbracer - cursed bracers */

APPEND C#BrandJ
IF WEIGHT #-1
~Global("C#BR_TheCallingBracers","GLOBAL",1)~ THEN bracers_the_calling
SAY @0
IF ~~ THEN DO ~SetGlobal("C#BR_TheCallingBracers","GLOBAL",2)~ EXIT
END
END //APPEND