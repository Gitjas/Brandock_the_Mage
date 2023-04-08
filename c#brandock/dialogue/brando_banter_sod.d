/* 1st with Corwin */
CHAIN
IF 
~%IT_IS_SOD%
CombatCounter(0) !See([ENEMY]) 
OR(2) InParty(Myself) Global("C#BrandockJoined","GLOBAL",2)
InParty("CORWIN")  // Corwin
See("CORWIN") See(Player1)
!StateCheck(Myself,CD_STATE_NOTVALID)
!StateCheck("CORWIN",CD_STATE_NOTVALID)
Global("C#Brandock_CorwinSoD","GLOBAL",0)~ THEN C#BrandB brandock_corwin_sod_1
@0
DO ~SetGlobal("C#Brandock_CorwinSoD","GLOBAL",1)~
== BDCORWIB @1
== C#BrandB @2
== BDCORWIB @3
== C#BrandB @4
== BDCORWIB @5
== C#BrandB @6
EXIT


/* 1st with M'Khiin BDMKHIIB */
CHAIN
IF 
~%IT_IS_SOD%
CombatCounter(0) !See([ENEMY]) 
OR(2) InParty(Myself) Global("C#BrandockJoined","GLOBAL",2)
InParty("MKHIIN")  
See("MKHIIN") See(Player1)
!StateCheck(Myself,CD_STATE_NOTVALID)
!StateCheck("MKHIIN",CD_STATE_NOTVALID)
Global("C#Brandock_MKhiinSoD","GLOBAL",0)~ THEN C#BrandB brandock_mkhiin_sod_1
@20
DO ~SetGlobal("C#Brandock_MKhiinSoD","GLOBAL",1)~
= @21
= @22
= @23
== BDMKHIIB @24
== C#BrandB @25
EXIT

/* 1st with Glint BDGLINTB */

CHAIN
IF 
~%IT_IS_SOD%
CombatCounter(0) !See([ENEMY]) 
OR(2) InParty(Myself) Global("C#BrandockJoined","GLOBAL",2)
InParty("Glint")  
See("Glint") See(Player1)
!StateCheck(Myself,CD_STATE_NOTVALID)
!StateCheck("Glint",CD_STATE_NOTVALID)
Global("C#Brandock_GlintSoD","GLOBAL",0)~ THEN C#BrandB brandock_glint_sod_1
@26 /* ~[Brandock]It is a relief to be out of that busy camp. I mean - not that I would *prefer* marching through the mud if I had the choice of a comfy, warm place with a suitable sitting chair. But if the choice is a burstling war camp with preparations for the next fight, drunken ruffians, and frightened refugees... If that is the choice, then I prefer exploring outside of it.~ */
DO ~SetGlobal("C#Brandock_GlintSoD","GLOBAL",1)~
== BDGLINTB @27 /* ~[Glint]You mean instead of the known danger that awaits the war camp, you prefer to scout for new, unknown ones?~ */
== C#BrandB @28 /* ~[Brandock]That's not what I... well, I guess that's one way to interpret what I said.~ */
== C#BrandB @29 /* ~[Brandock]You totally spoiled the mood, you know.~ */
EXIT


/* 2nd with Corwin */
CHAIN
IF 
~%IT_IS_SOD%
CombatCounter(0) !See([ENEMY]) 
OR(2) InParty(Myself) Global("C#BrandockJoined","GLOBAL",2)
InParty("CORWIN")  // Corwin
See("CORWIN") See(Player1)
!StateCheck(Myself,CD_STATE_NOTVALID)
!StateCheck("CORWIN",CD_STATE_NOTVALID)
Global("C#Brandock_CorwinSoD","GLOBAL",1)~ THEN C#BrandB brandock_corwin_sod_2
@7
DO ~SetGlobal("C#Brandock_CorwinSoD","GLOBAL",2)~
== BDCORWIB @8
== C#BrandB @9
== BDCORWIB @10
== C#BrandB @11
== BDCORWIB @12
== C#BrandB @13
EXIT


/* 3rd with Corwin */
CHAIN
IF 
~%IT_IS_SOD%
CombatCounter(0) !See([ENEMY]) 
OR(2) InParty(Myself) Global("C#BrandockJoined","GLOBAL",2)
InParty("CORWIN")  // Corwin
See("CORWIN") See(Player1)
!StateCheck(Myself,CD_STATE_NOTVALID)
!StateCheck("CORWIN",CD_STATE_NOTVALID)
Global("C#Brandock_CorwinSoD","GLOBAL",2)~ THEN C#BrandB brandock_corwin_sod_3
@14
DO ~SetGlobal("C#Brandock_CorwinSoD","GLOBAL",3)~
== BDCORWIB @15
== C#BrandB @16
= @17
== BDCORWIB @18
== C#BrandB @19
EXIT
