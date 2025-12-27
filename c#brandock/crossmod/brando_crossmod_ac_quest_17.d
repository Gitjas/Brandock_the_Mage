
I_C_T ~ACQ17001~ 24 C#Brandock_ACQ17001_24
== ~c#brandj~ IF ~Global("C#Brandock_UlcasterSchool","GLOBAL",0)
OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN @0
END

I_C_T ~ACQ17001~ 8 C#Brandock_ACQ17001_8
== ~c#brandj~ IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN @7
END

APPEND C#BrandJ
IF WEIGHT #-1
~Global("C#Br_LorePathACKarlini","GLOBAL",1)~ THEN karlinis_spellbook
SAY @1
IF ~~ THEN DO ~SetGlobal("C#Br_LorePathACKarlini","GLOBAL",2)~ EXIT
END
END //APPEND

I_C_T ~ACQ17001~ 32 C#Brandock_ACQ17001_32
== ~c#brandj~ IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN @2 /* You can read this?~ */
END

I_C_T ~ACQ17001~ 35 C#Brandock_ACQ17001_35
== ~c#brandj~ IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN @3 /* You can seriously read this?! Could you t...~ */
END

I_C_T ~ACQ17001~ 44 C#Brandock_ACQ17001_44
== ~c#brandj~ IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN @4 /* What *is* the great formula? Can you really read these notes?~ */
== ~ACQ17001~ IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN @5 /* Ah, HUSH! Don't hinder science to unfold its true power.~ */
END

I_C_T ~ACQ17001~ 52 C#Brandock_ACQ17001_52
== ~c#brandj~ IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN @6 /* I can't believe I'm saying this but... Those two gnomes impressed me somehow - besides all of that craziness. I wished I could have *read* the book while we had it.~ */
END
