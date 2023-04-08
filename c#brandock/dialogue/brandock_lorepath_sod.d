APPEND c#brandj

/* lore path: Dwarven Lich cave, library bd1200 */
IF ~Global("C#Br_LorePathbd1200SoD","GLOBAL",1)~ THEN acient_library
SAY @1650
++ @1651 + acient_library_02
++ @1652 + acient_library_01
END


IF ~~ THEN acient_library_01
SAY @1509
IF ~~ THEN DO ~SetGlobal("C#Br_LorePathbd1200SoD","GLOBAL",2)~ EXIT
END

IF ~~ THEN acient_library_02
SAY @1528
IF ~~ THEN DO ~ReallyForceSpellRES("c#brlob2",Myself) IncrementGlobal("C#Br_LorePathIncrease","GLOBAL",1)
SetGlobal("C#Br_LorePathbd1200SoD","GLOBAL",2) ClearAllActions() StartCutSceneMode() StartCutScene("c#brftb")~ EXIT
END

/* Tome of Ancient Knowledge: bdmisc53 */
IF ~Global("C#Br_LorePathbdmisc53SoD","GLOBAL",1)~ THEN tome_ancient_knoweldge
SAY @1653
= @1654
++ @1655 + tome_ancient_knoweldge_01
++ @1656 + tome_ancient_knoweldge_01
++ @1657 + tome_ancient_knoweldge_02
++ @1658 + tome_ancient_knoweldge_03
++ @1659 + tome_ancient_knoweldge_06
++ @1660 + tome_ancient_knoweldge_05
END

IF ~~ THEN tome_ancient_knoweldge_01
SAY @1661
++ @1657 + tome_ancient_knoweldge_02
++ @1660 + tome_ancient_knoweldge_05
END

IF ~~ THEN tome_ancient_knoweldge_02
SAY @1662
++ @1663 + tome_ancient_knoweldge_08
++ @1664 + tome_ancient_knoweldge_08
++ @1665 + tome_ancient_knoweldge_08
++ @1660 + tome_ancient_knoweldge_05
END

IF ~~ THEN tome_ancient_knoweldge_03
SAY @1666
++ @1655 + tome_ancient_knoweldge_01
++ @1656 + tome_ancient_knoweldge_01
++ @1657 + tome_ancient_knoweldge_02
++ @1659 + tome_ancient_knoweldge_06
++ @1660 + tome_ancient_knoweldge_05
END

IF ~~ THEN tome_ancient_knoweldge_04
SAY @1667
= @1668
IF ~~ THEN DO ~SetGlobal("C#Br_LorePathbdmisc53SoD","GLOBAL",3)~ EXIT
END

IF ~~ THEN tome_ancient_knoweldge_05
SAY @1669
IF ~~ THEN DO ~SetGlobal("C#Br_LorePathbdmisc53SoD","GLOBAL",2)~ EXIT
END

IF ~~ THEN tome_ancient_knoweldge_06
SAY @1670
++ @1655 + tome_ancient_knoweldge_01
++ @1656 + tome_ancient_knoweldge_01
++ @1671 + tome_ancient_knoweldge_07
++ @1657 + tome_ancient_knoweldge_02
++ @1660 + tome_ancient_knoweldge_05
END

IF ~~ THEN tome_ancient_knoweldge_07
SAY @1672
++ @1655 + tome_ancient_knoweldge_01
++ @1656 + tome_ancient_knoweldge_01
++ @1657 + tome_ancient_knoweldge_02
++ @1660 + tome_ancient_knoweldge_05
END

IF ~~ THEN tome_ancient_knoweldge_08
SAY @1673
IF ~~ THEN + tome_ancient_knoweldge_04
END

/* BDMISC21 Hephernaan's Ritual Notes */
IF ~Global("C#Br_LorePath_BDMISC21","GLOBAL",1)~ THEN hephernaans_arcane_notes
SAY @1674 /* ~Hephernaan's Ritual Notes? This is... wow. Wow. Put that away, <CHARNAME>. I... I saw enough.~ */
IF ~~ THEN DO ~ReallyForceSpellRES("c#brlob1",Myself) IncrementGlobal("C#Br_LorePathIncrease","GLOBAL",1)~ EXIT
END

END //APPEND
