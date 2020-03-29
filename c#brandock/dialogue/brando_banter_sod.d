/* SoD Banter */

/* Imoen - the only chance we have to let those two banter is when Brandock comes with CHARNAME before the last night in the Ducal Palace */

I_C_T BDIMOEN 85 C#Brandock_ImoenSoD
== c#brandj IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) !StateCheck("C#Brandock",CD_STATE_NOTVALID) InMyArea("C#Brandock")~ THEN ~Imoen, I can't tell you how glad I am to see you alive and well.~
== BDIMOEN IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) !StateCheck("C#Brandock",CD_STATE_NOTVALID) InMyArea("C#Brandock")~ THEN ~Hey, Brandock. What'cha think? I found a teacher for my magic skills in Duke Jannath. Jeeeeealous?~ 
== c#brandj IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) !StateCheck("C#Brandock",CD_STATE_NOTVALID) InMyArea("C#Brandock")~ THEN ~Jealous? Me? Because you found an influencial, well-known, acknowledged teacher for learning and improving your magical skills?~
== BDIMOEN IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) !StateCheck("C#Brandock",CD_STATE_NOTVALID) InMyArea("C#Brandock")~ THEN ~(nods teasingly) U-hu!~ 
== c#brandj IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) !StateCheck("C#Brandock",CD_STATE_NOTVALID) InMyArea("C#Brandock")~ THEN ~I... don't think so.~
== BDIMOEN IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) !StateCheck("C#Brandock",CD_STATE_NOTVALID) InMyArea("C#Brandock")~ THEN ~Huh?~
== c#brandj IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) !StateCheck("C#Brandock",CD_STATE_NOTVALID) InMyArea("C#Brandock")~ THEN ~Not any more, Imoen... I am so much farther than back then when I was pondering which mage could be my teacher. So much farther. Back *then*, though - back *then* I would have been jealous as *hell*.~
== BDIMOEN IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) !StateCheck("C#Brandock",CD_STATE_NOTVALID) InMyArea("C#Brandock")~ THEN ~Ha!~
== BDIMOEN IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) !StateCheck("C#Brandock",CD_STATE_NOTVALID) InMyArea("C#Brandock")~ THEN ~Good bye, <CHARNAME>. Take care!~
END