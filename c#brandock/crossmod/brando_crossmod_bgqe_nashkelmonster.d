/* Nashkel Monster */

I_C_T C#Q04004 12 C#BR_C#Q04004_12
== ~c#brandj~ IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN @0
END

I_C_T3 C#Q04008 17 C#BR_C#Q04008_17
== ~c#brandj~ IF ~GlobalGT("C#Q04_ArnimAndWyrm","GLOBAL",0)
OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN @1
== ~c#brandj~ IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN @2
END

