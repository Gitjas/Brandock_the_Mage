/* Brandock - Imoen: ToB only */
CHAIN
IF 
~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2)
CombatCounter(0)
!See([ENEMY])
!StateCheck("C#Brandock",CD_STATE_NOTVALID)
Global("C#Brandock_ImoenBanterToB","GLOBAL",0)
InParty("IMOEN2") InMyArea("IMOEN2") !StateCheck("IMOEN2",CD_STATE_NOTVALID)
%IT_IS_BGII%
GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN C#BrandB imoen_tob
@5000 /* ~Imoen, Ihr schlaft in letzter Zeit schlecht.~ */ DO ~SetGlobal("C#Brandock_ImoenBanterToB","GLOBAL",1)~
== BIMOEN25 @5001 /* ~Ich... ich habe die Tr�ume, die <CHARNAME> ebenfalls bereits hinter sich gebracht hat. Ich habe Angst, dass es bei mir auch weiter geht, bis... Nun, bis der Schl�chter zum Vorschein kommt.~ */
== C#BrandB IF ~Global("C#Brando_BIMOEN25_1119","GLOBAL",1)~ THEN @5006 /* ~...Or a giant werechicken?~ */
== BIMOEN25 IF ~Global("C#Brando_BIMOEN25_1119","GLOBAL",1)~ THEN @5007 /* ~Oh, you really didn't like that example, did you? I didn't even think about what happened to you when dealing with "Werechicken" Melicamp back at the Sword Coast. Although - if I would have, I'd probably used the example on purpose, haha!...~ */
== C#BrandB IF ~Global("C#Brando_BIMOEN25_1119","GLOBAL",1)~ THEN @5008
== C#BrandB @5002 /* ~Habt keine Angst, Imoen.~ */
== BIMOEN25 @5003 /* ~Du meinst, ich brauche keine Angst zu haben?~ */
== C#BrandB @5004 /* ~Nein. Als <CHARNAME> der Schl�chter wurde, hat es uns alle �berrascht und erschreckt. Wir waren noch nicht so stark wie jetzt. Wenn Euch es auch geschieht, dann sind wir vorbereitet, und st�rker als damals.~ */
== BIMOEN25 @5005 /* ~Achso, du meinst... Mensch, Brandock, ob mich das jetzt wirklich beruhigt, bin ich mir nicht so sicher. Pff!~ */
EXIT