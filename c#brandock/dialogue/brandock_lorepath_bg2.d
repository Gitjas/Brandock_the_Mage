APPEND c#brandj

/* Tolgerias -> in normald BGII baf and d */

/* after Illasera. The times where I learned from spellbooks is over! - and I couldn't even look at Irenicus'! */

IF ~Global("C#Brandock_LorePathStop","GLOBAL",3)~ THEN no_more
SAY @1800
IF ~~ THEN DO ~SetGlobal("C#Brandock_LorePathStop","GLOBAL",4) 
EraseJournalEntry(@10023)
EraseJournalEntry(@10024)
EraseJournalEntry(@10030)~ SOLVED_JOURNAL @10031 EXIT
IF ~Global("C#Brandock_IrenicusSpellbook","GLOBAL",0)~ THEN DO ~SetGlobal("C#Brandock_LorePathStop","GLOBAL",4)
EraseJournalEntry(@10023)
EraseJournalEntry(@10024)
EraseJournalEntry(@10030)~ SOLVED_JOURNAL @10031 + no_irenicus_spellbook
END

/* after killing Irenicus. This is only an own dialogue for an "Endless SoA"-Scenario */
IF ~Global("C#Brandock_IrenicusSpellbook","GLOBAL",1)~ THEN no_irenicus_spellbook
SAY @1801
++ @1802 + no_irenicus_spellbook_01
++ @1803 + no_irenicus_spellbook_03
++ @1804 + no_irenicus_spellbook_02
END

IF ~~ THEN no_irenicus_spellbook_01
SAY @1805
IF ~~ THEN + no_irenicus_spellbook_03
END

IF ~~ THEN no_irenicus_spellbook_02
SAY @1806
IF ~~ THEN + no_irenicus_spellbook_03
END

IF ~~ THEN no_irenicus_spellbook_03
SAY @1807
= @1808
++ @1809 + no_irenicus_spellbook_04
++ @1810 + no_irenicus_spellbook_05 
++ @1811 + no_irenicus_spellbook_05
END

IF ~~ THEN no_irenicus_spellbook_04
SAY @1812
IF ~~ THEN + no_irenicus_spellbook_05
END

IF ~~ THEN no_irenicus_spellbook_05
SAY @1813
IF ~~ THEN DO ~SetGlobal("C#Brandock_IrenicusSpellbook","GLOBAL",2)~ EXIT
END


/* Brandock realizes he's become too high levelled to learn from other mages' spellbooks */

IF ~Global("C#Brandock_LorePathStop","GLOBAL",1)~ THEN too_highlevel
SAY @1814
++ @1815 + too_highlevel_04
++ @1816 + too_highlevel_01
++ @1817 + too_highlevel_02
END

IF ~~ THEN too_highlevel_01
SAY @1818
IF ~~ THEN + too_highlevel_05
END

IF ~~ THEN too_highlevel_02
SAY @1819
IF ~~ THEN + too_highlevel_05
END

IF ~~ THEN too_highlevel_04
SAY @1820
IF ~~ THEN + too_highlevel_05
END

IF ~~ THEN too_highlevel_05
SAY @1821
IF ~~ THEN DO ~EraseJournalEntry(@10030)
EraseJournalEntry(@10024)
SetGlobal("C#Brandock_LorePathStop","GLOBAL",2)~ UNSOLVED_JOURNAL @10023 EXIT
END

/* Temple of Oghma Athkatla AR0319 */
IF ~Global("C#Br_LorePathOghmaBG2","GLOBAL",1)~ THEN lorepath_oghma
SAY @1822
++ @1823 + lorepath_oghma_02
++ @1824 + lorepath_oghma_01
END

IF ~~ THEN lorepath_oghma_01
SAY @1509 /* Of course */
IF ~~ THEN DO ~SetGlobal("C#Br_LorePathOghmaBG2","GLOBAL",2)~ EXIT
END

IF ~~ THEN lorepath_oghma_02
SAY @1528 /* Thank you. */
IF ~~ THEN DO ~ReallyForceSpellRES("c#brlob2",Myself) 
SetGlobal("C#Br_LorePathOghmaBG2","GLOBAL",2) ClearAllActions() StartCutSceneMode() StartCutScene("c#brftb")~ EXIT
END

END //APPEND

/* D'Arnise Keep */

I_C_T KPMAID02 0 C#Brando_KPMAID02
== c#brandj IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID) Global("C#Br_LorePathDArnis1BG2","GLOBAL",1)~ THEN @1825
== KPMAID02 IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID) Global("C#Br_LorePathDArnis1BG2","GLOBAL",1)~ THEN @1826 
END

/* after keep is cleared */

CHAIN
IF ~OR(2)
Global("C#Br_LorePathDArnis1BG2","GLOBAL",2)
Global("C#Br_LorePathDArnis1BG2","GLOBAL",3)~ THEN c#brandj darnise_keep
@1827
== c#brandj IF ~AreaCheck("AR1307")
Global("C#Br_LorePathDArnis1BG2","GLOBAL",2)~ THEN @1828
END
++ @1829 + darnise_keep_02
++ @1830 + darnise_keep_01

APPEND c#brandj

IF ~~ THEN darnise_keep_01
SAY @1509
IF ~~ THEN DO ~SetGlobal("C#Br_LorePathDArnis1BG2","GLOBAL",4)~ EXIT
END

IF ~~ THEN darnise_keep_02
SAY @1528
IF ~~ THEN DO ~ReallyForceSpellRES("c#brlob2",Myself) 
SetGlobal("C#Br_LorePathDArnis1BG2","GLOBAL",4) ClearAllActions() StartCutSceneMode() StartCutScene("c#brftb")~ EXIT
END


/* Bodhi's Library in Spellhold Maze AR1513*/
IF ~Global("C#Br_LorePathBodhisBG2","GLOBAL",1)~ THEN lorepath_bodhis
SAY @1831
++ @1832 + lorepath_bodhis_02
+ ~InParty("imoen2")~ + @1833 + lorepath_bodhis_02
+ ~!InParty("imoen2")~ + @1834 + lorepath_bodhis_02
++ @1835 + lorepath_bodhis_01
END

IF ~~ THEN lorepath_bodhis_01
SAY @1509
IF ~~ THEN DO ~SetGlobal("C#Br_LorePathBodhisBG2","GLOBAL",2)~ EXIT
END

IF ~~ THEN lorepath_bodhis_02
SAY @1836
IF ~~ THEN DO ~ReallyForceSpellRES("c#brlob2",Myself) 
SetGlobal("C#Br_LorePathBodhisBG2","GLOBAL",2) ClearAllActions() StartCutSceneMode() StartCutScene("c#brftb")~ EXIT
END

/* Lazarus' Spellbook, Saradush */

IF ~Global("C#Br_LorePathLazarusBG2","GLOBAL",1)~ THEN lazarus_spellbook
SAY @1837
IF ~~ THEN DO ~ReallyForceSpellRES("c#brlob1",Myself) 
SetGlobal("C#Br_LorePathLazarusBG2","GLOBAL",2)~ EXIT
END

END //APPEND