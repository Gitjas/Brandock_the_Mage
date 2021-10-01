/* after Korlasz' tomb: Brandock will say his goodbyes upon transition to SoD / BGII */
/* the actual leaving will be handled by bd0103.bcs */

/* Also for crossmod with crossmod with EndlessBG1: Transition to SoD: belt.dlg
@13 /* ~The city is in your debt, Hero of Baldur's Gate. Please follow me, the Flaming Fist soldiers will guide you to the hide-out of Sarevok's last follower.~ */
*/



I_C_T %BDImoen_or_belt% %bdimoen53_54_belt_13% C#Brandock_BG1Leaving
== C#BrandJ IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2)
	InMyArea("C#Brandock") 
!StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN @3 /* ~<CHARNAME>, I think this is a good time to say good bye. We both reached our goals. Sarevok is stopped, and I learned a lot about wielding magic... I will stay in the region and continue to study the De Simplex Magicae with Master Elvenhair's help. I'll come and visit you before I'll return home for good. It should be easy to find you - hero of Baldur's Gate!~ */ 
END