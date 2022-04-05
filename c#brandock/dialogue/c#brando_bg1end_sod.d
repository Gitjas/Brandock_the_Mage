/* after Korlasz' tomb: Brandock will say his goodbyes upon transition to SoD */
/* the actual leaving will be handled by bd0103.bcs */


I_C_T bdimoen 53 C#Brandock_BG1Leaving
== C#BrandJ IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2)
	InMyArea("C#Brandock") 
!StateCheck("C#Brandock",CD_STATE_NOTVALID)
/* remain silent in case possessions weren't collected */
GlobalGT("C#Brandock_Possessions","GLOBAL",0)
/* compatibility with EndlessBG1 "Korlasz Dungeon in BG1" + Transitions */
!Global("SOD_fromimport","global",2)~ THEN @3 /* ~<CHARNAME>, I think this is a good time to say good bye. We both reached our goals. Sarevok is stopped, and I learned a lot about wielding magic... I will stay in the region and continue to study the De Simplex Magicae with Master Elvenhair's help. I'll come and visit you before I'll return home for good. It should be easy to find you - hero of Baldur's Gate!~ */ 
END

I_C_T bdimoen 54 C#Brandock_BG1Leaving
== C#BrandJ IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2)
	InMyArea("C#Brandock") 
!StateCheck("C#Brandock",CD_STATE_NOTVALID)
/* remain silent in case possessions weren't collected */
GlobalGT("C#Brandock_Possessions","GLOBAL",0)
/* compatibility with EndlessBG1 "Korlasz Dungeon in BG1" + Transitions */
!Global("SOD_fromimport","global",2)~ THEN @3 /* ~<CHARNAME>, I think this is a good time to say good bye. We both reached our goals. Sarevok is stopped, and I learned a lot about wielding magic... I will stay in the region and continue to study the De Simplex Magicae with Master Elvenhair's help. I'll come and visit you before I'll return home for good. It should be easy to find you - hero of Baldur's Gate!~ */ 
END