/* Brandock kann tell Elvenhair about filling the restored book with spells */
/* EET only, obviously */

CHAIN
IF WEIGHT #-1
~InMyArea("C#Brandock")
OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2)
!StateCheck("C#Brandock",CD_STATE_NOTVALID)
Global("C#Brando_ElvenhairFinishedBook","GLOBAL",1)
Global("C#Brandock_BookWarningLokal2","GLOBAL",0) 
Global("C#Brandock_BookWarningLokal1","GLOBAL",0) 
Global("C#Brandock_BookWarning","GLOBAL",0) //book is in inventory
Global("C#Brando_EETTellBook","LOCALS",0)~ THEN FIREBE book_complete
#214991 /* ~Ah, I know a bookworm when I see one. Come back when I have a little more time and perhaps we can discuss history and literature a bit.~ */
== C#BrandJ @1974 /* ~That's *exactly* what I came here for, Master Elvenhair! Er, you remember me?... Unfortunate mage you so kindly volunteered to help some while ago with this scrumbled book that restored itself because of a spell by Master Bowgentle? - See this? This is the book! It's complete again! Er, I wrote in the spells that are inside now.~ */
== FIREBE @1975 /* Oh, what a view for sore eyes. Beautifully done, young mage. I can tell the difference to the original, of course, but I would say you definitely restored it to its former level of power.~ */
== C#BrandJ @1976 /* ~[Brandock]I... I thank you, Master Elvenhair. Thank you. You saying this, this-this means so much to me, you have no idea how much this means to me, I thank you so much for saying this - <CHARNAME>, let's go out of here, or I'll add "burst into tears out of gratitude in front of well-versed master" to my list of failures.~ */
END
IF ~~ THEN DO ~SetGlobal("C#Brando_ElvenhairFinishedBook","GLOBAL",2)
AddExperienceParty(5000)~ EXIT

