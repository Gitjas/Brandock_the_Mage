/* ToB */

//Fate spirit

/* conti game : GlobalGT("C#BrandockSpawn","GLOBAL",9) */

EXTEND_TOP FATESP 6

/* new game */
  IF ~Global("C#BrandockSpawn","GLOBAL",0)
Global("C#Brandock_SummonedVariable","GLOBAL",0)~ THEN 
   REPLY ~Bring me Brandock, the mage.~  
    DO ~SetGlobal("C#Brandock_SummonedVariable","GLOBAL",1)~ GOTO 9

/* conti game: Brandock BG2 is dead */
  IF ~GlobalGT("C#BrandockSpawn","GLOBAL",0)
Global("C#Brandock_SummonedVariable","GLOBAL",0)
Dead("C#Brandock")
~ THEN REPLY ~Bring me Brandock, the mage.~ DO ~SetGlobal("C#Brandock_SummonedVariable","GLOBAL",4)
~ GOTO 10    /* ~I cannot do as you ask, child of Bhaal. The one you seek is dead and thus forever beyond my reach. His thread no longer connects with yours.~ */

/* conti game: Brandock was not in party BG2 */
  IF ~GlobalGT("C#BrandockSpawn","GLOBAL",0)
Global("C#Brandock_SummonedVariable","GLOBAL",0)
!Global("C#Brandock_BeenInParty","GLOBAL",2)
!Dead("C#Brandock")
~ THEN REPLY ~Bring me Brandock, the mage.~ DO ~SetGlobal("C#Brandock_SummonedVariable","GLOBAL",4)
~ GOTO 7  /* ~I cannot do as you ask, child of Bhaal. The thread of the one you speak is beyond my sight, as it no longer touches yours.~ */  
                                    
/* conti game: Brandock BG2 in party */ 
  IF ~GlobalGT("C#BrandockSpawn","GLOBAL",0)
Global("C#Brandock_SummonedVariable","GLOBAL",0)
Global("C#Brandock_BeenInParty","GLOBAL",2)
!Dead("C#Brandock")
~ THEN REPLY ~Bring me Brandock, the mage.~ DO ~SetGlobal("C#Brandock_SummonedVariable","GLOBAL",1)
~ GOTO 9

END


/* Brandock - Imoen: ToB only */
CHAIN
IF 
~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2)
CombatCounter(0)
!See([ENEMY])
!StateCheck("C#Brandock",CD_STATE_NOTVALID)
Global("C#Brandock_ImoenBanterToB","GLOBAL",0)
InParty("IMOEN2") InMyArea("IMOEN2") !StateCheck("IMOEN2",CD_STATE_NOTVALID)
GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN C#BrandB imoen_tob
~Imoen, Ihr schlaft in letzter Zeit schlecht.~ DO ~SetGlobal("C#Brandock_ImoenBanterToB","GLOBAL",1)~
== BIMOEN25 ~Ich... ich habe die Tr�ume, die <CHARNAME> ebenfalls bereits hinter sich gebracht hat. Ich habe Angst, dass es bei mir auch weiter geht, bis... Nun, bis der Schl�chter zum Vorschein kommt.~
== C#BrandB ~Habt keine Angst, Imoen.~
== BIMOEN25 ~Du meinst, ich brauche keine Angst zu haben?~
== C#BrandB ~Nein. Als <CHARNAME> der Schl�chter wurde, hat es uns alle �berrascht und erschreckt. Wir waren noch nicht so stark wie jetzt. Wenn Euch es auch geschieht, dann sind wir vorbereitet, und st�rker als damals.~
== BIMOEN25 ~Achso, du meinst... Mensch, Brandock, ob mich das jetzt wirklich beruhigt, bin ich mir nicht so sicher. Pff!~
EXIT

/* Volo in Saradush */

EXTEND_TOP SARVOLO 9 
+ ~InParty("C#Brandock")~ + ~Tell me about Brandock.~ + volo_brandock
END

//## C#brandJ?
CHAIN 
IF ~~ THEN SARVOLO volo_brandock
~Brandock the mage. Went out of his home land to seak power and might, and so he did. Found the might of the foxes, and the power of the half-ogres. The might of a good nights drink, and the power of his own fear. Behold of Brandock, the mighty and powerful mage!~
== C#brandJ IF ~InParty("C#Brandock") InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN ~Oh yeah, that's... that's funny. You forgot one or two instances on that list, though. You want me to tell you?!~
END
IF ~~ THEN EXTERN SARVOLO 9

/* FINSOL */

I_C_T FINSOL01 27 C#BrandockFINSOL01_27
== c#brandj IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN ~Giving up mortality... To live as a god also means, to outlive anyone you ever loved or cared for. Although it might be of little meaning, for a god...~
= ~<CHARNAME>, just in case you want to chose godhood to leave all the narrow-mindedness and vanity of the mortals behind, just consider that in the cloudy, mysterious home the gods call their own, probably every immortal fosters his or her preciousness, because they have nothing else to do and no chores for diversion.~
= ~Er, and in case you chose godhood, please forget what I just said.~
END



