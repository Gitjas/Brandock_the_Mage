CHAIN
IF WEIGHT #-1
~%IT_IS_SOD%
CombatCounter(0) !See([ENEMY]) 
OR(2) InParty(Myself) Global("C#BrandockJoined","GLOBAL",2)
InParty("Ajantis")  
See("Ajantis") See(Player1)
!StateCheck(Myself,CD_STATE_NOTVALID)
!StateCheck("Ajantis",CD_STATE_NOTVALID)
Global("C#Brandock_AjantisSoD","GLOBAL",0)~ THEN C#BrandB brandock_ajantis_sod_1
@0 /* [Brandock]I am happy to be back travelling with <CHARNAME>, but I'd never thought it would be the case. I meant farewell when we parted. Not that I am complaining, not at all. */
DO ~SetGlobal("C#Brandock_AjantisSoD","GLOBAL",1)~
== BDAJANTB @1 /* [Ajantis]I didn't expect to be back so soon, either. */
== BDAJANTB IF ~Global("X#AjantisRomanceActive","GLOBAL",2)~ THEN @2 /* [Ajantis]I am not complaining to be back at my beloved's side. */
== C#BrandB @3 /* [Brandock]You were ordered back here. I kind of... dawdled away time in the neighborhood because I couldn't make myself to go back to Amn to face the Cowled Wizards. */ 
== BDAJANTB @4 /* [Ajantis]I am anticipating my return to Amn, to be standing in front of the knights of the Order of the Radiant Heart to be judged of my worthiness to become a full fledged member. It is what I was working for ever since I came to the Sword Coast. */
== C#BrandB @5 /* [Brandock]Yes, I also came here with the goal of becoming a well-versed mage. And yet our motivations are so different. It was your duty that let you return. For me, being here now is more the result of... decision paralysis, I guess. While it urges me to go home, at the same time I'm dreading it. Dreading it so much that I rather joined <CHARNAME> in the pursuit of a crusade so far up in the north that its impact wouldn't even be noticeable down in the south. */
== BDAJANTB @6 /* [Ajantis]You think you are not ready to return? */
== C#BrandB @7 /* [Brandock]I don't know - I am much more experienced now than when I met <CHARNAME> back at Lion's Way - but how to judge whether I'm strong enough to return on my own terms? I will return once I'll find myself wasting time again. Or before I'll start the next life threatening adventure to avoid it... */
EXIT