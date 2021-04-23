CHAIN
IF WEIGHT #-1
~GlobalGT("C#Brandock_Shapeshift","GLOBAL",23)
OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2)
See("C#Brandock")
!StateCheck("C#Brandock",CD_STATE_NOTVALID)
AreaCheck("%Tavernarea%")
Global("C#Brandock_Shapeshiftbart8","GLOBAL",0)~ THEN ~%bartender%~ verwechslung
@1490 /* ~Alright, pal, seems they let you go again. That's great and all, but I don't want you anywhere near my liqueur... wait, you aren't the one that caused trouble here recently. Sorry for mistaking you for someone else, although you do look very alike.~ */
DO ~SetGlobal("C#Brandock_Shapeshiftbart8","GLOBAL",1)~
== c#brandj @1491 /* ~Yes, I know who you are referring to. That was my, uhm, cousin.~ */
== c#brandj IF ~GlobalGT("C#Brando_VisitedMalm","GLOBAL",5)~ THEN @1492 /* ~He won't give you any more trouble, bartender.~ */
EXIT