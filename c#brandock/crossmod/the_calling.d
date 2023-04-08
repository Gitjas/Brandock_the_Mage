/* The Calling */

/* cdbracer - cursed bracers */

APPEND C#BrandJ
IF WEIGHT #-1
~Global("C#BR_TheCallingBracers","GLOBAL",1)~ THEN bracers_the_calling
SAY @0
IF ~~ THEN DO ~SetGlobal("C#BR_TheCallingBracers","GLOBAL",2)~ EXIT
END

END //APPEND

/* thalan.dlg
@1032 = ~Then I wish you well in your task. Good day.~
*/
I_C_T Thalan %thecalling_1032% C#BR_TheCallingGems
== c#brandj IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN @1 /* ~I might have an idea about gems that are best suited for scrying devices. I studied stuff like this for years while working for a Cowled Wizard. Some are obvious, because they are expensive anyway. But there is some that do not strike as overly valuable, which doesn't mean they aren't well suited for the task. Ask me if you want me to give suggestions.~ */
END