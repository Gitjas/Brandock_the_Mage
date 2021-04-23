/* SoD only - Jenks and Fritz */
/* Jenks */
CHAIN
IF WEIGHT #-1
~GlobalLT("chapter","global",13)
GlobalGT("C#Brandock_Shapeshift","GLOBAL",23)
OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2)
See("C#Brandock")
!StateCheck("C#Brandock",CD_STATE_NOTVALID)
Global("C#Brandock_ShapeshiftFF","MYAREA",0)~ THEN BDJENKS verwechsung_j
@1480 /* ~Ah, found friends already? That's good - I guess. Just make sure you stay out of trouble, yes?~ */
== BDJENKS IF ~OR(2) !See("BDFRITZ") StateCheck("BDFRITZ",CD_STATE_NOTVALID)~ THEN @1481 /* ~Wait, I mistook you for that other guy for a moment there. The resemblance is striking! Apologies for the confusion.~ */
END
IF ~~ THEN DO ~SetGlobal("C#Brandock_ShapeshiftFF","MYAREA",1)~ EXIT
IF ~See("BDFRITZ") !StateCheck("BDFRITZ",CD_STATE_NOTVALID)~ THEN DO ~SetGlobal("C#Brandock_ShapeshiftFF","MYAREA",1)~ EXTERN BDFRITZ verwechsung_f
IF ~GlobalLT("C#Brando_VisitedMalm","GLOBAL",5)
OR(2) !See("BDFRITZ") StateCheck("BDFRITZ",CD_STATE_NOTVALID)~ THEN DO ~SetGlobal("C#Brandock_ShapeshiftFF","MYAREA",1)~ EXTERN c#brandj verwechsung_b_sod 

/* Fritz */
CHAIN
IF WEIGHT #-1
~GlobalLT("chapter","global",13)
GlobalGT("C#Brandock_Shapeshift","GLOBAL",23)
OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2)
See("C#Brandock")
!StateCheck("C#Brandock",CD_STATE_NOTVALID)
Global("C#Brandock_ShapeshiftFF","MYAREA",0)~ THEN BDFRITZ verwechsung_f
@1482 /* ~So, I hope sobering up in here helped you to remember to behave yourself in public... wait, you are not the half-ogre turning man we arrested yesterday.~ */
== BDJENKS IF ~See("BDJENKS") !StateCheck("BDJENKS",CD_STATE_NOTVALID)~ THEN @1483 /* ~Yes, I also mistook him for that other guy for a moment there. The resemblance is striking! Apologies for the confusion.~ */
END
IF ~~ THEN DO ~SetGlobal("C#Brandock_ShapeshiftFF","MYAREA",1)~ EXIT
IF ~GlobalLT("C#Brando_VisitedMalm","GLOBAL",5)~ THEN DO ~SetGlobal("C#Brandock_ShapeshiftFF","MYAREA",1)~ EXTERN c#brandj verwechsung_b_sod 

CHAIN
IF WEIGHT #-1
~~ THEN c#brandj verwechsung_b_sod 
@1484 /* ~No offence taken, really. But I am looking for that man you were referring to. He's, er, my cousin. So he was released already? Where did he go?~ */
== BDJENKS IF ~See("BDJENKS") !StateCheck("BDJENKS",CD_STATE_NOTVALID)~ THEN @1485 /* ~Not yet, but he's to be released any minute. He's in the last cell on the right.~ */
== BDFRITZ IF ~See("BDFRITZ") !StateCheck("BDFRITZ",CD_STATE_NOTVALID)~ THEN @1486 /* ~Hmph. If you insist, he's just down the aisle. Be sure to make it quick! I want all of you out in ten.~ */
EXIT