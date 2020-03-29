
/* reaction to Bhaal heritage */

APPEND C#brandj

IF ~Global("C#Brandock_KnowBhaal","GLOBAL",2)~ THEN bhaal
SAY @650
++ @651 + bhaal_03
++ @652 + bhaal_02
++ @653 + bhaal_01
END

IF ~~ THEN bhaal_01
SAY @654
IF ~~ THEN + bhaal_05
END

IF ~~ THEN bhaal_02
SAY @655
IF ~~ THEN + bhaal_04
END

IF ~~ THEN bhaal_03
SAY @656
IF ~~ THEN + bhaal_04
END

IF ~~ THEN bhaal_04
SAY @657
IF ~~ THEN + bhaal_05
END

IF ~~ THEN bhaal_05
SAY @658
IF ~~ THEN DO ~SetGlobal("C#Brandock_KnowBhaal","GLOBAL",3)~ EXIT
END


/* Follow-up to Bhaal heritage. After Sarevoks death */

IF ~Global("C#Brandock_KnowBhaal","GLOBAL",4)~ THEN bhaal_followup
SAY @659
++ @660 + bhaal_followup_01
++ @661 + bhaal_followup_04
++ @662 + bhaal_followup_04
++ @663 + bhaal_followup_02
END

IF ~~ THEN bhaal_followup_01
SAY @664
++ @665 + bhaal_followup_05
++ @666 + bhaal_followup_02
++ @667 + bhaal_followup_04
++ @663 + bhaal_followup_02
END

IF ~~ THEN bhaal_followup_02
SAY @668
++ @669 + bhaal_followup_03
++ @670 + bhaal_followup_03
++ @671 + bhaal_followup_07
END

IF ~~ THEN bhaal_followup_03
SAY @672
IF ~~ THEN + bhaal_followup_06
END

IF ~~ THEN bhaal_followup_04
SAY @673 
++ @674 + bhaal_followup_05
++ @675 + bhaal_followup_02
++ @671 + bhaal_followup_07
END

IF ~~ THEN bhaal_followup_05
SAY @676
IF ~~ THEN + bhaal_followup_06
END

IF ~~ THEN bhaal_followup_06
SAY @677
= @678
IF ~~ THEN DO ~SetGlobal("C#Brandock_KnowBhaal","GLOBAL",5)~ EXIT
END

IF ~~ THEN bhaal_followup_07
SAY @679
IF ~~ THEN DO ~SetGlobal("C#Brandock_KnowBhaal","GLOBAL",5)~ EXIT
END


/* 2nd Follow-up to Bhaal heritage */

IF ~Global("C#Brandock_KnowBhaal","GLOBAL",6)
Global("C#Brandock_BhaalPID","LOCALS",1)~ THEN bhaal_fear
SAY @680
IF ~~ THEN + bhaal_fear_01
END

IF ~Global("C#Brandock_KnowBhaal","GLOBAL",6)
Global("C#Brandock_BhaalPID","LOCALS",0)~ THEN bhaal_fear_00
SAY @681
IF ~~ THEN DO ~SetGlobal("C#Brandock_BhaalPID","LOCALS",1)~ + bhaal_fear_01
END

IF ~~ THEN bhaal_fear_01
SAY @682 
++ @683 + bhaal_fear_02
++ @684 + bhaal_fear_04
++ @685 + bhaal_fear_03
++ @686 + bhaal_fear_05
END

IF ~~ THEN bhaal_fear_02
SAY @687
++ @688 + bhaal_fear_06
++ @684 + bhaal_fear_04
++ @685 + bhaal_fear_03
END

IF ~~ THEN bhaal_fear_03
SAY @689
IF ~~ THEN + bhaal_fear_06
END

IF ~~ THEN bhaal_fear_04
SAY @690
++ @688 + bhaal_fear_06
++ @685 + bhaal_fear_03
END

IF ~~ THEN bhaal_fear_05
SAY @691
++ @683 + bhaal_fear_02
++ @684 + bhaal_fear_04
++ @685 + bhaal_fear_03
++ @688 + bhaal_fear_06
END

IF ~~ THEN bhaal_fear_06
SAY  @692
IF ~~ THEN DO ~SetGlobal("C#Brandock_KnowBhaal","GLOBAL",7)~ EXIT
END

END //APPEND
