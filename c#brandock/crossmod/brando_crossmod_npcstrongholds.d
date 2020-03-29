/* NPC Strongholds compatibility */

/* please note that NPC Strongholds v2 has some bugs for the sphere stronghold that could prevent the stronghold to trigger correctly. 
Check here: http://gibberlings3.net/forums/index.php?showtopic=28374&p=259257 */


/*
Global("KishMultipleMages","GLOBAL",1)

teos_state_1:
@2001 = ~I am here as a contact and a master, and I will thank you for keeping your tone civil. Now, who claims to be the owner of this sphere?~

teos_state_2:
@2009 = ~Hah! You're not even a mage. Now, seriously, who claims this sphere?~
*/

EXTEND_BOTTOM MGTEOS01 %teos_state_1%
+ ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") 
!StateCheck("C#Brandock",CD_STATE_NOTVALID)~ + ~Brandock should take care of the sphere.~ + teos_brandock
END

EXTEND_BOTTOM MGTEOS01 %teos_state_2%
+ ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") 
!StateCheck("C#Brandock",CD_STATE_NOTVALID)~ + ~Brandock should take care of the sphere.~ + teos_brandock
END

APPEND MGTEOS01 
IF ~~ THEN teos_brandock
SAY ~How convenient. I am Teos, and I have been assigned to offer you a... special deal.~
IF ~~ THEN DO ~SetGlobal("PCSphere","GLOBAL",0)
SetGlobal("KishMultipleMages","GLOBAL",0) 
SetGlobal("KishAerieMageStronghold","GLOBAL",0)
SetGlobal("KishEdwinMageStronghold","GLOBAL",0)
SetGlobal("KishImoenMageStronghold","GLOBAL",0)
SetGlobal("KishJanMageStronghold","GLOBAL",0)
SetGlobal("KishNaliaMageStronghold","GLOBAL",0)~ + 2
END
END