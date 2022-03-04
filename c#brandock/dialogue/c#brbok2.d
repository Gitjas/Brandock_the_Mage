/* "Book dialogue": conversable item, for turning the pages */
/* rewritten Book of Infinite Spells */

BEGIN c#brbok2

/* Player1 */

/* "c#brboA1" */
IF ~HasItem("c#brboA1",Player1)~ THEN player1_01
SAY ~(You take the Book of Infinite Spells into your hands.)~ [c#ablank]
/* "c#brboA2" */
+ ~!PartyHasItem("c#brboA2") Global("C#Br_BoIS_A2","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Protection From Evil".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboA1"))
ActionOverride(Player1,DestroyItem("c#brboA1"))
GiveItemCreate("c#brboA2",Player1,1,0,0)~ + book_01
/* "c#brboA3" */
+ ~!PartyHasItem("c#brboA3") Global("C#Br_BoIS_A3","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "True Seeing".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboA1"))
ActionOverride(Player1,DestroyItem("c#brboA1"))
GiveItemCreate("c#brboA3",Player1,1,0,0)~ + book_01
/* "c#brboA4" */
+ ~!PartyHasItem("c#brboA4") Global("C#Br_BoIS_A4","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Farsight".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboA1"))
ActionOverride(Player1,DestroyItem("c#brboA1"))
GiveItemCreate("c#brboA4",Player1,1,0,0)~ + book_01
/* "c#brboA5" */
+ ~!PartyHasItem("c#brboA5") Global("C#Br_BoIS_A5","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Spell Turning".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboA1"))
ActionOverride(Player1,DestroyItem("c#brboA1"))
GiveItemCreate("c#brboA5",Player1,1,0,0)~ + book_01
/* "c#brboA6" */
+ ~!PartyHasItem("c#brboA6") Global("C#Br_BoIS_A6","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Wyvern Call".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboA1"))
ActionOverride(Player1,DestroyItem("c#brboA1"))
GiveItemCreate("c#brboA6",Player1,1,0,0)~ + book_01
/* "c#brboA7" */
+ ~!PartyHasItem("c#brboA7") Global("C#Br_BoIS_A7","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Stinking Cloud".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboA1"))
ActionOverride(Player1,DestroyItem("c#brboA1"))
GiveItemCreate("c#brboA7",Player1,1,0,0)~ + book_01
/* "c#brboA8" */
+ ~!PartyHasItem("c#brboA8") Global("C#Br_BoIS_A8","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Lightning Bolt".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboA1"))
ActionOverride(Player1,DestroyItem("c#brboA1"))
GiveItemCreate("c#brboA8",Player1,1,0,0)~ + book_01
/* "c#brboA9" */
+ ~!PartyHasItem("c#brboA9") Global("C#Br_BoIS_A9","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Burning Hands".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboA1"))
ActionOverride(Player1,DestroyItem("c#brboA1"))
GiveItemCreate("c#brboA9",Player1,1,0,0)~ + book_01
/* "c#brboAA" */
+ ~!PartyHasItem("c#brboAA") Global("C#Br_BoIS_AA","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Fireball".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboA1"))
ActionOverride(Player1,DestroyItem("c#brboA1"))
GiveItemCreate("c#brboAA",Player1,1,0,0)~ + book_01
+ ~Global("c#brbok2","GLOBAL",0)~ + ~(You leave the current page with the spell "Invisibility" open and put the book away again.)~ EXIT
+ ~Global("c#brbok2","GLOBAL",1)~ + ~(You already used the book today. The page can't be turned until after your next rest.)~ EXIT
END

/* "c#brboA2" */
IF ~HasItem("c#brboA2",Player1)~ THEN player1_02
SAY ~(You take the Book of Infinite Spells into your hands.)~ [c#ablank]
/* "c#brboA1" */
+ ~!PartyHasItem("c#brboA1") Global("C#Br_BoIS_A1","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Invisibility".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboA2"))
ActionOverride(Player1,DestroyItem("c#brboA2"))
GiveItemCreate("c#brboA1",Player1,1,0,0)~ + book_01
/* "c#brboA3" */
+ ~!PartyHasItem("c#brboA3") Global("C#Br_BoIS_A3","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "True Seeing".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboA2"))
ActionOverride(Player1,DestroyItem("c#brboA2"))
GiveItemCreate("c#brboA3",Player1,1,0,0)~ + book_01
/* "c#brboA4" */
+ ~!PartyHasItem("c#brboA4") Global("C#Br_BoIS_A4","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Farsight".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboA2"))
ActionOverride(Player1,DestroyItem("c#brboA2"))
GiveItemCreate("c#brboA4",Player1,1,0,0)~ + book_01
/* "c#brboA5" */
+ ~!PartyHasItem("c#brboA5") Global("C#Br_BoIS_A5","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Spell Turning".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboA2"))
ActionOverride(Player1,DestroyItem("c#brboA2"))
GiveItemCreate("c#brboA5",Player1,1,0,0)~ + book_01
/* "c#brboA6" */
+ ~!PartyHasItem("c#brboA6") Global("C#Br_BoIS_A6","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Wyvern Call".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboA2"))
ActionOverride(Player1,DestroyItem("c#brboA2"))
GiveItemCreate("c#brboA6",Player1,1,0,0)~ + book_01
/* "c#brboA7" */
+ ~!PartyHasItem("c#brboA7") Global("C#Br_BoIS_A7","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Stinking Cloud".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboA2"))
ActionOverride(Player1,DestroyItem("c#brboA2"))
GiveItemCreate("c#brboA7",Player1,1,0,0)~ + book_01
/* "c#brboA8" */
+ ~!PartyHasItem("c#brboA8") Global("C#Br_BoIS_A8","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Lightning Bolt".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboA2"))
ActionOverride(Player1,DestroyItem("c#brboA2"))
GiveItemCreate("c#brboA8",Player1,1,0,0)~ + book_01
/* "c#brboA9" */
+ ~!PartyHasItem("c#brboA9") Global("C#Br_BoIS_A9","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Burning Hands".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboA2"))
ActionOverride(Player1,DestroyItem("c#brboA2"))
GiveItemCreate("c#brboA9",Player1,1,0,0)~ + book_01
/* "c#brboAA" */
+ ~!PartyHasItem("c#brboAA") Global("C#Br_BoIS_AA","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Fireball".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboA2"))
ActionOverride(Player1,DestroyItem("c#brboA2"))
GiveItemCreate("c#brboAA",Player1,1,0,0)~ + book_01
+ ~Global("c#brbok2","GLOBAL",0)~ + ~(You leave the current page with the spell "Protection From Evil" open and put the book away again.)~ EXIT
+ ~Global("c#brbok2","GLOBAL",1)~ + ~(You already used the book today. The page can't be turned until after your next rest.)~ EXIT
END

/* "c#brboA3" */
IF ~HasItem("c#brboA3",Player1)~ THEN player1_03
SAY ~(You take the Book of Infinite Spells into your hands.)~ [c#ablank]
/* "c#brboA1" */
+ ~!PartyHasItem("c#brboA1") Global("C#Br_BoIS_A1","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Invisibility".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboA3"))
ActionOverride(Player1,DestroyItem("c#brboA3"))
GiveItemCreate("c#brboA1",Player1,1,0,0)~ + book_01
/* "c#brboA2" */
+ ~!PartyHasItem("c#brboA2") Global("C#Br_BoIS_A2","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Protection From Evil".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboA3"))
ActionOverride(Player1,DestroyItem("c#brboA3"))
GiveItemCreate("c#brboA2",Player1,1,0,0)~ + book_01
/* "c#brboA4" */
+ ~!PartyHasItem("c#brboA4") Global("C#Br_BoIS_A4","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Farsight".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboA3"))
ActionOverride(Player1,DestroyItem("c#brboA3"))
GiveItemCreate("c#brboA4",Player1,1,0,0)~ + book_01
/* "c#brboA5" */
+ ~!PartyHasItem("c#brboA5") Global("C#Br_BoIS_A5","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Spell Turning".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboA3"))
ActionOverride(Player1,DestroyItem("c#brboA3"))
GiveItemCreate("c#brboA5",Player1,1,0,0)~ + book_01
/* "c#brboA6" */
+ ~!PartyHasItem("c#brboA6") Global("C#Br_BoIS_A6","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Wyvern Call".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboA3"))
ActionOverride(Player1,DestroyItem("c#brboA3"))
GiveItemCreate("c#brboA6",Player1,1,0,0)~ + book_01
/* "c#brboA7" */
+ ~!PartyHasItem("c#brboA7") Global("C#Br_BoIS_A7","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Stinking Cloud".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboA3"))
ActionOverride(Player1,DestroyItem("c#brboA3"))
GiveItemCreate("c#brboA7",Player1,1,0,0)~ + book_01
/* "c#brboA8" */
+ ~!PartyHasItem("c#brboA8") Global("C#Br_BoIS_A8","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Lightning Bolt".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboA3"))
ActionOverride(Player1,DestroyItem("c#brboA3"))
GiveItemCreate("c#brboA8",Player1,1,0,0)~ + book_01
/* "c#brboA9" */
+ ~!PartyHasItem("c#brboA9") Global("C#Br_BoIS_A9","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Burning Hands".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboA3"))
ActionOverride(Player1,DestroyItem("c#brboA3"))
GiveItemCreate("c#brboA9",Player1,1,0,0)~ + book_01
/* "c#brboAA" */
+ ~!PartyHasItem("c#brboAA") Global("C#Br_BoIS_AA","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Fireball".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboA3"))
ActionOverride(Player1,DestroyItem("c#brboA3"))
GiveItemCreate("c#brboAA",Player1,1,0,0)~ + book_01
+ ~Global("c#brbok2","GLOBAL",0)~ + ~(You leave the current page with the spell "True Seeing" open and put the book away again.)~ EXIT
+ ~Global("c#brbok2","GLOBAL",1)~ + ~(You already used the book today. The page can't be turned until after your next rest.)~ EXIT
END

/* "c#brboA4" */
IF ~HasItem("c#brboA4",Player1)~ THEN player1_04
SAY ~(You take the Book of Infinite Spells into your hands.)~ [c#ablank]
/* "c#brboA1" */
+ ~!PartyHasItem("c#brboA1") Global("C#Br_BoIS_A1","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Invisibility".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboA4"))
ActionOverride(Player1,DestroyItem("c#brboA4"))
GiveItemCreate("c#brboA1",Player1,1,0,0)~ + book_01
/* "c#brboA2" */
+ ~!PartyHasItem("c#brboA2") Global("C#Br_BoIS_A2","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Protection From Evil".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboA4"))
ActionOverride(Player1,DestroyItem("c#brboA4"))
GiveItemCreate("c#brboA2",Player1,1,0,0)~ + book_01
/* "c#brboA3" */
+ ~!PartyHasItem("c#brboA3") Global("C#Br_BoIS_A3","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "True Seeing".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboA4"))
ActionOverride(Player1,DestroyItem("c#brboA4"))
GiveItemCreate("c#brboA3",Player1,1,0,0)~ + book_01
/* "c#brboA5" */
+ ~!PartyHasItem("c#brboA5") Global("C#Br_BoIS_A5","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Spell Turning".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboA4"))
ActionOverride(Player1,DestroyItem("c#brboA4"))
GiveItemCreate("c#brboA5",Player1,1,0,0)~ + book_01
/* "c#brboA6" */
+ ~!PartyHasItem("c#brboA6") Global("C#Br_BoIS_A6","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Wyvern Call".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboA4"))
ActionOverride(Player1,DestroyItem("c#brboA4"))
GiveItemCreate("c#brboA6",Player1,1,0,0)~ + book_01
/* "c#brboA7" */
+ ~!PartyHasItem("c#brboA7") Global("C#Br_BoIS_A7","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Stinking Cloud".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboA4"))
ActionOverride(Player1,DestroyItem("c#brboA4"))
GiveItemCreate("c#brboA7",Player1,1,0,0)~ + book_01
/* "c#brboA8" */
+ ~!PartyHasItem("c#brboA8") Global("C#Br_BoIS_A8","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Lightning Bolt".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboA4"))
ActionOverride(Player1,DestroyItem("c#brboA4"))
GiveItemCreate("c#brboA8",Player1,1,0,0)~ + book_01
/* "c#brboA9" */
+ ~!PartyHasItem("c#brboA9") Global("C#Br_BoIS_A9","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Burning Hands".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboA4"))
ActionOverride(Player1,DestroyItem("c#brboA4"))
GiveItemCreate("c#brboA9",Player1,1,0,0)~ + book_01
/* "c#brboAA" */
+ ~!PartyHasItem("c#brboAA") Global("C#Br_BoIS_AA","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Fireball".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboA4"))
ActionOverride(Player1,DestroyItem("c#brboA4"))
GiveItemCreate("c#brboAA",Player1,1,0,0)~ + book_01
+ ~Global("c#brbok2","GLOBAL",0)~ + ~(You leave the current page with the spell "Farsight" open and put the book away again.)~ EXIT
+ ~Global("c#brbok2","GLOBAL",1)~ + ~(You already used the book today. The page can't be turned until after your next rest.)~ EXIT
END

/* "c#brboA5" */
IF ~HasItem("c#brboA5",Player1)~ THEN player1_05
SAY ~(You take the Book of Infinite Spells into your hands.)~ [c#ablank]
/* "c#brboA1" */
+ ~!PartyHasItem("c#brboA1") Global("C#Br_BoIS_A1","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Invisibility".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboA5"))
ActionOverride(Player1,DestroyItem("c#brboA5"))
GiveItemCreate("c#brboA1",Player1,1,0,0)~ + book_01
/* "c#brboA2" */
+ ~!PartyHasItem("c#brboA2") Global("C#Br_BoIS_A2","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Protection From Evil".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboA5"))
ActionOverride(Player1,DestroyItem("c#brboA5"))
GiveItemCreate("c#brboA2",Player1,1,0,0)~ + book_01
/* "c#brboA3" */
+ ~!PartyHasItem("c#brboA3") Global("C#Br_BoIS_A3","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "True Seeing".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboA5"))
ActionOverride(Player1,DestroyItem("c#brboA5"))
GiveItemCreate("c#brboA3",Player1,1,0,0)~ + book_01
/* "c#brboA4" */
+ ~!PartyHasItem("c#brboA4") Global("C#Br_BoIS_A4","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Farsight".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboA5"))
ActionOverride(Player1,DestroyItem("c#brboA5"))
GiveItemCreate("c#brboA4",Player1,1,0,0)~ + book_01
/* "c#brboA6" */
+ ~!PartyHasItem("c#brboA6") Global("C#Br_BoIS_A6","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Wyvern Call".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboA5"))
ActionOverride(Player1,DestroyItem("c#brboA5"))
GiveItemCreate("c#brboA6",Player1,1,0,0)~ + book_01
/* "c#brboA7" */
+ ~!PartyHasItem("c#brboA7") Global("C#Br_BoIS_A7","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Stinking Cloud".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboA5"))
ActionOverride(Player1,DestroyItem("c#brboA5"))
GiveItemCreate("c#brboA7",Player1,1,0,0)~ + book_01
/* "c#brboA8" */
+ ~!PartyHasItem("c#brboA8") Global("C#Br_BoIS_A8","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Lightning Bolt".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboA5"))
ActionOverride(Player1,DestroyItem("c#brboA5"))
GiveItemCreate("c#brboA8",Player1,1,0,0)~ + book_01
/* "c#brboA9" */
+ ~!PartyHasItem("c#brboA9") Global("C#Br_BoIS_A9","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Burning Hands".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboA5"))
ActionOverride(Player1,DestroyItem("c#brboA5"))
GiveItemCreate("c#brboA9",Player1,1,0,0)~ + book_01
/* "c#brboAA" */
+ ~!PartyHasItem("c#brboAA") Global("C#Br_BoIS_AA","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Fireball".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboA5"))
ActionOverride(Player1,DestroyItem("c#brboA5"))
GiveItemCreate("c#brboAA",Player1,1,0,0)~ + book_01
+ ~Global("c#brbok2","GLOBAL",0)~ + ~(You leave the current page with the spell "Spell Turning" open and put the book away again.)~ EXIT
+ ~Global("c#brbok2","GLOBAL",1)~ + ~(You already used the book today. The page can't be turned until after your next rest.)~ EXIT
END

/* "c#brboA6" */
IF ~HasItem("c#brboA6",Player1)~ THEN player1_06
SAY ~(You take the Book of Infinite Spells into your hands.)~ [c#ablank]
/* "c#brboA1" */
+ ~!PartyHasItem("c#brboA1") Global("C#Br_BoIS_A1","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Invisibility".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboA6"))
ActionOverride(Player1,DestroyItem("c#brboA6"))
GiveItemCreate("c#brboA1",Player1,1,0,0)~ + book_01
/* "c#brboA2" */
+ ~!PartyHasItem("c#brboA2") Global("C#Br_BoIS_A2","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Protection From Evil".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboA6"))
ActionOverride(Player1,DestroyItem("c#brboA6"))
GiveItemCreate("c#brboA2",Player1,1,0,0)~ + book_01
/* "c#brboA3" */
+ ~!PartyHasItem("c#brboA3") Global("C#Br_BoIS_A3","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "True Seeing".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboA6"))
ActionOverride(Player1,DestroyItem("c#brboA6"))
GiveItemCreate("c#brboA3",Player1,1,0,0)~ + book_01
/* "c#brboA4" */
+ ~!PartyHasItem("c#brboA4") Global("C#Br_BoIS_A4","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Farsight".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboA6"))
ActionOverride(Player1,DestroyItem("c#brboA6"))
GiveItemCreate("c#brboA4",Player1,1,0,0)~ + book_01
/* "c#brboA5" */
+ ~!PartyHasItem("c#brboA5") Global("C#Br_BoIS_A5","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Spell Turning".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboA6"))
ActionOverride(Player1,DestroyItem("c#brboA6"))
GiveItemCreate("c#brboA5",Player1,1,0,0)~ + book_01
/* "c#brboA7" */
+ ~!PartyHasItem("c#brboA7") Global("C#Br_BoIS_A7","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Stinking Cloud".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboA6"))
ActionOverride(Player1,DestroyItem("c#brboA6"))
GiveItemCreate("c#brboA7",Player1,1,0,0)~ + book_01
/* "c#brboA8" */
+ ~!PartyHasItem("c#brboA8") Global("C#Br_BoIS_A8","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Lightning Bolt".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboA6"))
ActionOverride(Player1,DestroyItem("c#brboA6"))
GiveItemCreate("c#brboA8",Player1,1,0,0)~ + book_01
/* "c#brboA9" */
+ ~!PartyHasItem("c#brboA9") Global("C#Br_BoIS_A9","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Burning Hands".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboA6"))
ActionOverride(Player1,DestroyItem("c#brboA6"))
GiveItemCreate("c#brboA9",Player1,1,0,0)~ + book_01
/* "c#brboAA" */
+ ~!PartyHasItem("c#brboAA") Global("C#Br_BoIS_AA","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Fireball".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboA6"))
ActionOverride(Player1,DestroyItem("c#brboA6"))
GiveItemCreate("c#brboAA",Player1,1,0,0)~ + book_01
+ ~Global("c#brbok2","GLOBAL",0)~ + ~(You leave the current page with the spell "Wyvern Call" open and put the book away again.)~ EXIT
+ ~Global("c#brbok2","GLOBAL",1)~ + ~(You already used the book today. The page can't be turned until after your next rest.)~ EXIT
END

/* "c#brboA7" */
IF ~HasItem("c#brboA7",Player1)~ THEN player1_07
SAY ~(You take the Book of Infinite Spells into your hands.)~ [c#ablank]
/* "c#brboA1" */
+ ~!PartyHasItem("c#brboA1") Global("C#Br_BoIS_A1","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Invisibility".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboA7"))
ActionOverride(Player1,DestroyItem("c#brboA7"))
GiveItemCreate("c#brboA1",Player1,1,0,0)~ + book_01
/* "c#brboA2" */
+ ~!PartyHasItem("c#brboA2") Global("C#Br_BoIS_A2","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Protection From Evil".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboA7"))
ActionOverride(Player1,DestroyItem("c#brboA7"))
GiveItemCreate("c#brboA2",Player1,1,0,0)~ + book_01
/* "c#brboA3" */
+ ~!PartyHasItem("c#brboA3") Global("C#Br_BoIS_A3","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "True Seeing".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboA7"))
ActionOverride(Player1,DestroyItem("c#brboA7"))
GiveItemCreate("c#brboA3",Player1,1,0,0)~ + book_01
/* "c#brboA4" */
+ ~!PartyHasItem("c#brboA4") Global("C#Br_BoIS_A4","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Farsight".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboA7"))
ActionOverride(Player1,DestroyItem("c#brboA7"))
GiveItemCreate("c#brboA4",Player1,1,0,0)~ + book_01
/* "c#brboA5" */
+ ~!PartyHasItem("c#brboA5") Global("C#Br_BoIS_A5","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Spell Turning".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboA7"))
ActionOverride(Player1,DestroyItem("c#brboA7"))
GiveItemCreate("c#brboA5",Player1,1,0,0)~ + book_01
/* "c#brboA6" */
+ ~!PartyHasItem("c#brboA6") Global("C#Br_BoIS_A6","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Wyvern Call".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboA7"))
ActionOverride(Player1,DestroyItem("c#brboA7"))
GiveItemCreate("c#brboA6",Player1,1,0,0)~ + book_01
/* "c#brboA8" */
+ ~!PartyHasItem("c#brboA8") Global("C#Br_BoIS_A8","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Lightning Bolt".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboA7"))
ActionOverride(Player1,DestroyItem("c#brboA7"))
GiveItemCreate("c#brboA8",Player1,1,0,0)~ + book_01
/* "c#brboA9" */
+ ~!PartyHasItem("c#brboA9") Global("C#Br_BoIS_A9","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Burning Hands".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboA7"))
ActionOverride(Player1,DestroyItem("c#brboA7"))
GiveItemCreate("c#brboA9",Player1,1,0,0)~ + book_01
/* "c#brboAA" */
+ ~!PartyHasItem("c#brboAA") Global("C#Br_BoIS_AA","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Fireball".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboA7"))
ActionOverride(Player1,DestroyItem("c#brboA7"))
GiveItemCreate("c#brboAA",Player1,1,0,0)~ + book_01
+ ~Global("c#brbok2","GLOBAL",0)~ + ~(You leave the current page with the spell "Stinking Cloud" open and put the book away again.)~ EXIT
+ ~Global("c#brbok2","GLOBAL",1)~ + ~(You already used the book today. The page can't be turned until after your next rest.)~ EXIT
END

/* "c#brboA8" */
IF ~HasItem("c#brboA8",Player1)~ THEN player1_08
SAY ~(You take the Book of Infinite Spells into your hands.)~ [c#ablank]
/* "c#brboA1" */
+ ~!PartyHasItem("c#brboA1") Global("C#Br_BoIS_A1","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Invisibility".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboA8"))
ActionOverride(Player1,DestroyItem("c#brboA8"))
GiveItemCreate("c#brboA1",Player1,1,0,0)~ + book_01
/* "c#brboA2" */
+ ~!PartyHasItem("c#brboA2") Global("C#Br_BoIS_A2","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Protection From Evil".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboA8"))
ActionOverride(Player1,DestroyItem("c#brboA8"))
GiveItemCreate("c#brboA2",Player1,1,0,0)~ + book_01
/* "c#brboA3" */
+ ~!PartyHasItem("c#brboA3") Global("C#Br_BoIS_A3","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "True Seeing".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboA8"))
ActionOverride(Player1,DestroyItem("c#brboA8"))
GiveItemCreate("c#brboA3",Player1,1,0,0)~ + book_01
/* "c#brboA4" */
+ ~!PartyHasItem("c#brboA4") Global("C#Br_BoIS_A4","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Farsight".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboA8"))
ActionOverride(Player1,DestroyItem("c#brboA8"))
GiveItemCreate("c#brboA4",Player1,1,0,0)~ + book_01
/* "c#brboA5" */
+ ~!PartyHasItem("c#brboA5") Global("C#Br_BoIS_A5","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Spell Turning".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboA8"))
ActionOverride(Player1,DestroyItem("c#brboA8"))
GiveItemCreate("c#brboA5",Player1,1,0,0)~ + book_01
/* "c#brboA6" */
+ ~!PartyHasItem("c#brboA6") Global("C#Br_BoIS_A6","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Wyvern Call".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboA8"))
ActionOverride(Player1,DestroyItem("c#brboA8"))
GiveItemCreate("c#brboA6",Player1,1,0,0)~ + book_01
/* "c#brboA7" */
+ ~!PartyHasItem("c#brboA7") Global("C#Br_BoIS_A7","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Stinking Cloud".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboA8"))
ActionOverride(Player1,DestroyItem("c#brboA8"))
GiveItemCreate("c#brboA7",Player1,1,0,0)~ + book_01
/* "c#brboA9" */
+ ~!PartyHasItem("c#brboA9") Global("C#Br_BoIS_A9","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Burning Hands".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboA8"))
ActionOverride(Player1,DestroyItem("c#brboA8"))
GiveItemCreate("c#brboA9",Player1,1,0,0)~ + book_01
/* "c#brboAA" */
+ ~!PartyHasItem("c#brboAA") Global("C#Br_BoIS_AA","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Fireball".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboA8"))
ActionOverride(Player1,DestroyItem("c#brboA8"))
GiveItemCreate("c#brboAA",Player1,1,0,0)~ + book_01
+ ~Global("c#brbok2","GLOBAL",0)~ + ~(You leave the current page with the spell "Lightning Bolt" open and put the book away again.)~ EXIT
+ ~Global("c#brbok2","GLOBAL",1)~ + ~(You already used the book today. The page can't be turned until after your next rest.)~ EXIT
END

/* "c#brboA9" */
IF ~HasItem("c#brboA9",Player1)~ THEN player1_09
SAY ~(You take the Book of Infinite Spells into your hands.)~ [c#ablank]
/* "c#brboA1" */
+ ~!PartyHasItem("c#brboA1") Global("C#Br_BoIS_A1","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Invisibility".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboA9"))
ActionOverride(Player1,DestroyItem("c#brboA9"))
GiveItemCreate("c#brboA1",Player1,1,0,0)~ + book_01
/* "c#brboA2" */
+ ~!PartyHasItem("c#brboA2") Global("C#Br_BoIS_A2","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Protection From Evil".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboA9"))
ActionOverride(Player1,DestroyItem("c#brboA9"))
GiveItemCreate("c#brboA2",Player1,1,0,0)~ + book_01
/* "c#brboA3" */
+ ~!PartyHasItem("c#brboA3") Global("C#Br_BoIS_A3","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "True Seeing".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboA9"))
ActionOverride(Player1,DestroyItem("c#brboA9"))
GiveItemCreate("c#brboA3",Player1,1,0,0)~ + book_01
/* "c#brboA4" */
+ ~!PartyHasItem("c#brboA4") Global("C#Br_BoIS_A4","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Farsight".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboA9"))
ActionOverride(Player1,DestroyItem("c#brboA9"))
GiveItemCreate("c#brboA4",Player1,1,0,0)~ + book_01
/* "c#brboA5" */
+ ~!PartyHasItem("c#brboA5") Global("C#Br_BoIS_A5","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Spell Turning".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboA9"))
ActionOverride(Player1,DestroyItem("c#brboA9"))
GiveItemCreate("c#brboA5",Player1,1,0,0)~ + book_01
/* "c#brboA6" */
+ ~!PartyHasItem("c#brboA6") Global("C#Br_BoIS_A6","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Wyvern Call".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboA9"))
ActionOverride(Player1,DestroyItem("c#brboA9"))
GiveItemCreate("c#brboA6",Player1,1,0,0)~ + book_01
/* "c#brboA7" */
+ ~!PartyHasItem("c#brboA7") Global("C#Br_BoIS_A7","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Stinking Cloud".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboA9"))
ActionOverride(Player1,DestroyItem("c#brboA9"))
GiveItemCreate("c#brboA7",Player1,1,0,0)~ + book_01
/* "c#brboA8" */
+ ~!PartyHasItem("c#brboA8") Global("C#Br_BoIS_A8","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Lightning Bolt".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboA9"))
ActionOverride(Player1,DestroyItem("c#brboA9"))
GiveItemCreate("c#brboA8",Player1,1,0,0)~ + book_01
/* "c#brboAA" */
+ ~!PartyHasItem("c#brboAA") Global("C#Br_BoIS_AA","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Fireball".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboA9"))
ActionOverride(Player1,DestroyItem("c#brboA9"))
GiveItemCreate("c#brboAA",Player1,1,0,0)~ + book_01
+ ~Global("c#brbok2","GLOBAL",0)~ + ~(You leave the current page with the spell "Burning Hands" open and put the book away again.)~ EXIT
+ ~Global("c#brbok2","GLOBAL",1)~ + ~(You already used the book today. The page can't be turned until after your next rest.)~ EXIT
END

/* "c#brboAA" */
IF ~HasItem("c#brboAA",Player1)~ THEN player1_10
SAY ~(You take the Book of Infinite Spells into your hands.)~ [c#ablank]
/* "c#brboA1" */
+ ~!PartyHasItem("c#brboA1") Global("C#Br_BoIS_A1","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Invisibility".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboAA"))
ActionOverride(Player1,DestroyItem("c#brboAA"))
GiveItemCreate("c#brboA1",Player1,1,0,0)~ + book_01
/* "c#brboA2" */
+ ~!PartyHasItem("c#brboA2") Global("C#Br_BoIS_A2","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Protection From Evil".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboAA"))
ActionOverride(Player1,DestroyItem("c#brboAA"))
GiveItemCreate("c#brboA2",Player1,1,0,0)~ + book_01
/* "c#brboA3" */
+ ~!PartyHasItem("c#brboA3") Global("C#Br_BoIS_A3","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "True Seeing".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboAA"))
ActionOverride(Player1,DestroyItem("c#brboAA"))
GiveItemCreate("c#brboA3",Player1,1,0,0)~ + book_01
/* "c#brboA4" */
+ ~!PartyHasItem("c#brboA4") Global("C#Br_BoIS_A4","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Farsight".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboAA"))
ActionOverride(Player1,DestroyItem("c#brboAA"))
GiveItemCreate("c#brboA4",Player1,1,0,0)~ + book_01
/* "c#brboA5" */
+ ~!PartyHasItem("c#brboA5") Global("C#Br_BoIS_A5","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Spell Turning".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboAA"))
ActionOverride(Player1,DestroyItem("c#brboAA"))
GiveItemCreate("c#brboA5",Player1,1,0,0)~ + book_01
/* "c#brboA6" */
+ ~!PartyHasItem("c#brboA6") Global("C#Br_BoIS_A6","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Wyvern Call".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboAA"))
ActionOverride(Player1,DestroyItem("c#brboAA"))
GiveItemCreate("c#brboA6",Player1,1,0,0)~ + book_01
/* "c#brboA7" */
+ ~!PartyHasItem("c#brboA7") Global("C#Br_BoIS_A7","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Stinking Cloud".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboAA"))
ActionOverride(Player1,DestroyItem("c#brboAA"))
GiveItemCreate("c#brboA7",Player1,1,0,0)~ + book_01
/* "c#brboA8" */
+ ~!PartyHasItem("c#brboA8") Global("C#Br_BoIS_A8","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Lightning Bolt".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboAA"))
ActionOverride(Player1,DestroyItem("c#brboAA"))
GiveItemCreate("c#brboA8",Player1,1,0,0)~ + book_01
/* "c#brboAA" */
+ ~!PartyHasItem("c#brboA9") Global("C#Br_BoIS_A9","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Burning Hands".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboAA"))
ActionOverride(Player1,DestroyItem("c#brboAA"))
GiveItemCreate("c#brboA9",Player1,1,0,0)~ + book_01
+ ~Global("c#brbok2","GLOBAL",0)~ + ~(You leave the current page with the spell "Fireball" open and put the book away again.)~ EXIT
+ ~Global("c#brbok2","GLOBAL",1)~ + ~(You already used the book today. The page can't be turned until after your next rest.)~ EXIT
END

/* Player2 */

/* "c#brboA1" */
IF ~HasItem("c#brboA1",Player2)~ THEN player2_01
SAY ~(You take the Book of Infinite Spells into your hands.)~ [c#ablank]
/* "c#brboA2" */
+ ~!PartyHasItem("c#brboA2") Global("C#Br_BoIS_A2","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Protection From Evil".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brboA1"))
ActionOverride(Player2,DestroyItem("c#brboA1"))
GiveItemCreate("c#brboA2",Player2,1,0,0)~ + book_01
/* "c#brboA3" */
+ ~!PartyHasItem("c#brboA3") Global("C#Br_BoIS_A3","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "True Seeing".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brboA1"))
ActionOverride(Player2,DestroyItem("c#brboA1"))
GiveItemCreate("c#brboA3",Player2,1,0,0)~ + book_01
/* "c#brboA4" */
+ ~!PartyHasItem("c#brboA4") Global("C#Br_BoIS_A4","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Farsight".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brboA1"))
ActionOverride(Player2,DestroyItem("c#brboA1"))
GiveItemCreate("c#brboA4",Player2,1,0,0)~ + book_01
/* "c#brboA5" */
+ ~!PartyHasItem("c#brboA5") Global("C#Br_BoIS_A5","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Spell Turning".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brboA1"))
ActionOverride(Player2,DestroyItem("c#brboA1"))
GiveItemCreate("c#brboA5",Player2,1,0,0)~ + book_01
/* "c#brboA6" */
+ ~!PartyHasItem("c#brboA6") Global("C#Br_BoIS_A6","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Wyvern Call".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brboA1"))
ActionOverride(Player2,DestroyItem("c#brboA1"))
GiveItemCreate("c#brboA6",Player2,1,0,0)~ + book_01
/* "c#brboA7" */
+ ~!PartyHasItem("c#brboA7") Global("C#Br_BoIS_A7","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Stinking Cloud".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brboA1"))
ActionOverride(Player2,DestroyItem("c#brboA1"))
GiveItemCreate("c#brboA7",Player2,1,0,0)~ + book_01
/* "c#brboA8" */
+ ~!PartyHasItem("c#brboA8") Global("C#Br_BoIS_A8","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Lightning Bolt".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brboA1"))
ActionOverride(Player2,DestroyItem("c#brboA1"))
GiveItemCreate("c#brboA8",Player2,1,0,0)~ + book_01
/* "c#brboA9" */
+ ~!PartyHasItem("c#brboA9") Global("C#Br_BoIS_A9","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Burning Hands".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brboA1"))
ActionOverride(Player2,DestroyItem("c#brboA1"))
GiveItemCreate("c#brboA9",Player2,1,0,0)~ + book_01
/* "c#brboAA" */
+ ~!PartyHasItem("c#brboAA") Global("C#Br_BoIS_AA","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Fireball".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brboA1"))
ActionOverride(Player2,DestroyItem("c#brboA1"))
GiveItemCreate("c#brboAA",Player2,1,0,0)~ + book_01
+ ~Global("c#brbok2","GLOBAL",0)~ + ~(You leave the current page with the spell "Invisibility" open and put the book away again.)~ EXIT
+ ~Global("c#brbok2","GLOBAL",1)~ + ~(You already used the book today. The page can't be turned until after your next rest.)~ EXIT
END

/* "c#brboA2" */
IF ~HasItem("c#brboA2",Player2)~ THEN player2_02
SAY ~(You take the Book of Infinite Spells into your hands.)~ [c#ablank]
/* "c#brboA1" */
+ ~!PartyHasItem("c#brboA1") Global("C#Br_BoIS_A1","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Invisibility".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brboA2"))
ActionOverride(Player2,DestroyItem("c#brboA2"))
GiveItemCreate("c#brboA1",Player2,1,0,0)~ + book_01
/* "c#brboA3" */
+ ~!PartyHasItem("c#brboA3") Global("C#Br_BoIS_A3","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "True Seeing".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brboA2"))
ActionOverride(Player2,DestroyItem("c#brboA2"))
GiveItemCreate("c#brboA3",Player2,1,0,0)~ + book_01
/* "c#brboA4" */
+ ~!PartyHasItem("c#brboA4") Global("C#Br_BoIS_A4","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Farsight".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brboA2"))
ActionOverride(Player2,DestroyItem("c#brboA2"))
GiveItemCreate("c#brboA4",Player2,1,0,0)~ + book_01
/* "c#brboA5" */
+ ~!PartyHasItem("c#brboA5") Global("C#Br_BoIS_A5","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Spell Turning".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brboA2"))
ActionOverride(Player2,DestroyItem("c#brboA2"))
GiveItemCreate("c#brboA5",Player2,1,0,0)~ + book_01
/* "c#brboA6" */
+ ~!PartyHasItem("c#brboA6") Global("C#Br_BoIS_A6","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Wyvern Call".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brboA2"))
ActionOverride(Player2,DestroyItem("c#brboA2"))
GiveItemCreate("c#brboA6",Player2,1,0,0)~ + book_01
/* "c#brboA7" */
+ ~!PartyHasItem("c#brboA7") Global("C#Br_BoIS_A7","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Stinking Cloud".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brboA2"))
ActionOverride(Player2,DestroyItem("c#brboA2"))
GiveItemCreate("c#brboA7",Player2,1,0,0)~ + book_01
/* "c#brboA8" */
+ ~!PartyHasItem("c#brboA8") Global("C#Br_BoIS_A8","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Lightning Bolt".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brboA2"))
ActionOverride(Player2,DestroyItem("c#brboA2"))
GiveItemCreate("c#brboA8",Player2,1,0,0)~ + book_01
/* "c#brboA9" */
+ ~!PartyHasItem("c#brboA9") Global("C#Br_BoIS_A9","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Burning Hands".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brboA2"))
ActionOverride(Player2,DestroyItem("c#brboA2"))
GiveItemCreate("c#brboA9",Player2,1,0,0)~ + book_01
/* "c#brboAA" */
+ ~!PartyHasItem("c#brboAA") Global("C#Br_BoIS_AA","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Fireball".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brboA2"))
ActionOverride(Player2,DestroyItem("c#brboA2"))
GiveItemCreate("c#brboAA",Player2,1,0,0)~ + book_01
+ ~Global("c#brbok2","GLOBAL",0)~ + ~(You leave the current page with the spell "Protection From Evil" open and put the book away again.)~ EXIT
+ ~Global("c#brbok2","GLOBAL",1)~ + ~(You already used the book today. The page can't be turned until after your next rest.)~ EXIT
END

/* "c#brboA3" */
IF ~HasItem("c#brboA3",Player2)~ THEN player2_03
SAY ~(You take the Book of Infinite Spells into your hands.)~ [c#ablank]
/* "c#brboA1" */
+ ~!PartyHasItem("c#brboA1") Global("C#Br_BoIS_A1","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Invisibility".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brboA3"))
ActionOverride(Player2,DestroyItem("c#brboA3"))
GiveItemCreate("c#brboA1",Player2,1,0,0)~ + book_01
/* "c#brboA2" */
+ ~!PartyHasItem("c#brboA2") Global("C#Br_BoIS_A2","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Protection From Evil".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brboA3"))
ActionOverride(Player2,DestroyItem("c#brboA3"))
GiveItemCreate("c#brboA2",Player2,1,0,0)~ + book_01
/* "c#brboA4" */
+ ~!PartyHasItem("c#brboA4") Global("C#Br_BoIS_A4","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Farsight".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brboA3"))
ActionOverride(Player2,DestroyItem("c#brboA3"))
GiveItemCreate("c#brboA4",Player2,1,0,0)~ + book_01
/* "c#brboA5" */
+ ~!PartyHasItem("c#brboA5") Global("C#Br_BoIS_A5","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Spell Turning".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brboA3"))
ActionOverride(Player2,DestroyItem("c#brboA3"))
GiveItemCreate("c#brboA5",Player2,1,0,0)~ + book_01
/* "c#brboA6" */
+ ~!PartyHasItem("c#brboA6") Global("C#Br_BoIS_A6","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Wyvern Call".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brboA3"))
ActionOverride(Player2,DestroyItem("c#brboA3"))
GiveItemCreate("c#brboA6",Player2,1,0,0)~ + book_01
/* "c#brboA7" */
+ ~!PartyHasItem("c#brboA7") Global("C#Br_BoIS_A7","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Stinking Cloud".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brboA3"))
ActionOverride(Player2,DestroyItem("c#brboA3"))
GiveItemCreate("c#brboA7",Player2,1,0,0)~ + book_01
/* "c#brboA8" */
+ ~!PartyHasItem("c#brboA8") Global("C#Br_BoIS_A8","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Lightning Bolt".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brboA3"))
ActionOverride(Player2,DestroyItem("c#brboA3"))
GiveItemCreate("c#brboA8",Player2,1,0,0)~ + book_01
/* "c#brboA9" */
+ ~!PartyHasItem("c#brboA9") Global("C#Br_BoIS_A9","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Burning Hands".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brboA3"))
ActionOverride(Player2,DestroyItem("c#brboA3"))
GiveItemCreate("c#brboA9",Player2,1,0,0)~ + book_01
/* "c#brboAA" */
+ ~!PartyHasItem("c#brboAA") Global("C#Br_BoIS_AA","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Fireball".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brboA3"))
ActionOverride(Player2,DestroyItem("c#brboA3"))
GiveItemCreate("c#brboAA",Player2,1,0,0)~ + book_01
+ ~Global("c#brbok2","GLOBAL",0)~ + ~(You leave the current page with the spell "True Seeing" open and put the book away again.)~ EXIT
+ ~Global("c#brbok2","GLOBAL",1)~ + ~(You already used the book today. The page can't be turned until after your next rest.)~ EXIT
END

/* "c#brboA4" */
IF ~HasItem("c#brboA4",Player2)~ THEN player2_04
SAY ~(You take the Book of Infinite Spells into your hands.)~ [c#ablank]
/* "c#brboA1" */
+ ~!PartyHasItem("c#brboA1") Global("C#Br_BoIS_A1","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Invisibility".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brboA4"))
ActionOverride(Player2,DestroyItem("c#brboA4"))
GiveItemCreate("c#brboA1",Player2,1,0,0)~ + book_01
/* "c#brboA2" */
+ ~!PartyHasItem("c#brboA2") Global("C#Br_BoIS_A2","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Protection From Evil".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brboA4"))
ActionOverride(Player2,DestroyItem("c#brboA4"))
GiveItemCreate("c#brboA2",Player2,1,0,0)~ + book_01
/* "c#brboA3" */
+ ~!PartyHasItem("c#brboA3") Global("C#Br_BoIS_A3","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "True Seeing".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brboA4"))
ActionOverride(Player2,DestroyItem("c#brboA4"))
GiveItemCreate("c#brboA3",Player2,1,0,0)~ + book_01
/* "c#brboA5" */
+ ~!PartyHasItem("c#brboA5") Global("C#Br_BoIS_A5","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Spell Turning".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brboA4"))
ActionOverride(Player2,DestroyItem("c#brboA4"))
GiveItemCreate("c#brboA5",Player2,1,0,0)~ + book_01
/* "c#brboA6" */
+ ~!PartyHasItem("c#brboA6") Global("C#Br_BoIS_A6","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Wyvern Call".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brboA4"))
ActionOverride(Player2,DestroyItem("c#brboA4"))
GiveItemCreate("c#brboA6",Player2,1,0,0)~ + book_01
/* "c#brboA7" */
+ ~!PartyHasItem("c#brboA7") Global("C#Br_BoIS_A7","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Stinking Cloud".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brboA4"))
ActionOverride(Player2,DestroyItem("c#brboA4"))
GiveItemCreate("c#brboA7",Player2,1,0,0)~ + book_01
/* "c#brboA8" */
+ ~!PartyHasItem("c#brboA8") Global("C#Br_BoIS_A8","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Lightning Bolt".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brboA4"))
ActionOverride(Player2,DestroyItem("c#brboA4"))
GiveItemCreate("c#brboA8",Player2,1,0,0)~ + book_01
/* "c#brboA9" */
+ ~!PartyHasItem("c#brboA9") Global("C#Br_BoIS_A9","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Burning Hands".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brboA4"))
ActionOverride(Player2,DestroyItem("c#brboA4"))
GiveItemCreate("c#brboA9",Player2,1,0,0)~ + book_01
/* "c#brboAA" */
+ ~!PartyHasItem("c#brboAA") Global("C#Br_BoIS_AA","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Fireball".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brboA4"))
ActionOverride(Player2,DestroyItem("c#brboA4"))
GiveItemCreate("c#brboAA",Player2,1,0,0)~ + book_01
+ ~Global("c#brbok2","GLOBAL",0)~ + ~(You leave the current page with the spell "Farsight" open and put the book away again.)~ EXIT
+ ~Global("c#brbok2","GLOBAL",1)~ + ~(You already used the book today. The page can't be turned until after your next rest.)~ EXIT
END

/* "c#brboA5" */
IF ~HasItem("c#brboA5",Player2)~ THEN player2_05
SAY ~(You take the Book of Infinite Spells into your hands.)~ [c#ablank]
/* "c#brboA1" */
+ ~!PartyHasItem("c#brboA1") Global("C#Br_BoIS_A1","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Invisibility".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brboA5"))
ActionOverride(Player2,DestroyItem("c#brboA5"))
GiveItemCreate("c#brboA1",Player2,1,0,0)~ + book_01
/* "c#brboA2" */
+ ~!PartyHasItem("c#brboA2") Global("C#Br_BoIS_A2","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Protection From Evil".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brboA5"))
ActionOverride(Player2,DestroyItem("c#brboA5"))
GiveItemCreate("c#brboA2",Player2,1,0,0)~ + book_01
/* "c#brboA3" */
+ ~!PartyHasItem("c#brboA3") Global("C#Br_BoIS_A3","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "True Seeing".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brboA5"))
ActionOverride(Player2,DestroyItem("c#brboA5"))
GiveItemCreate("c#brboA3",Player2,1,0,0)~ + book_01
/* "c#brboA4" */
+ ~!PartyHasItem("c#brboA4") Global("C#Br_BoIS_A4","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Farsight".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brboA5"))
ActionOverride(Player2,DestroyItem("c#brboA5"))
GiveItemCreate("c#brboA4",Player2,1,0,0)~ + book_01
/* "c#brboA6" */
+ ~!PartyHasItem("c#brboA6") Global("C#Br_BoIS_A6","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Wyvern Call".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brboA5"))
ActionOverride(Player2,DestroyItem("c#brboA5"))
GiveItemCreate("c#brboA6",Player2,1,0,0)~ + book_01
/* "c#brboA7" */
+ ~!PartyHasItem("c#brboA7") Global("C#Br_BoIS_A7","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Stinking Cloud".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brboA5"))
ActionOverride(Player2,DestroyItem("c#brboA5"))
GiveItemCreate("c#brboA7",Player2,1,0,0)~ + book_01
/* "c#brboA8" */
+ ~!PartyHasItem("c#brboA8") Global("C#Br_BoIS_A8","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Lightning Bolt".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brboA5"))
ActionOverride(Player2,DestroyItem("c#brboA5"))
GiveItemCreate("c#brboA8",Player2,1,0,0)~ + book_01
/* "c#brboA9" */
+ ~!PartyHasItem("c#brboA9") Global("C#Br_BoIS_A9","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Burning Hands".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brboA5"))
ActionOverride(Player2,DestroyItem("c#brboA5"))
GiveItemCreate("c#brboA9",Player2,1,0,0)~ + book_01
/* "c#brboAA" */
+ ~!PartyHasItem("c#brboAA") Global("C#Br_BoIS_AA","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Fireball".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brboA5"))
ActionOverride(Player2,DestroyItem("c#brboA5"))
GiveItemCreate("c#brboAA",Player2,1,0,0)~ + book_01
+ ~Global("c#brbok2","GLOBAL",0)~ + ~(You leave the current page with the spell "Spell Turning" open and put the book away again.)~ EXIT
+ ~Global("c#brbok2","GLOBAL",1)~ + ~(You already used the book today. The page can't be turned until after your next rest.)~ EXIT
END

/* "c#brboA6" */
IF ~HasItem("c#brboA6",Player2)~ THEN player2_06
SAY ~(You take the Book of Infinite Spells into your hands.)~ [c#ablank]
/* "c#brboA1" */
+ ~!PartyHasItem("c#brboA1") Global("C#Br_BoIS_A1","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Invisibility".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brboA6"))
ActionOverride(Player2,DestroyItem("c#brboA6"))
GiveItemCreate("c#brboA1",Player2,1,0,0)~ + book_01
/* "c#brboA2" */
+ ~!PartyHasItem("c#brboA2") Global("C#Br_BoIS_A2","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Protection From Evil".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brboA6"))
ActionOverride(Player2,DestroyItem("c#brboA6"))
GiveItemCreate("c#brboA2",Player2,1,0,0)~ + book_01
/* "c#brboA3" */
+ ~!PartyHasItem("c#brboA3") Global("C#Br_BoIS_A3","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "True Seeing".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brboA6"))
ActionOverride(Player2,DestroyItem("c#brboA6"))
GiveItemCreate("c#brboA3",Player2,1,0,0)~ + book_01
/* "c#brboA4" */
+ ~!PartyHasItem("c#brboA4") Global("C#Br_BoIS_A4","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Farsight".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brboA6"))
ActionOverride(Player2,DestroyItem("c#brboA6"))
GiveItemCreate("c#brboA4",Player2,1,0,0)~ + book_01
/* "c#brboA5" */
+ ~!PartyHasItem("c#brboA5") Global("C#Br_BoIS_A5","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Spell Turning".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brboA6"))
ActionOverride(Player2,DestroyItem("c#brboA6"))
GiveItemCreate("c#brboA5",Player2,1,0,0)~ + book_01
/* "c#brboA7" */
+ ~!PartyHasItem("c#brboA7") Global("C#Br_BoIS_A7","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Stinking Cloud".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brboA6"))
ActionOverride(Player2,DestroyItem("c#brboA6"))
GiveItemCreate("c#brboA7",Player2,1,0,0)~ + book_01
/* "c#brboA8" */
+ ~!PartyHasItem("c#brboA8") Global("C#Br_BoIS_A8","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Lightning Bolt".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brboA6"))
ActionOverride(Player2,DestroyItem("c#brboA6"))
GiveItemCreate("c#brboA8",Player2,1,0,0)~ + book_01
/* "c#brboA9" */
+ ~!PartyHasItem("c#brboA9") Global("C#Br_BoIS_A9","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Burning Hands".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brboA6"))
ActionOverride(Player2,DestroyItem("c#brboA6"))
GiveItemCreate("c#brboA9",Player2,1,0,0)~ + book_01
/* "c#brboAA" */
+ ~!PartyHasItem("c#brboAA") Global("C#Br_BoIS_AA","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Fireball".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brboA6"))
ActionOverride(Player2,DestroyItem("c#brboA6"))
GiveItemCreate("c#brboAA",Player2,1,0,0)~ + book_01
+ ~Global("c#brbok2","GLOBAL",0)~ + ~(You leave the current page with the spell "Wyvern Call" open and put the book away again.)~ EXIT
+ ~Global("c#brbok2","GLOBAL",1)~ + ~(You already used the book today. The page can't be turned until after your next rest.)~ EXIT
END

/* "c#brboA7" */
IF ~HasItem("c#brboA7",Player2)~ THEN player2_07
SAY ~(You take the Book of Infinite Spells into your hands.)~ [c#ablank]
/* "c#brboA1" */
+ ~!PartyHasItem("c#brboA1") Global("C#Br_BoIS_A1","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Invisibility".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brboA7"))
ActionOverride(Player2,DestroyItem("c#brboA7"))
GiveItemCreate("c#brboA1",Player2,1,0,0)~ + book_01
/* "c#brboA2" */
+ ~!PartyHasItem("c#brboA2") Global("C#Br_BoIS_A2","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Protection From Evil".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brboA7"))
ActionOverride(Player2,DestroyItem("c#brboA7"))
GiveItemCreate("c#brboA2",Player2,1,0,0)~ + book_01
/* "c#brboA3" */
+ ~!PartyHasItem("c#brboA3") Global("C#Br_BoIS_A3","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "True Seeing".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brboA7"))
ActionOverride(Player2,DestroyItem("c#brboA7"))
GiveItemCreate("c#brboA3",Player2,1,0,0)~ + book_01
/* "c#brboA4" */
+ ~!PartyHasItem("c#brboA4") Global("C#Br_BoIS_A4","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Farsight".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brboA7"))
ActionOverride(Player2,DestroyItem("c#brboA7"))
GiveItemCreate("c#brboA4",Player2,1,0,0)~ + book_01
/* "c#brboA5" */
+ ~!PartyHasItem("c#brboA5") Global("C#Br_BoIS_A5","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Spell Turning".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brboA7"))
ActionOverride(Player2,DestroyItem("c#brboA7"))
GiveItemCreate("c#brboA5",Player2,1,0,0)~ + book_01
/* "c#brboA6" */
+ ~!PartyHasItem("c#brboA6") Global("C#Br_BoIS_A6","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Wyvern Call".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brboA7"))
ActionOverride(Player2,DestroyItem("c#brboA7"))
GiveItemCreate("c#brboA6",Player2,1,0,0)~ + book_01
/* "c#brboA8" */
+ ~!PartyHasItem("c#brboA8") Global("C#Br_BoIS_A8","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Lightning Bolt".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brboA7"))
ActionOverride(Player2,DestroyItem("c#brboA7"))
GiveItemCreate("c#brboA8",Player2,1,0,0)~ + book_01
/* "c#brboA9" */
+ ~!PartyHasItem("c#brboA9") Global("C#Br_BoIS_A9","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Burning Hands".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brboA7"))
ActionOverride(Player2,DestroyItem("c#brboA7"))
GiveItemCreate("c#brboA9",Player2,1,0,0)~ + book_01
/* "c#brboAA" */
+ ~!PartyHasItem("c#brboAA") Global("C#Br_BoIS_AA","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Fireball".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brboA7"))
ActionOverride(Player2,DestroyItem("c#brboA7"))
GiveItemCreate("c#brboAA",Player2,1,0,0)~ + book_01
+ ~Global("c#brbok2","GLOBAL",0)~ + ~(You leave the current page with the spell "Stinking Cloud" open and put the book away again.)~ EXIT
+ ~Global("c#brbok2","GLOBAL",1)~ + ~(You already used the book today. The page can't be turned until after your next rest.)~ EXIT
END

/* "c#brboA8" */
IF ~HasItem("c#brboA8",Player2)~ THEN player2_08
SAY ~(You take the Book of Infinite Spells into your hands.)~ [c#ablank]
/* "c#brboA1" */
+ ~!PartyHasItem("c#brboA1") Global("C#Br_BoIS_A1","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Invisibility".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brboA8"))
ActionOverride(Player2,DestroyItem("c#brboA8"))
GiveItemCreate("c#brboA1",Player2,1,0,0)~ + book_01
/* "c#brboA2" */
+ ~!PartyHasItem("c#brboA2") Global("C#Br_BoIS_A2","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Protection From Evil".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brboA8"))
ActionOverride(Player2,DestroyItem("c#brboA8"))
GiveItemCreate("c#brboA2",Player2,1,0,0)~ + book_01
/* "c#brboA3" */
+ ~!PartyHasItem("c#brboA3") Global("C#Br_BoIS_A3","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "True Seeing".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brboA8"))
ActionOverride(Player2,DestroyItem("c#brboA8"))
GiveItemCreate("c#brboA3",Player2,1,0,0)~ + book_01
/* "c#brboA4" */
+ ~!PartyHasItem("c#brboA4") Global("C#Br_BoIS_A4","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Farsight".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brboA8"))
ActionOverride(Player2,DestroyItem("c#brboA8"))
GiveItemCreate("c#brboA4",Player2,1,0,0)~ + book_01
/* "c#brboA5" */
+ ~!PartyHasItem("c#brboA5") Global("C#Br_BoIS_A5","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Spell Turning".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brboA8"))
ActionOverride(Player2,DestroyItem("c#brboA8"))
GiveItemCreate("c#brboA5",Player2,1,0,0)~ + book_01
/* "c#brboA6" */
+ ~!PartyHasItem("c#brboA6") Global("C#Br_BoIS_A6","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Wyvern Call".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brboA8"))
ActionOverride(Player2,DestroyItem("c#brboA8"))
GiveItemCreate("c#brboA6",Player2,1,0,0)~ + book_01
/* "c#brboA7" */
+ ~!PartyHasItem("c#brboA7") Global("C#Br_BoIS_A7","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Stinking Cloud".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brboA8"))
ActionOverride(Player2,DestroyItem("c#brboA8"))
GiveItemCreate("c#brboA7",Player2,1,0,0)~ + book_01
/* "c#brboA9" */
+ ~!PartyHasItem("c#brboA9") Global("C#Br_BoIS_A9","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Burning Hands".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brboA8"))
ActionOverride(Player2,DestroyItem("c#brboA8"))
GiveItemCreate("c#brboA9",Player2,1,0,0)~ + book_01
/* "c#brboAA" */
+ ~!PartyHasItem("c#brboAA") Global("C#Br_BoIS_AA","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Fireball".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brboA8"))
ActionOverride(Player2,DestroyItem("c#brboA8"))
GiveItemCreate("c#brboAA",Player2,1,0,0)~ + book_01
+ ~Global("c#brbok2","GLOBAL",0)~ + ~(You leave the current page with the spell "Lightning Bolt" open and put the book away again.)~ EXIT
+ ~Global("c#brbok2","GLOBAL",1)~ + ~(You already used the book today. The page can't be turned until after your next rest.)~ EXIT
END

/* "c#brboA9" */
IF ~HasItem("c#brboA9",Player2)~ THEN player2_09
SAY ~(You take the Book of Infinite Spells into your hands.)~ [c#ablank]
/* "c#brboA1" */
+ ~!PartyHasItem("c#brboA1") Global("C#Br_BoIS_A1","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Invisibility".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brboA9"))
ActionOverride(Player2,DestroyItem("c#brboA9"))
GiveItemCreate("c#brboA1",Player2,1,0,0)~ + book_01
/* "c#brboA2" */
+ ~!PartyHasItem("c#brboA2") Global("C#Br_BoIS_A2","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Protection From Evil".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brboA9"))
ActionOverride(Player2,DestroyItem("c#brboA9"))
GiveItemCreate("c#brboA2",Player2,1,0,0)~ + book_01
/* "c#brboA3" */
+ ~!PartyHasItem("c#brboA3") Global("C#Br_BoIS_A3","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "True Seeing".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brboA9"))
ActionOverride(Player2,DestroyItem("c#brboA9"))
GiveItemCreate("c#brboA3",Player2,1,0,0)~ + book_01
/* "c#brboA4" */
+ ~!PartyHasItem("c#brboA4") Global("C#Br_BoIS_A4","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Farsight".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brboA9"))
ActionOverride(Player2,DestroyItem("c#brboA9"))
GiveItemCreate("c#brboA4",Player2,1,0,0)~ + book_01
/* "c#brboA5" */
+ ~!PartyHasItem("c#brboA5") Global("C#Br_BoIS_A5","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Spell Turning".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brboA9"))
ActionOverride(Player2,DestroyItem("c#brboA9"))
GiveItemCreate("c#brboA5",Player2,1,0,0)~ + book_01
/* "c#brboA6" */
+ ~!PartyHasItem("c#brboA6") Global("C#Br_BoIS_A6","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Wyvern Call".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brboA9"))
ActionOverride(Player2,DestroyItem("c#brboA9"))
GiveItemCreate("c#brboA6",Player2,1,0,0)~ + book_01
/* "c#brboA7" */
+ ~!PartyHasItem("c#brboA7") Global("C#Br_BoIS_A7","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Stinking Cloud".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brboA9"))
ActionOverride(Player2,DestroyItem("c#brboA9"))
GiveItemCreate("c#brboA7",Player2,1,0,0)~ + book_01
/* "c#brboA8" */
+ ~!PartyHasItem("c#brboA8") Global("C#Br_BoIS_A8","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Lightning Bolt".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brboA9"))
ActionOverride(Player2,DestroyItem("c#brboA9"))
GiveItemCreate("c#brboA8",Player2,1,0,0)~ + book_01
/* "c#brboAA" */
+ ~!PartyHasItem("c#brboAA") Global("C#Br_BoIS_AA","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Fireball".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brboA9"))
ActionOverride(Player2,DestroyItem("c#brboA9"))
GiveItemCreate("c#brboAA",Player2,1,0,0)~ + book_01
+ ~Global("c#brbok2","GLOBAL",0)~ + ~(You leave the current page with the spell "Burning Hands" open and put the book away again.)~ EXIT
+ ~Global("c#brbok2","GLOBAL",1)~ + ~(You already used the book today. The page can't be turned until after your next rest.)~ EXIT
END

/* "c#brboAA" */
IF ~HasItem("c#brboAA",Player2)~ THEN player2_10
SAY ~(You take the Book of Infinite Spells into your hands.)~ [c#ablank]
/* "c#brboA1" */
+ ~!PartyHasItem("c#brboA1") Global("C#Br_BoIS_A1","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Invisibility".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brboAA"))
ActionOverride(Player2,DestroyItem("c#brboAA"))
GiveItemCreate("c#brboA1",Player2,1,0,0)~ + book_01
/* "c#brboA2" */
+ ~!PartyHasItem("c#brboA2") Global("C#Br_BoIS_A2","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Protection From Evil".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brboAA"))
ActionOverride(Player2,DestroyItem("c#brboAA"))
GiveItemCreate("c#brboA2",Player2,1,0,0)~ + book_01
/* "c#brboA3" */
+ ~!PartyHasItem("c#brboA3") Global("C#Br_BoIS_A3","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "True Seeing".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brboAA"))
ActionOverride(Player2,DestroyItem("c#brboAA"))
GiveItemCreate("c#brboA3",Player2,1,0,0)~ + book_01
/* "c#brboA4" */
+ ~!PartyHasItem("c#brboA4") Global("C#Br_BoIS_A4","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Farsight".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brboAA"))
ActionOverride(Player2,DestroyItem("c#brboAA"))
GiveItemCreate("c#brboA4",Player2,1,0,0)~ + book_01
/* "c#brboA5" */
+ ~!PartyHasItem("c#brboA5") Global("C#Br_BoIS_A5","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Spell Turning".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brboAA"))
ActionOverride(Player2,DestroyItem("c#brboAA"))
GiveItemCreate("c#brboA5",Player2,1,0,0)~ + book_01
/* "c#brboA6" */
+ ~!PartyHasItem("c#brboA6") Global("C#Br_BoIS_A6","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Wyvern Call".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brboAA"))
ActionOverride(Player2,DestroyItem("c#brboAA"))
GiveItemCreate("c#brboA6",Player2,1,0,0)~ + book_01
/* "c#brboA7" */
+ ~!PartyHasItem("c#brboA7") Global("C#Br_BoIS_A7","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Stinking Cloud".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brboAA"))
ActionOverride(Player2,DestroyItem("c#brboAA"))
GiveItemCreate("c#brboA7",Player2,1,0,0)~ + book_01
/* "c#brboA8" */
+ ~!PartyHasItem("c#brboA8") Global("C#Br_BoIS_A8","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Lightning Bolt".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brboAA"))
ActionOverride(Player2,DestroyItem("c#brboAA"))
GiveItemCreate("c#brboA8",Player2,1,0,0)~ + book_01
/* "c#brboAA" */
+ ~!PartyHasItem("c#brboA9") Global("C#Br_BoIS_A9","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Burning Hands".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brboAA"))
ActionOverride(Player2,DestroyItem("c#brboAA"))
GiveItemCreate("c#brboA9",Player2,1,0,0)~ + book_01
+ ~Global("c#brbok2","GLOBAL",0)~ + ~(You leave the current page with the spell "Fireball" open and put the book away again.)~ EXIT
+ ~Global("c#brbok2","GLOBAL",1)~ + ~(You already used the book today. The page can't be turned until after your next rest.)~ EXIT
END

/* Player3 */

/* "c#brboA1" */
IF ~HasItem("c#brboA1",Player3)~ THEN player3_01
SAY ~(You take the Book of Infinite Spells into your hands.)~ [c#ablank]
/* "c#brboA2" */
+ ~!PartyHasItem("c#brboA2") Global("C#Br_BoIS_A2","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Protection From Evil".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brboA1"))
ActionOverride(Player3,DestroyItem("c#brboA1"))
GiveItemCreate("c#brboA2",Player3,1,0,0)~ + book_01
/* "c#brboA3" */
+ ~!PartyHasItem("c#brboA3") Global("C#Br_BoIS_A3","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "True Seeing".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brboA1"))
ActionOverride(Player3,DestroyItem("c#brboA1"))
GiveItemCreate("c#brboA3",Player3,1,0,0)~ + book_01
/* "c#brboA4" */
+ ~!PartyHasItem("c#brboA4") Global("C#Br_BoIS_A4","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Farsight".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brboA1"))
ActionOverride(Player3,DestroyItem("c#brboA1"))
GiveItemCreate("c#brboA4",Player3,1,0,0)~ + book_01
/* "c#brboA5" */
+ ~!PartyHasItem("c#brboA5") Global("C#Br_BoIS_A5","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Spell Turning".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brboA1"))
ActionOverride(Player3,DestroyItem("c#brboA1"))
GiveItemCreate("c#brboA5",Player3,1,0,0)~ + book_01
/* "c#brboA6" */
+ ~!PartyHasItem("c#brboA6") Global("C#Br_BoIS_A6","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Wyvern Call".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brboA1"))
ActionOverride(Player3,DestroyItem("c#brboA1"))
GiveItemCreate("c#brboA6",Player3,1,0,0)~ + book_01
/* "c#brboA7" */
+ ~!PartyHasItem("c#brboA7") Global("C#Br_BoIS_A7","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Stinking Cloud".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brboA1"))
ActionOverride(Player3,DestroyItem("c#brboA1"))
GiveItemCreate("c#brboA7",Player3,1,0,0)~ + book_01
/* "c#brboA8" */
+ ~!PartyHasItem("c#brboA8") Global("C#Br_BoIS_A8","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Lightning Bolt".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brboA1"))
ActionOverride(Player3,DestroyItem("c#brboA1"))
GiveItemCreate("c#brboA8",Player3,1,0,0)~ + book_01
/* "c#brboA9" */
+ ~!PartyHasItem("c#brboA9") Global("C#Br_BoIS_A9","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Burning Hands".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brboA1"))
ActionOverride(Player3,DestroyItem("c#brboA1"))
GiveItemCreate("c#brboA9",Player3,1,0,0)~ + book_01
/* "c#brboAA" */
+ ~!PartyHasItem("c#brboAA") Global("C#Br_BoIS_AA","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Fireball".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brboA1"))
ActionOverride(Player3,DestroyItem("c#brboA1"))
GiveItemCreate("c#brboAA",Player3,1,0,0)~ + book_01
+ ~Global("c#brbok2","GLOBAL",0)~ + ~(You leave the current page with the spell "Invisibility" open and put the book away again.)~ EXIT
+ ~Global("c#brbok2","GLOBAL",1)~ + ~(You already used the book today. The page can't be turned until after your next rest.)~ EXIT
END

/* "c#brboA2" */
IF ~HasItem("c#brboA2",Player3)~ THEN player3_02
SAY ~(You take the Book of Infinite Spells into your hands.)~ [c#ablank]
/* "c#brboA1" */
+ ~!PartyHasItem("c#brboA1") Global("C#Br_BoIS_A1","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Invisibility".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brboA2"))
ActionOverride(Player3,DestroyItem("c#brboA2"))
GiveItemCreate("c#brboA1",Player3,1,0,0)~ + book_01
/* "c#brboA3" */
+ ~!PartyHasItem("c#brboA3") Global("C#Br_BoIS_A3","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "True Seeing".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brboA2"))
ActionOverride(Player3,DestroyItem("c#brboA2"))
GiveItemCreate("c#brboA3",Player3,1,0,0)~ + book_01
/* "c#brboA4" */
+ ~!PartyHasItem("c#brboA4") Global("C#Br_BoIS_A4","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Farsight".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brboA2"))
ActionOverride(Player3,DestroyItem("c#brboA2"))
GiveItemCreate("c#brboA4",Player3,1,0,0)~ + book_01
/* "c#brboA5" */
+ ~!PartyHasItem("c#brboA5") Global("C#Br_BoIS_A5","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Spell Turning".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brboA2"))
ActionOverride(Player3,DestroyItem("c#brboA2"))
GiveItemCreate("c#brboA5",Player3,1,0,0)~ + book_01
/* "c#brboA6" */
+ ~!PartyHasItem("c#brboA6") Global("C#Br_BoIS_A6","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Wyvern Call".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brboA2"))
ActionOverride(Player3,DestroyItem("c#brboA2"))
GiveItemCreate("c#brboA6",Player3,1,0,0)~ + book_01
/* "c#brboA7" */
+ ~!PartyHasItem("c#brboA7") Global("C#Br_BoIS_A7","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Stinking Cloud".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brboA2"))
ActionOverride(Player3,DestroyItem("c#brboA2"))
GiveItemCreate("c#brboA7",Player3,1,0,0)~ + book_01
/* "c#brboA8" */
+ ~!PartyHasItem("c#brboA8") Global("C#Br_BoIS_A8","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Lightning Bolt".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brboA2"))
ActionOverride(Player3,DestroyItem("c#brboA2"))
GiveItemCreate("c#brboA8",Player3,1,0,0)~ + book_01
/* "c#brboA9" */
+ ~!PartyHasItem("c#brboA9") Global("C#Br_BoIS_A9","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Burning Hands".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brboA2"))
ActionOverride(Player3,DestroyItem("c#brboA2"))
GiveItemCreate("c#brboA9",Player3,1,0,0)~ + book_01
/* "c#brboAA" */
+ ~!PartyHasItem("c#brboAA") Global("C#Br_BoIS_AA","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Fireball".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brboA2"))
ActionOverride(Player3,DestroyItem("c#brboA2"))
GiveItemCreate("c#brboAA",Player3,1,0,0)~ + book_01
+ ~Global("c#brbok2","GLOBAL",0)~ + ~(You leave the current page with the spell "Protection From Evil" open and put the book away again.)~ EXIT
+ ~Global("c#brbok2","GLOBAL",1)~ + ~(You already used the book today. The page can't be turned until after your next rest.)~ EXIT
END

/* "c#brboA3" */
IF ~HasItem("c#brboA3",Player3)~ THEN player3_03
SAY ~(You take the Book of Infinite Spells into your hands.)~ [c#ablank]
/* "c#brboA1" */
+ ~!PartyHasItem("c#brboA1") Global("C#Br_BoIS_A1","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Invisibility".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brboA3"))
ActionOverride(Player3,DestroyItem("c#brboA3"))
GiveItemCreate("c#brboA1",Player3,1,0,0)~ + book_01
/* "c#brboA2" */
+ ~!PartyHasItem("c#brboA2") Global("C#Br_BoIS_A2","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Protection From Evil".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brboA3"))
ActionOverride(Player3,DestroyItem("c#brboA3"))
GiveItemCreate("c#brboA2",Player3,1,0,0)~ + book_01
/* "c#brboA4" */
+ ~!PartyHasItem("c#brboA4") Global("C#Br_BoIS_A4","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Farsight".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brboA3"))
ActionOverride(Player3,DestroyItem("c#brboA3"))
GiveItemCreate("c#brboA4",Player3,1,0,0)~ + book_01
/* "c#brboA5" */
+ ~!PartyHasItem("c#brboA5") Global("C#Br_BoIS_A5","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Spell Turning".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brboA3"))
ActionOverride(Player3,DestroyItem("c#brboA3"))
GiveItemCreate("c#brboA5",Player3,1,0,0)~ + book_01
/* "c#brboA6" */
+ ~!PartyHasItem("c#brboA6") Global("C#Br_BoIS_A6","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Wyvern Call".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brboA3"))
ActionOverride(Player3,DestroyItem("c#brboA3"))
GiveItemCreate("c#brboA6",Player3,1,0,0)~ + book_01
/* "c#brboA7" */
+ ~!PartyHasItem("c#brboA7") Global("C#Br_BoIS_A7","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Stinking Cloud".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brboA3"))
ActionOverride(Player3,DestroyItem("c#brboA3"))
GiveItemCreate("c#brboA7",Player3,1,0,0)~ + book_01
/* "c#brboA8" */
+ ~!PartyHasItem("c#brboA8") Global("C#Br_BoIS_A8","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Lightning Bolt".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brboA3"))
ActionOverride(Player3,DestroyItem("c#brboA3"))
GiveItemCreate("c#brboA8",Player3,1,0,0)~ + book_01
/* "c#brboA9" */
+ ~!PartyHasItem("c#brboA9") Global("C#Br_BoIS_A9","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Burning Hands".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brboA3"))
ActionOverride(Player3,DestroyItem("c#brboA3"))
GiveItemCreate("c#brboA9",Player3,1,0,0)~ + book_01
/* "c#brboAA" */
+ ~!PartyHasItem("c#brboAA") Global("C#Br_BoIS_AA","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Fireball".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brboA3"))
ActionOverride(Player3,DestroyItem("c#brboA3"))
GiveItemCreate("c#brboAA",Player3,1,0,0)~ + book_01
+ ~Global("c#brbok2","GLOBAL",0)~ + ~(You leave the current page with the spell "True Seeing" open and put the book away again.)~ EXIT
+ ~Global("c#brbok2","GLOBAL",1)~ + ~(You already used the book today. The page can't be turned until after your next rest.)~ EXIT
END

/* "c#brboA4" */
IF ~HasItem("c#brboA4",Player3)~ THEN player3_04
SAY ~(You take the Book of Infinite Spells into your hands.)~ [c#ablank]
/* "c#brboA1" */
+ ~!PartyHasItem("c#brboA1") Global("C#Br_BoIS_A1","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Invisibility".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brboA4"))
ActionOverride(Player3,DestroyItem("c#brboA4"))
GiveItemCreate("c#brboA1",Player3,1,0,0)~ + book_01
/* "c#brboA2" */
+ ~!PartyHasItem("c#brboA2") Global("C#Br_BoIS_A2","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Protection From Evil".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brboA4"))
ActionOverride(Player3,DestroyItem("c#brboA4"))
GiveItemCreate("c#brboA2",Player3,1,0,0)~ + book_01
/* "c#brboA3" */
+ ~!PartyHasItem("c#brboA3") Global("C#Br_BoIS_A3","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "True Seeing".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brboA4"))
ActionOverride(Player3,DestroyItem("c#brboA4"))
GiveItemCreate("c#brboA3",Player3,1,0,0)~ + book_01
/* "c#brboA5" */
+ ~!PartyHasItem("c#brboA5") Global("C#Br_BoIS_A5","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Spell Turning".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brboA4"))
ActionOverride(Player3,DestroyItem("c#brboA4"))
GiveItemCreate("c#brboA5",Player3,1,0,0)~ + book_01
/* "c#brboA6" */
+ ~!PartyHasItem("c#brboA6") Global("C#Br_BoIS_A6","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Wyvern Call".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brboA4"))
ActionOverride(Player3,DestroyItem("c#brboA4"))
GiveItemCreate("c#brboA6",Player3,1,0,0)~ + book_01
/* "c#brboA7" */
+ ~!PartyHasItem("c#brboA7") Global("C#Br_BoIS_A7","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Stinking Cloud".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brboA4"))
ActionOverride(Player3,DestroyItem("c#brboA4"))
GiveItemCreate("c#brboA7",Player3,1,0,0)~ + book_01
/* "c#brboA8" */
+ ~!PartyHasItem("c#brboA8") Global("C#Br_BoIS_A8","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Lightning Bolt".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brboA4"))
ActionOverride(Player3,DestroyItem("c#brboA4"))
GiveItemCreate("c#brboA8",Player3,1,0,0)~ + book_01
/* "c#brboA9" */
+ ~!PartyHasItem("c#brboA9") Global("C#Br_BoIS_A9","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Burning Hands".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brboA4"))
ActionOverride(Player3,DestroyItem("c#brboA4"))
GiveItemCreate("c#brboA9",Player3,1,0,0)~ + book_01
/* "c#brboAA" */
+ ~!PartyHasItem("c#brboAA") Global("C#Br_BoIS_AA","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Fireball".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brboA4"))
ActionOverride(Player3,DestroyItem("c#brboA4"))
GiveItemCreate("c#brboAA",Player3,1,0,0)~ + book_01
+ ~Global("c#brbok2","GLOBAL",0)~ + ~(You leave the current page with the spell "Farsight" open and put the book away again.)~ EXIT
+ ~Global("c#brbok2","GLOBAL",1)~ + ~(You already used the book today. The page can't be turned until after your next rest.)~ EXIT
END

/* "c#brboA5" */
IF ~HasItem("c#brboA5",Player3)~ THEN player3_05
SAY ~(You take the Book of Infinite Spells into your hands.)~ [c#ablank]
/* "c#brboA1" */
+ ~!PartyHasItem("c#brboA1") Global("C#Br_BoIS_A1","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Invisibility".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brboA5"))
ActionOverride(Player3,DestroyItem("c#brboA5"))
GiveItemCreate("c#brboA1",Player3,1,0,0)~ + book_01
/* "c#brboA2" */
+ ~!PartyHasItem("c#brboA2") Global("C#Br_BoIS_A2","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Protection From Evil".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brboA5"))
ActionOverride(Player3,DestroyItem("c#brboA5"))
GiveItemCreate("c#brboA2",Player3,1,0,0)~ + book_01
/* "c#brboA3" */
+ ~!PartyHasItem("c#brboA3") Global("C#Br_BoIS_A3","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "True Seeing".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brboA5"))
ActionOverride(Player3,DestroyItem("c#brboA5"))
GiveItemCreate("c#brboA3",Player3,1,0,0)~ + book_01
/* "c#brboA4" */
+ ~!PartyHasItem("c#brboA4") Global("C#Br_BoIS_A4","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Farsight".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brboA5"))
ActionOverride(Player3,DestroyItem("c#brboA5"))
GiveItemCreate("c#brboA4",Player3,1,0,0)~ + book_01
/* "c#brboA6" */
+ ~!PartyHasItem("c#brboA6") Global("C#Br_BoIS_A6","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Wyvern Call".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brboA5"))
ActionOverride(Player3,DestroyItem("c#brboA5"))
GiveItemCreate("c#brboA6",Player3,1,0,0)~ + book_01
/* "c#brboA7" */
+ ~!PartyHasItem("c#brboA7") Global("C#Br_BoIS_A7","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Stinking Cloud".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brboA5"))
ActionOverride(Player3,DestroyItem("c#brboA5"))
GiveItemCreate("c#brboA7",Player3,1,0,0)~ + book_01
/* "c#brboA8" */
+ ~!PartyHasItem("c#brboA8") Global("C#Br_BoIS_A8","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Lightning Bolt".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brboA5"))
ActionOverride(Player3,DestroyItem("c#brboA5"))
GiveItemCreate("c#brboA8",Player3,1,0,0)~ + book_01
/* "c#brboA9" */
+ ~!PartyHasItem("c#brboA9") Global("C#Br_BoIS_A9","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Burning Hands".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brboA5"))
ActionOverride(Player3,DestroyItem("c#brboA5"))
GiveItemCreate("c#brboA9",Player3,1,0,0)~ + book_01
/* "c#brboAA" */
+ ~!PartyHasItem("c#brboAA") Global("C#Br_BoIS_AA","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Fireball".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brboA5"))
ActionOverride(Player3,DestroyItem("c#brboA5"))
GiveItemCreate("c#brboAA",Player3,1,0,0)~ + book_01
+ ~Global("c#brbok2","GLOBAL",0)~ + ~(You leave the current page with the spell "Spell Turning" open and put the book away again.)~ EXIT
+ ~Global("c#brbok2","GLOBAL",1)~ + ~(You already used the book today. The page can't be turned until after your next rest.)~ EXIT
END

/* "c#brboA6" */
IF ~HasItem("c#brboA6",Player3)~ THEN player3_06
SAY ~(You take the Book of Infinite Spells into your hands.)~ [c#ablank]
/* "c#brboA1" */
+ ~!PartyHasItem("c#brboA1") Global("C#Br_BoIS_A1","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Invisibility".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brboA6"))
ActionOverride(Player3,DestroyItem("c#brboA6"))
GiveItemCreate("c#brboA1",Player3,1,0,0)~ + book_01
/* "c#brboA2" */
+ ~!PartyHasItem("c#brboA2") Global("C#Br_BoIS_A2","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Protection From Evil".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brboA6"))
ActionOverride(Player3,DestroyItem("c#brboA6"))
GiveItemCreate("c#brboA2",Player3,1,0,0)~ + book_01
/* "c#brboA3" */
+ ~!PartyHasItem("c#brboA3") Global("C#Br_BoIS_A3","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "True Seeing".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brboA6"))
ActionOverride(Player3,DestroyItem("c#brboA6"))
GiveItemCreate("c#brboA3",Player3,1,0,0)~ + book_01
/* "c#brboA4" */
+ ~!PartyHasItem("c#brboA4") Global("C#Br_BoIS_A4","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Farsight".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brboA6"))
ActionOverride(Player3,DestroyItem("c#brboA6"))
GiveItemCreate("c#brboA4",Player3,1,0,0)~ + book_01
/* "c#brboA5" */
+ ~!PartyHasItem("c#brboA5") Global("C#Br_BoIS_A5","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Spell Turning".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brboA6"))
ActionOverride(Player3,DestroyItem("c#brboA6"))
GiveItemCreate("c#brboA5",Player3,1,0,0)~ + book_01
/* "c#brboA7" */
+ ~!PartyHasItem("c#brboA7") Global("C#Br_BoIS_A7","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Stinking Cloud".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brboA6"))
ActionOverride(Player3,DestroyItem("c#brboA6"))
GiveItemCreate("c#brboA7",Player3,1,0,0)~ + book_01
/* "c#brboA8" */
+ ~!PartyHasItem("c#brboA8") Global("C#Br_BoIS_A8","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Lightning Bolt".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brboA6"))
ActionOverride(Player3,DestroyItem("c#brboA6"))
GiveItemCreate("c#brboA8",Player3,1,0,0)~ + book_01
/* "c#brboA9" */
+ ~!PartyHasItem("c#brboA9") Global("C#Br_BoIS_A9","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Burning Hands".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brboA6"))
ActionOverride(Player3,DestroyItem("c#brboA6"))
GiveItemCreate("c#brboA9",Player3,1,0,0)~ + book_01
/* "c#brboAA" */
+ ~!PartyHasItem("c#brboAA") Global("C#Br_BoIS_AA","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Fireball".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brboA6"))
ActionOverride(Player3,DestroyItem("c#brboA6"))
GiveItemCreate("c#brboAA",Player3,1,0,0)~ + book_01
+ ~Global("c#brbok2","GLOBAL",0)~ + ~(You leave the current page with the spell "Wyvern Call" open and put the book away again.)~ EXIT
+ ~Global("c#brbok2","GLOBAL",1)~ + ~(You already used the book today. The page can't be turned until after your next rest.)~ EXIT
END

/* "c#brboA7" */
IF ~HasItem("c#brboA7",Player3)~ THEN player3_07
SAY ~(You take the Book of Infinite Spells into your hands.)~ [c#ablank]
/* "c#brboA1" */
+ ~!PartyHasItem("c#brboA1") Global("C#Br_BoIS_A1","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Invisibility".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brboA7"))
ActionOverride(Player3,DestroyItem("c#brboA7"))
GiveItemCreate("c#brboA1",Player3,1,0,0)~ + book_01
/* "c#brboA2" */
+ ~!PartyHasItem("c#brboA2") Global("C#Br_BoIS_A2","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Protection From Evil".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brboA7"))
ActionOverride(Player3,DestroyItem("c#brboA7"))
GiveItemCreate("c#brboA2",Player3,1,0,0)~ + book_01
/* "c#brboA3" */
+ ~!PartyHasItem("c#brboA3") Global("C#Br_BoIS_A3","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "True Seeing".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brboA7"))
ActionOverride(Player3,DestroyItem("c#brboA7"))
GiveItemCreate("c#brboA3",Player3,1,0,0)~ + book_01
/* "c#brboA4" */
+ ~!PartyHasItem("c#brboA4") Global("C#Br_BoIS_A4","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Farsight".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brboA7"))
ActionOverride(Player3,DestroyItem("c#brboA7"))
GiveItemCreate("c#brboA4",Player3,1,0,0)~ + book_01
/* "c#brboA5" */
+ ~!PartyHasItem("c#brboA5") Global("C#Br_BoIS_A5","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Spell Turning".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brboA7"))
ActionOverride(Player3,DestroyItem("c#brboA7"))
GiveItemCreate("c#brboA5",Player3,1,0,0)~ + book_01
/* "c#brboA6" */
+ ~!PartyHasItem("c#brboA6") Global("C#Br_BoIS_A6","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Wyvern Call".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brboA7"))
ActionOverride(Player3,DestroyItem("c#brboA7"))
GiveItemCreate("c#brboA6",Player3,1,0,0)~ + book_01
/* "c#brboA8" */
+ ~!PartyHasItem("c#brboA8") Global("C#Br_BoIS_A8","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Lightning Bolt".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brboA7"))
ActionOverride(Player3,DestroyItem("c#brboA7"))
GiveItemCreate("c#brboA8",Player3,1,0,0)~ + book_01
/* "c#brboA9" */
+ ~!PartyHasItem("c#brboA9") Global("C#Br_BoIS_A9","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Burning Hands".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brboA7"))
ActionOverride(Player3,DestroyItem("c#brboA7"))
GiveItemCreate("c#brboA9",Player3,1,0,0)~ + book_01
/* "c#brboAA" */
+ ~!PartyHasItem("c#brboAA") Global("C#Br_BoIS_AA","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Fireball".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brboA7"))
ActionOverride(Player3,DestroyItem("c#brboA7"))
GiveItemCreate("c#brboAA",Player3,1,0,0)~ + book_01
+ ~Global("c#brbok2","GLOBAL",0)~ + ~(You leave the current page with the spell "Stinking Cloud" open and put the book away again.)~ EXIT
+ ~Global("c#brbok2","GLOBAL",1)~ + ~(You already used the book today. The page can't be turned until after your next rest.)~ EXIT
END

/* "c#brboA8" */
IF ~HasItem("c#brboA8",Player3)~ THEN player3_08
SAY ~(You take the Book of Infinite Spells into your hands.)~ [c#ablank]
/* "c#brboA1" */
+ ~!PartyHasItem("c#brboA1") Global("C#Br_BoIS_A1","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Invisibility".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brboA8"))
ActionOverride(Player3,DestroyItem("c#brboA8"))
GiveItemCreate("c#brboA1",Player3,1,0,0)~ + book_01
/* "c#brboA2" */
+ ~!PartyHasItem("c#brboA2") Global("C#Br_BoIS_A2","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Protection From Evil".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brboA8"))
ActionOverride(Player3,DestroyItem("c#brboA8"))
GiveItemCreate("c#brboA2",Player3,1,0,0)~ + book_01
/* "c#brboA3" */
+ ~!PartyHasItem("c#brboA3") Global("C#Br_BoIS_A3","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "True Seeing".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brboA8"))
ActionOverride(Player3,DestroyItem("c#brboA8"))
GiveItemCreate("c#brboA3",Player3,1,0,0)~ + book_01
/* "c#brboA4" */
+ ~!PartyHasItem("c#brboA4") Global("C#Br_BoIS_A4","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Farsight".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brboA8"))
ActionOverride(Player3,DestroyItem("c#brboA8"))
GiveItemCreate("c#brboA4",Player3,1,0,0)~ + book_01
/* "c#brboA5" */
+ ~!PartyHasItem("c#brboA5") Global("C#Br_BoIS_A5","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Spell Turning".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brboA8"))
ActionOverride(Player3,DestroyItem("c#brboA8"))
GiveItemCreate("c#brboA5",Player3,1,0,0)~ + book_01
/* "c#brboA6" */
+ ~!PartyHasItem("c#brboA6") Global("C#Br_BoIS_A6","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Wyvern Call".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brboA8"))
ActionOverride(Player3,DestroyItem("c#brboA8"))
GiveItemCreate("c#brboA6",Player3,1,0,0)~ + book_01
/* "c#brboA7" */
+ ~!PartyHasItem("c#brboA7") Global("C#Br_BoIS_A7","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Stinking Cloud".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brboA8"))
ActionOverride(Player3,DestroyItem("c#brboA8"))
GiveItemCreate("c#brboA7",Player3,1,0,0)~ + book_01
/* "c#brboA9" */
+ ~!PartyHasItem("c#brboA9") Global("C#Br_BoIS_A9","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Burning Hands".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brboA8"))
ActionOverride(Player3,DestroyItem("c#brboA8"))
GiveItemCreate("c#brboA9",Player3,1,0,0)~ + book_01
/* "c#brboAA" */
+ ~!PartyHasItem("c#brboAA") Global("C#Br_BoIS_AA","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Fireball".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brboA8"))
ActionOverride(Player3,DestroyItem("c#brboA8"))
GiveItemCreate("c#brboAA",Player3,1,0,0)~ + book_01
+ ~Global("c#brbok2","GLOBAL",0)~ + ~(You leave the current page with the spell "Lightning Bolt" open and put the book away again.)~ EXIT
+ ~Global("c#brbok2","GLOBAL",1)~ + ~(You already used the book today. The page can't be turned until after your next rest.)~ EXIT
END

/* "c#brboA9" */
IF ~HasItem("c#brboA9",Player3)~ THEN player3_09
SAY ~(You take the Book of Infinite Spells into your hands.)~ [c#ablank]
/* "c#brboA1" */
+ ~!PartyHasItem("c#brboA1") Global("C#Br_BoIS_A1","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Invisibility".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brboA9"))
ActionOverride(Player3,DestroyItem("c#brboA9"))
GiveItemCreate("c#brboA1",Player3,1,0,0)~ + book_01
/* "c#brboA2" */
+ ~!PartyHasItem("c#brboA2") Global("C#Br_BoIS_A2","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Protection From Evil".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brboA9"))
ActionOverride(Player3,DestroyItem("c#brboA9"))
GiveItemCreate("c#brboA2",Player3,1,0,0)~ + book_01
/* "c#brboA3" */
+ ~!PartyHasItem("c#brboA3") Global("C#Br_BoIS_A3","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "True Seeing".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brboA9"))
ActionOverride(Player3,DestroyItem("c#brboA9"))
GiveItemCreate("c#brboA3",Player3,1,0,0)~ + book_01
/* "c#brboA4" */
+ ~!PartyHasItem("c#brboA4") Global("C#Br_BoIS_A4","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Farsight".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brboA9"))
ActionOverride(Player3,DestroyItem("c#brboA9"))
GiveItemCreate("c#brboA4",Player3,1,0,0)~ + book_01
/* "c#brboA5" */
+ ~!PartyHasItem("c#brboA5") Global("C#Br_BoIS_A5","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Spell Turning".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brboA9"))
ActionOverride(Player3,DestroyItem("c#brboA9"))
GiveItemCreate("c#brboA5",Player3,1,0,0)~ + book_01
/* "c#brboA6" */
+ ~!PartyHasItem("c#brboA6") Global("C#Br_BoIS_A6","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Wyvern Call".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brboA9"))
ActionOverride(Player3,DestroyItem("c#brboA9"))
GiveItemCreate("c#brboA6",Player3,1,0,0)~ + book_01
/* "c#brboA7" */
+ ~!PartyHasItem("c#brboA7") Global("C#Br_BoIS_A7","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Stinking Cloud".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brboA9"))
ActionOverride(Player3,DestroyItem("c#brboA9"))
GiveItemCreate("c#brboA7",Player3,1,0,0)~ + book_01
/* "c#brboA8" */
+ ~!PartyHasItem("c#brboA8") Global("C#Br_BoIS_A8","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Lightning Bolt".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brboA9"))
ActionOverride(Player3,DestroyItem("c#brboA9"))
GiveItemCreate("c#brboA8",Player3,1,0,0)~ + book_01
/* "c#brboAA" */
+ ~!PartyHasItem("c#brboAA") Global("C#Br_BoIS_AA","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Fireball".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brboA9"))
ActionOverride(Player3,DestroyItem("c#brboA9"))
GiveItemCreate("c#brboAA",Player3,1,0,0)~ + book_01
+ ~Global("c#brbok2","GLOBAL",0)~ + ~(You leave the current page with the spell "Burning Hands" open and put the book away again.)~ EXIT
+ ~Global("c#brbok2","GLOBAL",1)~ + ~(You already used the book today. The page can't be turned until after your next rest.)~ EXIT
END

/* "c#brboAA" */
IF ~HasItem("c#brboAA",Player3)~ THEN player3_10
SAY ~(You take the Book of Infinite Spells into your hands.)~ [c#ablank]
/* "c#brboA1" */
+ ~!PartyHasItem("c#brboA1") Global("C#Br_BoIS_A1","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Invisibility".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brboAA"))
ActionOverride(Player3,DestroyItem("c#brboAA"))
GiveItemCreate("c#brboA1",Player3,1,0,0)~ + book_01
/* "c#brboA2" */
+ ~!PartyHasItem("c#brboA2") Global("C#Br_BoIS_A2","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Protection From Evil".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brboAA"))
ActionOverride(Player3,DestroyItem("c#brboAA"))
GiveItemCreate("c#brboA2",Player3,1,0,0)~ + book_01
/* "c#brboA3" */
+ ~!PartyHasItem("c#brboA3") Global("C#Br_BoIS_A3","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "True Seeing".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brboAA"))
ActionOverride(Player3,DestroyItem("c#brboAA"))
GiveItemCreate("c#brboA3",Player3,1,0,0)~ + book_01
/* "c#brboA4" */
+ ~!PartyHasItem("c#brboA4") Global("C#Br_BoIS_A4","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Farsight".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brboAA"))
ActionOverride(Player3,DestroyItem("c#brboAA"))
GiveItemCreate("c#brboA4",Player3,1,0,0)~ + book_01
/* "c#brboA5" */
+ ~!PartyHasItem("c#brboA5") Global("C#Br_BoIS_A5","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Spell Turning".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brboAA"))
ActionOverride(Player3,DestroyItem("c#brboAA"))
GiveItemCreate("c#brboA5",Player3,1,0,0)~ + book_01
/* "c#brboA6" */
+ ~!PartyHasItem("c#brboA6") Global("C#Br_BoIS_A6","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Wyvern Call".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brboAA"))
ActionOverride(Player3,DestroyItem("c#brboAA"))
GiveItemCreate("c#brboA6",Player3,1,0,0)~ + book_01
/* "c#brboA7" */
+ ~!PartyHasItem("c#brboA7") Global("C#Br_BoIS_A7","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Stinking Cloud".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brboAA"))
ActionOverride(Player3,DestroyItem("c#brboAA"))
GiveItemCreate("c#brboA7",Player3,1,0,0)~ + book_01
/* "c#brboA8" */
+ ~!PartyHasItem("c#brboA8") Global("C#Br_BoIS_A8","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Lightning Bolt".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brboAA"))
ActionOverride(Player3,DestroyItem("c#brboAA"))
GiveItemCreate("c#brboA8",Player3,1,0,0)~ + book_01
/* "c#brboAA" */
+ ~!PartyHasItem("c#brboA9") Global("C#Br_BoIS_A9","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Burning Hands".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brboAA"))
ActionOverride(Player3,DestroyItem("c#brboAA"))
GiveItemCreate("c#brboA9",Player3,1,0,0)~ + book_01
+ ~Global("c#brbok2","GLOBAL",0)~ + ~(You leave the current page with the spell "Fireball" open and put the book away again.)~ EXIT
+ ~Global("c#brbok2","GLOBAL",1)~ + ~(You already used the book today. The page can't be turned until after your next rest.)~ EXIT
END

/* Player4 */

/* "c#brboA1" */
IF ~HasItem("c#brboA1",Player4)~ THEN player4_01
SAY ~(You take the Book of Infinite Spells into your hands.)~ [c#ablank]
/* "c#brboA2" */
+ ~!PartyHasItem("c#brboA2") Global("C#Br_BoIS_A2","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Protection From Evil".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brboA1"))
ActionOverride(Player4,DestroyItem("c#brboA1"))
GiveItemCreate("c#brboA2",Player4,1,0,0)~ + book_01
/* "c#brboA3" */
+ ~!PartyHasItem("c#brboA3") Global("C#Br_BoIS_A3","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "True Seeing".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brboA1"))
ActionOverride(Player4,DestroyItem("c#brboA1"))
GiveItemCreate("c#brboA3",Player4,1,0,0)~ + book_01
/* "c#brboA4" */
+ ~!PartyHasItem("c#brboA4") Global("C#Br_BoIS_A4","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Farsight".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brboA1"))
ActionOverride(Player4,DestroyItem("c#brboA1"))
GiveItemCreate("c#brboA4",Player4,1,0,0)~ + book_01
/* "c#brboA5" */
+ ~!PartyHasItem("c#brboA5") Global("C#Br_BoIS_A5","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Spell Turning".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brboA1"))
ActionOverride(Player4,DestroyItem("c#brboA1"))
GiveItemCreate("c#brboA5",Player4,1,0,0)~ + book_01
/* "c#brboA6" */
+ ~!PartyHasItem("c#brboA6") Global("C#Br_BoIS_A6","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Wyvern Call".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brboA1"))
ActionOverride(Player4,DestroyItem("c#brboA1"))
GiveItemCreate("c#brboA6",Player4,1,0,0)~ + book_01
/* "c#brboA7" */
+ ~!PartyHasItem("c#brboA7") Global("C#Br_BoIS_A7","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Stinking Cloud".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brboA1"))
ActionOverride(Player4,DestroyItem("c#brboA1"))
GiveItemCreate("c#brboA7",Player4,1,0,0)~ + book_01
/* "c#brboA8" */
+ ~!PartyHasItem("c#brboA8") Global("C#Br_BoIS_A8","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Lightning Bolt".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brboA1"))
ActionOverride(Player4,DestroyItem("c#brboA1"))
GiveItemCreate("c#brboA8",Player4,1,0,0)~ + book_01
/* "c#brboA9" */
+ ~!PartyHasItem("c#brboA9") Global("C#Br_BoIS_A9","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Burning Hands".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brboA1"))
ActionOverride(Player4,DestroyItem("c#brboA1"))
GiveItemCreate("c#brboA9",Player4,1,0,0)~ + book_01
/* "c#brboAA" */
+ ~!PartyHasItem("c#brboAA") Global("C#Br_BoIS_AA","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Fireball".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brboA1"))
ActionOverride(Player4,DestroyItem("c#brboA1"))
GiveItemCreate("c#brboAA",Player4,1,0,0)~ + book_01
+ ~Global("c#brbok2","GLOBAL",0)~ + ~(You leave the current page with the spell "Invisibility" open and put the book away again.)~ EXIT
+ ~Global("c#brbok2","GLOBAL",1)~ + ~(You already used the book today. The page can't be turned until after your next rest.)~ EXIT
END

/* "c#brboA2" */
IF ~HasItem("c#brboA2",Player4)~ THEN player4_02
SAY ~(You take the Book of Infinite Spells into your hands.)~ [c#ablank]
/* "c#brboA1" */
+ ~!PartyHasItem("c#brboA1") Global("C#Br_BoIS_A1","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Invisibility".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brboA2"))
ActionOverride(Player4,DestroyItem("c#brboA2"))
GiveItemCreate("c#brboA1",Player4,1,0,0)~ + book_01
/* "c#brboA3" */
+ ~!PartyHasItem("c#brboA3") Global("C#Br_BoIS_A3","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "True Seeing".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brboA2"))
ActionOverride(Player4,DestroyItem("c#brboA2"))
GiveItemCreate("c#brboA3",Player4,1,0,0)~ + book_01
/* "c#brboA4" */
+ ~!PartyHasItem("c#brboA4") Global("C#Br_BoIS_A4","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Farsight".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brboA2"))
ActionOverride(Player4,DestroyItem("c#brboA2"))
GiveItemCreate("c#brboA4",Player4,1,0,0)~ + book_01
/* "c#brboA5" */
+ ~!PartyHasItem("c#brboA5") Global("C#Br_BoIS_A5","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Spell Turning".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brboA2"))
ActionOverride(Player4,DestroyItem("c#brboA2"))
GiveItemCreate("c#brboA5",Player4,1,0,0)~ + book_01
/* "c#brboA6" */
+ ~!PartyHasItem("c#brboA6") Global("C#Br_BoIS_A6","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Wyvern Call".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brboA2"))
ActionOverride(Player4,DestroyItem("c#brboA2"))
GiveItemCreate("c#brboA6",Player4,1,0,0)~ + book_01
/* "c#brboA7" */
+ ~!PartyHasItem("c#brboA7") Global("C#Br_BoIS_A7","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Stinking Cloud".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brboA2"))
ActionOverride(Player4,DestroyItem("c#brboA2"))
GiveItemCreate("c#brboA7",Player4,1,0,0)~ + book_01
/* "c#brboA8" */
+ ~!PartyHasItem("c#brboA8") Global("C#Br_BoIS_A8","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Lightning Bolt".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brboA2"))
ActionOverride(Player4,DestroyItem("c#brboA2"))
GiveItemCreate("c#brboA8",Player4,1,0,0)~ + book_01
/* "c#brboA9" */
+ ~!PartyHasItem("c#brboA9") Global("C#Br_BoIS_A9","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Burning Hands".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brboA2"))
ActionOverride(Player4,DestroyItem("c#brboA2"))
GiveItemCreate("c#brboA9",Player4,1,0,0)~ + book_01
/* "c#brboAA" */
+ ~!PartyHasItem("c#brboAA") Global("C#Br_BoIS_AA","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Fireball".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brboA2"))
ActionOverride(Player4,DestroyItem("c#brboA2"))
GiveItemCreate("c#brboAA",Player4,1,0,0)~ + book_01
+ ~Global("c#brbok2","GLOBAL",0)~ + ~(You leave the current page with the spell "Protection From Evil" open and put the book away again.)~ EXIT
+ ~Global("c#brbok2","GLOBAL",1)~ + ~(You already used the book today. The page can't be turned until after your next rest.)~ EXIT
END

/* "c#brboA3" */
IF ~HasItem("c#brboA3",Player4)~ THEN player4_03
SAY ~(You take the Book of Infinite Spells into your hands.)~ [c#ablank]
/* "c#brboA1" */
+ ~!PartyHasItem("c#brboA1") Global("C#Br_BoIS_A1","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Invisibility".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brboA3"))
ActionOverride(Player4,DestroyItem("c#brboA3"))
GiveItemCreate("c#brboA1",Player4,1,0,0)~ + book_01
/* "c#brboA2" */
+ ~!PartyHasItem("c#brboA2") Global("C#Br_BoIS_A2","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Protection From Evil".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brboA3"))
ActionOverride(Player4,DestroyItem("c#brboA3"))
GiveItemCreate("c#brboA2",Player4,1,0,0)~ + book_01
/* "c#brboA4" */
+ ~!PartyHasItem("c#brboA4") Global("C#Br_BoIS_A4","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Farsight".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brboA3"))
ActionOverride(Player4,DestroyItem("c#brboA3"))
GiveItemCreate("c#brboA4",Player4,1,0,0)~ + book_01
/* "c#brboA5" */
+ ~!PartyHasItem("c#brboA5") Global("C#Br_BoIS_A5","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Spell Turning".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brboA3"))
ActionOverride(Player4,DestroyItem("c#brboA3"))
GiveItemCreate("c#brboA5",Player4,1,0,0)~ + book_01
/* "c#brboA6" */
+ ~!PartyHasItem("c#brboA6") Global("C#Br_BoIS_A6","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Wyvern Call".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brboA3"))
ActionOverride(Player4,DestroyItem("c#brboA3"))
GiveItemCreate("c#brboA6",Player4,1,0,0)~ + book_01
/* "c#brboA7" */
+ ~!PartyHasItem("c#brboA7") Global("C#Br_BoIS_A7","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Stinking Cloud".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brboA3"))
ActionOverride(Player4,DestroyItem("c#brboA3"))
GiveItemCreate("c#brboA7",Player4,1,0,0)~ + book_01
/* "c#brboA8" */
+ ~!PartyHasItem("c#brboA8") Global("C#Br_BoIS_A8","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Lightning Bolt".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brboA3"))
ActionOverride(Player4,DestroyItem("c#brboA3"))
GiveItemCreate("c#brboA8",Player4,1,0,0)~ + book_01
/* "c#brboA9" */
+ ~!PartyHasItem("c#brboA9") Global("C#Br_BoIS_A9","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Burning Hands".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brboA3"))
ActionOverride(Player4,DestroyItem("c#brboA3"))
GiveItemCreate("c#brboA9",Player4,1,0,0)~ + book_01
/* "c#brboAA" */
+ ~!PartyHasItem("c#brboAA") Global("C#Br_BoIS_AA","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Fireball".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brboA3"))
ActionOverride(Player4,DestroyItem("c#brboA3"))
GiveItemCreate("c#brboAA",Player4,1,0,0)~ + book_01
+ ~Global("c#brbok2","GLOBAL",0)~ + ~(You leave the current page with the spell "True Seeing" open and put the book away again.)~ EXIT
+ ~Global("c#brbok2","GLOBAL",1)~ + ~(You already used the book today. The page can't be turned until after your next rest.)~ EXIT
END

/* "c#brboA4" */
IF ~HasItem("c#brboA4",Player4)~ THEN player4_04
SAY ~(You take the Book of Infinite Spells into your hands.)~ [c#ablank]
/* "c#brboA1" */
+ ~!PartyHasItem("c#brboA1") Global("C#Br_BoIS_A1","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Invisibility".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brboA4"))
ActionOverride(Player4,DestroyItem("c#brboA4"))
GiveItemCreate("c#brboA1",Player4,1,0,0)~ + book_01
/* "c#brboA2" */
+ ~!PartyHasItem("c#brboA2") Global("C#Br_BoIS_A2","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Protection From Evil".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brboA4"))
ActionOverride(Player4,DestroyItem("c#brboA4"))
GiveItemCreate("c#brboA2",Player4,1,0,0)~ + book_01
/* "c#brboA3" */
+ ~!PartyHasItem("c#brboA3") Global("C#Br_BoIS_A3","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "True Seeing".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brboA4"))
ActionOverride(Player4,DestroyItem("c#brboA4"))
GiveItemCreate("c#brboA3",Player4,1,0,0)~ + book_01
/* "c#brboA5" */
+ ~!PartyHasItem("c#brboA5") Global("C#Br_BoIS_A5","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Spell Turning".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brboA4"))
ActionOverride(Player4,DestroyItem("c#brboA4"))
GiveItemCreate("c#brboA5",Player4,1,0,0)~ + book_01
/* "c#brboA6" */
+ ~!PartyHasItem("c#brboA6") Global("C#Br_BoIS_A6","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Wyvern Call".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brboA4"))
ActionOverride(Player4,DestroyItem("c#brboA4"))
GiveItemCreate("c#brboA6",Player4,1,0,0)~ + book_01
/* "c#brboA7" */
+ ~!PartyHasItem("c#brboA7") Global("C#Br_BoIS_A7","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Stinking Cloud".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brboA4"))
ActionOverride(Player4,DestroyItem("c#brboA4"))
GiveItemCreate("c#brboA7",Player4,1,0,0)~ + book_01
/* "c#brboA8" */
+ ~!PartyHasItem("c#brboA8") Global("C#Br_BoIS_A8","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Lightning Bolt".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brboA4"))
ActionOverride(Player4,DestroyItem("c#brboA4"))
GiveItemCreate("c#brboA8",Player4,1,0,0)~ + book_01
/* "c#brboA9" */
+ ~!PartyHasItem("c#brboA9") Global("C#Br_BoIS_A9","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Burning Hands".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brboA4"))
ActionOverride(Player4,DestroyItem("c#brboA4"))
GiveItemCreate("c#brboA9",Player4,1,0,0)~ + book_01
/* "c#brboAA" */
+ ~!PartyHasItem("c#brboAA") Global("C#Br_BoIS_AA","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Fireball".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brboA4"))
ActionOverride(Player4,DestroyItem("c#brboA4"))
GiveItemCreate("c#brboAA",Player4,1,0,0)~ + book_01
+ ~Global("c#brbok2","GLOBAL",0)~ + ~(You leave the current page with the spell "Farsight" open and put the book away again.)~ EXIT
+ ~Global("c#brbok2","GLOBAL",1)~ + ~(You already used the book today. The page can't be turned until after your next rest.)~ EXIT
END

/* "c#brboA5" */
IF ~HasItem("c#brboA5",Player4)~ THEN player4_05
SAY ~(You take the Book of Infinite Spells into your hands.)~ [c#ablank]
/* "c#brboA1" */
+ ~!PartyHasItem("c#brboA1") Global("C#Br_BoIS_A1","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Invisibility".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brboA5"))
ActionOverride(Player4,DestroyItem("c#brboA5"))
GiveItemCreate("c#brboA1",Player4,1,0,0)~ + book_01
/* "c#brboA2" */
+ ~!PartyHasItem("c#brboA2") Global("C#Br_BoIS_A2","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Protection From Evil".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brboA5"))
ActionOverride(Player4,DestroyItem("c#brboA5"))
GiveItemCreate("c#brboA2",Player4,1,0,0)~ + book_01
/* "c#brboA3" */
+ ~!PartyHasItem("c#brboA3") Global("C#Br_BoIS_A3","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "True Seeing".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brboA5"))
ActionOverride(Player4,DestroyItem("c#brboA5"))
GiveItemCreate("c#brboA3",Player4,1,0,0)~ + book_01
/* "c#brboA4" */
+ ~!PartyHasItem("c#brboA4") Global("C#Br_BoIS_A4","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Farsight".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brboA5"))
ActionOverride(Player4,DestroyItem("c#brboA5"))
GiveItemCreate("c#brboA4",Player4,1,0,0)~ + book_01
/* "c#brboA6" */
+ ~!PartyHasItem("c#brboA6") Global("C#Br_BoIS_A6","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Wyvern Call".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brboA5"))
ActionOverride(Player4,DestroyItem("c#brboA5"))
GiveItemCreate("c#brboA6",Player4,1,0,0)~ + book_01
/* "c#brboA7" */
+ ~!PartyHasItem("c#brboA7") Global("C#Br_BoIS_A7","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Stinking Cloud".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brboA5"))
ActionOverride(Player4,DestroyItem("c#brboA5"))
GiveItemCreate("c#brboA7",Player4,1,0,0)~ + book_01
/* "c#brboA8" */
+ ~!PartyHasItem("c#brboA8") Global("C#Br_BoIS_A8","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Lightning Bolt".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brboA5"))
ActionOverride(Player4,DestroyItem("c#brboA5"))
GiveItemCreate("c#brboA8",Player4,1,0,0)~ + book_01
/* "c#brboA9" */
+ ~!PartyHasItem("c#brboA9") Global("C#Br_BoIS_A9","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Burning Hands".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brboA5"))
ActionOverride(Player4,DestroyItem("c#brboA5"))
GiveItemCreate("c#brboA9",Player4,1,0,0)~ + book_01
/* "c#brboAA" */
+ ~!PartyHasItem("c#brboAA") Global("C#Br_BoIS_AA","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Fireball".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brboA5"))
ActionOverride(Player4,DestroyItem("c#brboA5"))
GiveItemCreate("c#brboAA",Player4,1,0,0)~ + book_01
+ ~Global("c#brbok2","GLOBAL",0)~ + ~(You leave the current page with the spell "Spell Turning" open and put the book away again.)~ EXIT
+ ~Global("c#brbok2","GLOBAL",1)~ + ~(You already used the book today. The page can't be turned until after your next rest.)~ EXIT
END

/* "c#brboA6" */
IF ~HasItem("c#brboA6",Player4)~ THEN player4_06
SAY ~(You take the Book of Infinite Spells into your hands.)~ [c#ablank]
/* "c#brboA1" */
+ ~!PartyHasItem("c#brboA1") Global("C#Br_BoIS_A1","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Invisibility".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brboA6"))
ActionOverride(Player4,DestroyItem("c#brboA6"))
GiveItemCreate("c#brboA1",Player4,1,0,0)~ + book_01
/* "c#brboA2" */
+ ~!PartyHasItem("c#brboA2") Global("C#Br_BoIS_A2","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Protection From Evil".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brboA6"))
ActionOverride(Player4,DestroyItem("c#brboA6"))
GiveItemCreate("c#brboA2",Player4,1,0,0)~ + book_01
/* "c#brboA3" */
+ ~!PartyHasItem("c#brboA3") Global("C#Br_BoIS_A3","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "True Seeing".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brboA6"))
ActionOverride(Player4,DestroyItem("c#brboA6"))
GiveItemCreate("c#brboA3",Player4,1,0,0)~ + book_01
/* "c#brboA4" */
+ ~!PartyHasItem("c#brboA4") Global("C#Br_BoIS_A4","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Farsight".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brboA6"))
ActionOverride(Player4,DestroyItem("c#brboA6"))
GiveItemCreate("c#brboA4",Player4,1,0,0)~ + book_01
/* "c#brboA5" */
+ ~!PartyHasItem("c#brboA5") Global("C#Br_BoIS_A5","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Spell Turning".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brboA6"))
ActionOverride(Player4,DestroyItem("c#brboA6"))
GiveItemCreate("c#brboA5",Player4,1,0,0)~ + book_01
/* "c#brboA7" */
+ ~!PartyHasItem("c#brboA7") Global("C#Br_BoIS_A7","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Stinking Cloud".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brboA6"))
ActionOverride(Player4,DestroyItem("c#brboA6"))
GiveItemCreate("c#brboA7",Player4,1,0,0)~ + book_01
/* "c#brboA8" */
+ ~!PartyHasItem("c#brboA8") Global("C#Br_BoIS_A8","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Lightning Bolt".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brboA6"))
ActionOverride(Player4,DestroyItem("c#brboA6"))
GiveItemCreate("c#brboA8",Player4,1,0,0)~ + book_01
/* "c#brboA9" */
+ ~!PartyHasItem("c#brboA9") Global("C#Br_BoIS_A9","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Burning Hands".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brboA6"))
ActionOverride(Player4,DestroyItem("c#brboA6"))
GiveItemCreate("c#brboA9",Player4,1,0,0)~ + book_01
/* "c#brboAA" */
+ ~!PartyHasItem("c#brboAA") Global("C#Br_BoIS_AA","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Fireball".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brboA6"))
ActionOverride(Player4,DestroyItem("c#brboA6"))
GiveItemCreate("c#brboAA",Player4,1,0,0)~ + book_01
+ ~Global("c#brbok2","GLOBAL",0)~ + ~(You leave the current page with the spell "Wyvern Call" open and put the book away again.)~ EXIT
+ ~Global("c#brbok2","GLOBAL",1)~ + ~(You already used the book today. The page can't be turned until after your next rest.)~ EXIT
END

/* "c#brboA7" */
IF ~HasItem("c#brboA7",Player4)~ THEN player4_07
SAY ~(You take the Book of Infinite Spells into your hands.)~ [c#ablank]
/* "c#brboA1" */
+ ~!PartyHasItem("c#brboA1") Global("C#Br_BoIS_A1","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Invisibility".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brboA7"))
ActionOverride(Player4,DestroyItem("c#brboA7"))
GiveItemCreate("c#brboA1",Player4,1,0,0)~ + book_01
/* "c#brboA2" */
+ ~!PartyHasItem("c#brboA2") Global("C#Br_BoIS_A2","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Protection From Evil".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brboA7"))
ActionOverride(Player4,DestroyItem("c#brboA7"))
GiveItemCreate("c#brboA2",Player4,1,0,0)~ + book_01
/* "c#brboA3" */
+ ~!PartyHasItem("c#brboA3") Global("C#Br_BoIS_A3","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "True Seeing".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brboA7"))
ActionOverride(Player4,DestroyItem("c#brboA7"))
GiveItemCreate("c#brboA3",Player4,1,0,0)~ + book_01
/* "c#brboA4" */
+ ~!PartyHasItem("c#brboA4") Global("C#Br_BoIS_A4","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Farsight".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brboA7"))
ActionOverride(Player4,DestroyItem("c#brboA7"))
GiveItemCreate("c#brboA4",Player4,1,0,0)~ + book_01
/* "c#brboA5" */
+ ~!PartyHasItem("c#brboA5") Global("C#Br_BoIS_A5","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Spell Turning".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brboA7"))
ActionOverride(Player4,DestroyItem("c#brboA7"))
GiveItemCreate("c#brboA5",Player4,1,0,0)~ + book_01
/* "c#brboA6" */
+ ~!PartyHasItem("c#brboA6") Global("C#Br_BoIS_A6","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Wyvern Call".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brboA7"))
ActionOverride(Player4,DestroyItem("c#brboA7"))
GiveItemCreate("c#brboA6",Player4,1,0,0)~ + book_01
/* "c#brboA8" */
+ ~!PartyHasItem("c#brboA8") Global("C#Br_BoIS_A8","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Lightning Bolt".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brboA7"))
ActionOverride(Player4,DestroyItem("c#brboA7"))
GiveItemCreate("c#brboA8",Player4,1,0,0)~ + book_01
/* "c#brboA9" */
+ ~!PartyHasItem("c#brboA9") Global("C#Br_BoIS_A9","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Burning Hands".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brboA7"))
ActionOverride(Player4,DestroyItem("c#brboA7"))
GiveItemCreate("c#brboA9",Player4,1,0,0)~ + book_01
/* "c#brboAA" */
+ ~!PartyHasItem("c#brboAA") Global("C#Br_BoIS_AA","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Fireball".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brboA7"))
ActionOverride(Player4,DestroyItem("c#brboA7"))
GiveItemCreate("c#brboAA",Player4,1,0,0)~ + book_01
+ ~Global("c#brbok2","GLOBAL",0)~ + ~(You leave the current page with the spell "Stinking Cloud" open and put the book away again.)~ EXIT
+ ~Global("c#brbok2","GLOBAL",1)~ + ~(You already used the book today. The page can't be turned until after your next rest.)~ EXIT
END

/* "c#brboA8" */
IF ~HasItem("c#brboA8",Player4)~ THEN player4_08
SAY ~(You take the Book of Infinite Spells into your hands.)~ [c#ablank]
/* "c#brboA1" */
+ ~!PartyHasItem("c#brboA1") Global("C#Br_BoIS_A1","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Invisibility".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brboA8"))
ActionOverride(Player4,DestroyItem("c#brboA8"))
GiveItemCreate("c#brboA1",Player4,1,0,0)~ + book_01
/* "c#brboA2" */
+ ~!PartyHasItem("c#brboA2") Global("C#Br_BoIS_A2","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Protection From Evil".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brboA8"))
ActionOverride(Player4,DestroyItem("c#brboA8"))
GiveItemCreate("c#brboA2",Player4,1,0,0)~ + book_01
/* "c#brboA3" */
+ ~!PartyHasItem("c#brboA3") Global("C#Br_BoIS_A3","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "True Seeing".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brboA8"))
ActionOverride(Player4,DestroyItem("c#brboA8"))
GiveItemCreate("c#brboA3",Player4,1,0,0)~ + book_01
/* "c#brboA4" */
+ ~!PartyHasItem("c#brboA4") Global("C#Br_BoIS_A4","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Farsight".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brboA8"))
ActionOverride(Player4,DestroyItem("c#brboA8"))
GiveItemCreate("c#brboA4",Player4,1,0,0)~ + book_01
/* "c#brboA5" */
+ ~!PartyHasItem("c#brboA5") Global("C#Br_BoIS_A5","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Spell Turning".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brboA8"))
ActionOverride(Player4,DestroyItem("c#brboA8"))
GiveItemCreate("c#brboA5",Player4,1,0,0)~ + book_01
/* "c#brboA6" */
+ ~!PartyHasItem("c#brboA6") Global("C#Br_BoIS_A6","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Wyvern Call".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brboA8"))
ActionOverride(Player4,DestroyItem("c#brboA8"))
GiveItemCreate("c#brboA6",Player4,1,0,0)~ + book_01
/* "c#brboA7" */
+ ~!PartyHasItem("c#brboA7") Global("C#Br_BoIS_A7","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Stinking Cloud".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brboA8"))
ActionOverride(Player4,DestroyItem("c#brboA8"))
GiveItemCreate("c#brboA7",Player4,1,0,0)~ + book_01
/* "c#brboA9" */
+ ~!PartyHasItem("c#brboA9") Global("C#Br_BoIS_A9","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Burning Hands".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brboA8"))
ActionOverride(Player4,DestroyItem("c#brboA8"))
GiveItemCreate("c#brboA9",Player4,1,0,0)~ + book_01
/* "c#brboAA" */
+ ~!PartyHasItem("c#brboAA") Global("C#Br_BoIS_AA","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Fireball".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brboA8"))
ActionOverride(Player4,DestroyItem("c#brboA8"))
GiveItemCreate("c#brboAA",Player4,1,0,0)~ + book_01
+ ~Global("c#brbok2","GLOBAL",0)~ + ~(You leave the current page with the spell "Lightning Bolt" open and put the book away again.)~ EXIT
+ ~Global("c#brbok2","GLOBAL",1)~ + ~(You already used the book today. The page can't be turned until after your next rest.)~ EXIT
END

/* "c#brboA9" */
IF ~HasItem("c#brboA9",Player4)~ THEN player4_09
SAY ~(You take the Book of Infinite Spells into your hands.)~ [c#ablank]
/* "c#brboA1" */
+ ~!PartyHasItem("c#brboA1") Global("C#Br_BoIS_A1","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Invisibility".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brboA9"))
ActionOverride(Player4,DestroyItem("c#brboA9"))
GiveItemCreate("c#brboA1",Player4,1,0,0)~ + book_01
/* "c#brboA2" */
+ ~!PartyHasItem("c#brboA2") Global("C#Br_BoIS_A2","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Protection From Evil".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brboA9"))
ActionOverride(Player4,DestroyItem("c#brboA9"))
GiveItemCreate("c#brboA2",Player4,1,0,0)~ + book_01
/* "c#brboA3" */
+ ~!PartyHasItem("c#brboA3") Global("C#Br_BoIS_A3","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "True Seeing".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brboA9"))
ActionOverride(Player4,DestroyItem("c#brboA9"))
GiveItemCreate("c#brboA3",Player4,1,0,0)~ + book_01
/* "c#brboA4" */
+ ~!PartyHasItem("c#brboA4") Global("C#Br_BoIS_A4","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Farsight".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brboA9"))
ActionOverride(Player4,DestroyItem("c#brboA9"))
GiveItemCreate("c#brboA4",Player4,1,0,0)~ + book_01
/* "c#brboA5" */
+ ~!PartyHasItem("c#brboA5") Global("C#Br_BoIS_A5","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Spell Turning".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brboA9"))
ActionOverride(Player4,DestroyItem("c#brboA9"))
GiveItemCreate("c#brboA5",Player4,1,0,0)~ + book_01
/* "c#brboA6" */
+ ~!PartyHasItem("c#brboA6") Global("C#Br_BoIS_A6","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Wyvern Call".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brboA9"))
ActionOverride(Player4,DestroyItem("c#brboA9"))
GiveItemCreate("c#brboA6",Player4,1,0,0)~ + book_01
/* "c#brboA7" */
+ ~!PartyHasItem("c#brboA7") Global("C#Br_BoIS_A7","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Stinking Cloud".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brboA9"))
ActionOverride(Player4,DestroyItem("c#brboA9"))
GiveItemCreate("c#brboA7",Player4,1,0,0)~ + book_01
/* "c#brboA8" */
+ ~!PartyHasItem("c#brboA8") Global("C#Br_BoIS_A8","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Lightning Bolt".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brboA9"))
ActionOverride(Player4,DestroyItem("c#brboA9"))
GiveItemCreate("c#brboA8",Player4,1,0,0)~ + book_01
/* "c#brboAA" */
+ ~!PartyHasItem("c#brboAA") Global("C#Br_BoIS_AA","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Fireball".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brboA9"))
ActionOverride(Player4,DestroyItem("c#brboA9"))
GiveItemCreate("c#brboAA",Player4,1,0,0)~ + book_01
+ ~Global("c#brbok2","GLOBAL",0)~ + ~(You leave the current page with the spell "Burning Hands" open and put the book away again.)~ EXIT
+ ~Global("c#brbok2","GLOBAL",1)~ + ~(You already used the book today. The page can't be turned until after your next rest.)~ EXIT
END

/* "c#brboAA" */
IF ~HasItem("c#brboAA",Player4)~ THEN player4_10
SAY ~(You take the Book of Infinite Spells into your hands.)~ [c#ablank]
/* "c#brboA1" */
+ ~!PartyHasItem("c#brboA1") Global("C#Br_BoIS_A1","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Invisibility".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brboAA"))
ActionOverride(Player4,DestroyItem("c#brboAA"))
GiveItemCreate("c#brboA1",Player4,1,0,0)~ + book_01
/* "c#brboA2" */
+ ~!PartyHasItem("c#brboA2") Global("C#Br_BoIS_A2","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Protection From Evil".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brboAA"))
ActionOverride(Player4,DestroyItem("c#brboAA"))
GiveItemCreate("c#brboA2",Player4,1,0,0)~ + book_01
/* "c#brboA3" */
+ ~!PartyHasItem("c#brboA3") Global("C#Br_BoIS_A3","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "True Seeing".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brboAA"))
ActionOverride(Player4,DestroyItem("c#brboAA"))
GiveItemCreate("c#brboA3",Player4,1,0,0)~ + book_01
/* "c#brboA4" */
+ ~!PartyHasItem("c#brboA4") Global("C#Br_BoIS_A4","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Farsight".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brboAA"))
ActionOverride(Player4,DestroyItem("c#brboAA"))
GiveItemCreate("c#brboA4",Player4,1,0,0)~ + book_01
/* "c#brboA5" */
+ ~!PartyHasItem("c#brboA5") Global("C#Br_BoIS_A5","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Spell Turning".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brboAA"))
ActionOverride(Player4,DestroyItem("c#brboAA"))
GiveItemCreate("c#brboA5",Player4,1,0,0)~ + book_01
/* "c#brboA6" */
+ ~!PartyHasItem("c#brboA6") Global("C#Br_BoIS_A6","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Wyvern Call".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brboAA"))
ActionOverride(Player4,DestroyItem("c#brboAA"))
GiveItemCreate("c#brboA6",Player4,1,0,0)~ + book_01
/* "c#brboA7" */
+ ~!PartyHasItem("c#brboA7") Global("C#Br_BoIS_A7","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Stinking Cloud".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brboAA"))
ActionOverride(Player4,DestroyItem("c#brboAA"))
GiveItemCreate("c#brboA7",Player4,1,0,0)~ + book_01
/* "c#brboA8" */
+ ~!PartyHasItem("c#brboA8") Global("C#Br_BoIS_A8","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Lightning Bolt".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brboAA"))
ActionOverride(Player4,DestroyItem("c#brboAA"))
GiveItemCreate("c#brboA8",Player4,1,0,0)~ + book_01
/* "c#brboAA" */
+ ~!PartyHasItem("c#brboA9") Global("C#Br_BoIS_A9","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Burning Hands".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brboAA"))
ActionOverride(Player4,DestroyItem("c#brboAA"))
GiveItemCreate("c#brboA9",Player4,1,0,0)~ + book_01
+ ~Global("c#brbok2","GLOBAL",0)~ + ~(You leave the current page with the spell "Fireball" open and put the book away again.)~ EXIT
+ ~Global("c#brbok2","GLOBAL",1)~ + ~(You already used the book today. The page can't be turned until after your next rest.)~ EXIT
END

/* Player5 */

/* "c#brboA1" */
IF ~HasItem("c#brboA1",Player5)~ THEN player5_01
SAY ~(You take the Book of Infinite Spells into your hands.)~ [c#ablank]
/* "c#brboA2" */
+ ~!PartyHasItem("c#brboA2") Global("C#Br_BoIS_A2","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Protection From Evil".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brboA1"))
ActionOverride(Player5,DestroyItem("c#brboA1"))
GiveItemCreate("c#brboA2",Player5,1,0,0)~ + book_01
/* "c#brboA3" */
+ ~!PartyHasItem("c#brboA3") Global("C#Br_BoIS_A3","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "True Seeing".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brboA1"))
ActionOverride(Player5,DestroyItem("c#brboA1"))
GiveItemCreate("c#brboA3",Player5,1,0,0)~ + book_01
/* "c#brboA4" */
+ ~!PartyHasItem("c#brboA4") Global("C#Br_BoIS_A4","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Farsight".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brboA1"))
ActionOverride(Player5,DestroyItem("c#brboA1"))
GiveItemCreate("c#brboA4",Player5,1,0,0)~ + book_01
/* "c#brboA5" */
+ ~!PartyHasItem("c#brboA5") Global("C#Br_BoIS_A5","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Spell Turning".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brboA1"))
ActionOverride(Player5,DestroyItem("c#brboA1"))
GiveItemCreate("c#brboA5",Player5,1,0,0)~ + book_01
/* "c#brboA6" */
+ ~!PartyHasItem("c#brboA6") Global("C#Br_BoIS_A6","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Wyvern Call".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brboA1"))
ActionOverride(Player5,DestroyItem("c#brboA1"))
GiveItemCreate("c#brboA6",Player5,1,0,0)~ + book_01
/* "c#brboA7" */
+ ~!PartyHasItem("c#brboA7") Global("C#Br_BoIS_A7","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Stinking Cloud".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brboA1"))
ActionOverride(Player5,DestroyItem("c#brboA1"))
GiveItemCreate("c#brboA7",Player5,1,0,0)~ + book_01
/* "c#brboA8" */
+ ~!PartyHasItem("c#brboA8") Global("C#Br_BoIS_A8","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Lightning Bolt".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brboA1"))
ActionOverride(Player5,DestroyItem("c#brboA1"))
GiveItemCreate("c#brboA8",Player5,1,0,0)~ + book_01
/* "c#brboA9" */
+ ~!PartyHasItem("c#brboA9") Global("C#Br_BoIS_A9","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Burning Hands".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brboA1"))
ActionOverride(Player5,DestroyItem("c#brboA1"))
GiveItemCreate("c#brboA9",Player5,1,0,0)~ + book_01
/* "c#brboAA" */
+ ~!PartyHasItem("c#brboAA") Global("C#Br_BoIS_AA","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Fireball".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brboA1"))
ActionOverride(Player5,DestroyItem("c#brboA1"))
GiveItemCreate("c#brboAA",Player5,1,0,0)~ + book_01
+ ~Global("c#brbok2","GLOBAL",0)~ + ~(You leave the current page with the spell "Invisibility" open and put the book away again.)~ EXIT
+ ~Global("c#brbok2","GLOBAL",1)~ + ~(You already used the book today. The page can't be turned until after your next rest.)~ EXIT
END

/* "c#brboA2" */
IF ~HasItem("c#brboA2",Player5)~ THEN player5_02
SAY ~(You take the Book of Infinite Spells into your hands.)~ [c#ablank]
/* "c#brboA1" */
+ ~!PartyHasItem("c#brboA1") Global("C#Br_BoIS_A1","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Invisibility".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brboA2"))
ActionOverride(Player5,DestroyItem("c#brboA2"))
GiveItemCreate("c#brboA1",Player5,1,0,0)~ + book_01
/* "c#brboA3" */
+ ~!PartyHasItem("c#brboA3") Global("C#Br_BoIS_A3","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "True Seeing".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brboA2"))
ActionOverride(Player5,DestroyItem("c#brboA2"))
GiveItemCreate("c#brboA3",Player5,1,0,0)~ + book_01
/* "c#brboA4" */
+ ~!PartyHasItem("c#brboA4") Global("C#Br_BoIS_A4","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Farsight".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brboA2"))
ActionOverride(Player5,DestroyItem("c#brboA2"))
GiveItemCreate("c#brboA4",Player5,1,0,0)~ + book_01
/* "c#brboA5" */
+ ~!PartyHasItem("c#brboA5") Global("C#Br_BoIS_A5","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Spell Turning".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brboA2"))
ActionOverride(Player5,DestroyItem("c#brboA2"))
GiveItemCreate("c#brboA5",Player5,1,0,0)~ + book_01
/* "c#brboA6" */
+ ~!PartyHasItem("c#brboA6") Global("C#Br_BoIS_A6","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Wyvern Call".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brboA2"))
ActionOverride(Player5,DestroyItem("c#brboA2"))
GiveItemCreate("c#brboA6",Player5,1,0,0)~ + book_01
/* "c#brboA7" */
+ ~!PartyHasItem("c#brboA7") Global("C#Br_BoIS_A7","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Stinking Cloud".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brboA2"))
ActionOverride(Player5,DestroyItem("c#brboA2"))
GiveItemCreate("c#brboA7",Player5,1,0,0)~ + book_01
/* "c#brboA8" */
+ ~!PartyHasItem("c#brboA8") Global("C#Br_BoIS_A8","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Lightning Bolt".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brboA2"))
ActionOverride(Player5,DestroyItem("c#brboA2"))
GiveItemCreate("c#brboA8",Player5,1,0,0)~ + book_01
/* "c#brboA9" */
+ ~!PartyHasItem("c#brboA9") Global("C#Br_BoIS_A9","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Burning Hands".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brboA2"))
ActionOverride(Player5,DestroyItem("c#brboA2"))
GiveItemCreate("c#brboA9",Player5,1,0,0)~ + book_01
/* "c#brboAA" */
+ ~!PartyHasItem("c#brboAA") Global("C#Br_BoIS_AA","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Fireball".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brboA2"))
ActionOverride(Player5,DestroyItem("c#brboA2"))
GiveItemCreate("c#brboAA",Player5,1,0,0)~ + book_01
+ ~Global("c#brbok2","GLOBAL",0)~ + ~(You leave the current page with the spell "Protection From Evil" open and put the book away again.)~ EXIT
+ ~Global("c#brbok2","GLOBAL",1)~ + ~(You already used the book today. The page can't be turned until after your next rest.)~ EXIT
END

/* "c#brboA3" */
IF ~HasItem("c#brboA3",Player5)~ THEN player5_03
SAY ~(You take the Book of Infinite Spells into your hands.)~ [c#ablank]
/* "c#brboA1" */
+ ~!PartyHasItem("c#brboA1") Global("C#Br_BoIS_A1","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Invisibility".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brboA3"))
ActionOverride(Player5,DestroyItem("c#brboA3"))
GiveItemCreate("c#brboA1",Player5,1,0,0)~ + book_01
/* "c#brboA2" */
+ ~!PartyHasItem("c#brboA2") Global("C#Br_BoIS_A2","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Protection From Evil".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brboA3"))
ActionOverride(Player5,DestroyItem("c#brboA3"))
GiveItemCreate("c#brboA2",Player5,1,0,0)~ + book_01
/* "c#brboA4" */
+ ~!PartyHasItem("c#brboA4") Global("C#Br_BoIS_A4","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Farsight".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brboA3"))
ActionOverride(Player5,DestroyItem("c#brboA3"))
GiveItemCreate("c#brboA4",Player5,1,0,0)~ + book_01
/* "c#brboA5" */
+ ~!PartyHasItem("c#brboA5") Global("C#Br_BoIS_A5","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Spell Turning".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brboA3"))
ActionOverride(Player5,DestroyItem("c#brboA3"))
GiveItemCreate("c#brboA5",Player5,1,0,0)~ + book_01
/* "c#brboA6" */
+ ~!PartyHasItem("c#brboA6") Global("C#Br_BoIS_A6","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Wyvern Call".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brboA3"))
ActionOverride(Player5,DestroyItem("c#brboA3"))
GiveItemCreate("c#brboA6",Player5,1,0,0)~ + book_01
/* "c#brboA7" */
+ ~!PartyHasItem("c#brboA7") Global("C#Br_BoIS_A7","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Stinking Cloud".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brboA3"))
ActionOverride(Player5,DestroyItem("c#brboA3"))
GiveItemCreate("c#brboA7",Player5,1,0,0)~ + book_01
/* "c#brboA8" */
+ ~!PartyHasItem("c#brboA8") Global("C#Br_BoIS_A8","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Lightning Bolt".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brboA3"))
ActionOverride(Player5,DestroyItem("c#brboA3"))
GiveItemCreate("c#brboA8",Player5,1,0,0)~ + book_01
/* "c#brboA9" */
+ ~!PartyHasItem("c#brboA9") Global("C#Br_BoIS_A9","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Burning Hands".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brboA3"))
ActionOverride(Player5,DestroyItem("c#brboA3"))
GiveItemCreate("c#brboA9",Player5,1,0,0)~ + book_01
/* "c#brboAA" */
+ ~!PartyHasItem("c#brboAA") Global("C#Br_BoIS_AA","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Fireball".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brboA3"))
ActionOverride(Player5,DestroyItem("c#brboA3"))
GiveItemCreate("c#brboAA",Player5,1,0,0)~ + book_01
+ ~Global("c#brbok2","GLOBAL",0)~ + ~(You leave the current page with the spell "True Seeing" open and put the book away again.)~ EXIT
+ ~Global("c#brbok2","GLOBAL",1)~ + ~(You already used the book today. The page can't be turned until after your next rest.)~ EXIT
END

/* "c#brboA4" */
IF ~HasItem("c#brboA4",Player5)~ THEN player5_04
SAY ~(You take the Book of Infinite Spells into your hands.)~ [c#ablank]
/* "c#brboA1" */
+ ~!PartyHasItem("c#brboA1") Global("C#Br_BoIS_A1","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Invisibility".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brboA4"))
ActionOverride(Player5,DestroyItem("c#brboA4"))
GiveItemCreate("c#brboA1",Player5,1,0,0)~ + book_01
/* "c#brboA2" */
+ ~!PartyHasItem("c#brboA2") Global("C#Br_BoIS_A2","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Protection From Evil".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brboA4"))
ActionOverride(Player5,DestroyItem("c#brboA4"))
GiveItemCreate("c#brboA2",Player5,1,0,0)~ + book_01
/* "c#brboA3" */
+ ~!PartyHasItem("c#brboA3") Global("C#Br_BoIS_A3","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "True Seeing".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brboA4"))
ActionOverride(Player5,DestroyItem("c#brboA4"))
GiveItemCreate("c#brboA3",Player5,1,0,0)~ + book_01
/* "c#brboA5" */
+ ~!PartyHasItem("c#brboA5") Global("C#Br_BoIS_A5","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Spell Turning".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brboA4"))
ActionOverride(Player5,DestroyItem("c#brboA4"))
GiveItemCreate("c#brboA5",Player5,1,0,0)~ + book_01
/* "c#brboA6" */
+ ~!PartyHasItem("c#brboA6") Global("C#Br_BoIS_A6","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Wyvern Call".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brboA4"))
ActionOverride(Player5,DestroyItem("c#brboA4"))
GiveItemCreate("c#brboA6",Player5,1,0,0)~ + book_01
/* "c#brboA7" */
+ ~!PartyHasItem("c#brboA7") Global("C#Br_BoIS_A7","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Stinking Cloud".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brboA4"))
ActionOverride(Player5,DestroyItem("c#brboA4"))
GiveItemCreate("c#brboA7",Player5,1,0,0)~ + book_01
/* "c#brboA8" */
+ ~!PartyHasItem("c#brboA8") Global("C#Br_BoIS_A8","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Lightning Bolt".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brboA4"))
ActionOverride(Player5,DestroyItem("c#brboA4"))
GiveItemCreate("c#brboA8",Player5,1,0,0)~ + book_01
/* "c#brboA9" */
+ ~!PartyHasItem("c#brboA9") Global("C#Br_BoIS_A9","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Burning Hands".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brboA4"))
ActionOverride(Player5,DestroyItem("c#brboA4"))
GiveItemCreate("c#brboA9",Player5,1,0,0)~ + book_01
/* "c#brboAA" */
+ ~!PartyHasItem("c#brboAA") Global("C#Br_BoIS_AA","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Fireball".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brboA4"))
ActionOverride(Player5,DestroyItem("c#brboA4"))
GiveItemCreate("c#brboAA",Player5,1,0,0)~ + book_01
+ ~Global("c#brbok2","GLOBAL",0)~ + ~(You leave the current page with the spell "Farsight" open and put the book away again.)~ EXIT
+ ~Global("c#brbok2","GLOBAL",1)~ + ~(You already used the book today. The page can't be turned until after your next rest.)~ EXIT
END

/* "c#brboA5" */
IF ~HasItem("c#brboA5",Player5)~ THEN player5_05
SAY ~(You take the Book of Infinite Spells into your hands.)~ [c#ablank]
/* "c#brboA1" */
+ ~!PartyHasItem("c#brboA1") Global("C#Br_BoIS_A1","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Invisibility".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brboA5"))
ActionOverride(Player5,DestroyItem("c#brboA5"))
GiveItemCreate("c#brboA1",Player5,1,0,0)~ + book_01
/* "c#brboA2" */
+ ~!PartyHasItem("c#brboA2") Global("C#Br_BoIS_A2","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Protection From Evil".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brboA5"))
ActionOverride(Player5,DestroyItem("c#brboA5"))
GiveItemCreate("c#brboA2",Player5,1,0,0)~ + book_01
/* "c#brboA3" */
+ ~!PartyHasItem("c#brboA3") Global("C#Br_BoIS_A3","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "True Seeing".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brboA5"))
ActionOverride(Player5,DestroyItem("c#brboA5"))
GiveItemCreate("c#brboA3",Player5,1,0,0)~ + book_01
/* "c#brboA4" */
+ ~!PartyHasItem("c#brboA4") Global("C#Br_BoIS_A4","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Farsight".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brboA5"))
ActionOverride(Player5,DestroyItem("c#brboA5"))
GiveItemCreate("c#brboA4",Player5,1,0,0)~ + book_01
/* "c#brboA6" */
+ ~!PartyHasItem("c#brboA6") Global("C#Br_BoIS_A6","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Wyvern Call".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brboA5"))
ActionOverride(Player5,DestroyItem("c#brboA5"))
GiveItemCreate("c#brboA6",Player5,1,0,0)~ + book_01
/* "c#brboA7" */
+ ~!PartyHasItem("c#brboA7") Global("C#Br_BoIS_A7","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Stinking Cloud".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brboA5"))
ActionOverride(Player5,DestroyItem("c#brboA5"))
GiveItemCreate("c#brboA7",Player5,1,0,0)~ + book_01
/* "c#brboA8" */
+ ~!PartyHasItem("c#brboA8") Global("C#Br_BoIS_A8","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Lightning Bolt".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brboA5"))
ActionOverride(Player5,DestroyItem("c#brboA5"))
GiveItemCreate("c#brboA8",Player5,1,0,0)~ + book_01
/* "c#brboA9" */
+ ~!PartyHasItem("c#brboA9") Global("C#Br_BoIS_A9","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Burning Hands".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brboA5"))
ActionOverride(Player5,DestroyItem("c#brboA5"))
GiveItemCreate("c#brboA9",Player5,1,0,0)~ + book_01
/* "c#brboAA" */
+ ~!PartyHasItem("c#brboAA") Global("C#Br_BoIS_AA","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Fireball".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brboA5"))
ActionOverride(Player5,DestroyItem("c#brboA5"))
GiveItemCreate("c#brboAA",Player5,1,0,0)~ + book_01
+ ~Global("c#brbok2","GLOBAL",0)~ + ~(You leave the current page with the spell "Spell Turning" open and put the book away again.)~ EXIT
+ ~Global("c#brbok2","GLOBAL",1)~ + ~(You already used the book today. The page can't be turned until after your next rest.)~ EXIT
END

/* "c#brboA6" */
IF ~HasItem("c#brboA6",Player5)~ THEN player5_06
SAY ~(You take the Book of Infinite Spells into your hands.)~ [c#ablank]
/* "c#brboA1" */
+ ~!PartyHasItem("c#brboA1") Global("C#Br_BoIS_A1","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Invisibility".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brboA6"))
ActionOverride(Player5,DestroyItem("c#brboA6"))
GiveItemCreate("c#brboA1",Player5,1,0,0)~ + book_01
/* "c#brboA2" */
+ ~!PartyHasItem("c#brboA2") Global("C#Br_BoIS_A2","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Protection From Evil".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brboA6"))
ActionOverride(Player5,DestroyItem("c#brboA6"))
GiveItemCreate("c#brboA2",Player5,1,0,0)~ + book_01
/* "c#brboA3" */
+ ~!PartyHasItem("c#brboA3") Global("C#Br_BoIS_A3","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "True Seeing".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brboA6"))
ActionOverride(Player5,DestroyItem("c#brboA6"))
GiveItemCreate("c#brboA3",Player5,1,0,0)~ + book_01
/* "c#brboA4" */
+ ~!PartyHasItem("c#brboA4") Global("C#Br_BoIS_A4","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Farsight".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brboA6"))
ActionOverride(Player5,DestroyItem("c#brboA6"))
GiveItemCreate("c#brboA4",Player5,1,0,0)~ + book_01
/* "c#brboA5" */
+ ~!PartyHasItem("c#brboA5") Global("C#Br_BoIS_A5","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Spell Turning".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brboA6"))
ActionOverride(Player5,DestroyItem("c#brboA6"))
GiveItemCreate("c#brboA5",Player5,1,0,0)~ + book_01
/* "c#brboA7" */
+ ~!PartyHasItem("c#brboA7") Global("C#Br_BoIS_A7","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Stinking Cloud".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brboA6"))
ActionOverride(Player5,DestroyItem("c#brboA6"))
GiveItemCreate("c#brboA7",Player5,1,0,0)~ + book_01
/* "c#brboA8" */
+ ~!PartyHasItem("c#brboA8") Global("C#Br_BoIS_A8","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Lightning Bolt".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brboA6"))
ActionOverride(Player5,DestroyItem("c#brboA6"))
GiveItemCreate("c#brboA8",Player5,1,0,0)~ + book_01
/* "c#brboA9" */
+ ~!PartyHasItem("c#brboA9") Global("C#Br_BoIS_A9","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Burning Hands".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brboA6"))
ActionOverride(Player5,DestroyItem("c#brboA6"))
GiveItemCreate("c#brboA9",Player5,1,0,0)~ + book_01
/* "c#brboAA" */
+ ~!PartyHasItem("c#brboAA") Global("C#Br_BoIS_AA","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Fireball".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brboA6"))
ActionOverride(Player5,DestroyItem("c#brboA6"))
GiveItemCreate("c#brboAA",Player5,1,0,0)~ + book_01
+ ~Global("c#brbok2","GLOBAL",0)~ + ~(You leave the current page with the spell "Wyvern Call" open and put the book away again.)~ EXIT
+ ~Global("c#brbok2","GLOBAL",1)~ + ~(You already used the book today. The page can't be turned until after your next rest.)~ EXIT
END

/* "c#brboA7" */
IF ~HasItem("c#brboA7",Player5)~ THEN player5_07
SAY ~(You take the Book of Infinite Spells into your hands.)~ [c#ablank]
/* "c#brboA1" */
+ ~!PartyHasItem("c#brboA1") Global("C#Br_BoIS_A1","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Invisibility".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brboA7"))
ActionOverride(Player5,DestroyItem("c#brboA7"))
GiveItemCreate("c#brboA1",Player5,1,0,0)~ + book_01
/* "c#brboA2" */
+ ~!PartyHasItem("c#brboA2") Global("C#Br_BoIS_A2","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Protection From Evil".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brboA7"))
ActionOverride(Player5,DestroyItem("c#brboA7"))
GiveItemCreate("c#brboA2",Player5,1,0,0)~ + book_01
/* "c#brboA3" */
+ ~!PartyHasItem("c#brboA3") Global("C#Br_BoIS_A3","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "True Seeing".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brboA7"))
ActionOverride(Player5,DestroyItem("c#brboA7"))
GiveItemCreate("c#brboA3",Player5,1,0,0)~ + book_01
/* "c#brboA4" */
+ ~!PartyHasItem("c#brboA4") Global("C#Br_BoIS_A4","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Farsight".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brboA7"))
ActionOverride(Player5,DestroyItem("c#brboA7"))
GiveItemCreate("c#brboA4",Player5,1,0,0)~ + book_01
/* "c#brboA5" */
+ ~!PartyHasItem("c#brboA5") Global("C#Br_BoIS_A5","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Spell Turning".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brboA7"))
ActionOverride(Player5,DestroyItem("c#brboA7"))
GiveItemCreate("c#brboA5",Player5,1,0,0)~ + book_01
/* "c#brboA6" */
+ ~!PartyHasItem("c#brboA6") Global("C#Br_BoIS_A6","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Wyvern Call".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brboA7"))
ActionOverride(Player5,DestroyItem("c#brboA7"))
GiveItemCreate("c#brboA6",Player5,1,0,0)~ + book_01
/* "c#brboA8" */
+ ~!PartyHasItem("c#brboA8") Global("C#Br_BoIS_A8","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Lightning Bolt".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brboA7"))
ActionOverride(Player5,DestroyItem("c#brboA7"))
GiveItemCreate("c#brboA8",Player5,1,0,0)~ + book_01
/* "c#brboA9" */
+ ~!PartyHasItem("c#brboA9") Global("C#Br_BoIS_A9","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Burning Hands".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brboA7"))
ActionOverride(Player5,DestroyItem("c#brboA7"))
GiveItemCreate("c#brboA9",Player5,1,0,0)~ + book_01
/* "c#brboAA" */
+ ~!PartyHasItem("c#brboAA") Global("C#Br_BoIS_AA","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Fireball".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brboA7"))
ActionOverride(Player5,DestroyItem("c#brboA7"))
GiveItemCreate("c#brboAA",Player5,1,0,0)~ + book_01
+ ~Global("c#brbok2","GLOBAL",0)~ + ~(You leave the current page with the spell "Stinking Cloud" open and put the book away again.)~ EXIT
+ ~Global("c#brbok2","GLOBAL",1)~ + ~(You already used the book today. The page can't be turned until after your next rest.)~ EXIT
END

/* "c#brboA8" */
IF ~HasItem("c#brboA8",Player5)~ THEN player5_08
SAY ~(You take the Book of Infinite Spells into your hands.)~ [c#ablank]
/* "c#brboA1" */
+ ~!PartyHasItem("c#brboA1") Global("C#Br_BoIS_A1","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Invisibility".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brboA8"))
ActionOverride(Player5,DestroyItem("c#brboA8"))
GiveItemCreate("c#brboA1",Player5,1,0,0)~ + book_01
/* "c#brboA2" */
+ ~!PartyHasItem("c#brboA2") Global("C#Br_BoIS_A2","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Protection From Evil".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brboA8"))
ActionOverride(Player5,DestroyItem("c#brboA8"))
GiveItemCreate("c#brboA2",Player5,1,0,0)~ + book_01
/* "c#brboA3" */
+ ~!PartyHasItem("c#brboA3") Global("C#Br_BoIS_A3","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "True Seeing".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brboA8"))
ActionOverride(Player5,DestroyItem("c#brboA8"))
GiveItemCreate("c#brboA3",Player5,1,0,0)~ + book_01
/* "c#brboA4" */
+ ~!PartyHasItem("c#brboA4") Global("C#Br_BoIS_A4","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Farsight".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brboA8"))
ActionOverride(Player5,DestroyItem("c#brboA8"))
GiveItemCreate("c#brboA4",Player5,1,0,0)~ + book_01
/* "c#brboA5" */
+ ~!PartyHasItem("c#brboA5") Global("C#Br_BoIS_A5","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Spell Turning".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brboA8"))
ActionOverride(Player5,DestroyItem("c#brboA8"))
GiveItemCreate("c#brboA5",Player5,1,0,0)~ + book_01
/* "c#brboA6" */
+ ~!PartyHasItem("c#brboA6") Global("C#Br_BoIS_A6","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Wyvern Call".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brboA8"))
ActionOverride(Player5,DestroyItem("c#brboA8"))
GiveItemCreate("c#brboA6",Player5,1,0,0)~ + book_01
/* "c#brboA7" */
+ ~!PartyHasItem("c#brboA7") Global("C#Br_BoIS_A7","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Stinking Cloud".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brboA8"))
ActionOverride(Player5,DestroyItem("c#brboA8"))
GiveItemCreate("c#brboA7",Player5,1,0,0)~ + book_01
/* "c#brboA9" */
+ ~!PartyHasItem("c#brboA9") Global("C#Br_BoIS_A9","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Burning Hands".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brboA8"))
ActionOverride(Player5,DestroyItem("c#brboA8"))
GiveItemCreate("c#brboA9",Player5,1,0,0)~ + book_01
/* "c#brboAA" */
+ ~!PartyHasItem("c#brboAA") Global("C#Br_BoIS_AA","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Fireball".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brboA8"))
ActionOverride(Player5,DestroyItem("c#brboA8"))
GiveItemCreate("c#brboAA",Player5,1,0,0)~ + book_01
+ ~Global("c#brbok2","GLOBAL",0)~ + ~(You leave the current page with the spell "Lightning Bolt" open and put the book away again.)~ EXIT
+ ~Global("c#brbok2","GLOBAL",1)~ + ~(You already used the book today. The page can't be turned until after your next rest.)~ EXIT
END

/* "c#brboA9" */
IF ~HasItem("c#brboA9",Player5)~ THEN player5_09
SAY ~(You take the Book of Infinite Spells into your hands.)~ [c#ablank]
/* "c#brboA1" */
+ ~!PartyHasItem("c#brboA1") Global("C#Br_BoIS_A1","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Invisibility".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brboA9"))
ActionOverride(Player5,DestroyItem("c#brboA9"))
GiveItemCreate("c#brboA1",Player5,1,0,0)~ + book_01
/* "c#brboA2" */
+ ~!PartyHasItem("c#brboA2") Global("C#Br_BoIS_A2","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Protection From Evil".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brboA9"))
ActionOverride(Player5,DestroyItem("c#brboA9"))
GiveItemCreate("c#brboA2",Player5,1,0,0)~ + book_01
/* "c#brboA3" */
+ ~!PartyHasItem("c#brboA3") Global("C#Br_BoIS_A3","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "True Seeing".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brboA9"))
ActionOverride(Player5,DestroyItem("c#brboA9"))
GiveItemCreate("c#brboA3",Player5,1,0,0)~ + book_01
/* "c#brboA4" */
+ ~!PartyHasItem("c#brboA4") Global("C#Br_BoIS_A4","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Farsight".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brboA9"))
ActionOverride(Player5,DestroyItem("c#brboA9"))
GiveItemCreate("c#brboA4",Player5,1,0,0)~ + book_01
/* "c#brboA5" */
+ ~!PartyHasItem("c#brboA5") Global("C#Br_BoIS_A5","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Spell Turning".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brboA9"))
ActionOverride(Player5,DestroyItem("c#brboA9"))
GiveItemCreate("c#brboA5",Player5,1,0,0)~ + book_01
/* "c#brboA6" */
+ ~!PartyHasItem("c#brboA6") Global("C#Br_BoIS_A6","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Wyvern Call".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brboA9"))
ActionOverride(Player5,DestroyItem("c#brboA9"))
GiveItemCreate("c#brboA6",Player5,1,0,0)~ + book_01
/* "c#brboA7" */
+ ~!PartyHasItem("c#brboA7") Global("C#Br_BoIS_A7","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Stinking Cloud".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brboA9"))
ActionOverride(Player5,DestroyItem("c#brboA9"))
GiveItemCreate("c#brboA7",Player5,1,0,0)~ + book_01
/* "c#brboA8" */
+ ~!PartyHasItem("c#brboA8") Global("C#Br_BoIS_A8","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Lightning Bolt".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brboA9"))
ActionOverride(Player5,DestroyItem("c#brboA9"))
GiveItemCreate("c#brboA8",Player5,1,0,0)~ + book_01
/* "c#brboAA" */
+ ~!PartyHasItem("c#brboAA") Global("C#Br_BoIS_AA","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Fireball".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brboA9"))
ActionOverride(Player5,DestroyItem("c#brboA9"))
GiveItemCreate("c#brboAA",Player5,1,0,0)~ + book_01
+ ~Global("c#brbok2","GLOBAL",0)~ + ~(You leave the current page with the spell "Burning Hands" open and put the book away again.)~ EXIT
+ ~Global("c#brbok2","GLOBAL",1)~ + ~(You already used the book today. The page can't be turned until after your next rest.)~ EXIT
END

/* "c#brboAA" */
IF ~HasItem("c#brboAA",Player5)~ THEN player5_10
SAY ~(You take the Book of Infinite Spells into your hands.)~ [c#ablank]
/* "c#brboA1" */
+ ~!PartyHasItem("c#brboA1") Global("C#Br_BoIS_A1","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Invisibility".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brboAA"))
ActionOverride(Player5,DestroyItem("c#brboAA"))
GiveItemCreate("c#brboA1",Player5,1,0,0)~ + book_01
/* "c#brboA2" */
+ ~!PartyHasItem("c#brboA2") Global("C#Br_BoIS_A2","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Protection From Evil".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brboAA"))
ActionOverride(Player5,DestroyItem("c#brboAA"))
GiveItemCreate("c#brboA2",Player5,1,0,0)~ + book_01
/* "c#brboA3" */
+ ~!PartyHasItem("c#brboA3") Global("C#Br_BoIS_A3","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "True Seeing".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brboAA"))
ActionOverride(Player5,DestroyItem("c#brboAA"))
GiveItemCreate("c#brboA3",Player5,1,0,0)~ + book_01
/* "c#brboA4" */
+ ~!PartyHasItem("c#brboA4") Global("C#Br_BoIS_A4","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Farsight".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brboAA"))
ActionOverride(Player5,DestroyItem("c#brboAA"))
GiveItemCreate("c#brboA4",Player5,1,0,0)~ + book_01
/* "c#brboA5" */
+ ~!PartyHasItem("c#brboA5") Global("C#Br_BoIS_A5","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Spell Turning".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brboAA"))
ActionOverride(Player5,DestroyItem("c#brboAA"))
GiveItemCreate("c#brboA5",Player5,1,0,0)~ + book_01
/* "c#brboA6" */
+ ~!PartyHasItem("c#brboA6") Global("C#Br_BoIS_A6","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Wyvern Call".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brboAA"))
ActionOverride(Player5,DestroyItem("c#brboAA"))
GiveItemCreate("c#brboA6",Player5,1,0,0)~ + book_01
/* "c#brboA7" */
+ ~!PartyHasItem("c#brboA7") Global("C#Br_BoIS_A7","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Stinking Cloud".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brboAA"))
ActionOverride(Player5,DestroyItem("c#brboAA"))
GiveItemCreate("c#brboA7",Player5,1,0,0)~ + book_01
/* "c#brboA8" */
+ ~!PartyHasItem("c#brboA8") Global("C#Br_BoIS_A8","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Lightning Bolt".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brboAA"))
ActionOverride(Player5,DestroyItem("c#brboAA"))
GiveItemCreate("c#brboA8",Player5,1,0,0)~ + book_01
/* "c#brboAA" */
+ ~!PartyHasItem("c#brboA9") Global("C#Br_BoIS_A9","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Burning Hands".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brboAA"))
ActionOverride(Player5,DestroyItem("c#brboAA"))
GiveItemCreate("c#brboA9",Player5,1,0,0)~ + book_01
+ ~Global("c#brbok2","GLOBAL",0)~ + ~(You leave the current page with the spell "Fireball" open and put the book away again.)~ EXIT
+ ~Global("c#brbok2","GLOBAL",1)~ + ~(You already used the book today. The page can't be turned until after your next rest.)~ EXIT
END

/* Player6 */

/* "c#brboA1" */
IF ~HasItem("c#brboA1",Player6)~ THEN player6_01
SAY ~(You take the Book of Infinite Spells into your hands.)~ [c#ablank]
/* "c#brboA2" */
+ ~!PartyHasItem("c#brboA2") Global("C#Br_BoIS_A2","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Protection From Evil".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brboA1"))
ActionOverride(Player6,DestroyItem("c#brboA1"))
GiveItemCreate("c#brboA2",Player6,1,0,0)~ + book_01
/* "c#brboA3" */
+ ~!PartyHasItem("c#brboA3") Global("C#Br_BoIS_A3","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "True Seeing".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brboA1"))
ActionOverride(Player6,DestroyItem("c#brboA1"))
GiveItemCreate("c#brboA3",Player6,1,0,0)~ + book_01
/* "c#brboA4" */
+ ~!PartyHasItem("c#brboA4") Global("C#Br_BoIS_A4","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Farsight".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brboA1"))
ActionOverride(Player6,DestroyItem("c#brboA1"))
GiveItemCreate("c#brboA4",Player6,1,0,0)~ + book_01
/* "c#brboA5" */
+ ~!PartyHasItem("c#brboA5") Global("C#Br_BoIS_A5","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Spell Turning".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brboA1"))
ActionOverride(Player6,DestroyItem("c#brboA1"))
GiveItemCreate("c#brboA5",Player6,1,0,0)~ + book_01
/* "c#brboA6" */
+ ~!PartyHasItem("c#brboA6") Global("C#Br_BoIS_A6","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Wyvern Call".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brboA1"))
ActionOverride(Player6,DestroyItem("c#brboA1"))
GiveItemCreate("c#brboA6",Player6,1,0,0)~ + book_01
/* "c#brboA7" */
+ ~!PartyHasItem("c#brboA7") Global("C#Br_BoIS_A7","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Stinking Cloud".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brboA1"))
ActionOverride(Player6,DestroyItem("c#brboA1"))
GiveItemCreate("c#brboA7",Player6,1,0,0)~ + book_01
/* "c#brboA8" */
+ ~!PartyHasItem("c#brboA8") Global("C#Br_BoIS_A8","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Lightning Bolt".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brboA1"))
ActionOverride(Player6,DestroyItem("c#brboA1"))
GiveItemCreate("c#brboA8",Player6,1,0,0)~ + book_01
/* "c#brboA9" */
+ ~!PartyHasItem("c#brboA9") Global("C#Br_BoIS_A9","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Burning Hands".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brboA1"))
ActionOverride(Player6,DestroyItem("c#brboA1"))
GiveItemCreate("c#brboA9",Player6,1,0,0)~ + book_01
/* "c#brboAA" */
+ ~!PartyHasItem("c#brboAA") Global("C#Br_BoIS_AA","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Fireball".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brboA1"))
ActionOverride(Player6,DestroyItem("c#brboA1"))
GiveItemCreate("c#brboAA",Player6,1,0,0)~ + book_01
+ ~Global("c#brbok2","GLOBAL",0)~ + ~(You leave the current page with the spell "Invisibility" open and put the book away again.)~ EXIT
+ ~Global("c#brbok2","GLOBAL",1)~ + ~(You already used the book today. The page can't be turned until after your next rest.)~ EXIT
END

/* "c#brboA2" */
IF ~HasItem("c#brboA2",Player6)~ THEN player6_02
SAY ~(You take the Book of Infinite Spells into your hands.)~ [c#ablank]
/* "c#brboA1" */
+ ~!PartyHasItem("c#brboA1") Global("C#Br_BoIS_A1","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Invisibility".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brboA2"))
ActionOverride(Player6,DestroyItem("c#brboA2"))
GiveItemCreate("c#brboA1",Player6,1,0,0)~ + book_01
/* "c#brboA3" */
+ ~!PartyHasItem("c#brboA3") Global("C#Br_BoIS_A3","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "True Seeing".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brboA2"))
ActionOverride(Player6,DestroyItem("c#brboA2"))
GiveItemCreate("c#brboA3",Player6,1,0,0)~ + book_01
/* "c#brboA4" */
+ ~!PartyHasItem("c#brboA4") Global("C#Br_BoIS_A4","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Farsight".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brboA2"))
ActionOverride(Player6,DestroyItem("c#brboA2"))
GiveItemCreate("c#brboA4",Player6,1,0,0)~ + book_01
/* "c#brboA5" */
+ ~!PartyHasItem("c#brboA5") Global("C#Br_BoIS_A5","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Spell Turning".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brboA2"))
ActionOverride(Player6,DestroyItem("c#brboA2"))
GiveItemCreate("c#brboA5",Player6,1,0,0)~ + book_01
/* "c#brboA6" */
+ ~!PartyHasItem("c#brboA6") Global("C#Br_BoIS_A6","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Wyvern Call".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brboA2"))
ActionOverride(Player6,DestroyItem("c#brboA2"))
GiveItemCreate("c#brboA6",Player6,1,0,0)~ + book_01
/* "c#brboA7" */
+ ~!PartyHasItem("c#brboA7") Global("C#Br_BoIS_A7","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Stinking Cloud".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brboA2"))
ActionOverride(Player6,DestroyItem("c#brboA2"))
GiveItemCreate("c#brboA7",Player6,1,0,0)~ + book_01
/* "c#brboA8" */
+ ~!PartyHasItem("c#brboA8") Global("C#Br_BoIS_A8","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Lightning Bolt".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brboA2"))
ActionOverride(Player6,DestroyItem("c#brboA2"))
GiveItemCreate("c#brboA8",Player6,1,0,0)~ + book_01
/* "c#brboA9" */
+ ~!PartyHasItem("c#brboA9") Global("C#Br_BoIS_A9","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Burning Hands".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brboA2"))
ActionOverride(Player6,DestroyItem("c#brboA2"))
GiveItemCreate("c#brboA9",Player6,1,0,0)~ + book_01
/* "c#brboAA" */
+ ~!PartyHasItem("c#brboAA") Global("C#Br_BoIS_AA","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Fireball".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brboA2"))
ActionOverride(Player6,DestroyItem("c#brboA2"))
GiveItemCreate("c#brboAA",Player6,1,0,0)~ + book_01
+ ~Global("c#brbok2","GLOBAL",0)~ + ~(You leave the current page with the spell "Protection From Evil" open and put the book away again.)~ EXIT
+ ~Global("c#brbok2","GLOBAL",1)~ + ~(You already used the book today. The page can't be turned until after your next rest.)~ EXIT
END

/* "c#brboA3" */
IF ~HasItem("c#brboA3",Player6)~ THEN player6_03
SAY ~(You take the Book of Infinite Spells into your hands.)~ [c#ablank]
/* "c#brboA1" */
+ ~!PartyHasItem("c#brboA1") Global("C#Br_BoIS_A1","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Invisibility".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brboA3"))
ActionOverride(Player6,DestroyItem("c#brboA3"))
GiveItemCreate("c#brboA1",Player6,1,0,0)~ + book_01
/* "c#brboA2" */
+ ~!PartyHasItem("c#brboA2") Global("C#Br_BoIS_A2","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Protection From Evil".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brboA3"))
ActionOverride(Player6,DestroyItem("c#brboA3"))
GiveItemCreate("c#brboA2",Player6,1,0,0)~ + book_01
/* "c#brboA4" */
+ ~!PartyHasItem("c#brboA4") Global("C#Br_BoIS_A4","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Farsight".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brboA3"))
ActionOverride(Player6,DestroyItem("c#brboA3"))
GiveItemCreate("c#brboA4",Player6,1,0,0)~ + book_01
/* "c#brboA5" */
+ ~!PartyHasItem("c#brboA5") Global("C#Br_BoIS_A5","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Spell Turning".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brboA3"))
ActionOverride(Player6,DestroyItem("c#brboA3"))
GiveItemCreate("c#brboA5",Player6,1,0,0)~ + book_01
/* "c#brboA6" */
+ ~!PartyHasItem("c#brboA6") Global("C#Br_BoIS_A6","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Wyvern Call".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brboA3"))
ActionOverride(Player6,DestroyItem("c#brboA3"))
GiveItemCreate("c#brboA6",Player6,1,0,0)~ + book_01
/* "c#brboA7" */
+ ~!PartyHasItem("c#brboA7") Global("C#Br_BoIS_A7","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Stinking Cloud".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brboA3"))
ActionOverride(Player6,DestroyItem("c#brboA3"))
GiveItemCreate("c#brboA7",Player6,1,0,0)~ + book_01
/* "c#brboA8" */
+ ~!PartyHasItem("c#brboA8") Global("C#Br_BoIS_A8","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Lightning Bolt".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brboA3"))
ActionOverride(Player6,DestroyItem("c#brboA3"))
GiveItemCreate("c#brboA8",Player6,1,0,0)~ + book_01
/* "c#brboA9" */
+ ~!PartyHasItem("c#brboA9") Global("C#Br_BoIS_A9","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Burning Hands".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brboA3"))
ActionOverride(Player6,DestroyItem("c#brboA3"))
GiveItemCreate("c#brboA9",Player6,1,0,0)~ + book_01
/* "c#brboAA" */
+ ~!PartyHasItem("c#brboAA") Global("C#Br_BoIS_AA","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Fireball".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brboA3"))
ActionOverride(Player6,DestroyItem("c#brboA3"))
GiveItemCreate("c#brboAA",Player6,1,0,0)~ + book_01
+ ~Global("c#brbok2","GLOBAL",0)~ + ~(You leave the current page with the spell "True Seeing" open and put the book away again.)~ EXIT
+ ~Global("c#brbok2","GLOBAL",1)~ + ~(You already used the book today. The page can't be turned until after your next rest.)~ EXIT
END

/* "c#brboA4" */
IF ~HasItem("c#brboA4",Player6)~ THEN player6_04
SAY ~(You take the Book of Infinite Spells into your hands.)~ [c#ablank]
/* "c#brboA1" */
+ ~!PartyHasItem("c#brboA1") Global("C#Br_BoIS_A1","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Invisibility".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brboA4"))
ActionOverride(Player6,DestroyItem("c#brboA4"))
GiveItemCreate("c#brboA1",Player6,1,0,0)~ + book_01
/* "c#brboA2" */
+ ~!PartyHasItem("c#brboA2") Global("C#Br_BoIS_A2","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Protection From Evil".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brboA4"))
ActionOverride(Player6,DestroyItem("c#brboA4"))
GiveItemCreate("c#brboA2",Player6,1,0,0)~ + book_01
/* "c#brboA3" */
+ ~!PartyHasItem("c#brboA3") Global("C#Br_BoIS_A3","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "True Seeing".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brboA4"))
ActionOverride(Player6,DestroyItem("c#brboA4"))
GiveItemCreate("c#brboA3",Player6,1,0,0)~ + book_01
/* "c#brboA5" */
+ ~!PartyHasItem("c#brboA5") Global("C#Br_BoIS_A5","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Spell Turning".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brboA4"))
ActionOverride(Player6,DestroyItem("c#brboA4"))
GiveItemCreate("c#brboA5",Player6,1,0,0)~ + book_01
/* "c#brboA6" */
+ ~!PartyHasItem("c#brboA6") Global("C#Br_BoIS_A6","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Wyvern Call".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brboA4"))
ActionOverride(Player6,DestroyItem("c#brboA4"))
GiveItemCreate("c#brboA6",Player6,1,0,0)~ + book_01
/* "c#brboA7" */
+ ~!PartyHasItem("c#brboA7") Global("C#Br_BoIS_A7","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Stinking Cloud".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brboA4"))
ActionOverride(Player6,DestroyItem("c#brboA4"))
GiveItemCreate("c#brboA7",Player6,1,0,0)~ + book_01
/* "c#brboA8" */
+ ~!PartyHasItem("c#brboA8") Global("C#Br_BoIS_A8","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Lightning Bolt".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brboA4"))
ActionOverride(Player6,DestroyItem("c#brboA4"))
GiveItemCreate("c#brboA8",Player6,1,0,0)~ + book_01
/* "c#brboA9" */
+ ~!PartyHasItem("c#brboA9") Global("C#Br_BoIS_A9","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Burning Hands".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brboA4"))
ActionOverride(Player6,DestroyItem("c#brboA4"))
GiveItemCreate("c#brboA9",Player6,1,0,0)~ + book_01
/* "c#brboAA" */
+ ~!PartyHasItem("c#brboAA") Global("C#Br_BoIS_AA","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Fireball".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brboA4"))
ActionOverride(Player6,DestroyItem("c#brboA4"))
GiveItemCreate("c#brboAA",Player6,1,0,0)~ + book_01
+ ~Global("c#brbok2","GLOBAL",0)~ + ~(You leave the current page with the spell "Farsight" open and put the book away again.)~ EXIT
+ ~Global("c#brbok2","GLOBAL",1)~ + ~(You already used the book today. The page can't be turned until after your next rest.)~ EXIT
END

/* "c#brboA5" */
IF ~HasItem("c#brboA5",Player6)~ THEN player6_05
SAY ~(You take the Book of Infinite Spells into your hands.)~ [c#ablank]
/* "c#brboA1" */
+ ~!PartyHasItem("c#brboA1") Global("C#Br_BoIS_A1","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Invisibility".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brboA5"))
ActionOverride(Player6,DestroyItem("c#brboA5"))
GiveItemCreate("c#brboA1",Player6,1,0,0)~ + book_01
/* "c#brboA2" */
+ ~!PartyHasItem("c#brboA2") Global("C#Br_BoIS_A2","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Protection From Evil".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brboA5"))
ActionOverride(Player6,DestroyItem("c#brboA5"))
GiveItemCreate("c#brboA2",Player6,1,0,0)~ + book_01
/* "c#brboA3" */
+ ~!PartyHasItem("c#brboA3") Global("C#Br_BoIS_A3","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "True Seeing".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brboA5"))
ActionOverride(Player6,DestroyItem("c#brboA5"))
GiveItemCreate("c#brboA3",Player6,1,0,0)~ + book_01
/* "c#brboA4" */
+ ~!PartyHasItem("c#brboA4") Global("C#Br_BoIS_A4","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Farsight".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brboA5"))
ActionOverride(Player6,DestroyItem("c#brboA5"))
GiveItemCreate("c#brboA4",Player6,1,0,0)~ + book_01
/* "c#brboA6" */
+ ~!PartyHasItem("c#brboA6") Global("C#Br_BoIS_A6","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Wyvern Call".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brboA5"))
ActionOverride(Player6,DestroyItem("c#brboA5"))
GiveItemCreate("c#brboA6",Player6,1,0,0)~ + book_01
/* "c#brboA7" */
+ ~!PartyHasItem("c#brboA7") Global("C#Br_BoIS_A7","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Stinking Cloud".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brboA5"))
ActionOverride(Player6,DestroyItem("c#brboA5"))
GiveItemCreate("c#brboA7",Player6,1,0,0)~ + book_01
/* "c#brboA8" */
+ ~!PartyHasItem("c#brboA8") Global("C#Br_BoIS_A8","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Lightning Bolt".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brboA5"))
ActionOverride(Player6,DestroyItem("c#brboA5"))
GiveItemCreate("c#brboA8",Player6,1,0,0)~ + book_01
/* "c#brboA9" */
+ ~!PartyHasItem("c#brboA9") Global("C#Br_BoIS_A9","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Burning Hands".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brboA5"))
ActionOverride(Player6,DestroyItem("c#brboA5"))
GiveItemCreate("c#brboA9",Player6,1,0,0)~ + book_01
/* "c#brboAA" */
+ ~!PartyHasItem("c#brboAA") Global("C#Br_BoIS_AA","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Fireball".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brboA5"))
ActionOverride(Player6,DestroyItem("c#brboA5"))
GiveItemCreate("c#brboAA",Player6,1,0,0)~ + book_01
+ ~Global("c#brbok2","GLOBAL",0)~ + ~(You leave the current page with the spell "Spell Turning" open and put the book away again.)~ EXIT
+ ~Global("c#brbok2","GLOBAL",1)~ + ~(You already used the book today. The page can't be turned until after your next rest.)~ EXIT
END

/* "c#brboA6" */
IF ~HasItem("c#brboA6",Player6)~ THEN player6_06
SAY ~(You take the Book of Infinite Spells into your hands.)~ [c#ablank]
/* "c#brboA1" */
+ ~!PartyHasItem("c#brboA1") Global("C#Br_BoIS_A1","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Invisibility".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brboA6"))
ActionOverride(Player6,DestroyItem("c#brboA6"))
GiveItemCreate("c#brboA1",Player6,1,0,0)~ + book_01
/* "c#brboA2" */
+ ~!PartyHasItem("c#brboA2") Global("C#Br_BoIS_A2","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Protection From Evil".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brboA6"))
ActionOverride(Player6,DestroyItem("c#brboA6"))
GiveItemCreate("c#brboA2",Player6,1,0,0)~ + book_01
/* "c#brboA3" */
+ ~!PartyHasItem("c#brboA3") Global("C#Br_BoIS_A3","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "True Seeing".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brboA6"))
ActionOverride(Player6,DestroyItem("c#brboA6"))
GiveItemCreate("c#brboA3",Player6,1,0,0)~ + book_01
/* "c#brboA4" */
+ ~!PartyHasItem("c#brboA4") Global("C#Br_BoIS_A4","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Farsight".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brboA6"))
ActionOverride(Player6,DestroyItem("c#brboA6"))
GiveItemCreate("c#brboA4",Player6,1,0,0)~ + book_01
/* "c#brboA5" */
+ ~!PartyHasItem("c#brboA5") Global("C#Br_BoIS_A5","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Spell Turning".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brboA6"))
ActionOverride(Player6,DestroyItem("c#brboA6"))
GiveItemCreate("c#brboA5",Player6,1,0,0)~ + book_01
/* "c#brboA7" */
+ ~!PartyHasItem("c#brboA7") Global("C#Br_BoIS_A7","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Stinking Cloud".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brboA6"))
ActionOverride(Player6,DestroyItem("c#brboA6"))
GiveItemCreate("c#brboA7",Player6,1,0,0)~ + book_01
/* "c#brboA8" */
+ ~!PartyHasItem("c#brboA8") Global("C#Br_BoIS_A8","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Lightning Bolt".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brboA6"))
ActionOverride(Player6,DestroyItem("c#brboA6"))
GiveItemCreate("c#brboA8",Player6,1,0,0)~ + book_01
/* "c#brboA9" */
+ ~!PartyHasItem("c#brboA9") Global("C#Br_BoIS_A9","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Burning Hands".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brboA6"))
ActionOverride(Player6,DestroyItem("c#brboA6"))
GiveItemCreate("c#brboA9",Player6,1,0,0)~ + book_01
/* "c#brboAA" */
+ ~!PartyHasItem("c#brboAA") Global("C#Br_BoIS_AA","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Fireball".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brboA6"))
ActionOverride(Player6,DestroyItem("c#brboA6"))
GiveItemCreate("c#brboAA",Player6,1,0,0)~ + book_01
+ ~Global("c#brbok2","GLOBAL",0)~ + ~(You leave the current page with the spell "Wyvern Call" open and put the book away again.)~ EXIT
+ ~Global("c#brbok2","GLOBAL",1)~ + ~(You already used the book today. The page can't be turned until after your next rest.)~ EXIT
END

/* "c#brboA7" */
IF ~HasItem("c#brboA7",Player6)~ THEN player6_07
SAY ~(You take the Book of Infinite Spells into your hands.)~ [c#ablank]
/* "c#brboA1" */
+ ~!PartyHasItem("c#brboA1") Global("C#Br_BoIS_A1","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Invisibility".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brboA7"))
ActionOverride(Player6,DestroyItem("c#brboA7"))
GiveItemCreate("c#brboA1",Player6,1,0,0)~ + book_01
/* "c#brboA2" */
+ ~!PartyHasItem("c#brboA2") Global("C#Br_BoIS_A2","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Protection From Evil".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brboA7"))
ActionOverride(Player6,DestroyItem("c#brboA7"))
GiveItemCreate("c#brboA2",Player6,1,0,0)~ + book_01
/* "c#brboA3" */
+ ~!PartyHasItem("c#brboA3") Global("C#Br_BoIS_A3","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "True Seeing".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brboA7"))
ActionOverride(Player6,DestroyItem("c#brboA7"))
GiveItemCreate("c#brboA3",Player6,1,0,0)~ + book_01
/* "c#brboA4" */
+ ~!PartyHasItem("c#brboA4") Global("C#Br_BoIS_A4","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Farsight".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brboA7"))
ActionOverride(Player6,DestroyItem("c#brboA7"))
GiveItemCreate("c#brboA4",Player6,1,0,0)~ + book_01
/* "c#brboA5" */
+ ~!PartyHasItem("c#brboA5") Global("C#Br_BoIS_A5","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Spell Turning".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brboA7"))
ActionOverride(Player6,DestroyItem("c#brboA7"))
GiveItemCreate("c#brboA5",Player6,1,0,0)~ + book_01
/* "c#brboA6" */
+ ~!PartyHasItem("c#brboA6") Global("C#Br_BoIS_A6","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Wyvern Call".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brboA7"))
ActionOverride(Player6,DestroyItem("c#brboA7"))
GiveItemCreate("c#brboA6",Player6,1,0,0)~ + book_01
/* "c#brboA8" */
+ ~!PartyHasItem("c#brboA8") Global("C#Br_BoIS_A8","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Lightning Bolt".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brboA7"))
ActionOverride(Player6,DestroyItem("c#brboA7"))
GiveItemCreate("c#brboA8",Player6,1,0,0)~ + book_01
/* "c#brboA9" */
+ ~!PartyHasItem("c#brboA9") Global("C#Br_BoIS_A9","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Burning Hands".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brboA7"))
ActionOverride(Player6,DestroyItem("c#brboA7"))
GiveItemCreate("c#brboA9",Player6,1,0,0)~ + book_01
/* "c#brboAA" */
+ ~!PartyHasItem("c#brboAA") Global("C#Br_BoIS_AA","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Fireball".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brboA7"))
ActionOverride(Player6,DestroyItem("c#brboA7"))
GiveItemCreate("c#brboAA",Player6,1,0,0)~ + book_01
+ ~Global("c#brbok2","GLOBAL",0)~ + ~(You leave the current page with the spell "Stinking Cloud" open and put the book away again.)~ EXIT
+ ~Global("c#brbok2","GLOBAL",1)~ + ~(You already used the book today. The page can't be turned until after your next rest.)~ EXIT
END

/* "c#brboA8" */
IF ~HasItem("c#brboA8",Player6)~ THEN player6_08
SAY ~(You take the Book of Infinite Spells into your hands.)~ [c#ablank]
/* "c#brboA1" */
+ ~!PartyHasItem("c#brboA1") Global("C#Br_BoIS_A1","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Invisibility".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brboA8"))
ActionOverride(Player6,DestroyItem("c#brboA8"))
GiveItemCreate("c#brboA1",Player6,1,0,0)~ + book_01
/* "c#brboA2" */
+ ~!PartyHasItem("c#brboA2") Global("C#Br_BoIS_A2","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Protection From Evil".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brboA8"))
ActionOverride(Player6,DestroyItem("c#brboA8"))
GiveItemCreate("c#brboA2",Player6,1,0,0)~ + book_01
/* "c#brboA3" */
+ ~!PartyHasItem("c#brboA3") Global("C#Br_BoIS_A3","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "True Seeing".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brboA8"))
ActionOverride(Player6,DestroyItem("c#brboA8"))
GiveItemCreate("c#brboA3",Player6,1,0,0)~ + book_01
/* "c#brboA4" */
+ ~!PartyHasItem("c#brboA4") Global("C#Br_BoIS_A4","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Farsight".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brboA8"))
ActionOverride(Player6,DestroyItem("c#brboA8"))
GiveItemCreate("c#brboA4",Player6,1,0,0)~ + book_01
/* "c#brboA5" */
+ ~!PartyHasItem("c#brboA5") Global("C#Br_BoIS_A5","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Spell Turning".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brboA8"))
ActionOverride(Player6,DestroyItem("c#brboA8"))
GiveItemCreate("c#brboA5",Player6,1,0,0)~ + book_01
/* "c#brboA6" */
+ ~!PartyHasItem("c#brboA6") Global("C#Br_BoIS_A6","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Wyvern Call".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brboA8"))
ActionOverride(Player6,DestroyItem("c#brboA8"))
GiveItemCreate("c#brboA6",Player6,1,0,0)~ + book_01
/* "c#brboA7" */
+ ~!PartyHasItem("c#brboA7") Global("C#Br_BoIS_A7","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Stinking Cloud".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brboA8"))
ActionOverride(Player6,DestroyItem("c#brboA8"))
GiveItemCreate("c#brboA7",Player6,1,0,0)~ + book_01
/* "c#brboA9" */
+ ~!PartyHasItem("c#brboA9") Global("C#Br_BoIS_A9","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Burning Hands".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brboA8"))
ActionOverride(Player6,DestroyItem("c#brboA8"))
GiveItemCreate("c#brboA9",Player6,1,0,0)~ + book_01
/* "c#brboAA" */
+ ~!PartyHasItem("c#brboAA") Global("C#Br_BoIS_AA","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Fireball".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brboA8"))
ActionOverride(Player6,DestroyItem("c#brboA8"))
GiveItemCreate("c#brboAA",Player6,1,0,0)~ + book_01
+ ~Global("c#brbok2","GLOBAL",0)~ + ~(You leave the current page with the spell "Lightning Bolt" open and put the book away again.)~ EXIT
+ ~Global("c#brbok2","GLOBAL",1)~ + ~(You already used the book today. The page can't be turned until after your next rest.)~ EXIT
END

/* "c#brboA9" */
IF ~HasItem("c#brboA9",Player6)~ THEN player6_09
SAY ~(You take the Book of Infinite Spells into your hands.)~ [c#ablank]
/* "c#brboA1" */
+ ~!PartyHasItem("c#brboA1") Global("C#Br_BoIS_A1","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Invisibility".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brboA9"))
ActionOverride(Player6,DestroyItem("c#brboA9"))
GiveItemCreate("c#brboA1",Player6,1,0,0)~ + book_01
/* "c#brboA2" */
+ ~!PartyHasItem("c#brboA2") Global("C#Br_BoIS_A2","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Protection From Evil".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brboA9"))
ActionOverride(Player6,DestroyItem("c#brboA9"))
GiveItemCreate("c#brboA2",Player6,1,0,0)~ + book_01
/* "c#brboA3" */
+ ~!PartyHasItem("c#brboA3") Global("C#Br_BoIS_A3","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "True Seeing".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brboA9"))
ActionOverride(Player6,DestroyItem("c#brboA9"))
GiveItemCreate("c#brboA3",Player6,1,0,0)~ + book_01
/* "c#brboA4" */
+ ~!PartyHasItem("c#brboA4") Global("C#Br_BoIS_A4","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Farsight".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brboA9"))
ActionOverride(Player6,DestroyItem("c#brboA9"))
GiveItemCreate("c#brboA4",Player6,1,0,0)~ + book_01
/* "c#brboA5" */
+ ~!PartyHasItem("c#brboA5") Global("C#Br_BoIS_A5","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Spell Turning".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brboA9"))
ActionOverride(Player6,DestroyItem("c#brboA9"))
GiveItemCreate("c#brboA5",Player6,1,0,0)~ + book_01
/* "c#brboA6" */
+ ~!PartyHasItem("c#brboA6") Global("C#Br_BoIS_A6","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Wyvern Call".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brboA9"))
ActionOverride(Player6,DestroyItem("c#brboA9"))
GiveItemCreate("c#brboA6",Player6,1,0,0)~ + book_01
/* "c#brboA7" */
+ ~!PartyHasItem("c#brboA7") Global("C#Br_BoIS_A7","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Stinking Cloud".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brboA9"))
ActionOverride(Player6,DestroyItem("c#brboA9"))
GiveItemCreate("c#brboA7",Player6,1,0,0)~ + book_01
/* "c#brboA8" */
+ ~!PartyHasItem("c#brboA8") Global("C#Br_BoIS_A8","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Lightning Bolt".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brboA9"))
ActionOverride(Player6,DestroyItem("c#brboA9"))
GiveItemCreate("c#brboA8",Player6,1,0,0)~ + book_01
/* "c#brboAA" */
+ ~!PartyHasItem("c#brboAA") Global("C#Br_BoIS_AA","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Fireball".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brboA9"))
ActionOverride(Player6,DestroyItem("c#brboA9"))
GiveItemCreate("c#brboAA",Player6,1,0,0)~ + book_01
+ ~Global("c#brbok2","GLOBAL",0)~ + ~(You leave the current page with the spell "Burning Hands" open and put the book away again.)~ EXIT
+ ~Global("c#brbok2","GLOBAL",1)~ + ~(You already used the book today. The page can't be turned until after your next rest.)~ EXIT
END

/* "c#brboAA" */
IF ~HasItem("c#brboAA",Player6)~ THEN player6_10
SAY ~(You take the Book of Infinite Spells into your hands.)~ [c#ablank]
/* "c#brboA1" */
+ ~!PartyHasItem("c#brboA1") Global("C#Br_BoIS_A1","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Invisibility".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brboAA"))
ActionOverride(Player6,DestroyItem("c#brboAA"))
GiveItemCreate("c#brboA1",Player6,1,0,0)~ + book_01
/* "c#brboA2" */
+ ~!PartyHasItem("c#brboA2") Global("C#Br_BoIS_A2","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Protection From Evil".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brboAA"))
ActionOverride(Player6,DestroyItem("c#brboAA"))
GiveItemCreate("c#brboA2",Player6,1,0,0)~ + book_01
/* "c#brboA3" */
+ ~!PartyHasItem("c#brboA3") Global("C#Br_BoIS_A3","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "True Seeing".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brboAA"))
ActionOverride(Player6,DestroyItem("c#brboAA"))
GiveItemCreate("c#brboA3",Player6,1,0,0)~ + book_01
/* "c#brboA4" */
+ ~!PartyHasItem("c#brboA4") Global("C#Br_BoIS_A4","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Farsight".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brboAA"))
ActionOverride(Player6,DestroyItem("c#brboAA"))
GiveItemCreate("c#brboA4",Player6,1,0,0)~ + book_01
/* "c#brboA5" */
+ ~!PartyHasItem("c#brboA5") Global("C#Br_BoIS_A5","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Spell Turning".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brboAA"))
ActionOverride(Player6,DestroyItem("c#brboAA"))
GiveItemCreate("c#brboA5",Player6,1,0,0)~ + book_01
/* "c#brboA6" */
+ ~!PartyHasItem("c#brboA6") Global("C#Br_BoIS_A6","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Wyvern Call".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brboAA"))
ActionOverride(Player6,DestroyItem("c#brboAA"))
GiveItemCreate("c#brboA6",Player6,1,0,0)~ + book_01
/* "c#brboA7" */
+ ~!PartyHasItem("c#brboA7") Global("C#Br_BoIS_A7","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Stinking Cloud".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brboAA"))
ActionOverride(Player6,DestroyItem("c#brboAA"))
GiveItemCreate("c#brboA7",Player6,1,0,0)~ + book_01
/* "c#brboA8" */
+ ~!PartyHasItem("c#brboA8") Global("C#Br_BoIS_A8","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Lightning Bolt".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brboAA"))
ActionOverride(Player6,DestroyItem("c#brboAA"))
GiveItemCreate("c#brboA8",Player6,1,0,0)~ + book_01
/* "c#brboAA" */
+ ~!PartyHasItem("c#brboA9") Global("C#Br_BoIS_A9","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Burning Hands".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brboAA"))
ActionOverride(Player6,DestroyItem("c#brboAA"))
GiveItemCreate("c#brboA9",Player6,1,0,0)~ + book_01
+ ~Global("c#brbok2","GLOBAL",0)~ + ~(You leave the current page with the spell "Fireball" open and put the book away again.)~ EXIT
+ ~Global("c#brbok2","GLOBAL",1)~ + ~(You already used the book today. The page can't be turned until after your next rest.)~ EXIT
END

/* Player7-10 */

/* "c#brboA1" */
IF ~PartyHasItem("c#brboA1")
!HasItem("c#brboA1",Player1)
!HasItem("c#brboA1",Player2)
!HasItem("c#brboA1",Player3)
!HasItem("c#brboA1",Player4)
!HasItem("c#brboA1",Player5)
!HasItem("c#brboA1",Player6)~ THEN player7_01
SAY ~(You take the Book of Infinite Spells into your hands.)~ [c#ablank]
/* "c#brboA2" */
+ ~!PartyHasItem("c#brboA2") Global("C#Br_BoIS_A2","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Protection From Evil".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboA1"))
ActionOverride(Player1,DestroyItem("c#brboA1"))
GiveItemCreate("c#brboA2",Player1,1,0,0)~ + book_01
/* "c#brboA3" */
+ ~!PartyHasItem("c#brboA3") Global("C#Br_BoIS_A3","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "True Seeing".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboA1"))
ActionOverride(Player1,DestroyItem("c#brboA1"))
GiveItemCreate("c#brboA3",Player1,1,0,0)~ + book_01
/* "c#brboA4" */
+ ~!PartyHasItem("c#brboA4") Global("C#Br_BoIS_A4","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Farsight".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboA1"))
ActionOverride(Player1,DestroyItem("c#brboA1"))
GiveItemCreate("c#brboA4",Player1,1,0,0)~ + book_01
/* "c#brboA5" */
+ ~!PartyHasItem("c#brboA5") Global("C#Br_BoIS_A5","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Spell Turning".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboA1"))
ActionOverride(Player1,DestroyItem("c#brboA1"))
GiveItemCreate("c#brboA5",Player1,1,0,0)~ + book_01
/* "c#brboA6" */
+ ~!PartyHasItem("c#brboA6") Global("C#Br_BoIS_A6","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Wyvern Call".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboA1"))
ActionOverride(Player1,DestroyItem("c#brboA1"))
GiveItemCreate("c#brboA6",Player1,1,0,0)~ + book_01
/* "c#brboA7" */
+ ~!PartyHasItem("c#brboA7") Global("C#Br_BoIS_A7","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Stinking Cloud".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboA1"))
ActionOverride(Player1,DestroyItem("c#brboA1"))
GiveItemCreate("c#brboA7",Player1,1,0,0)~ + book_01
/* "c#brboA8" */
+ ~!PartyHasItem("c#brboA8") Global("C#Br_BoIS_A8","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Lightning Bolt".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboA1"))
ActionOverride(Player1,DestroyItem("c#brboA1"))
GiveItemCreate("c#brboA8",Player1,1,0,0)~ + book_01
/* "c#brboA9" */
+ ~!PartyHasItem("c#brboA9") Global("C#Br_BoIS_A9","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Burning Hands".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboA1"))
ActionOverride(Player1,DestroyItem("c#brboA1"))
GiveItemCreate("c#brboA9",Player1,1,0,0)~ + book_01
/* "c#brboAA" */
+ ~!PartyHasItem("c#brboAA") Global("C#Br_BoIS_AA","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Fireball".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboA1"))
ActionOverride(Player1,DestroyItem("c#brboA1"))
GiveItemCreate("c#brboAA",Player1,1,0,0)~ + book_01
+ ~Global("c#brbok2","GLOBAL",0)~ + ~(You leave the current page with the spell "Invisibility" open and put the book away again.)~ EXIT
+ ~Global("c#brbok2","GLOBAL",1)~ + ~(You already used the book today. The page can't be turned until after your next rest.)~ EXIT
END

/* "c#brboA2" */
IF ~PartyHasItem("c#brboA2")
!HasItem("c#brboA2",Player1)
!HasItem("c#brboA2",Player2)
!HasItem("c#brboA2",Player3)
!HasItem("c#brboA2",Player4)
!HasItem("c#brboA2",Player5)
!HasItem("c#brboA2",Player6)~ THEN player7_02
SAY ~(You take the Book of Infinite Spells into your hands.)~ [c#ablank]
/* "c#brboA1" */
+ ~!PartyHasItem("c#brboA1") Global("C#Br_BoIS_A1","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Invisibility".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboA2"))
ActionOverride(Player1,DestroyItem("c#brboA2"))
GiveItemCreate("c#brboA1",Player1,1,0,0)~ + book_01
/* "c#brboA3" */
+ ~!PartyHasItem("c#brboA3") Global("C#Br_BoIS_A3","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "True Seeing".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboA2"))
ActionOverride(Player1,DestroyItem("c#brboA2"))
GiveItemCreate("c#brboA3",Player1,1,0,0)~ + book_01
/* "c#brboA4" */
+ ~!PartyHasItem("c#brboA4") Global("C#Br_BoIS_A4","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Farsight".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboA2"))
ActionOverride(Player1,DestroyItem("c#brboA2"))
GiveItemCreate("c#brboA4",Player1,1,0,0)~ + book_01
/* "c#brboA5" */
+ ~!PartyHasItem("c#brboA5") Global("C#Br_BoIS_A5","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Spell Turning".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboA2"))
ActionOverride(Player1,DestroyItem("c#brboA2"))
GiveItemCreate("c#brboA5",Player1,1,0,0)~ + book_01
/* "c#brboA6" */
+ ~!PartyHasItem("c#brboA6") Global("C#Br_BoIS_A6","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Wyvern Call".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboA2"))
ActionOverride(Player1,DestroyItem("c#brboA2"))
GiveItemCreate("c#brboA6",Player1,1,0,0)~ + book_01
/* "c#brboA7" */
+ ~!PartyHasItem("c#brboA7") Global("C#Br_BoIS_A7","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Stinking Cloud".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboA2"))
ActionOverride(Player1,DestroyItem("c#brboA2"))
GiveItemCreate("c#brboA7",Player1,1,0,0)~ + book_01
/* "c#brboA8" */
+ ~!PartyHasItem("c#brboA8") Global("C#Br_BoIS_A8","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Lightning Bolt".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboA2"))
ActionOverride(Player1,DestroyItem("c#brboA2"))
GiveItemCreate("c#brboA8",Player1,1,0,0)~ + book_01
/* "c#brboA9" */
+ ~!PartyHasItem("c#brboA9") Global("C#Br_BoIS_A9","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Burning Hands".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboA2"))
ActionOverride(Player1,DestroyItem("c#brboA2"))
GiveItemCreate("c#brboA9",Player1,1,0,0)~ + book_01
/* "c#brboAA" */
+ ~!PartyHasItem("c#brboAA") Global("C#Br_BoIS_AA","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Fireball".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboA2"))
ActionOverride(Player1,DestroyItem("c#brboA2"))
GiveItemCreate("c#brboAA",Player1,1,0,0)~ + book_01
+ ~Global("c#brbok2","GLOBAL",0)~ + ~(You leave the current page with the spell "Protection From Evil" open and put the book away again.)~ EXIT
+ ~Global("c#brbok2","GLOBAL",1)~ + ~(You already used the book today. The page can't be turned until after your next rest.)~ EXIT
END

/* "c#brboA3" */
IF ~PartyHasItem("c#brboA3")
!HasItem("c#brboA3",Player1)
!HasItem("c#brboA3",Player2)
!HasItem("c#brboA3",Player3)
!HasItem("c#brboA3",Player4)
!HasItem("c#brboA3",Player5)
!HasItem("c#brboA3",Player6)~ THEN player7_03
SAY ~(You take the Book of Infinite Spells into your hands.)~ [c#ablank]
/* "c#brboA1" */
+ ~!PartyHasItem("c#brboA1") Global("C#Br_BoIS_A1","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Invisibility".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboA3"))
ActionOverride(Player1,DestroyItem("c#brboA3"))
GiveItemCreate("c#brboA1",Player1,1,0,0)~ + book_01
/* "c#brboA2" */
+ ~!PartyHasItem("c#brboA2") Global("C#Br_BoIS_A2","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Protection From Evil".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboA3"))
ActionOverride(Player1,DestroyItem("c#brboA3"))
GiveItemCreate("c#brboA2",Player1,1,0,0)~ + book_01
/* "c#brboA4" */
+ ~!PartyHasItem("c#brboA4") Global("C#Br_BoIS_A4","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Farsight".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboA3"))
ActionOverride(Player1,DestroyItem("c#brboA3"))
GiveItemCreate("c#brboA4",Player1,1,0,0)~ + book_01
/* "c#brboA5" */
+ ~!PartyHasItem("c#brboA5") Global("C#Br_BoIS_A5","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Spell Turning".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboA3"))
ActionOverride(Player1,DestroyItem("c#brboA3"))
GiveItemCreate("c#brboA5",Player1,1,0,0)~ + book_01
/* "c#brboA6" */
+ ~!PartyHasItem("c#brboA6") Global("C#Br_BoIS_A6","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Wyvern Call".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboA3"))
ActionOverride(Player1,DestroyItem("c#brboA3"))
GiveItemCreate("c#brboA6",Player1,1,0,0)~ + book_01
/* "c#brboA7" */
+ ~!PartyHasItem("c#brboA7") Global("C#Br_BoIS_A7","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Stinking Cloud".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboA3"))
ActionOverride(Player1,DestroyItem("c#brboA3"))
GiveItemCreate("c#brboA7",Player1,1,0,0)~ + book_01
/* "c#brboA8" */
+ ~!PartyHasItem("c#brboA8") Global("C#Br_BoIS_A8","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Lightning Bolt".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboA3"))
ActionOverride(Player1,DestroyItem("c#brboA3"))
GiveItemCreate("c#brboA8",Player1,1,0,0)~ + book_01
/* "c#brboA9" */
+ ~!PartyHasItem("c#brboA9") Global("C#Br_BoIS_A9","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Burning Hands".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboA3"))
ActionOverride(Player1,DestroyItem("c#brboA3"))
GiveItemCreate("c#brboA9",Player1,1,0,0)~ + book_01
/* "c#brboAA" */
+ ~!PartyHasItem("c#brboAA") Global("C#Br_BoIS_AA","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Fireball".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboA3"))
ActionOverride(Player1,DestroyItem("c#brboA3"))
GiveItemCreate("c#brboAA",Player1,1,0,0)~ + book_01
+ ~Global("c#brbok2","GLOBAL",0)~ + ~(You leave the current page with the spell "True Seeing" open and put the book away again.)~ EXIT
+ ~Global("c#brbok2","GLOBAL",1)~ + ~(You already used the book today. The page can't be turned until after your next rest.)~ EXIT
END

/* "c#brboA4" */
IF ~PartyHasItem("c#brboA4")
!HasItem("c#brboA4",Player1)
!HasItem("c#brboA4",Player2)
!HasItem("c#brboA4",Player3)
!HasItem("c#brboA4",Player4)
!HasItem("c#brboA4",Player5)
!HasItem("c#brboA4",Player6)~ THEN player7_04
SAY ~(You take the Book of Infinite Spells into your hands.)~ [c#ablank]
/* "c#brboA1" */
+ ~!PartyHasItem("c#brboA1") Global("C#Br_BoIS_A1","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Invisibility".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboA4"))
ActionOverride(Player1,DestroyItem("c#brboA4"))
GiveItemCreate("c#brboA1",Player1,1,0,0)~ + book_01
/* "c#brboA2" */
+ ~!PartyHasItem("c#brboA2") Global("C#Br_BoIS_A2","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Protection From Evil".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboA4"))
ActionOverride(Player1,DestroyItem("c#brboA4"))
GiveItemCreate("c#brboA2",Player1,1,0,0)~ + book_01
/* "c#brboA3" */
+ ~!PartyHasItem("c#brboA3") Global("C#Br_BoIS_A3","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "True Seeing".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboA4"))
ActionOverride(Player1,DestroyItem("c#brboA4"))
GiveItemCreate("c#brboA3",Player1,1,0,0)~ + book_01
/* "c#brboA5" */
+ ~!PartyHasItem("c#brboA5") Global("C#Br_BoIS_A5","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Spell Turning".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboA4"))
ActionOverride(Player1,DestroyItem("c#brboA4"))
GiveItemCreate("c#brboA5",Player1,1,0,0)~ + book_01
/* "c#brboA6" */
+ ~!PartyHasItem("c#brboA6") Global("C#Br_BoIS_A6","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Wyvern Call".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboA4"))
ActionOverride(Player1,DestroyItem("c#brboA4"))
GiveItemCreate("c#brboA6",Player1,1,0,0)~ + book_01
/* "c#brboA7" */
+ ~!PartyHasItem("c#brboA7") Global("C#Br_BoIS_A7","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Stinking Cloud".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboA4"))
ActionOverride(Player1,DestroyItem("c#brboA4"))
GiveItemCreate("c#brboA7",Player1,1,0,0)~ + book_01
/* "c#brboA8" */
+ ~!PartyHasItem("c#brboA8") Global("C#Br_BoIS_A8","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Lightning Bolt".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboA4"))
ActionOverride(Player1,DestroyItem("c#brboA4"))
GiveItemCreate("c#brboA8",Player1,1,0,0)~ + book_01
/* "c#brboA9" */
+ ~!PartyHasItem("c#brboA9") Global("C#Br_BoIS_A9","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Burning Hands".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboA4"))
ActionOverride(Player1,DestroyItem("c#brboA4"))
GiveItemCreate("c#brboA9",Player1,1,0,0)~ + book_01
/* "c#brboAA" */
+ ~!PartyHasItem("c#brboAA") Global("C#Br_BoIS_AA","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Fireball".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboA4"))
ActionOverride(Player1,DestroyItem("c#brboA4"))
GiveItemCreate("c#brboAA",Player1,1,0,0)~ + book_01
+ ~Global("c#brbok2","GLOBAL",0)~ + ~(You leave the current page with the spell "Farsight" open and put the book away again.)~ EXIT
+ ~Global("c#brbok2","GLOBAL",1)~ + ~(You already used the book today. The page can't be turned until after your next rest.)~ EXIT
END

/* "c#brboA5" */
IF ~PartyHasItem("c#brboA5")
!HasItem("c#brboA5",Player1)
!HasItem("c#brboA5",Player2)
!HasItem("c#brboA5",Player3)
!HasItem("c#brboA5",Player4)
!HasItem("c#brboA5",Player5)
!HasItem("c#brboA5",Player6)~ THEN player7_05
SAY ~(You take the Book of Infinite Spells into your hands.)~ [c#ablank]
/* "c#brboA1" */
+ ~!PartyHasItem("c#brboA1") Global("C#Br_BoIS_A1","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Invisibility".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboA5"))
ActionOverride(Player1,DestroyItem("c#brboA5"))
GiveItemCreate("c#brboA1",Player1,1,0,0)~ + book_01
/* "c#brboA2" */
+ ~!PartyHasItem("c#brboA2") Global("C#Br_BoIS_A2","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Protection From Evil".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboA5"))
ActionOverride(Player1,DestroyItem("c#brboA5"))
GiveItemCreate("c#brboA2",Player1,1,0,0)~ + book_01
/* "c#brboA3" */
+ ~!PartyHasItem("c#brboA3") Global("C#Br_BoIS_A3","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "True Seeing".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboA5"))
ActionOverride(Player1,DestroyItem("c#brboA5"))
GiveItemCreate("c#brboA3",Player1,1,0,0)~ + book_01
/* "c#brboA4" */
+ ~!PartyHasItem("c#brboA4") Global("C#Br_BoIS_A4","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Farsight".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboA5"))
ActionOverride(Player1,DestroyItem("c#brboA5"))
GiveItemCreate("c#brboA4",Player1,1,0,0)~ + book_01
/* "c#brboA6" */
+ ~!PartyHasItem("c#brboA6") Global("C#Br_BoIS_A6","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Wyvern Call".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboA5"))
ActionOverride(Player1,DestroyItem("c#brboA5"))
GiveItemCreate("c#brboA6",Player1,1,0,0)~ + book_01
/* "c#brboA7" */
+ ~!PartyHasItem("c#brboA7") Global("C#Br_BoIS_A7","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Stinking Cloud".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboA5"))
ActionOverride(Player1,DestroyItem("c#brboA5"))
GiveItemCreate("c#brboA7",Player1,1,0,0)~ + book_01
/* "c#brboA8" */
+ ~!PartyHasItem("c#brboA8") Global("C#Br_BoIS_A8","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Lightning Bolt".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboA5"))
ActionOverride(Player1,DestroyItem("c#brboA5"))
GiveItemCreate("c#brboA8",Player1,1,0,0)~ + book_01
/* "c#brboA9" */
+ ~!PartyHasItem("c#brboA9") Global("C#Br_BoIS_A9","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Burning Hands".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboA5"))
ActionOverride(Player1,DestroyItem("c#brboA5"))
GiveItemCreate("c#brboA9",Player1,1,0,0)~ + book_01
/* "c#brboAA" */
+ ~!PartyHasItem("c#brboAA") Global("C#Br_BoIS_AA","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Fireball".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboA5"))
ActionOverride(Player1,DestroyItem("c#brboA5"))
GiveItemCreate("c#brboAA",Player1,1,0,0)~ + book_01
+ ~Global("c#brbok2","GLOBAL",0)~ + ~(You leave the current page with the spell "Spell Turning" open and put the book away again.)~ EXIT
+ ~Global("c#brbok2","GLOBAL",1)~ + ~(You already used the book today. The page can't be turned until after your next rest.)~ EXIT
END

/* "c#brboA6" */
IF ~PartyHasItem("c#brboA6")
!HasItem("c#brboA6",Player1)
!HasItem("c#brboA6",Player2)
!HasItem("c#brboA6",Player3)
!HasItem("c#brboA6",Player4)
!HasItem("c#brboA6",Player5)
!HasItem("c#brboA6",Player6)~ THEN player7_06
SAY ~(You take the Book of Infinite Spells into your hands.)~ [c#ablank]
/* "c#brboA1" */
+ ~!PartyHasItem("c#brboA1") Global("C#Br_BoIS_A1","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Invisibility".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboA6"))
ActionOverride(Player1,DestroyItem("c#brboA6"))
GiveItemCreate("c#brboA1",Player1,1,0,0)~ + book_01
/* "c#brboA2" */
+ ~!PartyHasItem("c#brboA2") Global("C#Br_BoIS_A2","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Protection From Evil".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboA6"))
ActionOverride(Player1,DestroyItem("c#brboA6"))
GiveItemCreate("c#brboA2",Player1,1,0,0)~ + book_01
/* "c#brboA3" */
+ ~!PartyHasItem("c#brboA3") Global("C#Br_BoIS_A3","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "True Seeing".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboA6"))
ActionOverride(Player1,DestroyItem("c#brboA6"))
GiveItemCreate("c#brboA3",Player1,1,0,0)~ + book_01
/* "c#brboA4" */
+ ~!PartyHasItem("c#brboA4") Global("C#Br_BoIS_A4","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Farsight".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboA6"))
ActionOverride(Player1,DestroyItem("c#brboA6"))
GiveItemCreate("c#brboA4",Player1,1,0,0)~ + book_01
/* "c#brboA5" */
+ ~!PartyHasItem("c#brboA5") Global("C#Br_BoIS_A5","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Spell Turning".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboA6"))
ActionOverride(Player1,DestroyItem("c#brboA6"))
GiveItemCreate("c#brboA5",Player1,1,0,0)~ + book_01
/* "c#brboA7" */
+ ~!PartyHasItem("c#brboA7") Global("C#Br_BoIS_A7","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Stinking Cloud".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboA6"))
ActionOverride(Player1,DestroyItem("c#brboA6"))
GiveItemCreate("c#brboA7",Player1,1,0,0)~ + book_01
/* "c#brboA8" */
+ ~!PartyHasItem("c#brboA8") Global("C#Br_BoIS_A8","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Lightning Bolt".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboA6"))
ActionOverride(Player1,DestroyItem("c#brboA6"))
GiveItemCreate("c#brboA8",Player1,1,0,0)~ + book_01
/* "c#brboA9" */
+ ~!PartyHasItem("c#brboA9") Global("C#Br_BoIS_A9","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Burning Hands".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboA6"))
ActionOverride(Player1,DestroyItem("c#brboA6"))
GiveItemCreate("c#brboA9",Player1,1,0,0)~ + book_01
/* "c#brboAA" */
+ ~!PartyHasItem("c#brboAA") Global("C#Br_BoIS_AA","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Fireball".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboA6"))
ActionOverride(Player1,DestroyItem("c#brboA6"))
GiveItemCreate("c#brboAA",Player1,1,0,0)~ + book_01
+ ~Global("c#brbok2","GLOBAL",0)~ + ~(You leave the current page with the spell "Wyvern Call" open and put the book away again.)~ EXIT
+ ~Global("c#brbok2","GLOBAL",1)~ + ~(You already used the book today. The page can't be turned until after your next rest.)~ EXIT
END

/* "c#brboA7" */
IF ~PartyHasItem("c#brboA7")
!HasItem("c#brboA7",Player1)
!HasItem("c#brboA7",Player2)
!HasItem("c#brboA7",Player3)
!HasItem("c#brboA7",Player4)
!HasItem("c#brboA7",Player5)
!HasItem("c#brboA7",Player6)~ THEN player7_07
SAY ~(You take the Book of Infinite Spells into your hands.)~ [c#ablank]
/* "c#brboA1" */
+ ~!PartyHasItem("c#brboA1") Global("C#Br_BoIS_A1","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Invisibility".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboA7"))
ActionOverride(Player1,DestroyItem("c#brboA7"))
GiveItemCreate("c#brboA1",Player1,1,0,0)~ + book_01
/* "c#brboA2" */
+ ~!PartyHasItem("c#brboA2") Global("C#Br_BoIS_A2","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Protection From Evil".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboA7"))
ActionOverride(Player1,DestroyItem("c#brboA7"))
GiveItemCreate("c#brboA2",Player1,1,0,0)~ + book_01
/* "c#brboA3" */
+ ~!PartyHasItem("c#brboA3") Global("C#Br_BoIS_A3","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "True Seeing".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboA7"))
ActionOverride(Player1,DestroyItem("c#brboA7"))
GiveItemCreate("c#brboA3",Player1,1,0,0)~ + book_01
/* "c#brboA4" */
+ ~!PartyHasItem("c#brboA4") Global("C#Br_BoIS_A4","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Farsight".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboA7"))
ActionOverride(Player1,DestroyItem("c#brboA7"))
GiveItemCreate("c#brboA4",Player1,1,0,0)~ + book_01
/* "c#brboA5" */
+ ~!PartyHasItem("c#brboA5") Global("C#Br_BoIS_A5","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Spell Turning".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboA7"))
ActionOverride(Player1,DestroyItem("c#brboA7"))
GiveItemCreate("c#brboA5",Player1,1,0,0)~ + book_01
/* "c#brboA6" */
+ ~!PartyHasItem("c#brboA6") Global("C#Br_BoIS_A6","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Wyvern Call".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboA7"))
ActionOverride(Player1,DestroyItem("c#brboA7"))
GiveItemCreate("c#brboA6",Player1,1,0,0)~ + book_01
/* "c#brboA8" */
+ ~!PartyHasItem("c#brboA8") Global("C#Br_BoIS_A8","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Lightning Bolt".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboA7"))
ActionOverride(Player1,DestroyItem("c#brboA7"))
GiveItemCreate("c#brboA8",Player1,1,0,0)~ + book_01
/* "c#brboA9" */
+ ~!PartyHasItem("c#brboA9") Global("C#Br_BoIS_A9","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Burning Hands".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboA7"))
ActionOverride(Player1,DestroyItem("c#brboA7"))
GiveItemCreate("c#brboA9",Player1,1,0,0)~ + book_01
/* "c#brboAA" */
+ ~!PartyHasItem("c#brboAA") Global("C#Br_BoIS_AA","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Fireball".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboA7"))
ActionOverride(Player1,DestroyItem("c#brboA7"))
GiveItemCreate("c#brboAA",Player1,1,0,0)~ + book_01
+ ~Global("c#brbok2","GLOBAL",0)~ + ~(You leave the current page with the spell "Stinking Cloud" open and put the book away again.)~ EXIT
+ ~Global("c#brbok2","GLOBAL",1)~ + ~(You already used the book today. The page can't be turned until after your next rest.)~ EXIT
END

/* "c#brboA8" */
IF ~PartyHasItem("c#brboA8")
!HasItem("c#brboA8",Player1)
!HasItem("c#brboA8",Player2)
!HasItem("c#brboA8",Player3)
!HasItem("c#brboA8",Player4)
!HasItem("c#brboA8",Player5)
!HasItem("c#brboA8",Player6)~ THEN player7_08
SAY ~(You take the Book of Infinite Spells into your hands.)~ [c#ablank]
/* "c#brboA1" */
+ ~!PartyHasItem("c#brboA1") Global("C#Br_BoIS_A1","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Invisibility".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboA8"))
ActionOverride(Player1,DestroyItem("c#brboA8"))
GiveItemCreate("c#brboA1",Player1,1,0,0)~ + book_01
/* "c#brboA2" */
+ ~!PartyHasItem("c#brboA2") Global("C#Br_BoIS_A2","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Protection From Evil".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboA8"))
ActionOverride(Player1,DestroyItem("c#brboA8"))
GiveItemCreate("c#brboA2",Player1,1,0,0)~ + book_01
/* "c#brboA3" */
+ ~!PartyHasItem("c#brboA3") Global("C#Br_BoIS_A3","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "True Seeing".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboA8"))
ActionOverride(Player1,DestroyItem("c#brboA8"))
GiveItemCreate("c#brboA3",Player1,1,0,0)~ + book_01
/* "c#brboA4" */
+ ~!PartyHasItem("c#brboA4") Global("C#Br_BoIS_A4","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Farsight".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboA8"))
ActionOverride(Player1,DestroyItem("c#brboA8"))
GiveItemCreate("c#brboA4",Player1,1,0,0)~ + book_01
/* "c#brboA5" */
+ ~!PartyHasItem("c#brboA5") Global("C#Br_BoIS_A5","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Spell Turning".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboA8"))
ActionOverride(Player1,DestroyItem("c#brboA8"))
GiveItemCreate("c#brboA5",Player1,1,0,0)~ + book_01
/* "c#brboA6" */
+ ~!PartyHasItem("c#brboA6") Global("C#Br_BoIS_A6","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Wyvern Call".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboA8"))
ActionOverride(Player1,DestroyItem("c#brboA8"))
GiveItemCreate("c#brboA6",Player1,1,0,0)~ + book_01
/* "c#brboA7" */
+ ~!PartyHasItem("c#brboA7") Global("C#Br_BoIS_A7","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Stinking Cloud".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboA8"))
ActionOverride(Player1,DestroyItem("c#brboA8"))
GiveItemCreate("c#brboA7",Player1,1,0,0)~ + book_01
/* "c#brboA9" */
+ ~!PartyHasItem("c#brboA9") Global("C#Br_BoIS_A9","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Burning Hands".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboA8"))
ActionOverride(Player1,DestroyItem("c#brboA8"))
GiveItemCreate("c#brboA9",Player1,1,0,0)~ + book_01
/* "c#brboAA" */
+ ~!PartyHasItem("c#brboAA") Global("C#Br_BoIS_AA","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Fireball".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboA8"))
ActionOverride(Player1,DestroyItem("c#brboA8"))
GiveItemCreate("c#brboAA",Player1,1,0,0)~ + book_01
+ ~Global("c#brbok2","GLOBAL",0)~ + ~(You leave the current page with the spell "Lightning Bolt" open and put the book away again.)~ EXIT
+ ~Global("c#brbok2","GLOBAL",1)~ + ~(You already used the book today. The page can't be turned until after your next rest.)~ EXIT
END

/* "c#brboA9" */
IF ~PartyHasItem("c#brboA9")
!HasItem("c#brboA9",Player1)
!HasItem("c#brboA9",Player2)
!HasItem("c#brboA9",Player3)
!HasItem("c#brboA9",Player4)
!HasItem("c#brboA9",Player5)
!HasItem("c#brboA9",Player6)~ THEN player7_09
SAY ~(You take the Book of Infinite Spells into your hands.)~ [c#ablank]
/* "c#brboA1" */
+ ~!PartyHasItem("c#brboA1") Global("C#Br_BoIS_A1","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Invisibility".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboA9"))
ActionOverride(Player1,DestroyItem("c#brboA9"))
GiveItemCreate("c#brboA1",Player1,1,0,0)~ + book_01
/* "c#brboA2" */
+ ~!PartyHasItem("c#brboA2") Global("C#Br_BoIS_A2","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Protection From Evil".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboA9"))
ActionOverride(Player1,DestroyItem("c#brboA9"))
GiveItemCreate("c#brboA2",Player1,1,0,0)~ + book_01
/* "c#brboA3" */
+ ~!PartyHasItem("c#brboA3") Global("C#Br_BoIS_A3","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "True Seeing".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboA9"))
ActionOverride(Player1,DestroyItem("c#brboA9"))
GiveItemCreate("c#brboA3",Player1,1,0,0)~ + book_01
/* "c#brboA4" */
+ ~!PartyHasItem("c#brboA4") Global("C#Br_BoIS_A4","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Farsight".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboA9"))
ActionOverride(Player1,DestroyItem("c#brboA9"))
GiveItemCreate("c#brboA4",Player1,1,0,0)~ + book_01
/* "c#brboA5" */
+ ~!PartyHasItem("c#brboA5") Global("C#Br_BoIS_A5","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Spell Turning".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboA9"))
ActionOverride(Player1,DestroyItem("c#brboA9"))
GiveItemCreate("c#brboA5",Player1,1,0,0)~ + book_01
/* "c#brboA6" */
+ ~!PartyHasItem("c#brboA6") Global("C#Br_BoIS_A6","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Wyvern Call".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboA9"))
ActionOverride(Player1,DestroyItem("c#brboA9"))
GiveItemCreate("c#brboA6",Player1,1,0,0)~ + book_01
/* "c#brboA7" */
+ ~!PartyHasItem("c#brboA7") Global("C#Br_BoIS_A7","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Stinking Cloud".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboA9"))
ActionOverride(Player1,DestroyItem("c#brboA9"))
GiveItemCreate("c#brboA7",Player1,1,0,0)~ + book_01
/* "c#brboA8" */
+ ~!PartyHasItem("c#brboA8") Global("C#Br_BoIS_A8","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Lightning Bolt".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboA9"))
ActionOverride(Player1,DestroyItem("c#brboA9"))
GiveItemCreate("c#brboA8",Player1,1,0,0)~ + book_01
/* "c#brboAA" */
+ ~!PartyHasItem("c#brboAA") Global("C#Br_BoIS_AA","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Fireball".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboA9"))
ActionOverride(Player1,DestroyItem("c#brboA9"))
GiveItemCreate("c#brboAA",Player1,1,0,0)~ + book_01
+ ~Global("c#brbok2","GLOBAL",0)~ + ~(You leave the current page with the spell "Burning Hands" open and put the book away again.)~ EXIT
+ ~Global("c#brbok2","GLOBAL",1)~ + ~(You already used the book today. The page can't be turned until after your next rest.)~ EXIT
END

/* "c#brboAA" */
IF ~PartyHasItem("c#brboAA")
!HasItem("c#brboAA",Player1)
!HasItem("c#brboAA",Player2)
!HasItem("c#brboAA",Player3)
!HasItem("c#brboAA",Player4)
!HasItem("c#brboAA",Player5)
!HasItem("c#brboAA",Player6)~ THEN player7_10
SAY ~(You take the Book of Infinite Spells into your hands.)~ [c#ablank]
/* "c#brboA1" */
+ ~!PartyHasItem("c#brboA1") Global("C#Br_BoIS_A1","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Invisibility".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboAA"))
ActionOverride(Player1,DestroyItem("c#brboAA"))
GiveItemCreate("c#brboA1",Player1,1,0,0)~ + book_01
/* "c#brboA2" */
+ ~!PartyHasItem("c#brboA2") Global("C#Br_BoIS_A2","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Protection From Evil".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboAA"))
ActionOverride(Player1,DestroyItem("c#brboAA"))
GiveItemCreate("c#brboA2",Player1,1,0,0)~ + book_01
/* "c#brboA3" */
+ ~!PartyHasItem("c#brboA3") Global("C#Br_BoIS_A3","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "True Seeing".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboAA"))
ActionOverride(Player1,DestroyItem("c#brboAA"))
GiveItemCreate("c#brboA3",Player1,1,0,0)~ + book_01
/* "c#brboA4" */
+ ~!PartyHasItem("c#brboA4") Global("C#Br_BoIS_A4","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Farsight".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboAA"))
ActionOverride(Player1,DestroyItem("c#brboAA"))
GiveItemCreate("c#brboA4",Player1,1,0,0)~ + book_01
/* "c#brboA5" */
+ ~!PartyHasItem("c#brboA5") Global("C#Br_BoIS_A5","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Spell Turning".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboAA"))
ActionOverride(Player1,DestroyItem("c#brboAA"))
GiveItemCreate("c#brboA5",Player1,1,0,0)~ + book_01
/* "c#brboA6" */
+ ~!PartyHasItem("c#brboA6") Global("C#Br_BoIS_A6","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Wyvern Call".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboAA"))
ActionOverride(Player1,DestroyItem("c#brboAA"))
GiveItemCreate("c#brboA6",Player1,1,0,0)~ + book_01
/* "c#brboA7" */
+ ~!PartyHasItem("c#brboA7") Global("C#Br_BoIS_A7","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Stinking Cloud".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboAA"))
ActionOverride(Player1,DestroyItem("c#brboAA"))
GiveItemCreate("c#brboA7",Player1,1,0,0)~ + book_01
/* "c#brboA8" */
+ ~!PartyHasItem("c#brboA8") Global("C#Br_BoIS_A8","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Lightning Bolt".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboAA"))
ActionOverride(Player1,DestroyItem("c#brboAA"))
GiveItemCreate("c#brboA8",Player1,1,0,0)~ + book_01
/* "c#brboAA" */
+ ~!PartyHasItem("c#brboA9") Global("C#Br_BoIS_A9","GLOBAL",1)
Global("c#brbok2","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Burning Hands".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brboAA"))
ActionOverride(Player1,DestroyItem("c#brboAA"))
GiveItemCreate("c#brboA9",Player1,1,0,0)~ + book_01
+ ~Global("c#brbok2","GLOBAL",0)~ + ~(You leave the current page with the spell "Fireball" open and put the book away again.)~ EXIT
+ ~Global("c#brbok2","GLOBAL",1)~ + ~(You already used the book today. The page can't be turned until after your next rest.)~ EXIT
END


IF ~~ THEN book_01
SAY ~(The book shows the new page now.)~
IF ~~ THEN EXIT
END