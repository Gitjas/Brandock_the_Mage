/* Slimequest */

I_C_T C#Q01001 6 C#BR_C#Q01001_6
== ~c#brandj~ IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN @0 /* ~Gods! He drank a potion that turned him into a slime? Why would he do that? - I am sorry, this surely must have been an accident. <CHARNAME>, please let's help this man. He must have been tricked somehow - maybe the potion was one of those cursed cused ones.~ */
END

I_C_T C#Q01004 10 C#BR_C#Q01004_10
== ~c#brandj~ IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN @1 /* ~To overdo a spell until it turns into the exact opposite - I'm not sure whether I should feel pity, laugh about it, or just be glad other people do really stupid things, too...~ */
END

I_C_T3 C#Q01002 8 C#BR_C#Q01002_8
== ~c#brandj~ IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN @2 /* ~So - a *transformation* spell turned into *polymorphing* magic? This is most interesting. I need to understand how...~ */
== ~c#brandj~ IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)
GlobalGT("C#Brandock_MELICA_10","GLOBAL",0)
GlobalLT("C#Brandock_Shapeshift","GLOBAL",4)~ THEN @3 /* ~(mumbles) Just a tiny, little bit like what happened to Melicamp...~ */
== ~c#brandj~ IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)
GlobalGT("C#Brandock_Shapeshift","GLOBAL",3)~ THEN @4 /* ~(mumbles) Just a tiny, little bit like what happened to Melicamp - and me...~ */
== ~c#brandj~ IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN @5 /* ~Er, I am sorry, I didn't mean to interrupt the conversation.~ */
END

I_C_T C#Q01001 22 C#BR_C#Q01001_22
== ~c#brandj~ IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN @7 /* ~<CHARNAME>! This was more than tasteless.~ */
END

I_C_T C#Q01001 19 C#BR_C#Q01001_19
== ~c#brandj~ IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN @6 /* ~Seeing the cheaper potion didn't do anything at all - I guess it was the more expensive one in the end.~ */
END