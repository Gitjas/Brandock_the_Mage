/* crossmod with Skitia's Helga
X3Helga
*/

EXTEND_TOP c#brando %search_b% #1
+ ~InPartyAllowDead("X3Helga")
Global("C#Brando_X3Helga1","LOCALS",0)~ + @0 /* ~What a coincidence. We just joined forces with Helga, who is out to hunt ogres!~ */ DO ~SetGlobal("C#Brando_X3Helga1","LOCALS",1)~ + helga_in_party
+ ~Global("X3HogreDead","GLOBAL",1)
!InPartyAllowDead("X3Helga")
AreaCheck("%CoastWay%")
Global("C#Brando_X3Helga2","LOCALS",0)~ + @1 /* ~There was an ogre huntress right down the road!~ */ DO ~SetGlobal("C#Brando_X3Helga2","LOCALS",1)~ + met_helga
END

EXTEND_TOP c#brando %search_05% #1
+ ~InPartyAllowDead("X3Helga")
Global("C#Brando_X3Helga1","LOCALS",0)~ + @0 /* ~What a coincidence. We just joined forces with Helga, who is out to hunt ogres!~ */ DO ~SetGlobal("C#Brando_X3Helga1","LOCALS",1)~ + helga_in_party
+ ~Global("X3HogreDead","GLOBAL",1)
!InPartyAllowDead("X3Helga")
AreaCheck("%CoastWay%")
Global("C#Brando_X3Helga2","LOCALS",0)~ + @1 /* ~There was an ogre huntress right down the road!~ */ DO ~SetGlobal("C#Brando_X3Helga2","LOCALS",1)~ + met_helga
END

EXTEND_TOP c#brando %search_13% #1
+ ~InPartyAllowDead("X3Helga")
Global("C#Brando_X3Helga1","LOCALS",0)~ + @0 /* ~What a coincidence. We just joined forces with Helga, who is out to hunt ogres!~ */ DO ~SetGlobal("C#Brando_X3Helga1","LOCALS",1)~ + helga_in_party
+ ~Global("X3HogreDead","GLOBAL",1)
!InPartyAllowDead("X3Helga")
AreaCheck("%CoastWay%")
Global("C#Brando_X3Helga2","LOCALS",0)~ + @1 /* ~There was an ogre huntress right down the road!~ */ DO ~SetGlobal("C#Brando_X3Helga2","LOCALS",1)~ + met_helga
END

APPEND c#brando
IF ~~ THEN helga_in_party
SAY @2 /* ~[Brandock]I noticed, and it got my hopes up, I admit. Now I hope you all will also consider hunting "my" ogre?~ */
COPY_TRANS c#brando %search_13%
END

IF ~~ THEN met_helga
SAY @3 /* ~[Brandock]I know! I-I also talked to her, but she is looking for fellow adventurers to hunt down an ogre *leader*, and I alone wouldn't have been of much help with *that*, so I kind of didn't dare to offer, and kind of ended up not asking her about the ogre in front of the cage... (wispers) And, to be frank, she also looked *scary*!~ */
COPY_TRANS c#brando %search_13%
END
END


CHAIN
IF WEIGHT #-1
~%BGT_VAR%
CombatCounter(0) !See([ENEMY])
OR(2) InParty(Myself) Global("C#BrandockJoined","GLOBAL",2)
InParty("X3Helga")
See("X3Helga") See(Player1)
!StateCheck(Myself,CD_STATE_NOTVALID)
!StateCheck("X3Helga",CD_STATE_NOTVALID)
Global("C#Brandock_HelgaBG1","GLOBAL",0)~ THEN C#BrandB brandock_helga_bg1_1
@4 /* ~So, we end up traveling together after all, Helga. Good to see you found a group of adventurers. - Good *I* found a group of adventurers, heh.~ */
DO ~SetGlobal("C#Brandock_HelgaBG1","GLOBAL",1)~
= @5 /* ~And yes, I kind of didn't dare to ask you about the ogre in front of the cave because I was scared to join you alone...~ */
== X3HelgaB @6 /* ~Oi, if ye be scared of that ogre, ye'll be even more terrified of the other beasties out there. They be even bigger and mightier. Our weapons will be wet with their blood to taste soon enough. It's the best way to get some much needed muscle on ye.~ */
 == C#BrandB @7 /* ~Oh, you-you are right that traveling with <CHARNAME> will give me more opportunity to strengthen my physis... more than working in a library, that's for sure. Although some of the tomes can be really heavy! - Saying that I probably just made it worse...~ */
== C#BrandB IF ~!Dead("X3HogreL")~ THEN @8 /* ~I'll... I'll do my best to help defeating the ogre leader you are hunting. I promise I'll do my absolute best not to get too scared. By him. (mutters) And you...~ */
== C#BrandB IF ~Dead("X3HogreL")~ THEN @9 /* ~I'll... I'll do my best to help defeating whatever monsters will come our way. I promise I'll do my absolute best not to get too scared. By him. (mutters) And you...~ */
EXIT

CHAIN
IF ~%BGT_VAR%
CombatCounter(0) !See([ENEMY])
OR(2) InParty(Myself) Global("C#BrandockJoined","GLOBAL",2)
InParty("X3Helga")
See("X3Helga") See(Player1)
!StateCheck(Myself,CD_STATE_NOTVALID)
!StateCheck("X3Helga",CD_STATE_NOTVALID)
Global("C#Brandock_HelgaBG1","GLOBAL",1)~ THEN C#BrandB brandock_helga_bg1_2
@10 /* ~[Brandock]Helga, "much needed muscle" - that's the kindest way of pointing out my lacking physical build I heard in - like, ever.~ */
DO ~SetGlobal("C#Brandock_HelgaBG1","GLOBAL",2)~
== X3HelgaB @11 /* ~[Helga]Muscle is good lad, but you don't become a veteran fighter with muscle. It's mastery of yer weapon, yer fear, and yer lust for battle.~ */
== C#BrandB @12 /* ~[Brandock]Oh, I am definitely trying - *definitely* trying to become a useful fighting comrade. Most probably never with a bloodied weapon, though. Unless it's my blood...~ */
== X3HelgaB @13 /* ~[Helga]A bit of blood is good for you, but don't make it yer own blasted blood. Keep working with a weapon, nay arrows unless yer a coward, get close and hungry. Ye'll survive till the next battle, and that's what matters.~ */
EXIT
