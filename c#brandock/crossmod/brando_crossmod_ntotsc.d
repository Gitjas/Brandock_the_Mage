
I_C_T ~NTHASDAR~ 8 C#Brandock_NTHASDAR_8
== ~c#brandj~ IF ~Global("C#Brandock_UlcasterSchool","GLOBAL",0)
OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN @0 /* ~Oh dear. I never thought about it... That there is books that can *destroy* wisdom when studied. I feel very cold all of a sudden...~ */
END

I_C_T ~NTLENORE~ 12 C#Brandock_NTLENORE_12
== ~c#brandj~ IF ~Global("C#Brandock_UlcasterSchool","GLOBAL",0)
OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN @1 /* ~We are so, so sorry, Lenore... I wished this would have gone differently.~ */
== ~NTLENORE~ IF ~Global("C#Brandock_UlcasterSchool","GLOBAL",0)
OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN @2 /* ~Thank you...~ */
END




CHAIN
IF WEIGHT #-1
~Global("C#Br_EldodRestored_CM","GLOBAL",1)~ THEN c#brandj eldodrestored
@3 /* ~So the captain was under the influence of mind control! I *knew* people can't be that wicked if in their right mind.~ */
== c#brandj IF ~!Dead("NTKROTAN")~ THEN @4 /* ~<CHARNAME> - you are a genius for figuring that out. I am glad events took this turn and we could free him before this ogre mage made him do more bad things!~ */
== c#brandj @5 /* ~The poor man... This is like waking up *into* a nightmare - what a nightmare!~ */
END
IF ~~ THEN DO ~SetGlobal("C#Br_EldodRestored_CM","GLOBAL",2)~ EXIT

APPEND c#brandj
IF WEIGHT #-1
~Global("C#Br_LorePathNTMISC10BG1_CM","GLOBAL",1)~ THEN book_of_the_unknowing
SAY @6 /* ~"The Great Book of the Unknowing", hmm? I wonder what its magic is like...~ */
+ ~GlobalGT("NTTalkedToHasdar","GLOBAL",1)~ + @7 /* ~No way! This book already made a person insane. You're not going to study this.~ */ + book_of_the_unknowing_01
+ ~GlobalGT("NTTalkedToHasdar","GLOBAL",1)~ + @8 /* ~Seriously? After you saw what it can do?~ */ + book_of_the_unknowing_01
+ ~!GlobalGT("NTTalkedToHasdar","GLOBAL",1)~ + @9 /* ~Be careful - if the title has any meaning at all, this is probably not what you are seeking.~ */ + book_of_the_unknowing_01
++ @10 /* ~See anything?~ */ + book_of_the_unknowing_03
++ @11 /* ~We don't have time for this now.~ */ + book_of_the_unknowing_02
END

IF ~~ THEN book_of_the_unknowing_01
SAY @12 /* ~Don't worry, I was not planning on just reading it. It gives off a very disturbing magic aura...~ */
IF ~~ THEN + book_of_the_unknowing_03
END

IF ~~ THEN book_of_the_unknowing_02
SAY @13 /* ~(sigh) Fine.~ */
IF ~~ THEN DO ~SetGlobal("C#Br_LorePathNTMISC10BG1_CM","GLOBAL",2)~ EXIT
END

IF ~~ THEN book_of_the_unknowing_03
SAY @14 /* ~Wow. This is... nothing I can learn from without proper safety measures, of which I have no idea what they would be. I think I have a headache now.~ */
IF ~~ THEN DO ~SetGlobal("C#Br_LorePathNTMISC10BG1_CM","GLOBAL",2)~ EXIT
END

END //APPEND