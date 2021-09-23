

/* Brandock reacts to the work order */
/* PartyHasItem("#LF_CKWO") */

APPEND C#Brandj
IF WEIGHT #-1
~Global("C#Brando_FramedCM_WorkOrder","GLOBAL",1)~ THEN workorder
SAY @0 /* ~[Brandock]That... that workorder means we can enter Candlekeep! We can enter Candlekeep?~ */
++ @1 /* ~That's what it means, yes.~ */ + workorder_01
++ @2 /* ~Yes, appearently, I'm good enough to do some chores, but not to come home to what was my home for all my childhood.~ */ + workorder_03
++ @3 /* ~It doesn't mean we *will* go there, Brandock.~ */ + workorder_02
END

IF ~~ THEN workorder_01
SAY @4 /* ~Ooooh...~ */
IF ~~ THEN DO ~SetGlobal("C#Brando_FramedCM_WorkOrder","GLOBAL",2)~ EXIT
END

IF ~~ THEN workorder_02
SAY @5 /* ~But we *could* go there. Yes? Yes?~ */
IF ~~ THEN DO ~SetGlobal("C#Brando_FramedCM_WorkOrder","GLOBAL",2)~ EXIT
END

IF ~~ THEN workorder_03
SAY @6 /* ~Yes... I think I understand your sentiment.~ */
IF ~~ THEN + workorder_02
END
END //APPEND


/* Global("#LF_AllowCKEntry","GLOBAL",1) */

/* PartyHasItem("#LF_CKWO") Global("Chapter","GLOBAL",%tutu_chapter_5%) */



EXTEND_BOTTOM c#brandj %brandj_1097%
IF ~PartyHasItem("#LF_CKWO") Global("Chapter","GLOBAL",%tutu_chapter_5%)~ THEN + %brandj_1078%
END

EXTEND_BOTTOM c#brandj %brandj_1165%
IF ~Global("#LF_AllowCKEntry","GLOBAL",1)~ THEN + %brandj_1173%
END
