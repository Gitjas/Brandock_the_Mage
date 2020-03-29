//Joining in BG1

BEGIN c#brando

IF ~Global("C#BrandockSpawn","GLOBAL",1)~ THEN search
SAY @0
= @1
= @2
++ @3 + search_12
++ @4 DO ~SetGlobal("C#Brando_Join4","LOCALS",1) SetGlobal("C#Brando_Join1","LOCALS",1)~ + search_03
++ @5 DO ~SetGlobal("C#Brando_Join2","LOCALS",1)~ + search_05
++ @6 DO ~SetGlobal("C#Brando_Join3","LOCALS",1)~ + search_02
++ @7 DO ~SetGlobal("C#Brando_Join4","LOCALS",1) SetGlobal("C#Brando_Join1","LOCALS",1)~ + search_04
++ @8 DO ~SetGlobal("C#Brando_Join5","LOCALS",1) SetGlobal("C#Brando_Join2","LOCALS",1)~ + search_10
++ @9 + search_07
END

IF ~~ THEN search_01
SAY @10
IF ~~ THEN DO ~SetGlobal("C#BrandockSpawn","GLOBAL",2)
SetGlobal("C#BrandockJoined","GLOBAL",1)
SetGlobal("C#Brandock_Dialog","GLOBAL",1)
RealSetGlobalTimer("C#BrandockDialogTimer","GLOBAL",400)
RealSetGlobalTimer("C#BrandockNPCBanterTimer","GLOBAL",3600)
AddMapNote([4580.1525],@18)
JoinParty()~ UNSOLVED_JOURNAL @10000 /* ~Brandock's Magic Book

I agreed to help Brandock to regain his possessions that were stolen from him. He said he traced them inside a cavern in the east of the Coastway, but an ogre holds residence nearby, so we should approach well prepared.~ */ EXIT
END

IF ~~ THEN search_02
SAY @11
IF ~~ THEN + search_13
END

IF ~~ THEN search_03
SAY @12
IF ~~ THEN + search_04
END

IF ~~ THEN search_04
SAY @13
IF ~~ THEN + search_13
END

IF ~~ THEN search_05
SAY @14
++ @16 + search_01
+ ~Global("C#Brando_Join1","LOCALS",0)~ + @4 DO ~SetGlobal("C#Brando_Join4","LOCALS",1) SetGlobal("C#Brando_Join1","LOCALS",1)~ + search_03
+ ~Global("C#Brando_Join3","LOCALS",0)~ + @6 DO ~SetGlobal("C#Brando_Join3","LOCALS",1)~ + search_02
+ ~Global("C#Brando_Join4","LOCALS",0)~ + @7 DO ~SetGlobal("C#Brando_Join4","LOCALS",1) SetGlobal("C#Brando_Join1","LOCALS",1)~ + search_04
+ ~Global("C#Brando_Join5","LOCALS",0)~ + @8 DO ~SetGlobal("C#Brando_Join5","LOCALS",1) SetGlobal("C#Brando_Join2","LOCALS",1)~ + search_10
++ @9 + search_07
END

/* IF ~~ THEN search_06 */

IF ~~ THEN search_07
SAY @21
IF ~~ THEN DO ~SetGlobal("C#BrandockSpawn","GLOBAL",6)~ EXIT
END

/* IF ~~ THEN search_08 */

IF ~Global("C#BrandockSpawn","GLOBAL",6)~ THEN search_09
SAY @24
++ @25 + search_01
++ @26 + search_07
END

IF ~~ THEN search_10
SAY @27
++ @28 DO ~SetGlobal("C#Brandock_Reward","GLOBAL",1)~ + search_11
++ @29 + search_12
++ @9 + search_07
END

IF ~~ THEN search_11
SAY @30
IF ~~ THEN + search_13
END

IF ~~ THEN search_12
SAY @15 
++ @33 + search_01
++ @17 + search_13
END

IF ~~ THEN search_13
SAY @32
++ @33 + search_01
+ ~Global("C#Brando_Join1","LOCALS",0)~ + @4 DO ~SetGlobal("C#Brando_Join4","LOCALS",1) SetGlobal("C#Brando_Join1","LOCALS",1)~ + search_03
+ ~Global("C#Brando_Join2","LOCALS",0)~ + @5 DO ~SetGlobal("C#Brando_Join2","LOCALS",1)~ + search_05
+ ~Global("C#Brando_Join3","LOCALS",0)~ + @6 DO ~SetGlobal("C#Brando_Join3","LOCALS",1)~ + search_02
+ ~Global("C#Brando_Join4","LOCALS",0)~ + @7 DO ~SetGlobal("C#Brando_Join4","LOCALS",1) SetGlobal("C#Brando_Join1","LOCALS",1)~ + search_04
+ ~Global("C#Brando_Join5","LOCALS",0)~ + @8 DO ~SetGlobal("C#Brando_Join5","LOCALS",1) SetGlobal("C#Brando_Join2","LOCALS",1)~ + search_10
++ @9 + search_07
END

