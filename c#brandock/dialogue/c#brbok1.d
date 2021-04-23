/* "Book dialogue": conversable item, for turning the pages */

BEGIN c#brbok1

/* Player1 */

/* "c#brbo01" */
IF ~HasItem("c#brbo01",Player1)~ THEN player1_01
SAY ~(You take the book into your  hand.)~ [c#ablank]
/* "c#brbo02" */
+ ~!PartyHasItem("c#brbo02") GlobalGT("C#Br_WriteBookPage02","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Minor Sequencer".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo01"))
ActionOverride(Player1,DestroyItem("c#brbo01"))
GiveItemCreate("c#brbo02",Player1,1,0,0)~ + book_01
/* "c#brbo03" */
+ ~!PartyHasItem("c#brbo03") GlobalGT("C#Br_WriteBookPage03","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Breach".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo01"))
ActionOverride(Player1,DestroyItem("c#brbo01"))
GiveItemCreate("c#brbo03",Player1,1,0,0)~ + book_01
/* "c#brbo04" */
+ ~!PartyHasItem("c#brbo04") GlobalGT("C#Br_WriteBookPage04","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Spell Deflection".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo01"))
ActionOverride(Player1,DestroyItem("c#brbo01"))
GiveItemCreate("c#brbo04",Player1,1,0,0)~ + book_01
/* "c#brbo05" */
+ ~!PartyHasItem("c#brbo05") GlobalGT("C#Br_WriteBookPage05","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Mass Invisibility".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo01"))
ActionOverride(Player1,DestroyItem("c#brbo01"))
GiveItemCreate("c#brbo05",Player1,1,0,0)~ + book_01
/* "c#brbo06" */
+ ~!PartyHasItem("c#brbo06") GlobalGT("C#Br_WriteBookPage06","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Summon Efreeti".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo01"))
ActionOverride(Player1,DestroyItem("c#brbo01"))
GiveItemCreate("c#brbo06",Player1,1,0,0)~ + book_01
/* "c#brbo07" */
+ ~!PartyHasItem("c#brbo07") GlobalGT("C#Br_WriteBookPage07","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Bigby's Clenched Fist".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo01"))
ActionOverride(Player1,DestroyItem("c#brbo01"))
GiveItemCreate("c#brbo07",Player1,1,0,0)~ + book_01
/* "c#brbo08" */
+ ~!PartyHasItem("c#brbo08") GlobalGT("C#Br_WriteBookPage08","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Pierce Shield".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo01"))
ActionOverride(Player1,DestroyItem("c#brbo01"))
GiveItemCreate("c#brbo08",Player1,1,0,0)~ + book_01
/* "c#brbo09" */
+ ~!PartyHasItem("c#brbo09") GlobalGT("C#Br_WriteBookPage09","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Bigby's Crushing Hand".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo01"))
ActionOverride(Player1,DestroyItem("c#brbo01"))
GiveItemCreate("c#brbo09",Player1,1,0,0)~ + book_01
/* "c#brbo10" */
+ ~!PartyHasItem("c#brbo10") GlobalGT("C#Br_WriteBookPage10","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Chain Contingency".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo01"))
ActionOverride(Player1,DestroyItem("c#brbo01"))
GiveItemCreate("c#brbo10",Player1,1,0,0)~ + book_01
+ ~Global("c#brbok1","GLOBAL",0)~ + ~(You leave the current page with the spell "Fireball" open and put the book away again.)~ EXIT
+ ~Global("c#brbok1","GLOBAL",1)~ + ~(You already used the book today. The page can't be turned until after your next rest.)~ EXIT
END

/* "c#brbo02" */
IF ~HasItem("c#brbo02",Player1)~ THEN player1_02
SAY ~(You take the book into your  hand.)~ [c#ablank]
/* "c#brbo01" */
+ ~!PartyHasItem("c#brbo01") GlobalGT("C#Br_WriteBookPage01","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Fireball".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo02"))
ActionOverride(Player1,DestroyItem("c#brbo02"))
GiveItemCreate("c#brbo01",Player1,1,0,0)~ + book_01
/* "c#brbo03" */
+ ~!PartyHasItem("c#brbo03") GlobalGT("C#Br_WriteBookPage03","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Breach".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo02"))
ActionOverride(Player1,DestroyItem("c#brbo02"))
GiveItemCreate("c#brbo03",Player1,1,0,0)~ + book_01
/* "c#brbo04" */
+ ~!PartyHasItem("c#brbo04") GlobalGT("C#Br_WriteBookPage04","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Spell Deflection".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo02"))
ActionOverride(Player1,DestroyItem("c#brbo02"))
GiveItemCreate("c#brbo04",Player1,1,0,0)~ + book_01
/* "c#brbo05" */
+ ~!PartyHasItem("c#brbo05") GlobalGT("C#Br_WriteBookPage05","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Mass Invisibility".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo02"))
ActionOverride(Player1,DestroyItem("c#brbo02"))
GiveItemCreate("c#brbo05",Player1,1,0,0)~ + book_01
/* "c#brbo06" */
+ ~!PartyHasItem("c#brbo06") GlobalGT("C#Br_WriteBookPage06","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Summon Efreeti".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo02"))
ActionOverride(Player1,DestroyItem("c#brbo02"))
GiveItemCreate("c#brbo06",Player1,1,0,0)~ + book_01
/* "c#brbo07" */
+ ~!PartyHasItem("c#brbo07") GlobalGT("C#Br_WriteBookPage07","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Bigby's Clenched Fist".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo02"))
ActionOverride(Player1,DestroyItem("c#brbo02"))
GiveItemCreate("c#brbo07",Player1,1,0,0)~ + book_01
/* "c#brbo08" */
+ ~!PartyHasItem("c#brbo08") GlobalGT("C#Br_WriteBookPage08","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Pierce Shield".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo02"))
ActionOverride(Player1,DestroyItem("c#brbo02"))
GiveItemCreate("c#brbo08",Player1,1,0,0)~ + book_01
/* "c#brbo09" */
+ ~!PartyHasItem("c#brbo09") GlobalGT("C#Br_WriteBookPage09","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Bigby's Crushing Hand".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo02"))
ActionOverride(Player1,DestroyItem("c#brbo02"))
GiveItemCreate("c#brbo09",Player1,1,0,0)~ + book_01
/* "c#brbo10" */
+ ~!PartyHasItem("c#brbo10") GlobalGT("C#Br_WriteBookPage10","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Chain Contingency".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo02"))
ActionOverride(Player1,DestroyItem("c#brbo02"))
GiveItemCreate("c#brbo10",Player1,1,0,0)~ + book_01
+ ~Global("c#brbok1","GLOBAL",0)~ + ~(You leave the current page with the spell "Minor Sequencer" open and put the book away again.)~ EXIT
+ ~Global("c#brbok1","GLOBAL",1)~ + ~(You already used the book today. The page can't be turned until after your next rest.)~ EXIT
END

/* "c#brbo03" */
IF ~HasItem("c#brbo03",Player1)~ THEN player1_03
SAY ~(You take the book into your  hand.)~ [c#ablank]
/* "c#brbo01" */
+ ~!PartyHasItem("c#brbo01") GlobalGT("C#Br_WriteBookPage01","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Fireball".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo03"))
ActionOverride(Player1,DestroyItem("c#brbo03"))
GiveItemCreate("c#brbo01",Player1,1,0,0)~ + book_01
/* "c#brbo02" */
+ ~!PartyHasItem("c#brbo02") GlobalGT("C#Br_WriteBookPage02","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Minor Sequencer".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo03"))
ActionOverride(Player1,DestroyItem("c#brbo03"))
GiveItemCreate("c#brbo02",Player1,1,0,0)~ + book_01
/* "c#brbo04" */
+ ~!PartyHasItem("c#brbo04") GlobalGT("C#Br_WriteBookPage04","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Spell Deflection".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo03"))
ActionOverride(Player1,DestroyItem("c#brbo03"))
GiveItemCreate("c#brbo04",Player1,1,0,0)~ + book_01
/* "c#brbo05" */
+ ~!PartyHasItem("c#brbo05") GlobalGT("C#Br_WriteBookPage05","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Mass Invisibility".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo03"))
ActionOverride(Player1,DestroyItem("c#brbo03"))
GiveItemCreate("c#brbo05",Player1,1,0,0)~ + book_01
/* "c#brbo06" */
+ ~!PartyHasItem("c#brbo06") GlobalGT("C#Br_WriteBookPage06","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Summon Efreeti".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo03"))
ActionOverride(Player1,DestroyItem("c#brbo03"))
GiveItemCreate("c#brbo06",Player1,1,0,0)~ + book_01
/* "c#brbo07" */
+ ~!PartyHasItem("c#brbo07") GlobalGT("C#Br_WriteBookPage07","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Bigby's Clenched Fist".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo03"))
ActionOverride(Player1,DestroyItem("c#brbo03"))
GiveItemCreate("c#brbo07",Player1,1,0,0)~ + book_01
/* "c#brbo08" */
+ ~!PartyHasItem("c#brbo08") GlobalGT("C#Br_WriteBookPage08","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Pierce Shield".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo03"))
ActionOverride(Player1,DestroyItem("c#brbo03"))
GiveItemCreate("c#brbo08",Player1,1,0,0)~ + book_01
/* "c#brbo09" */
+ ~!PartyHasItem("c#brbo09") GlobalGT("C#Br_WriteBookPage09","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Bigby's Crushing Hand".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo03"))
ActionOverride(Player1,DestroyItem("c#brbo03"))
GiveItemCreate("c#brbo09",Player1,1,0,0)~ + book_01
/* "c#brbo10" */
+ ~!PartyHasItem("c#brbo10") GlobalGT("C#Br_WriteBookPage10","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Chain Contingency".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo03"))
ActionOverride(Player1,DestroyItem("c#brbo03"))
GiveItemCreate("c#brbo10",Player1,1,0,0)~ + book_01
+ ~Global("c#brbok1","GLOBAL",0)~ + ~(You leave the current page with the spell "Breach" open and put the book away again.)~ EXIT
+ ~Global("c#brbok1","GLOBAL",1)~ + ~(You already used the book today. The page can't be turned until after your next rest.)~ EXIT
END

/* "c#brbo04" */
IF ~HasItem("c#brbo04",Player1)~ THEN player1_04
SAY ~(You take the book into your  hand.)~ [c#ablank]
/* "c#brbo01" */
+ ~!PartyHasItem("c#brbo01") GlobalGT("C#Br_WriteBookPage01","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Fireball".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo04"))
ActionOverride(Player1,DestroyItem("c#brbo04"))
GiveItemCreate("c#brbo01",Player1,1,0,0)~ + book_01
/* "c#brbo02" */
+ ~!PartyHasItem("c#brbo02") GlobalGT("C#Br_WriteBookPage02","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Minor Sequencer".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo04"))
ActionOverride(Player1,DestroyItem("c#brbo04"))
GiveItemCreate("c#brbo02",Player1,1,0,0)~ + book_01
/* "c#brbo03" */
+ ~!PartyHasItem("c#brbo03") GlobalGT("C#Br_WriteBookPage03","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Breach".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo04"))
ActionOverride(Player1,DestroyItem("c#brbo04"))
GiveItemCreate("c#brbo03",Player1,1,0,0)~ + book_01
/* "c#brbo05" */
+ ~!PartyHasItem("c#brbo05") GlobalGT("C#Br_WriteBookPage05","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Mass Invisibility".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo04"))
ActionOverride(Player1,DestroyItem("c#brbo04"))
GiveItemCreate("c#brbo05",Player1,1,0,0)~ + book_01
/* "c#brbo06" */
+ ~!PartyHasItem("c#brbo06") GlobalGT("C#Br_WriteBookPage06","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Summon Efreeti".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo04"))
ActionOverride(Player1,DestroyItem("c#brbo04"))
GiveItemCreate("c#brbo06",Player1,1,0,0)~ + book_01
/* "c#brbo07" */
+ ~!PartyHasItem("c#brbo07") GlobalGT("C#Br_WriteBookPage07","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Bigby's Clenched Fist".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo04"))
ActionOverride(Player1,DestroyItem("c#brbo04"))
GiveItemCreate("c#brbo07",Player1,1,0,0)~ + book_01
/* "c#brbo08" */
+ ~!PartyHasItem("c#brbo08") GlobalGT("C#Br_WriteBookPage08","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Pierce Shield".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo04"))
ActionOverride(Player1,DestroyItem("c#brbo04"))
GiveItemCreate("c#brbo08",Player1,1,0,0)~ + book_01
/* "c#brbo09" */
+ ~!PartyHasItem("c#brbo09") GlobalGT("C#Br_WriteBookPage09","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Bigby's Crushing Hand".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo04"))
ActionOverride(Player1,DestroyItem("c#brbo04"))
GiveItemCreate("c#brbo09",Player1,1,0,0)~ + book_01
/* "c#brbo10" */
+ ~!PartyHasItem("c#brbo10") GlobalGT("C#Br_WriteBookPage10","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Chain Contingency".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo04"))
ActionOverride(Player1,DestroyItem("c#brbo04"))
GiveItemCreate("c#brbo10",Player1,1,0,0)~ + book_01
+ ~Global("c#brbok1","GLOBAL",0)~ + ~(You leave the current page with the spell "Spell Deflection" open and put the book away again.)~ EXIT
+ ~Global("c#brbok1","GLOBAL",1)~ + ~(You already used the book today. The page can't be turned until after your next rest.)~ EXIT
END

/* "c#brbo05" */
IF ~HasItem("c#brbo05",Player1)~ THEN player1_05
SAY ~(You take the book into your  hand.)~ [c#ablank]
/* "c#brbo01" */
+ ~!PartyHasItem("c#brbo01") GlobalGT("C#Br_WriteBookPage01","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Fireball".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo05"))
ActionOverride(Player1,DestroyItem("c#brbo05"))
GiveItemCreate("c#brbo01",Player1,1,0,0)~ + book_01
/* "c#brbo02" */
+ ~!PartyHasItem("c#brbo02") GlobalGT("C#Br_WriteBookPage02","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Minor Sequencer".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo05"))
ActionOverride(Player1,DestroyItem("c#brbo05"))
GiveItemCreate("c#brbo02",Player1,1,0,0)~ + book_01
/* "c#brbo03" */
+ ~!PartyHasItem("c#brbo03") GlobalGT("C#Br_WriteBookPage03","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Breach".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo05"))
ActionOverride(Player1,DestroyItem("c#brbo05"))
GiveItemCreate("c#brbo03",Player1,1,0,0)~ + book_01
/* "c#brbo04" */
+ ~!PartyHasItem("c#brbo04") GlobalGT("C#Br_WriteBookPage04","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Spell Deflection".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo05"))
ActionOverride(Player1,DestroyItem("c#brbo05"))
GiveItemCreate("c#brbo04",Player1,1,0,0)~ + book_01
/* "c#brbo06" */
+ ~!PartyHasItem("c#brbo06") GlobalGT("C#Br_WriteBookPage06","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Summon Efreeti".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo05"))
ActionOverride(Player1,DestroyItem("c#brbo05"))
GiveItemCreate("c#brbo06",Player1,1,0,0)~ + book_01
/* "c#brbo07" */
+ ~!PartyHasItem("c#brbo07") GlobalGT("C#Br_WriteBookPage07","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Bigby's Clenched Fist".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo05"))
ActionOverride(Player1,DestroyItem("c#brbo05"))
GiveItemCreate("c#brbo07",Player1,1,0,0)~ + book_01
/* "c#brbo08" */
+ ~!PartyHasItem("c#brbo08") GlobalGT("C#Br_WriteBookPage08","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Pierce Shield".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo05"))
ActionOverride(Player1,DestroyItem("c#brbo05"))
GiveItemCreate("c#brbo08",Player1,1,0,0)~ + book_01
/* "c#brbo09" */
+ ~!PartyHasItem("c#brbo09") GlobalGT("C#Br_WriteBookPage09","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Bigby's Crushing Hand".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo05"))
ActionOverride(Player1,DestroyItem("c#brbo05"))
GiveItemCreate("c#brbo09",Player1,1,0,0)~ + book_01
/* "c#brbo10" */
+ ~!PartyHasItem("c#brbo10") GlobalGT("C#Br_WriteBookPage10","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Chain Contingency".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo05"))
ActionOverride(Player1,DestroyItem("c#brbo05"))
GiveItemCreate("c#brbo10",Player1,1,0,0)~ + book_01
+ ~Global("c#brbok1","GLOBAL",0)~ + ~(You leave the current page with the spell "Mass Invisibility" open and put the book away again.)~ EXIT
+ ~Global("c#brbok1","GLOBAL",1)~ + ~(You already used the book today. The page can't be turned until after your next rest.)~ EXIT
END

/* "c#brbo06" */
IF ~HasItem("c#brbo06",Player1)~ THEN player1_06
SAY ~(You take the book into your  hand.)~ [c#ablank]
/* "c#brbo01" */
+ ~!PartyHasItem("c#brbo01") GlobalGT("C#Br_WriteBookPage01","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Fireball".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo06"))
ActionOverride(Player1,DestroyItem("c#brbo06"))
GiveItemCreate("c#brbo01",Player1,1,0,0)~ + book_01
/* "c#brbo02" */
+ ~!PartyHasItem("c#brbo02") GlobalGT("C#Br_WriteBookPage02","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Minor Sequencer".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo06"))
ActionOverride(Player1,DestroyItem("c#brbo06"))
GiveItemCreate("c#brbo02",Player1,1,0,0)~ + book_01
/* "c#brbo03" */
+ ~!PartyHasItem("c#brbo03") GlobalGT("C#Br_WriteBookPage03","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Breach".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo06"))
ActionOverride(Player1,DestroyItem("c#brbo06"))
GiveItemCreate("c#brbo03",Player1,1,0,0)~ + book_01
/* "c#brbo04" */
+ ~!PartyHasItem("c#brbo04") GlobalGT("C#Br_WriteBookPage04","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Spell Deflection".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo06"))
ActionOverride(Player1,DestroyItem("c#brbo06"))
GiveItemCreate("c#brbo04",Player1,1,0,0)~ + book_01
/* "c#brbo05" */
+ ~!PartyHasItem("c#brbo05") GlobalGT("C#Br_WriteBookPage05","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Mass Invisibility".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo06"))
ActionOverride(Player1,DestroyItem("c#brbo06"))
GiveItemCreate("c#brbo05",Player1,1,0,0)~ + book_01
/* "c#brbo07" */
+ ~!PartyHasItem("c#brbo07") GlobalGT("C#Br_WriteBookPage07","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Bigby's Clenched Fist".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo06"))
ActionOverride(Player1,DestroyItem("c#brbo06"))
GiveItemCreate("c#brbo07",Player1,1,0,0)~ + book_01
/* "c#brbo08" */
+ ~!PartyHasItem("c#brbo08") GlobalGT("C#Br_WriteBookPage08","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Pierce Shield".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo06"))
ActionOverride(Player1,DestroyItem("c#brbo06"))
GiveItemCreate("c#brbo08",Player1,1,0,0)~ + book_01
/* "c#brbo09" */
+ ~!PartyHasItem("c#brbo09") GlobalGT("C#Br_WriteBookPage09","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Bigby's Crushing Hand".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo06"))
ActionOverride(Player1,DestroyItem("c#brbo06"))
GiveItemCreate("c#brbo09",Player1,1,0,0)~ + book_01
/* "c#brbo10" */
+ ~!PartyHasItem("c#brbo10") GlobalGT("C#Br_WriteBookPage10","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Chain Contingency".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo06"))
ActionOverride(Player1,DestroyItem("c#brbo06"))
GiveItemCreate("c#brbo10",Player1,1,0,0)~ + book_01
+ ~Global("c#brbok1","GLOBAL",0)~ + ~(You leave the current page with the spell "Summon Efreeti" open and put the book away again.)~ EXIT
+ ~Global("c#brbok1","GLOBAL",1)~ + ~(You already used the book today. The page can't be turned until after your next rest.)~ EXIT
END

/* "c#brbo07" */
IF ~HasItem("c#brbo07",Player1)~ THEN player1_07
SAY ~(You take the book into your  hand.)~ [c#ablank]
/* "c#brbo01" */
+ ~!PartyHasItem("c#brbo01") GlobalGT("C#Br_WriteBookPage01","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Fireball".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo07"))
ActionOverride(Player1,DestroyItem("c#brbo07"))
GiveItemCreate("c#brbo01",Player1,1,0,0)~ + book_01
/* "c#brbo02" */
+ ~!PartyHasItem("c#brbo02") GlobalGT("C#Br_WriteBookPage02","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Minor Sequencer".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo07"))
ActionOverride(Player1,DestroyItem("c#brbo07"))
GiveItemCreate("c#brbo02",Player1,1,0,0)~ + book_01
/* "c#brbo03" */
+ ~!PartyHasItem("c#brbo03") GlobalGT("C#Br_WriteBookPage03","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Breach".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo07"))
ActionOverride(Player1,DestroyItem("c#brbo07"))
GiveItemCreate("c#brbo03",Player1,1,0,0)~ + book_01
/* "c#brbo04" */
+ ~!PartyHasItem("c#brbo04") GlobalGT("C#Br_WriteBookPage04","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Spell Deflection".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo07"))
ActionOverride(Player1,DestroyItem("c#brbo07"))
GiveItemCreate("c#brbo04",Player1,1,0,0)~ + book_01
/* "c#brbo05" */
+ ~!PartyHasItem("c#brbo05") GlobalGT("C#Br_WriteBookPage05","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Mass Invisibility".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo07"))
ActionOverride(Player1,DestroyItem("c#brbo07"))
GiveItemCreate("c#brbo05",Player1,1,0,0)~ + book_01
/* "c#brbo06" */
+ ~!PartyHasItem("c#brbo06") GlobalGT("C#Br_WriteBookPage06","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Summon Efreeti".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo07"))
ActionOverride(Player1,DestroyItem("c#brbo07"))
GiveItemCreate("c#brbo06",Player1,1,0,0)~ + book_01
/* "c#brbo08" */
+ ~!PartyHasItem("c#brbo08") GlobalGT("C#Br_WriteBookPage08","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Pierce Shield".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo07"))
ActionOverride(Player1,DestroyItem("c#brbo07"))
GiveItemCreate("c#brbo08",Player1,1,0,0)~ + book_01
/* "c#brbo09" */
+ ~!PartyHasItem("c#brbo09") GlobalGT("C#Br_WriteBookPage09","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Bigby's Crushing Hand".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo07"))
ActionOverride(Player1,DestroyItem("c#brbo07"))
GiveItemCreate("c#brbo09",Player1,1,0,0)~ + book_01
/* "c#brbo10" */
+ ~!PartyHasItem("c#brbo10") GlobalGT("C#Br_WriteBookPage10","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Chain Contingency".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo07"))
ActionOverride(Player1,DestroyItem("c#brbo07"))
GiveItemCreate("c#brbo10",Player1,1,0,0)~ + book_01
+ ~Global("c#brbok1","GLOBAL",0)~ + ~(You leave the current page with the spell "Bigby's Clenched Fist" open and put the book away again.)~ EXIT
+ ~Global("c#brbok1","GLOBAL",1)~ + ~(You already used the book today. The page can't be turned until after your next rest.)~ EXIT
END

/* "c#brbo08" */
IF ~HasItem("c#brbo08",Player1)~ THEN player1_08
SAY ~(You take the book into your  hand.)~ [c#ablank]
/* "c#brbo01" */
+ ~!PartyHasItem("c#brbo01") GlobalGT("C#Br_WriteBookPage01","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Fireball".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo08"))
ActionOverride(Player1,DestroyItem("c#brbo08"))
GiveItemCreate("c#brbo01",Player1,1,0,0)~ + book_01
/* "c#brbo02" */
+ ~!PartyHasItem("c#brbo02") GlobalGT("C#Br_WriteBookPage02","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Minor Sequencer".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo08"))
ActionOverride(Player1,DestroyItem("c#brbo08"))
GiveItemCreate("c#brbo02",Player1,1,0,0)~ + book_01
/* "c#brbo03" */
+ ~!PartyHasItem("c#brbo03") GlobalGT("C#Br_WriteBookPage03","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Breach".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo08"))
ActionOverride(Player1,DestroyItem("c#brbo08"))
GiveItemCreate("c#brbo03",Player1,1,0,0)~ + book_01
/* "c#brbo04" */
+ ~!PartyHasItem("c#brbo04") GlobalGT("C#Br_WriteBookPage04","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Spell Deflection".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo08"))
ActionOverride(Player1,DestroyItem("c#brbo08"))
GiveItemCreate("c#brbo04",Player1,1,0,0)~ + book_01
/* "c#brbo05" */
+ ~!PartyHasItem("c#brbo05") GlobalGT("C#Br_WriteBookPage05","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Mass Invisibility".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo08"))
ActionOverride(Player1,DestroyItem("c#brbo08"))
GiveItemCreate("c#brbo05",Player1,1,0,0)~ + book_01
/* "c#brbo06" */
+ ~!PartyHasItem("c#brbo06") GlobalGT("C#Br_WriteBookPage06","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Summon Efreeti".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo08"))
ActionOverride(Player1,DestroyItem("c#brbo08"))
GiveItemCreate("c#brbo06",Player1,1,0,0)~ + book_01
/* "c#brbo07" */
+ ~!PartyHasItem("c#brbo07") GlobalGT("C#Br_WriteBookPage07","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Bigby's Clenched Fist".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo08"))
ActionOverride(Player1,DestroyItem("c#brbo08"))
GiveItemCreate("c#brbo07",Player1,1,0,0)~ + book_01
/* "c#brbo09" */
+ ~!PartyHasItem("c#brbo09") GlobalGT("C#Br_WriteBookPage09","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Bigby's Crushing Hand".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo08"))
ActionOverride(Player1,DestroyItem("c#brbo08"))
GiveItemCreate("c#brbo09",Player1,1,0,0)~ + book_01
/* "c#brbo10" */
+ ~!PartyHasItem("c#brbo10") GlobalGT("C#Br_WriteBookPage10","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Chain Contingency".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo08"))
ActionOverride(Player1,DestroyItem("c#brbo08"))
GiveItemCreate("c#brbo10",Player1,1,0,0)~ + book_01
+ ~Global("c#brbok1","GLOBAL",0)~ + ~(You leave the current page with the spell "Pierce Shield" open and put the book away again.)~ EXIT
+ ~Global("c#brbok1","GLOBAL",1)~ + ~(You already used the book today. The page can't be turned until after your next rest.)~ EXIT
END

/* "c#brbo09" */
IF ~HasItem("c#brbo09",Player1)~ THEN player1_09
SAY ~(You take the book into your  hand.)~ [c#ablank]
/* "c#brbo01" */
+ ~!PartyHasItem("c#brbo01") GlobalGT("C#Br_WriteBookPage01","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Fireball".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo09"))
ActionOverride(Player1,DestroyItem("c#brbo09"))
GiveItemCreate("c#brbo01",Player1,1,0,0)~ + book_01
/* "c#brbo02" */
+ ~!PartyHasItem("c#brbo02") GlobalGT("C#Br_WriteBookPage02","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Minor Sequencer".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo09"))
ActionOverride(Player1,DestroyItem("c#brbo09"))
GiveItemCreate("c#brbo02",Player1,1,0,0)~ + book_01
/* "c#brbo03" */
+ ~!PartyHasItem("c#brbo03") GlobalGT("C#Br_WriteBookPage03","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Breach".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo09"))
ActionOverride(Player1,DestroyItem("c#brbo09"))
GiveItemCreate("c#brbo03",Player1,1,0,0)~ + book_01
/* "c#brbo04" */
+ ~!PartyHasItem("c#brbo04") GlobalGT("C#Br_WriteBookPage04","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Spell Deflection".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo09"))
ActionOverride(Player1,DestroyItem("c#brbo09"))
GiveItemCreate("c#brbo04",Player1,1,0,0)~ + book_01
/* "c#brbo05" */
+ ~!PartyHasItem("c#brbo05") GlobalGT("C#Br_WriteBookPage05","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Mass Invisibility".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo09"))
ActionOverride(Player1,DestroyItem("c#brbo09"))
GiveItemCreate("c#brbo05",Player1,1,0,0)~ + book_01
/* "c#brbo06" */
+ ~!PartyHasItem("c#brbo06") GlobalGT("C#Br_WriteBookPage06","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Summon Efreeti".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo09"))
ActionOverride(Player1,DestroyItem("c#brbo09"))
GiveItemCreate("c#brbo06",Player1,1,0,0)~ + book_01
/* "c#brbo07" */
+ ~!PartyHasItem("c#brbo07") GlobalGT("C#Br_WriteBookPage07","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Bigby's Clenched Fist".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo09"))
ActionOverride(Player1,DestroyItem("c#brbo09"))
GiveItemCreate("c#brbo07",Player1,1,0,0)~ + book_01
/* "c#brbo08" */
+ ~!PartyHasItem("c#brbo08") GlobalGT("C#Br_WriteBookPage08","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Pierce Shield".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo09"))
ActionOverride(Player1,DestroyItem("c#brbo09"))
GiveItemCreate("c#brbo08",Player1,1,0,0)~ + book_01
/* "c#brbo10" */
+ ~!PartyHasItem("c#brbo10") GlobalGT("C#Br_WriteBookPage10","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Chain Contingency".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo09"))
ActionOverride(Player1,DestroyItem("c#brbo09"))
GiveItemCreate("c#brbo10",Player1,1,0,0)~ + book_01
+ ~Global("c#brbok1","GLOBAL",0)~ + ~(You leave the current page with the spell "Bigby's Crushing Hand" open and put the book away again.)~ EXIT
+ ~Global("c#brbok1","GLOBAL",1)~ + ~(You already used the book today. The page can't be turned until after your next rest.)~ EXIT
END

/* "c#brbo10" */
IF ~HasItem("c#brbo10",Player1)~ THEN player1_10
SAY ~(You take the book into your  hand.)~ [c#ablank]
/* "c#brbo01" */
+ ~!PartyHasItem("c#brbo01") GlobalGT("C#Br_WriteBookPage01","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Fireball".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo10"))
ActionOverride(Player1,DestroyItem("c#brbo10"))
GiveItemCreate("c#brbo01",Player1,1,0,0)~ + book_01
/* "c#brbo02" */
+ ~!PartyHasItem("c#brbo02") GlobalGT("C#Br_WriteBookPage02","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Minor Sequencer".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo10"))
ActionOverride(Player1,DestroyItem("c#brbo10"))
GiveItemCreate("c#brbo02",Player1,1,0,0)~ + book_01
/* "c#brbo03" */
+ ~!PartyHasItem("c#brbo03") GlobalGT("C#Br_WriteBookPage03","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Breach".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo10"))
ActionOverride(Player1,DestroyItem("c#brbo10"))
GiveItemCreate("c#brbo03",Player1,1,0,0)~ + book_01
/* "c#brbo04" */
+ ~!PartyHasItem("c#brbo04") GlobalGT("C#Br_WriteBookPage04","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Spell Deflection".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo10"))
ActionOverride(Player1,DestroyItem("c#brbo10"))
GiveItemCreate("c#brbo04",Player1,1,0,0)~ + book_01
/* "c#brbo05" */
+ ~!PartyHasItem("c#brbo05") GlobalGT("C#Br_WriteBookPage05","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Mass Invisibility".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo10"))
ActionOverride(Player1,DestroyItem("c#brbo10"))
GiveItemCreate("c#brbo05",Player1,1,0,0)~ + book_01
/* "c#brbo06" */
+ ~!PartyHasItem("c#brbo06") GlobalGT("C#Br_WriteBookPage06","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Summon Efreeti".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo10"))
ActionOverride(Player1,DestroyItem("c#brbo10"))
GiveItemCreate("c#brbo06",Player1,1,0,0)~ + book_01
/* "c#brbo07" */
+ ~!PartyHasItem("c#brbo07") GlobalGT("C#Br_WriteBookPage07","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Bigby's Clenched Fist".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo10"))
ActionOverride(Player1,DestroyItem("c#brbo10"))
GiveItemCreate("c#brbo07",Player1,1,0,0)~ + book_01
/* "c#brbo08" */
+ ~!PartyHasItem("c#brbo08") GlobalGT("C#Br_WriteBookPage08","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Pierce Shield".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo10"))
ActionOverride(Player1,DestroyItem("c#brbo10"))
GiveItemCreate("c#brbo08",Player1,1,0,0)~ + book_01
/* "c#brbo10" */
+ ~!PartyHasItem("c#brbo09") GlobalGT("C#Br_WriteBookPage09","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Bigby's Crushing Hand".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo10"))
ActionOverride(Player1,DestroyItem("c#brbo10"))
GiveItemCreate("c#brbo09",Player1,1,0,0)~ + book_01
+ ~Global("c#brbok1","GLOBAL",0)~ + ~(You leave the current page with the spell "Chain Contingency" open and put the book away again.)~ EXIT
+ ~Global("c#brbok1","GLOBAL",1)~ + ~(You already used the book today. The page can't be turned until after your next rest.)~ EXIT
END

/* Player2 */

/* "c#brbo01" */
IF ~HasItem("c#brbo01",Player2)~ THEN player2_01
SAY ~(You take the book into your  hand.)~ [c#ablank]
/* "c#brbo02" */
+ ~!PartyHasItem("c#brbo02") GlobalGT("C#Br_WriteBookPage02","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Minor Sequencer".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brbo01"))
ActionOverride(Player2,DestroyItem("c#brbo01"))
GiveItemCreate("c#brbo02",Player2,1,0,0)~ + book_01
/* "c#brbo03" */
+ ~!PartyHasItem("c#brbo03") GlobalGT("C#Br_WriteBookPage03","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Breach".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brbo01"))
ActionOverride(Player2,DestroyItem("c#brbo01"))
GiveItemCreate("c#brbo03",Player2,1,0,0)~ + book_01
/* "c#brbo04" */
+ ~!PartyHasItem("c#brbo04") GlobalGT("C#Br_WriteBookPage04","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Spell Deflection".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brbo01"))
ActionOverride(Player2,DestroyItem("c#brbo01"))
GiveItemCreate("c#brbo04",Player2,1,0,0)~ + book_01
/* "c#brbo05" */
+ ~!PartyHasItem("c#brbo05") GlobalGT("C#Br_WriteBookPage05","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Mass Invisibility".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brbo01"))
ActionOverride(Player2,DestroyItem("c#brbo01"))
GiveItemCreate("c#brbo05",Player2,1,0,0)~ + book_01
/* "c#brbo06" */
+ ~!PartyHasItem("c#brbo06") GlobalGT("C#Br_WriteBookPage06","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Summon Efreeti".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brbo01"))
ActionOverride(Player2,DestroyItem("c#brbo01"))
GiveItemCreate("c#brbo06",Player2,1,0,0)~ + book_01
/* "c#brbo07" */
+ ~!PartyHasItem("c#brbo07") GlobalGT("C#Br_WriteBookPage07","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Bigby's Clenched Fist".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brbo01"))
ActionOverride(Player2,DestroyItem("c#brbo01"))
GiveItemCreate("c#brbo07",Player2,1,0,0)~ + book_01
/* "c#brbo08" */
+ ~!PartyHasItem("c#brbo08") GlobalGT("C#Br_WriteBookPage08","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Pierce Shield".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brbo01"))
ActionOverride(Player2,DestroyItem("c#brbo01"))
GiveItemCreate("c#brbo08",Player2,1,0,0)~ + book_01
/* "c#brbo09" */
+ ~!PartyHasItem("c#brbo09") GlobalGT("C#Br_WriteBookPage09","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Bigby's Crushing Hand".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brbo01"))
ActionOverride(Player2,DestroyItem("c#brbo01"))
GiveItemCreate("c#brbo09",Player2,1,0,0)~ + book_01
/* "c#brbo10" */
+ ~!PartyHasItem("c#brbo10") GlobalGT("C#Br_WriteBookPage10","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Chain Contingency".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brbo01"))
ActionOverride(Player2,DestroyItem("c#brbo01"))
GiveItemCreate("c#brbo10",Player2,1,0,0)~ + book_01
+ ~Global("c#brbok1","GLOBAL",0)~ + ~(You leave the current page with the spell "Fireball" open and put the book away again.)~ EXIT
+ ~Global("c#brbok1","GLOBAL",1)~ + ~(You already used the book today. The page can't be turned until after your next rest.)~ EXIT
END

/* "c#brbo02" */
IF ~HasItem("c#brbo02",Player2)~ THEN player2_02
SAY ~(You take the book into your  hand.)~ [c#ablank]
/* "c#brbo01" */
+ ~!PartyHasItem("c#brbo01") GlobalGT("C#Br_WriteBookPage01","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Fireball".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brbo02"))
ActionOverride(Player2,DestroyItem("c#brbo02"))
GiveItemCreate("c#brbo01",Player2,1,0,0)~ + book_01
/* "c#brbo03" */
+ ~!PartyHasItem("c#brbo03") GlobalGT("C#Br_WriteBookPage03","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Breach".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brbo02"))
ActionOverride(Player2,DestroyItem("c#brbo02"))
GiveItemCreate("c#brbo03",Player2,1,0,0)~ + book_01
/* "c#brbo04" */
+ ~!PartyHasItem("c#brbo04") GlobalGT("C#Br_WriteBookPage04","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Spell Deflection".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brbo02"))
ActionOverride(Player2,DestroyItem("c#brbo02"))
GiveItemCreate("c#brbo04",Player2,1,0,0)~ + book_01
/* "c#brbo05" */
+ ~!PartyHasItem("c#brbo05") GlobalGT("C#Br_WriteBookPage05","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Mass Invisibility".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brbo02"))
ActionOverride(Player2,DestroyItem("c#brbo02"))
GiveItemCreate("c#brbo05",Player2,1,0,0)~ + book_01
/* "c#brbo06" */
+ ~!PartyHasItem("c#brbo06") GlobalGT("C#Br_WriteBookPage06","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Summon Efreeti".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brbo02"))
ActionOverride(Player2,DestroyItem("c#brbo02"))
GiveItemCreate("c#brbo06",Player2,1,0,0)~ + book_01
/* "c#brbo07" */
+ ~!PartyHasItem("c#brbo07") GlobalGT("C#Br_WriteBookPage07","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Bigby's Clenched Fist".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brbo02"))
ActionOverride(Player2,DestroyItem("c#brbo02"))
GiveItemCreate("c#brbo07",Player2,1,0,0)~ + book_01
/* "c#brbo08" */
+ ~!PartyHasItem("c#brbo08") GlobalGT("C#Br_WriteBookPage08","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Pierce Shield".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brbo02"))
ActionOverride(Player2,DestroyItem("c#brbo02"))
GiveItemCreate("c#brbo08",Player2,1,0,0)~ + book_01
/* "c#brbo09" */
+ ~!PartyHasItem("c#brbo09") GlobalGT("C#Br_WriteBookPage09","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Bigby's Crushing Hand".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brbo02"))
ActionOverride(Player2,DestroyItem("c#brbo02"))
GiveItemCreate("c#brbo09",Player2,1,0,0)~ + book_01
/* "c#brbo10" */
+ ~!PartyHasItem("c#brbo10") GlobalGT("C#Br_WriteBookPage10","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Chain Contingency".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brbo02"))
ActionOverride(Player2,DestroyItem("c#brbo02"))
GiveItemCreate("c#brbo10",Player2,1,0,0)~ + book_01
+ ~Global("c#brbok1","GLOBAL",0)~ + ~(You leave the current page with the spell "Minor Sequencer" open and put the book away again.)~ EXIT
+ ~Global("c#brbok1","GLOBAL",1)~ + ~(You already used the book today. The page can't be turned until after your next rest.)~ EXIT
END

/* "c#brbo03" */
IF ~HasItem("c#brbo03",Player2)~ THEN player2_03
SAY ~(You take the book into your  hand.)~ [c#ablank]
/* "c#brbo01" */
+ ~!PartyHasItem("c#brbo01") GlobalGT("C#Br_WriteBookPage01","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Fireball".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brbo03"))
ActionOverride(Player2,DestroyItem("c#brbo03"))
GiveItemCreate("c#brbo01",Player2,1,0,0)~ + book_01
/* "c#brbo02" */
+ ~!PartyHasItem("c#brbo02") GlobalGT("C#Br_WriteBookPage02","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Minor Sequencer".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brbo03"))
ActionOverride(Player2,DestroyItem("c#brbo03"))
GiveItemCreate("c#brbo02",Player2,1,0,0)~ + book_01
/* "c#brbo04" */
+ ~!PartyHasItem("c#brbo04") GlobalGT("C#Br_WriteBookPage04","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Spell Deflection".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brbo03"))
ActionOverride(Player2,DestroyItem("c#brbo03"))
GiveItemCreate("c#brbo04",Player2,1,0,0)~ + book_01
/* "c#brbo05" */
+ ~!PartyHasItem("c#brbo05") GlobalGT("C#Br_WriteBookPage05","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Mass Invisibility".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brbo03"))
ActionOverride(Player2,DestroyItem("c#brbo03"))
GiveItemCreate("c#brbo05",Player2,1,0,0)~ + book_01
/* "c#brbo06" */
+ ~!PartyHasItem("c#brbo06") GlobalGT("C#Br_WriteBookPage06","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Summon Efreeti".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brbo03"))
ActionOverride(Player2,DestroyItem("c#brbo03"))
GiveItemCreate("c#brbo06",Player2,1,0,0)~ + book_01
/* "c#brbo07" */
+ ~!PartyHasItem("c#brbo07") GlobalGT("C#Br_WriteBookPage07","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Bigby's Clenched Fist".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brbo03"))
ActionOverride(Player2,DestroyItem("c#brbo03"))
GiveItemCreate("c#brbo07",Player2,1,0,0)~ + book_01
/* "c#brbo08" */
+ ~!PartyHasItem("c#brbo08") GlobalGT("C#Br_WriteBookPage08","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Pierce Shield".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brbo03"))
ActionOverride(Player2,DestroyItem("c#brbo03"))
GiveItemCreate("c#brbo08",Player2,1,0,0)~ + book_01
/* "c#brbo09" */
+ ~!PartyHasItem("c#brbo09") GlobalGT("C#Br_WriteBookPage09","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Bigby's Crushing Hand".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brbo03"))
ActionOverride(Player2,DestroyItem("c#brbo03"))
GiveItemCreate("c#brbo09",Player2,1,0,0)~ + book_01
/* "c#brbo10" */
+ ~!PartyHasItem("c#brbo10") GlobalGT("C#Br_WriteBookPage10","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Chain Contingency".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brbo03"))
ActionOverride(Player2,DestroyItem("c#brbo03"))
GiveItemCreate("c#brbo10",Player2,1,0,0)~ + book_01
+ ~Global("c#brbok1","GLOBAL",0)~ + ~(You leave the current page with the spell "Breach" open and put the book away again.)~ EXIT
+ ~Global("c#brbok1","GLOBAL",1)~ + ~(You already used the book today. The page can't be turned until after your next rest.)~ EXIT
END

/* "c#brbo04" */
IF ~HasItem("c#brbo04",Player2)~ THEN player2_04
SAY ~(You take the book into your  hand.)~ [c#ablank]
/* "c#brbo01" */
+ ~!PartyHasItem("c#brbo01") GlobalGT("C#Br_WriteBookPage01","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Fireball".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brbo04"))
ActionOverride(Player2,DestroyItem("c#brbo04"))
GiveItemCreate("c#brbo01",Player2,1,0,0)~ + book_01
/* "c#brbo02" */
+ ~!PartyHasItem("c#brbo02") GlobalGT("C#Br_WriteBookPage02","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Minor Sequencer".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brbo04"))
ActionOverride(Player2,DestroyItem("c#brbo04"))
GiveItemCreate("c#brbo02",Player2,1,0,0)~ + book_01
/* "c#brbo03" */
+ ~!PartyHasItem("c#brbo03") GlobalGT("C#Br_WriteBookPage03","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Breach".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brbo04"))
ActionOverride(Player2,DestroyItem("c#brbo04"))
GiveItemCreate("c#brbo03",Player2,1,0,0)~ + book_01
/* "c#brbo05" */
+ ~!PartyHasItem("c#brbo05") GlobalGT("C#Br_WriteBookPage05","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Mass Invisibility".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brbo04"))
ActionOverride(Player2,DestroyItem("c#brbo04"))
GiveItemCreate("c#brbo05",Player2,1,0,0)~ + book_01
/* "c#brbo06" */
+ ~!PartyHasItem("c#brbo06") GlobalGT("C#Br_WriteBookPage06","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Summon Efreeti".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brbo04"))
ActionOverride(Player2,DestroyItem("c#brbo04"))
GiveItemCreate("c#brbo06",Player2,1,0,0)~ + book_01
/* "c#brbo07" */
+ ~!PartyHasItem("c#brbo07") GlobalGT("C#Br_WriteBookPage07","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Bigby's Clenched Fist".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brbo04"))
ActionOverride(Player2,DestroyItem("c#brbo04"))
GiveItemCreate("c#brbo07",Player2,1,0,0)~ + book_01
/* "c#brbo08" */
+ ~!PartyHasItem("c#brbo08") GlobalGT("C#Br_WriteBookPage08","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Pierce Shield".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brbo04"))
ActionOverride(Player2,DestroyItem("c#brbo04"))
GiveItemCreate("c#brbo08",Player2,1,0,0)~ + book_01
/* "c#brbo09" */
+ ~!PartyHasItem("c#brbo09") GlobalGT("C#Br_WriteBookPage09","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Bigby's Crushing Hand".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brbo04"))
ActionOverride(Player2,DestroyItem("c#brbo04"))
GiveItemCreate("c#brbo09",Player2,1,0,0)~ + book_01
/* "c#brbo10" */
+ ~!PartyHasItem("c#brbo10") GlobalGT("C#Br_WriteBookPage10","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Chain Contingency".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brbo04"))
ActionOverride(Player2,DestroyItem("c#brbo04"))
GiveItemCreate("c#brbo10",Player2,1,0,0)~ + book_01
+ ~Global("c#brbok1","GLOBAL",0)~ + ~(You leave the current page with the spell "Spell Deflection" open and put the book away again.)~ EXIT
+ ~Global("c#brbok1","GLOBAL",1)~ + ~(You already used the book today. The page can't be turned until after your next rest.)~ EXIT
END

/* "c#brbo05" */
IF ~HasItem("c#brbo05",Player2)~ THEN player2_05
SAY ~(You take the book into your  hand.)~ [c#ablank]
/* "c#brbo01" */
+ ~!PartyHasItem("c#brbo01") GlobalGT("C#Br_WriteBookPage01","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Fireball".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brbo05"))
ActionOverride(Player2,DestroyItem("c#brbo05"))
GiveItemCreate("c#brbo01",Player2,1,0,0)~ + book_01
/* "c#brbo02" */
+ ~!PartyHasItem("c#brbo02") GlobalGT("C#Br_WriteBookPage02","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Minor Sequencer".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brbo05"))
ActionOverride(Player2,DestroyItem("c#brbo05"))
GiveItemCreate("c#brbo02",Player2,1,0,0)~ + book_01
/* "c#brbo03" */
+ ~!PartyHasItem("c#brbo03") GlobalGT("C#Br_WriteBookPage03","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Breach".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brbo05"))
ActionOverride(Player2,DestroyItem("c#brbo05"))
GiveItemCreate("c#brbo03",Player2,1,0,0)~ + book_01
/* "c#brbo04" */
+ ~!PartyHasItem("c#brbo04") GlobalGT("C#Br_WriteBookPage04","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Spell Deflection".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brbo05"))
ActionOverride(Player2,DestroyItem("c#brbo05"))
GiveItemCreate("c#brbo04",Player2,1,0,0)~ + book_01
/* "c#brbo06" */
+ ~!PartyHasItem("c#brbo06") GlobalGT("C#Br_WriteBookPage06","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Summon Efreeti".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brbo05"))
ActionOverride(Player2,DestroyItem("c#brbo05"))
GiveItemCreate("c#brbo06",Player2,1,0,0)~ + book_01
/* "c#brbo07" */
+ ~!PartyHasItem("c#brbo07") GlobalGT("C#Br_WriteBookPage07","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Bigby's Clenched Fist".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brbo05"))
ActionOverride(Player2,DestroyItem("c#brbo05"))
GiveItemCreate("c#brbo07",Player2,1,0,0)~ + book_01
/* "c#brbo08" */
+ ~!PartyHasItem("c#brbo08") GlobalGT("C#Br_WriteBookPage08","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Pierce Shield".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brbo05"))
ActionOverride(Player2,DestroyItem("c#brbo05"))
GiveItemCreate("c#brbo08",Player2,1,0,0)~ + book_01
/* "c#brbo09" */
+ ~!PartyHasItem("c#brbo09") GlobalGT("C#Br_WriteBookPage09","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Bigby's Crushing Hand".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brbo05"))
ActionOverride(Player2,DestroyItem("c#brbo05"))
GiveItemCreate("c#brbo09",Player2,1,0,0)~ + book_01
/* "c#brbo10" */
+ ~!PartyHasItem("c#brbo10") GlobalGT("C#Br_WriteBookPage10","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Chain Contingency".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brbo05"))
ActionOverride(Player2,DestroyItem("c#brbo05"))
GiveItemCreate("c#brbo10",Player2,1,0,0)~ + book_01
+ ~Global("c#brbok1","GLOBAL",0)~ + ~(You leave the current page with the spell "Mass Invisibility" open and put the book away again.)~ EXIT
+ ~Global("c#brbok1","GLOBAL",1)~ + ~(You already used the book today. The page can't be turned until after your next rest.)~ EXIT
END

/* "c#brbo06" */
IF ~HasItem("c#brbo06",Player2)~ THEN player2_06
SAY ~(You take the book into your  hand.)~ [c#ablank]
/* "c#brbo01" */
+ ~!PartyHasItem("c#brbo01") GlobalGT("C#Br_WriteBookPage01","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Fireball".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brbo06"))
ActionOverride(Player2,DestroyItem("c#brbo06"))
GiveItemCreate("c#brbo01",Player2,1,0,0)~ + book_01
/* "c#brbo02" */
+ ~!PartyHasItem("c#brbo02") GlobalGT("C#Br_WriteBookPage02","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Minor Sequencer".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brbo06"))
ActionOverride(Player2,DestroyItem("c#brbo06"))
GiveItemCreate("c#brbo02",Player2,1,0,0)~ + book_01
/* "c#brbo03" */
+ ~!PartyHasItem("c#brbo03") GlobalGT("C#Br_WriteBookPage03","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Breach".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brbo06"))
ActionOverride(Player2,DestroyItem("c#brbo06"))
GiveItemCreate("c#brbo03",Player2,1,0,0)~ + book_01
/* "c#brbo04" */
+ ~!PartyHasItem("c#brbo04") GlobalGT("C#Br_WriteBookPage04","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Spell Deflection".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brbo06"))
ActionOverride(Player2,DestroyItem("c#brbo06"))
GiveItemCreate("c#brbo04",Player2,1,0,0)~ + book_01
/* "c#brbo05" */
+ ~!PartyHasItem("c#brbo05") GlobalGT("C#Br_WriteBookPage05","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Mass Invisibility".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brbo06"))
ActionOverride(Player2,DestroyItem("c#brbo06"))
GiveItemCreate("c#brbo05",Player2,1,0,0)~ + book_01
/* "c#brbo07" */
+ ~!PartyHasItem("c#brbo07") GlobalGT("C#Br_WriteBookPage07","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Bigby's Clenched Fist".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brbo06"))
ActionOverride(Player2,DestroyItem("c#brbo06"))
GiveItemCreate("c#brbo07",Player2,1,0,0)~ + book_01
/* "c#brbo08" */
+ ~!PartyHasItem("c#brbo08") GlobalGT("C#Br_WriteBookPage08","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Pierce Shield".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brbo06"))
ActionOverride(Player2,DestroyItem("c#brbo06"))
GiveItemCreate("c#brbo08",Player2,1,0,0)~ + book_01
/* "c#brbo09" */
+ ~!PartyHasItem("c#brbo09") GlobalGT("C#Br_WriteBookPage09","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Bigby's Crushing Hand".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brbo06"))
ActionOverride(Player2,DestroyItem("c#brbo06"))
GiveItemCreate("c#brbo09",Player2,1,0,0)~ + book_01
/* "c#brbo10" */
+ ~!PartyHasItem("c#brbo10") GlobalGT("C#Br_WriteBookPage10","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Chain Contingency".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brbo06"))
ActionOverride(Player2,DestroyItem("c#brbo06"))
GiveItemCreate("c#brbo10",Player2,1,0,0)~ + book_01
+ ~Global("c#brbok1","GLOBAL",0)~ + ~(You leave the current page with the spell "Summon Efreeti" open and put the book away again.)~ EXIT
+ ~Global("c#brbok1","GLOBAL",1)~ + ~(You already used the book today. The page can't be turned until after your next rest.)~ EXIT
END

/* "c#brbo07" */
IF ~HasItem("c#brbo07",Player2)~ THEN player2_07
SAY ~(You take the book into your  hand.)~ [c#ablank]
/* "c#brbo01" */
+ ~!PartyHasItem("c#brbo01") GlobalGT("C#Br_WriteBookPage01","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Fireball".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brbo07"))
ActionOverride(Player2,DestroyItem("c#brbo07"))
GiveItemCreate("c#brbo01",Player2,1,0,0)~ + book_01
/* "c#brbo02" */
+ ~!PartyHasItem("c#brbo02") GlobalGT("C#Br_WriteBookPage02","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Minor Sequencer".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brbo07"))
ActionOverride(Player2,DestroyItem("c#brbo07"))
GiveItemCreate("c#brbo02",Player2,1,0,0)~ + book_01
/* "c#brbo03" */
+ ~!PartyHasItem("c#brbo03") GlobalGT("C#Br_WriteBookPage03","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Breach".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brbo07"))
ActionOverride(Player2,DestroyItem("c#brbo07"))
GiveItemCreate("c#brbo03",Player2,1,0,0)~ + book_01
/* "c#brbo04" */
+ ~!PartyHasItem("c#brbo04") GlobalGT("C#Br_WriteBookPage04","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Spell Deflection".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brbo07"))
ActionOverride(Player2,DestroyItem("c#brbo07"))
GiveItemCreate("c#brbo04",Player2,1,0,0)~ + book_01
/* "c#brbo05" */
+ ~!PartyHasItem("c#brbo05") GlobalGT("C#Br_WriteBookPage05","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Mass Invisibility".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brbo07"))
ActionOverride(Player2,DestroyItem("c#brbo07"))
GiveItemCreate("c#brbo05",Player2,1,0,0)~ + book_01
/* "c#brbo06" */
+ ~!PartyHasItem("c#brbo06") GlobalGT("C#Br_WriteBookPage06","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Summon Efreeti".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brbo07"))
ActionOverride(Player2,DestroyItem("c#brbo07"))
GiveItemCreate("c#brbo06",Player2,1,0,0)~ + book_01
/* "c#brbo08" */
+ ~!PartyHasItem("c#brbo08") GlobalGT("C#Br_WriteBookPage08","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Pierce Shield".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brbo07"))
ActionOverride(Player2,DestroyItem("c#brbo07"))
GiveItemCreate("c#brbo08",Player2,1,0,0)~ + book_01
/* "c#brbo09" */
+ ~!PartyHasItem("c#brbo09") GlobalGT("C#Br_WriteBookPage09","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Bigby's Crushing Hand".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brbo07"))
ActionOverride(Player2,DestroyItem("c#brbo07"))
GiveItemCreate("c#brbo09",Player2,1,0,0)~ + book_01
/* "c#brbo10" */
+ ~!PartyHasItem("c#brbo10") GlobalGT("C#Br_WriteBookPage10","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Chain Contingency".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brbo07"))
ActionOverride(Player2,DestroyItem("c#brbo07"))
GiveItemCreate("c#brbo10",Player2,1,0,0)~ + book_01
+ ~Global("c#brbok1","GLOBAL",0)~ + ~(You leave the current page with the spell "Bigby's Clenched Fist" open and put the book away again.)~ EXIT
+ ~Global("c#brbok1","GLOBAL",1)~ + ~(You already used the book today. The page can't be turned until after your next rest.)~ EXIT
END

/* "c#brbo08" */
IF ~HasItem("c#brbo08",Player2)~ THEN player2_08
SAY ~(You take the book into your  hand.)~ [c#ablank]
/* "c#brbo01" */
+ ~!PartyHasItem("c#brbo01") GlobalGT("C#Br_WriteBookPage01","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Fireball".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brbo08"))
ActionOverride(Player2,DestroyItem("c#brbo08"))
GiveItemCreate("c#brbo01",Player2,1,0,0)~ + book_01
/* "c#brbo02" */
+ ~!PartyHasItem("c#brbo02") GlobalGT("C#Br_WriteBookPage02","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Minor Sequencer".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brbo08"))
ActionOverride(Player2,DestroyItem("c#brbo08"))
GiveItemCreate("c#brbo02",Player2,1,0,0)~ + book_01
/* "c#brbo03" */
+ ~!PartyHasItem("c#brbo03") GlobalGT("C#Br_WriteBookPage03","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Breach".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brbo08"))
ActionOverride(Player2,DestroyItem("c#brbo08"))
GiveItemCreate("c#brbo03",Player2,1,0,0)~ + book_01
/* "c#brbo04" */
+ ~!PartyHasItem("c#brbo04") GlobalGT("C#Br_WriteBookPage04","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Spell Deflection".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brbo08"))
ActionOverride(Player2,DestroyItem("c#brbo08"))
GiveItemCreate("c#brbo04",Player2,1,0,0)~ + book_01
/* "c#brbo05" */
+ ~!PartyHasItem("c#brbo05") GlobalGT("C#Br_WriteBookPage05","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Mass Invisibility".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brbo08"))
ActionOverride(Player2,DestroyItem("c#brbo08"))
GiveItemCreate("c#brbo05",Player2,1,0,0)~ + book_01
/* "c#brbo06" */
+ ~!PartyHasItem("c#brbo06") GlobalGT("C#Br_WriteBookPage06","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Summon Efreeti".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brbo08"))
ActionOverride(Player2,DestroyItem("c#brbo08"))
GiveItemCreate("c#brbo06",Player2,1,0,0)~ + book_01
/* "c#brbo07" */
+ ~!PartyHasItem("c#brbo07") GlobalGT("C#Br_WriteBookPage07","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Bigby's Clenched Fist".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brbo08"))
ActionOverride(Player2,DestroyItem("c#brbo08"))
GiveItemCreate("c#brbo07",Player2,1,0,0)~ + book_01
/* "c#brbo09" */
+ ~!PartyHasItem("c#brbo09") GlobalGT("C#Br_WriteBookPage09","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Bigby's Crushing Hand".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brbo08"))
ActionOverride(Player2,DestroyItem("c#brbo08"))
GiveItemCreate("c#brbo09",Player2,1,0,0)~ + book_01
/* "c#brbo10" */
+ ~!PartyHasItem("c#brbo10") GlobalGT("C#Br_WriteBookPage10","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Chain Contingency".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brbo08"))
ActionOverride(Player2,DestroyItem("c#brbo08"))
GiveItemCreate("c#brbo10",Player2,1,0,0)~ + book_01
+ ~Global("c#brbok1","GLOBAL",0)~ + ~(You leave the current page with the spell "Pierce Shield" open and put the book away again.)~ EXIT
+ ~Global("c#brbok1","GLOBAL",1)~ + ~(You already used the book today. The page can't be turned until after your next rest.)~ EXIT
END

/* "c#brbo09" */
IF ~HasItem("c#brbo09",Player2)~ THEN player2_09
SAY ~(You take the book into your  hand.)~ [c#ablank]
/* "c#brbo01" */
+ ~!PartyHasItem("c#brbo01") GlobalGT("C#Br_WriteBookPage01","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Fireball".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brbo09"))
ActionOverride(Player2,DestroyItem("c#brbo09"))
GiveItemCreate("c#brbo01",Player2,1,0,0)~ + book_01
/* "c#brbo02" */
+ ~!PartyHasItem("c#brbo02") GlobalGT("C#Br_WriteBookPage02","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Minor Sequencer".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brbo09"))
ActionOverride(Player2,DestroyItem("c#brbo09"))
GiveItemCreate("c#brbo02",Player2,1,0,0)~ + book_01
/* "c#brbo03" */
+ ~!PartyHasItem("c#brbo03") GlobalGT("C#Br_WriteBookPage03","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Breach".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brbo09"))
ActionOverride(Player2,DestroyItem("c#brbo09"))
GiveItemCreate("c#brbo03",Player2,1,0,0)~ + book_01
/* "c#brbo04" */
+ ~!PartyHasItem("c#brbo04") GlobalGT("C#Br_WriteBookPage04","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Spell Deflection".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brbo09"))
ActionOverride(Player2,DestroyItem("c#brbo09"))
GiveItemCreate("c#brbo04",Player2,1,0,0)~ + book_01
/* "c#brbo05" */
+ ~!PartyHasItem("c#brbo05") GlobalGT("C#Br_WriteBookPage05","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Mass Invisibility".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brbo09"))
ActionOverride(Player2,DestroyItem("c#brbo09"))
GiveItemCreate("c#brbo05",Player2,1,0,0)~ + book_01
/* "c#brbo06" */
+ ~!PartyHasItem("c#brbo06") GlobalGT("C#Br_WriteBookPage06","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Summon Efreeti".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brbo09"))
ActionOverride(Player2,DestroyItem("c#brbo09"))
GiveItemCreate("c#brbo06",Player2,1,0,0)~ + book_01
/* "c#brbo07" */
+ ~!PartyHasItem("c#brbo07") GlobalGT("C#Br_WriteBookPage07","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Bigby's Clenched Fist".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brbo09"))
ActionOverride(Player2,DestroyItem("c#brbo09"))
GiveItemCreate("c#brbo07",Player2,1,0,0)~ + book_01
/* "c#brbo08" */
+ ~!PartyHasItem("c#brbo08") GlobalGT("C#Br_WriteBookPage08","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Pierce Shield".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brbo09"))
ActionOverride(Player2,DestroyItem("c#brbo09"))
GiveItemCreate("c#brbo08",Player2,1,0,0)~ + book_01
/* "c#brbo10" */
+ ~!PartyHasItem("c#brbo10") GlobalGT("C#Br_WriteBookPage10","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Chain Contingency".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brbo09"))
ActionOverride(Player2,DestroyItem("c#brbo09"))
GiveItemCreate("c#brbo10",Player2,1,0,0)~ + book_01
+ ~Global("c#brbok1","GLOBAL",0)~ + ~(You leave the current page with the spell "Bigby's Crushing Hand" open and put the book away again.)~ EXIT
+ ~Global("c#brbok1","GLOBAL",1)~ + ~(You already used the book today. The page can't be turned until after your next rest.)~ EXIT
END

/* "c#brbo10" */
IF ~HasItem("c#brbo10",Player2)~ THEN player2_10
SAY ~(You take the book into your  hand.)~ [c#ablank]
/* "c#brbo01" */
+ ~!PartyHasItem("c#brbo01") GlobalGT("C#Br_WriteBookPage01","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Fireball".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brbo10"))
ActionOverride(Player2,DestroyItem("c#brbo10"))
GiveItemCreate("c#brbo01",Player2,1,0,0)~ + book_01
/* "c#brbo02" */
+ ~!PartyHasItem("c#brbo02") GlobalGT("C#Br_WriteBookPage02","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Minor Sequencer".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brbo10"))
ActionOverride(Player2,DestroyItem("c#brbo10"))
GiveItemCreate("c#brbo02",Player2,1,0,0)~ + book_01
/* "c#brbo03" */
+ ~!PartyHasItem("c#brbo03") GlobalGT("C#Br_WriteBookPage03","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Breach".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brbo10"))
ActionOverride(Player2,DestroyItem("c#brbo10"))
GiveItemCreate("c#brbo03",Player2,1,0,0)~ + book_01
/* "c#brbo04" */
+ ~!PartyHasItem("c#brbo04") GlobalGT("C#Br_WriteBookPage04","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Spell Deflection".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brbo10"))
ActionOverride(Player2,DestroyItem("c#brbo10"))
GiveItemCreate("c#brbo04",Player2,1,0,0)~ + book_01
/* "c#brbo05" */
+ ~!PartyHasItem("c#brbo05") GlobalGT("C#Br_WriteBookPage05","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Mass Invisibility".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brbo10"))
ActionOverride(Player2,DestroyItem("c#brbo10"))
GiveItemCreate("c#brbo05",Player2,1,0,0)~ + book_01
/* "c#brbo06" */
+ ~!PartyHasItem("c#brbo06") GlobalGT("C#Br_WriteBookPage06","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Summon Efreeti".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brbo10"))
ActionOverride(Player2,DestroyItem("c#brbo10"))
GiveItemCreate("c#brbo06",Player2,1,0,0)~ + book_01
/* "c#brbo07" */
+ ~!PartyHasItem("c#brbo07") GlobalGT("C#Br_WriteBookPage07","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Bigby's Clenched Fist".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brbo10"))
ActionOverride(Player2,DestroyItem("c#brbo10"))
GiveItemCreate("c#brbo07",Player2,1,0,0)~ + book_01
/* "c#brbo08" */
+ ~!PartyHasItem("c#brbo08") GlobalGT("C#Br_WriteBookPage08","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Pierce Shield".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brbo10"))
ActionOverride(Player2,DestroyItem("c#brbo10"))
GiveItemCreate("c#brbo08",Player2,1,0,0)~ + book_01
/* "c#brbo10" */
+ ~!PartyHasItem("c#brbo09") GlobalGT("C#Br_WriteBookPage09","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Bigby's Crushing Hand".)~ DO ~ActionOverride(Player2,TakePartyItem("c#brbo10"))
ActionOverride(Player2,DestroyItem("c#brbo10"))
GiveItemCreate("c#brbo09",Player2,1,0,0)~ + book_01
+ ~Global("c#brbok1","GLOBAL",0)~ + ~(You leave the current page with the spell "Chain Contingency" open and put the book away again.)~ EXIT
+ ~Global("c#brbok1","GLOBAL",1)~ + ~(You already used the book today. The page can't be turned until after your next rest.)~ EXIT
END

/* Player3 */

/* "c#brbo01" */
IF ~HasItem("c#brbo01",Player3)~ THEN player3_01
SAY ~(You take the book into your  hand.)~ [c#ablank]
/* "c#brbo02" */
+ ~!PartyHasItem("c#brbo02") GlobalGT("C#Br_WriteBookPage02","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Minor Sequencer".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brbo01"))
ActionOverride(Player3,DestroyItem("c#brbo01"))
GiveItemCreate("c#brbo02",Player3,1,0,0)~ + book_01
/* "c#brbo03" */
+ ~!PartyHasItem("c#brbo03") GlobalGT("C#Br_WriteBookPage03","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Breach".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brbo01"))
ActionOverride(Player3,DestroyItem("c#brbo01"))
GiveItemCreate("c#brbo03",Player3,1,0,0)~ + book_01
/* "c#brbo04" */
+ ~!PartyHasItem("c#brbo04") GlobalGT("C#Br_WriteBookPage04","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Spell Deflection".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brbo01"))
ActionOverride(Player3,DestroyItem("c#brbo01"))
GiveItemCreate("c#brbo04",Player3,1,0,0)~ + book_01
/* "c#brbo05" */
+ ~!PartyHasItem("c#brbo05") GlobalGT("C#Br_WriteBookPage05","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Mass Invisibility".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brbo01"))
ActionOverride(Player3,DestroyItem("c#brbo01"))
GiveItemCreate("c#brbo05",Player3,1,0,0)~ + book_01
/* "c#brbo06" */
+ ~!PartyHasItem("c#brbo06") GlobalGT("C#Br_WriteBookPage06","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Summon Efreeti".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brbo01"))
ActionOverride(Player3,DestroyItem("c#brbo01"))
GiveItemCreate("c#brbo06",Player3,1,0,0)~ + book_01
/* "c#brbo07" */
+ ~!PartyHasItem("c#brbo07") GlobalGT("C#Br_WriteBookPage07","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Bigby's Clenched Fist".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brbo01"))
ActionOverride(Player3,DestroyItem("c#brbo01"))
GiveItemCreate("c#brbo07",Player3,1,0,0)~ + book_01
/* "c#brbo08" */
+ ~!PartyHasItem("c#brbo08") GlobalGT("C#Br_WriteBookPage08","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Pierce Shield".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brbo01"))
ActionOverride(Player3,DestroyItem("c#brbo01"))
GiveItemCreate("c#brbo08",Player3,1,0,0)~ + book_01
/* "c#brbo09" */
+ ~!PartyHasItem("c#brbo09") GlobalGT("C#Br_WriteBookPage09","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Bigby's Crushing Hand".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brbo01"))
ActionOverride(Player3,DestroyItem("c#brbo01"))
GiveItemCreate("c#brbo09",Player3,1,0,0)~ + book_01
/* "c#brbo10" */
+ ~!PartyHasItem("c#brbo10") GlobalGT("C#Br_WriteBookPage10","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Chain Contingency".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brbo01"))
ActionOverride(Player3,DestroyItem("c#brbo01"))
GiveItemCreate("c#brbo10",Player3,1,0,0)~ + book_01
+ ~Global("c#brbok1","GLOBAL",0)~ + ~(You leave the current page with the spell "Fireball" open and put the book away again.)~ EXIT
+ ~Global("c#brbok1","GLOBAL",1)~ + ~(You already used the book today. The page can't be turned until after your next rest.)~ EXIT
END

/* "c#brbo02" */
IF ~HasItem("c#brbo02",Player3)~ THEN player3_02
SAY ~(You take the book into your  hand.)~ [c#ablank]
/* "c#brbo01" */
+ ~!PartyHasItem("c#brbo01") GlobalGT("C#Br_WriteBookPage01","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Fireball".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brbo02"))
ActionOverride(Player3,DestroyItem("c#brbo02"))
GiveItemCreate("c#brbo01",Player3,1,0,0)~ + book_01
/* "c#brbo03" */
+ ~!PartyHasItem("c#brbo03") GlobalGT("C#Br_WriteBookPage03","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Breach".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brbo02"))
ActionOverride(Player3,DestroyItem("c#brbo02"))
GiveItemCreate("c#brbo03",Player3,1,0,0)~ + book_01
/* "c#brbo04" */
+ ~!PartyHasItem("c#brbo04") GlobalGT("C#Br_WriteBookPage04","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Spell Deflection".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brbo02"))
ActionOverride(Player3,DestroyItem("c#brbo02"))
GiveItemCreate("c#brbo04",Player3,1,0,0)~ + book_01
/* "c#brbo05" */
+ ~!PartyHasItem("c#brbo05") GlobalGT("C#Br_WriteBookPage05","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Mass Invisibility".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brbo02"))
ActionOverride(Player3,DestroyItem("c#brbo02"))
GiveItemCreate("c#brbo05",Player3,1,0,0)~ + book_01
/* "c#brbo06" */
+ ~!PartyHasItem("c#brbo06") GlobalGT("C#Br_WriteBookPage06","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Summon Efreeti".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brbo02"))
ActionOverride(Player3,DestroyItem("c#brbo02"))
GiveItemCreate("c#brbo06",Player3,1,0,0)~ + book_01
/* "c#brbo07" */
+ ~!PartyHasItem("c#brbo07") GlobalGT("C#Br_WriteBookPage07","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Bigby's Clenched Fist".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brbo02"))
ActionOverride(Player3,DestroyItem("c#brbo02"))
GiveItemCreate("c#brbo07",Player3,1,0,0)~ + book_01
/* "c#brbo08" */
+ ~!PartyHasItem("c#brbo08") GlobalGT("C#Br_WriteBookPage08","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Pierce Shield".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brbo02"))
ActionOverride(Player3,DestroyItem("c#brbo02"))
GiveItemCreate("c#brbo08",Player3,1,0,0)~ + book_01
/* "c#brbo09" */
+ ~!PartyHasItem("c#brbo09") GlobalGT("C#Br_WriteBookPage09","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Bigby's Crushing Hand".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brbo02"))
ActionOverride(Player3,DestroyItem("c#brbo02"))
GiveItemCreate("c#brbo09",Player3,1,0,0)~ + book_01
/* "c#brbo10" */
+ ~!PartyHasItem("c#brbo10") GlobalGT("C#Br_WriteBookPage10","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Chain Contingency".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brbo02"))
ActionOverride(Player3,DestroyItem("c#brbo02"))
GiveItemCreate("c#brbo10",Player3,1,0,0)~ + book_01
+ ~Global("c#brbok1","GLOBAL",0)~ + ~(You leave the current page with the spell "Minor Sequencer" open and put the book away again.)~ EXIT
+ ~Global("c#brbok1","GLOBAL",1)~ + ~(You already used the book today. The page can't be turned until after your next rest.)~ EXIT
END

/* "c#brbo03" */
IF ~HasItem("c#brbo03",Player3)~ THEN player3_03
SAY ~(You take the book into your  hand.)~ [c#ablank]
/* "c#brbo01" */
+ ~!PartyHasItem("c#brbo01") GlobalGT("C#Br_WriteBookPage01","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Fireball".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brbo03"))
ActionOverride(Player3,DestroyItem("c#brbo03"))
GiveItemCreate("c#brbo01",Player3,1,0,0)~ + book_01
/* "c#brbo02" */
+ ~!PartyHasItem("c#brbo02") GlobalGT("C#Br_WriteBookPage02","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Minor Sequencer".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brbo03"))
ActionOverride(Player3,DestroyItem("c#brbo03"))
GiveItemCreate("c#brbo02",Player3,1,0,0)~ + book_01
/* "c#brbo04" */
+ ~!PartyHasItem("c#brbo04") GlobalGT("C#Br_WriteBookPage04","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Spell Deflection".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brbo03"))
ActionOverride(Player3,DestroyItem("c#brbo03"))
GiveItemCreate("c#brbo04",Player3,1,0,0)~ + book_01
/* "c#brbo05" */
+ ~!PartyHasItem("c#brbo05") GlobalGT("C#Br_WriteBookPage05","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Mass Invisibility".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brbo03"))
ActionOverride(Player3,DestroyItem("c#brbo03"))
GiveItemCreate("c#brbo05",Player3,1,0,0)~ + book_01
/* "c#brbo06" */
+ ~!PartyHasItem("c#brbo06") GlobalGT("C#Br_WriteBookPage06","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Summon Efreeti".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brbo03"))
ActionOverride(Player3,DestroyItem("c#brbo03"))
GiveItemCreate("c#brbo06",Player3,1,0,0)~ + book_01
/* "c#brbo07" */
+ ~!PartyHasItem("c#brbo07") GlobalGT("C#Br_WriteBookPage07","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Bigby's Clenched Fist".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brbo03"))
ActionOverride(Player3,DestroyItem("c#brbo03"))
GiveItemCreate("c#brbo07",Player3,1,0,0)~ + book_01
/* "c#brbo08" */
+ ~!PartyHasItem("c#brbo08") GlobalGT("C#Br_WriteBookPage08","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Pierce Shield".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brbo03"))
ActionOverride(Player3,DestroyItem("c#brbo03"))
GiveItemCreate("c#brbo08",Player3,1,0,0)~ + book_01
/* "c#brbo09" */
+ ~!PartyHasItem("c#brbo09") GlobalGT("C#Br_WriteBookPage09","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Bigby's Crushing Hand".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brbo03"))
ActionOverride(Player3,DestroyItem("c#brbo03"))
GiveItemCreate("c#brbo09",Player3,1,0,0)~ + book_01
/* "c#brbo10" */
+ ~!PartyHasItem("c#brbo10") GlobalGT("C#Br_WriteBookPage10","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Chain Contingency".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brbo03"))
ActionOverride(Player3,DestroyItem("c#brbo03"))
GiveItemCreate("c#brbo10",Player3,1,0,0)~ + book_01
+ ~Global("c#brbok1","GLOBAL",0)~ + ~(You leave the current page with the spell "Breach" open and put the book away again.)~ EXIT
+ ~Global("c#brbok1","GLOBAL",1)~ + ~(You already used the book today. The page can't be turned until after your next rest.)~ EXIT
END

/* "c#brbo04" */
IF ~HasItem("c#brbo04",Player3)~ THEN player3_04
SAY ~(You take the book into your  hand.)~ [c#ablank]
/* "c#brbo01" */
+ ~!PartyHasItem("c#brbo01") GlobalGT("C#Br_WriteBookPage01","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Fireball".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brbo04"))
ActionOverride(Player3,DestroyItem("c#brbo04"))
GiveItemCreate("c#brbo01",Player3,1,0,0)~ + book_01
/* "c#brbo02" */
+ ~!PartyHasItem("c#brbo02") GlobalGT("C#Br_WriteBookPage02","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Minor Sequencer".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brbo04"))
ActionOverride(Player3,DestroyItem("c#brbo04"))
GiveItemCreate("c#brbo02",Player3,1,0,0)~ + book_01
/* "c#brbo03" */
+ ~!PartyHasItem("c#brbo03") GlobalGT("C#Br_WriteBookPage03","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Breach".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brbo04"))
ActionOverride(Player3,DestroyItem("c#brbo04"))
GiveItemCreate("c#brbo03",Player3,1,0,0)~ + book_01
/* "c#brbo05" */
+ ~!PartyHasItem("c#brbo05") GlobalGT("C#Br_WriteBookPage05","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Mass Invisibility".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brbo04"))
ActionOverride(Player3,DestroyItem("c#brbo04"))
GiveItemCreate("c#brbo05",Player3,1,0,0)~ + book_01
/* "c#brbo06" */
+ ~!PartyHasItem("c#brbo06") GlobalGT("C#Br_WriteBookPage06","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Summon Efreeti".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brbo04"))
ActionOverride(Player3,DestroyItem("c#brbo04"))
GiveItemCreate("c#brbo06",Player3,1,0,0)~ + book_01
/* "c#brbo07" */
+ ~!PartyHasItem("c#brbo07") GlobalGT("C#Br_WriteBookPage07","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Bigby's Clenched Fist".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brbo04"))
ActionOverride(Player3,DestroyItem("c#brbo04"))
GiveItemCreate("c#brbo07",Player3,1,0,0)~ + book_01
/* "c#brbo08" */
+ ~!PartyHasItem("c#brbo08") GlobalGT("C#Br_WriteBookPage08","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Pierce Shield".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brbo04"))
ActionOverride(Player3,DestroyItem("c#brbo04"))
GiveItemCreate("c#brbo08",Player3,1,0,0)~ + book_01
/* "c#brbo09" */
+ ~!PartyHasItem("c#brbo09") GlobalGT("C#Br_WriteBookPage09","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Bigby's Crushing Hand".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brbo04"))
ActionOverride(Player3,DestroyItem("c#brbo04"))
GiveItemCreate("c#brbo09",Player3,1,0,0)~ + book_01
/* "c#brbo10" */
+ ~!PartyHasItem("c#brbo10") GlobalGT("C#Br_WriteBookPage10","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Chain Contingency".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brbo04"))
ActionOverride(Player3,DestroyItem("c#brbo04"))
GiveItemCreate("c#brbo10",Player3,1,0,0)~ + book_01
+ ~Global("c#brbok1","GLOBAL",0)~ + ~(You leave the current page with the spell "Spell Deflection" open and put the book away again.)~ EXIT
+ ~Global("c#brbok1","GLOBAL",1)~ + ~(You already used the book today. The page can't be turned until after your next rest.)~ EXIT
END

/* "c#brbo05" */
IF ~HasItem("c#brbo05",Player3)~ THEN player3_05
SAY ~(You take the book into your  hand.)~ [c#ablank]
/* "c#brbo01" */
+ ~!PartyHasItem("c#brbo01") GlobalGT("C#Br_WriteBookPage01","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Fireball".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brbo05"))
ActionOverride(Player3,DestroyItem("c#brbo05"))
GiveItemCreate("c#brbo01",Player3,1,0,0)~ + book_01
/* "c#brbo02" */
+ ~!PartyHasItem("c#brbo02") GlobalGT("C#Br_WriteBookPage02","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Minor Sequencer".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brbo05"))
ActionOverride(Player3,DestroyItem("c#brbo05"))
GiveItemCreate("c#brbo02",Player3,1,0,0)~ + book_01
/* "c#brbo03" */
+ ~!PartyHasItem("c#brbo03") GlobalGT("C#Br_WriteBookPage03","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Breach".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brbo05"))
ActionOverride(Player3,DestroyItem("c#brbo05"))
GiveItemCreate("c#brbo03",Player3,1,0,0)~ + book_01
/* "c#brbo04" */
+ ~!PartyHasItem("c#brbo04") GlobalGT("C#Br_WriteBookPage04","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Spell Deflection".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brbo05"))
ActionOverride(Player3,DestroyItem("c#brbo05"))
GiveItemCreate("c#brbo04",Player3,1,0,0)~ + book_01
/* "c#brbo06" */
+ ~!PartyHasItem("c#brbo06") GlobalGT("C#Br_WriteBookPage06","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Summon Efreeti".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brbo05"))
ActionOverride(Player3,DestroyItem("c#brbo05"))
GiveItemCreate("c#brbo06",Player3,1,0,0)~ + book_01
/* "c#brbo07" */
+ ~!PartyHasItem("c#brbo07") GlobalGT("C#Br_WriteBookPage07","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Bigby's Clenched Fist".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brbo05"))
ActionOverride(Player3,DestroyItem("c#brbo05"))
GiveItemCreate("c#brbo07",Player3,1,0,0)~ + book_01
/* "c#brbo08" */
+ ~!PartyHasItem("c#brbo08") GlobalGT("C#Br_WriteBookPage08","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Pierce Shield".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brbo05"))
ActionOverride(Player3,DestroyItem("c#brbo05"))
GiveItemCreate("c#brbo08",Player3,1,0,0)~ + book_01
/* "c#brbo09" */
+ ~!PartyHasItem("c#brbo09") GlobalGT("C#Br_WriteBookPage09","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Bigby's Crushing Hand".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brbo05"))
ActionOverride(Player3,DestroyItem("c#brbo05"))
GiveItemCreate("c#brbo09",Player3,1,0,0)~ + book_01
/* "c#brbo10" */
+ ~!PartyHasItem("c#brbo10") GlobalGT("C#Br_WriteBookPage10","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Chain Contingency".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brbo05"))
ActionOverride(Player3,DestroyItem("c#brbo05"))
GiveItemCreate("c#brbo10",Player3,1,0,0)~ + book_01
+ ~Global("c#brbok1","GLOBAL",0)~ + ~(You leave the current page with the spell "Mass Invisibility" open and put the book away again.)~ EXIT
+ ~Global("c#brbok1","GLOBAL",1)~ + ~(You already used the book today. The page can't be turned until after your next rest.)~ EXIT
END

/* "c#brbo06" */
IF ~HasItem("c#brbo06",Player3)~ THEN player3_06
SAY ~(You take the book into your  hand.)~ [c#ablank]
/* "c#brbo01" */
+ ~!PartyHasItem("c#brbo01") GlobalGT("C#Br_WriteBookPage01","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Fireball".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brbo06"))
ActionOverride(Player3,DestroyItem("c#brbo06"))
GiveItemCreate("c#brbo01",Player3,1,0,0)~ + book_01
/* "c#brbo02" */
+ ~!PartyHasItem("c#brbo02") GlobalGT("C#Br_WriteBookPage02","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Minor Sequencer".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brbo06"))
ActionOverride(Player3,DestroyItem("c#brbo06"))
GiveItemCreate("c#brbo02",Player3,1,0,0)~ + book_01
/* "c#brbo03" */
+ ~!PartyHasItem("c#brbo03") GlobalGT("C#Br_WriteBookPage03","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Breach".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brbo06"))
ActionOverride(Player3,DestroyItem("c#brbo06"))
GiveItemCreate("c#brbo03",Player3,1,0,0)~ + book_01
/* "c#brbo04" */
+ ~!PartyHasItem("c#brbo04") GlobalGT("C#Br_WriteBookPage04","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Spell Deflection".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brbo06"))
ActionOverride(Player3,DestroyItem("c#brbo06"))
GiveItemCreate("c#brbo04",Player3,1,0,0)~ + book_01
/* "c#brbo05" */
+ ~!PartyHasItem("c#brbo05") GlobalGT("C#Br_WriteBookPage05","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Mass Invisibility".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brbo06"))
ActionOverride(Player3,DestroyItem("c#brbo06"))
GiveItemCreate("c#brbo05",Player3,1,0,0)~ + book_01
/* "c#brbo07" */
+ ~!PartyHasItem("c#brbo07") GlobalGT("C#Br_WriteBookPage07","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Bigby's Clenched Fist".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brbo06"))
ActionOverride(Player3,DestroyItem("c#brbo06"))
GiveItemCreate("c#brbo07",Player3,1,0,0)~ + book_01
/* "c#brbo08" */
+ ~!PartyHasItem("c#brbo08") GlobalGT("C#Br_WriteBookPage08","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Pierce Shield".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brbo06"))
ActionOverride(Player3,DestroyItem("c#brbo06"))
GiveItemCreate("c#brbo08",Player3,1,0,0)~ + book_01
/* "c#brbo09" */
+ ~!PartyHasItem("c#brbo09") GlobalGT("C#Br_WriteBookPage09","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Bigby's Crushing Hand".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brbo06"))
ActionOverride(Player3,DestroyItem("c#brbo06"))
GiveItemCreate("c#brbo09",Player3,1,0,0)~ + book_01
/* "c#brbo10" */
+ ~!PartyHasItem("c#brbo10") GlobalGT("C#Br_WriteBookPage10","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Chain Contingency".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brbo06"))
ActionOverride(Player3,DestroyItem("c#brbo06"))
GiveItemCreate("c#brbo10",Player3,1,0,0)~ + book_01
+ ~Global("c#brbok1","GLOBAL",0)~ + ~(You leave the current page with the spell "Summon Efreeti" open and put the book away again.)~ EXIT
+ ~Global("c#brbok1","GLOBAL",1)~ + ~(You already used the book today. The page can't be turned until after your next rest.)~ EXIT
END

/* "c#brbo07" */
IF ~HasItem("c#brbo07",Player3)~ THEN player3_07
SAY ~(You take the book into your  hand.)~ [c#ablank]
/* "c#brbo01" */
+ ~!PartyHasItem("c#brbo01") GlobalGT("C#Br_WriteBookPage01","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Fireball".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brbo07"))
ActionOverride(Player3,DestroyItem("c#brbo07"))
GiveItemCreate("c#brbo01",Player3,1,0,0)~ + book_01
/* "c#brbo02" */
+ ~!PartyHasItem("c#brbo02") GlobalGT("C#Br_WriteBookPage02","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Minor Sequencer".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brbo07"))
ActionOverride(Player3,DestroyItem("c#brbo07"))
GiveItemCreate("c#brbo02",Player3,1,0,0)~ + book_01
/* "c#brbo03" */
+ ~!PartyHasItem("c#brbo03") GlobalGT("C#Br_WriteBookPage03","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Breach".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brbo07"))
ActionOverride(Player3,DestroyItem("c#brbo07"))
GiveItemCreate("c#brbo03",Player3,1,0,0)~ + book_01
/* "c#brbo04" */
+ ~!PartyHasItem("c#brbo04") GlobalGT("C#Br_WriteBookPage04","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Spell Deflection".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brbo07"))
ActionOverride(Player3,DestroyItem("c#brbo07"))
GiveItemCreate("c#brbo04",Player3,1,0,0)~ + book_01
/* "c#brbo05" */
+ ~!PartyHasItem("c#brbo05") GlobalGT("C#Br_WriteBookPage05","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Mass Invisibility".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brbo07"))
ActionOverride(Player3,DestroyItem("c#brbo07"))
GiveItemCreate("c#brbo05",Player3,1,0,0)~ + book_01
/* "c#brbo06" */
+ ~!PartyHasItem("c#brbo06") GlobalGT("C#Br_WriteBookPage06","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Summon Efreeti".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brbo07"))
ActionOverride(Player3,DestroyItem("c#brbo07"))
GiveItemCreate("c#brbo06",Player3,1,0,0)~ + book_01
/* "c#brbo08" */
+ ~!PartyHasItem("c#brbo08") GlobalGT("C#Br_WriteBookPage08","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Pierce Shield".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brbo07"))
ActionOverride(Player3,DestroyItem("c#brbo07"))
GiveItemCreate("c#brbo08",Player3,1,0,0)~ + book_01
/* "c#brbo09" */
+ ~!PartyHasItem("c#brbo09") GlobalGT("C#Br_WriteBookPage09","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Bigby's Crushing Hand".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brbo07"))
ActionOverride(Player3,DestroyItem("c#brbo07"))
GiveItemCreate("c#brbo09",Player3,1,0,0)~ + book_01
/* "c#brbo10" */
+ ~!PartyHasItem("c#brbo10") GlobalGT("C#Br_WriteBookPage10","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Chain Contingency".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brbo07"))
ActionOverride(Player3,DestroyItem("c#brbo07"))
GiveItemCreate("c#brbo10",Player3,1,0,0)~ + book_01
+ ~Global("c#brbok1","GLOBAL",0)~ + ~(You leave the current page with the spell "Bigby's Clenched Fist" open and put the book away again.)~ EXIT
+ ~Global("c#brbok1","GLOBAL",1)~ + ~(You already used the book today. The page can't be turned until after your next rest.)~ EXIT
END

/* "c#brbo08" */
IF ~HasItem("c#brbo08",Player3)~ THEN player3_08
SAY ~(You take the book into your  hand.)~ [c#ablank]
/* "c#brbo01" */
+ ~!PartyHasItem("c#brbo01") GlobalGT("C#Br_WriteBookPage01","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Fireball".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brbo08"))
ActionOverride(Player3,DestroyItem("c#brbo08"))
GiveItemCreate("c#brbo01",Player3,1,0,0)~ + book_01
/* "c#brbo02" */
+ ~!PartyHasItem("c#brbo02") GlobalGT("C#Br_WriteBookPage02","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Minor Sequencer".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brbo08"))
ActionOverride(Player3,DestroyItem("c#brbo08"))
GiveItemCreate("c#brbo02",Player3,1,0,0)~ + book_01
/* "c#brbo03" */
+ ~!PartyHasItem("c#brbo03") GlobalGT("C#Br_WriteBookPage03","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Breach".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brbo08"))
ActionOverride(Player3,DestroyItem("c#brbo08"))
GiveItemCreate("c#brbo03",Player3,1,0,0)~ + book_01
/* "c#brbo04" */
+ ~!PartyHasItem("c#brbo04") GlobalGT("C#Br_WriteBookPage04","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Spell Deflection".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brbo08"))
ActionOverride(Player3,DestroyItem("c#brbo08"))
GiveItemCreate("c#brbo04",Player3,1,0,0)~ + book_01
/* "c#brbo05" */
+ ~!PartyHasItem("c#brbo05") GlobalGT("C#Br_WriteBookPage05","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Mass Invisibility".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brbo08"))
ActionOverride(Player3,DestroyItem("c#brbo08"))
GiveItemCreate("c#brbo05",Player3,1,0,0)~ + book_01
/* "c#brbo06" */
+ ~!PartyHasItem("c#brbo06") GlobalGT("C#Br_WriteBookPage06","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Summon Efreeti".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brbo08"))
ActionOverride(Player3,DestroyItem("c#brbo08"))
GiveItemCreate("c#brbo06",Player3,1,0,0)~ + book_01
/* "c#brbo07" */
+ ~!PartyHasItem("c#brbo07") GlobalGT("C#Br_WriteBookPage07","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Bigby's Clenched Fist".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brbo08"))
ActionOverride(Player3,DestroyItem("c#brbo08"))
GiveItemCreate("c#brbo07",Player3,1,0,0)~ + book_01
/* "c#brbo09" */
+ ~!PartyHasItem("c#brbo09") GlobalGT("C#Br_WriteBookPage09","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Bigby's Crushing Hand".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brbo08"))
ActionOverride(Player3,DestroyItem("c#brbo08"))
GiveItemCreate("c#brbo09",Player3,1,0,0)~ + book_01
/* "c#brbo10" */
+ ~!PartyHasItem("c#brbo10") GlobalGT("C#Br_WriteBookPage10","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Chain Contingency".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brbo08"))
ActionOverride(Player3,DestroyItem("c#brbo08"))
GiveItemCreate("c#brbo10",Player3,1,0,0)~ + book_01
+ ~Global("c#brbok1","GLOBAL",0)~ + ~(You leave the current page with the spell "Pierce Shield" open and put the book away again.)~ EXIT
+ ~Global("c#brbok1","GLOBAL",1)~ + ~(You already used the book today. The page can't be turned until after your next rest.)~ EXIT
END

/* "c#brbo09" */
IF ~HasItem("c#brbo09",Player3)~ THEN player3_09
SAY ~(You take the book into your  hand.)~ [c#ablank]
/* "c#brbo01" */
+ ~!PartyHasItem("c#brbo01") GlobalGT("C#Br_WriteBookPage01","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Fireball".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brbo09"))
ActionOverride(Player3,DestroyItem("c#brbo09"))
GiveItemCreate("c#brbo01",Player3,1,0,0)~ + book_01
/* "c#brbo02" */
+ ~!PartyHasItem("c#brbo02") GlobalGT("C#Br_WriteBookPage02","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Minor Sequencer".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brbo09"))
ActionOverride(Player3,DestroyItem("c#brbo09"))
GiveItemCreate("c#brbo02",Player3,1,0,0)~ + book_01
/* "c#brbo03" */
+ ~!PartyHasItem("c#brbo03") GlobalGT("C#Br_WriteBookPage03","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Breach".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brbo09"))
ActionOverride(Player3,DestroyItem("c#brbo09"))
GiveItemCreate("c#brbo03",Player3,1,0,0)~ + book_01
/* "c#brbo04" */
+ ~!PartyHasItem("c#brbo04") GlobalGT("C#Br_WriteBookPage04","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Spell Deflection".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brbo09"))
ActionOverride(Player3,DestroyItem("c#brbo09"))
GiveItemCreate("c#brbo04",Player3,1,0,0)~ + book_01
/* "c#brbo05" */
+ ~!PartyHasItem("c#brbo05") GlobalGT("C#Br_WriteBookPage05","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Mass Invisibility".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brbo09"))
ActionOverride(Player3,DestroyItem("c#brbo09"))
GiveItemCreate("c#brbo05",Player3,1,0,0)~ + book_01
/* "c#brbo06" */
+ ~!PartyHasItem("c#brbo06") GlobalGT("C#Br_WriteBookPage06","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Summon Efreeti".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brbo09"))
ActionOverride(Player3,DestroyItem("c#brbo09"))
GiveItemCreate("c#brbo06",Player3,1,0,0)~ + book_01
/* "c#brbo07" */
+ ~!PartyHasItem("c#brbo07") GlobalGT("C#Br_WriteBookPage07","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Bigby's Clenched Fist".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brbo09"))
ActionOverride(Player3,DestroyItem("c#brbo09"))
GiveItemCreate("c#brbo07",Player3,1,0,0)~ + book_01
/* "c#brbo08" */
+ ~!PartyHasItem("c#brbo08") GlobalGT("C#Br_WriteBookPage08","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Pierce Shield".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brbo09"))
ActionOverride(Player3,DestroyItem("c#brbo09"))
GiveItemCreate("c#brbo08",Player3,1,0,0)~ + book_01
/* "c#brbo10" */
+ ~!PartyHasItem("c#brbo10") GlobalGT("C#Br_WriteBookPage10","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Chain Contingency".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brbo09"))
ActionOverride(Player3,DestroyItem("c#brbo09"))
GiveItemCreate("c#brbo10",Player3,1,0,0)~ + book_01
+ ~Global("c#brbok1","GLOBAL",0)~ + ~(You leave the current page with the spell "Bigby's Crushing Hand" open and put the book away again.)~ EXIT
+ ~Global("c#brbok1","GLOBAL",1)~ + ~(You already used the book today. The page can't be turned until after your next rest.)~ EXIT
END

/* "c#brbo10" */
IF ~HasItem("c#brbo10",Player3)~ THEN player3_10
SAY ~(You take the book into your  hand.)~ [c#ablank]
/* "c#brbo01" */
+ ~!PartyHasItem("c#brbo01") GlobalGT("C#Br_WriteBookPage01","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Fireball".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brbo10"))
ActionOverride(Player3,DestroyItem("c#brbo10"))
GiveItemCreate("c#brbo01",Player3,1,0,0)~ + book_01
/* "c#brbo02" */
+ ~!PartyHasItem("c#brbo02") GlobalGT("C#Br_WriteBookPage02","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Minor Sequencer".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brbo10"))
ActionOverride(Player3,DestroyItem("c#brbo10"))
GiveItemCreate("c#brbo02",Player3,1,0,0)~ + book_01
/* "c#brbo03" */
+ ~!PartyHasItem("c#brbo03") GlobalGT("C#Br_WriteBookPage03","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Breach".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brbo10"))
ActionOverride(Player3,DestroyItem("c#brbo10"))
GiveItemCreate("c#brbo03",Player3,1,0,0)~ + book_01
/* "c#brbo04" */
+ ~!PartyHasItem("c#brbo04") GlobalGT("C#Br_WriteBookPage04","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Spell Deflection".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brbo10"))
ActionOverride(Player3,DestroyItem("c#brbo10"))
GiveItemCreate("c#brbo04",Player3,1,0,0)~ + book_01
/* "c#brbo05" */
+ ~!PartyHasItem("c#brbo05") GlobalGT("C#Br_WriteBookPage05","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Mass Invisibility".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brbo10"))
ActionOverride(Player3,DestroyItem("c#brbo10"))
GiveItemCreate("c#brbo05",Player3,1,0,0)~ + book_01
/* "c#brbo06" */
+ ~!PartyHasItem("c#brbo06") GlobalGT("C#Br_WriteBookPage06","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Summon Efreeti".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brbo10"))
ActionOverride(Player3,DestroyItem("c#brbo10"))
GiveItemCreate("c#brbo06",Player3,1,0,0)~ + book_01
/* "c#brbo07" */
+ ~!PartyHasItem("c#brbo07") GlobalGT("C#Br_WriteBookPage07","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Bigby's Clenched Fist".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brbo10"))
ActionOverride(Player3,DestroyItem("c#brbo10"))
GiveItemCreate("c#brbo07",Player3,1,0,0)~ + book_01
/* "c#brbo08" */
+ ~!PartyHasItem("c#brbo08") GlobalGT("C#Br_WriteBookPage08","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Pierce Shield".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brbo10"))
ActionOverride(Player3,DestroyItem("c#brbo10"))
GiveItemCreate("c#brbo08",Player3,1,0,0)~ + book_01
/* "c#brbo10" */
+ ~!PartyHasItem("c#brbo09") GlobalGT("C#Br_WriteBookPage09","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Bigby's Crushing Hand".)~ DO ~ActionOverride(Player3,TakePartyItem("c#brbo10"))
ActionOverride(Player3,DestroyItem("c#brbo10"))
GiveItemCreate("c#brbo09",Player3,1,0,0)~ + book_01
+ ~Global("c#brbok1","GLOBAL",0)~ + ~(You leave the current page with the spell "Chain Contingency" open and put the book away again.)~ EXIT
+ ~Global("c#brbok1","GLOBAL",1)~ + ~(You already used the book today. The page can't be turned until after your next rest.)~ EXIT
END

/* Player4 */

/* "c#brbo01" */
IF ~HasItem("c#brbo01",Player4)~ THEN player4_01
SAY ~(You take the book into your  hand.)~ [c#ablank]
/* "c#brbo02" */
+ ~!PartyHasItem("c#brbo02") GlobalGT("C#Br_WriteBookPage02","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Minor Sequencer".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brbo01"))
ActionOverride(Player4,DestroyItem("c#brbo01"))
GiveItemCreate("c#brbo02",Player4,1,0,0)~ + book_01
/* "c#brbo03" */
+ ~!PartyHasItem("c#brbo03") GlobalGT("C#Br_WriteBookPage03","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Breach".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brbo01"))
ActionOverride(Player4,DestroyItem("c#brbo01"))
GiveItemCreate("c#brbo03",Player4,1,0,0)~ + book_01
/* "c#brbo04" */
+ ~!PartyHasItem("c#brbo04") GlobalGT("C#Br_WriteBookPage04","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Spell Deflection".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brbo01"))
ActionOverride(Player4,DestroyItem("c#brbo01"))
GiveItemCreate("c#brbo04",Player4,1,0,0)~ + book_01
/* "c#brbo05" */
+ ~!PartyHasItem("c#brbo05") GlobalGT("C#Br_WriteBookPage05","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Mass Invisibility".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brbo01"))
ActionOverride(Player4,DestroyItem("c#brbo01"))
GiveItemCreate("c#brbo05",Player4,1,0,0)~ + book_01
/* "c#brbo06" */
+ ~!PartyHasItem("c#brbo06") GlobalGT("C#Br_WriteBookPage06","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Summon Efreeti".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brbo01"))
ActionOverride(Player4,DestroyItem("c#brbo01"))
GiveItemCreate("c#brbo06",Player4,1,0,0)~ + book_01
/* "c#brbo07" */
+ ~!PartyHasItem("c#brbo07") GlobalGT("C#Br_WriteBookPage07","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Bigby's Clenched Fist".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brbo01"))
ActionOverride(Player4,DestroyItem("c#brbo01"))
GiveItemCreate("c#brbo07",Player4,1,0,0)~ + book_01
/* "c#brbo08" */
+ ~!PartyHasItem("c#brbo08") GlobalGT("C#Br_WriteBookPage08","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Pierce Shield".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brbo01"))
ActionOverride(Player4,DestroyItem("c#brbo01"))
GiveItemCreate("c#brbo08",Player4,1,0,0)~ + book_01
/* "c#brbo09" */
+ ~!PartyHasItem("c#brbo09") GlobalGT("C#Br_WriteBookPage09","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Bigby's Crushing Hand".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brbo01"))
ActionOverride(Player4,DestroyItem("c#brbo01"))
GiveItemCreate("c#brbo09",Player4,1,0,0)~ + book_01
/* "c#brbo10" */
+ ~!PartyHasItem("c#brbo10") GlobalGT("C#Br_WriteBookPage10","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Chain Contingency".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brbo01"))
ActionOverride(Player4,DestroyItem("c#brbo01"))
GiveItemCreate("c#brbo10",Player4,1,0,0)~ + book_01
+ ~Global("c#brbok1","GLOBAL",0)~ + ~(You leave the current page with the spell "Fireball" open and put the book away again.)~ EXIT
+ ~Global("c#brbok1","GLOBAL",1)~ + ~(You already used the book today. The page can't be turned until after your next rest.)~ EXIT
END

/* "c#brbo02" */
IF ~HasItem("c#brbo02",Player4)~ THEN player4_02
SAY ~(You take the book into your  hand.)~ [c#ablank]
/* "c#brbo01" */
+ ~!PartyHasItem("c#brbo01") GlobalGT("C#Br_WriteBookPage01","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Fireball".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brbo02"))
ActionOverride(Player4,DestroyItem("c#brbo02"))
GiveItemCreate("c#brbo01",Player4,1,0,0)~ + book_01
/* "c#brbo03" */
+ ~!PartyHasItem("c#brbo03") GlobalGT("C#Br_WriteBookPage03","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Breach".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brbo02"))
ActionOverride(Player4,DestroyItem("c#brbo02"))
GiveItemCreate("c#brbo03",Player4,1,0,0)~ + book_01
/* "c#brbo04" */
+ ~!PartyHasItem("c#brbo04") GlobalGT("C#Br_WriteBookPage04","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Spell Deflection".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brbo02"))
ActionOverride(Player4,DestroyItem("c#brbo02"))
GiveItemCreate("c#brbo04",Player4,1,0,0)~ + book_01
/* "c#brbo05" */
+ ~!PartyHasItem("c#brbo05") GlobalGT("C#Br_WriteBookPage05","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Mass Invisibility".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brbo02"))
ActionOverride(Player4,DestroyItem("c#brbo02"))
GiveItemCreate("c#brbo05",Player4,1,0,0)~ + book_01
/* "c#brbo06" */
+ ~!PartyHasItem("c#brbo06") GlobalGT("C#Br_WriteBookPage06","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Summon Efreeti".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brbo02"))
ActionOverride(Player4,DestroyItem("c#brbo02"))
GiveItemCreate("c#brbo06",Player4,1,0,0)~ + book_01
/* "c#brbo07" */
+ ~!PartyHasItem("c#brbo07") GlobalGT("C#Br_WriteBookPage07","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Bigby's Clenched Fist".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brbo02"))
ActionOverride(Player4,DestroyItem("c#brbo02"))
GiveItemCreate("c#brbo07",Player4,1,0,0)~ + book_01
/* "c#brbo08" */
+ ~!PartyHasItem("c#brbo08") GlobalGT("C#Br_WriteBookPage08","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Pierce Shield".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brbo02"))
ActionOverride(Player4,DestroyItem("c#brbo02"))
GiveItemCreate("c#brbo08",Player4,1,0,0)~ + book_01
/* "c#brbo09" */
+ ~!PartyHasItem("c#brbo09") GlobalGT("C#Br_WriteBookPage09","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Bigby's Crushing Hand".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brbo02"))
ActionOverride(Player4,DestroyItem("c#brbo02"))
GiveItemCreate("c#brbo09",Player4,1,0,0)~ + book_01
/* "c#brbo10" */
+ ~!PartyHasItem("c#brbo10") GlobalGT("C#Br_WriteBookPage10","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Chain Contingency".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brbo02"))
ActionOverride(Player4,DestroyItem("c#brbo02"))
GiveItemCreate("c#brbo10",Player4,1,0,0)~ + book_01
+ ~Global("c#brbok1","GLOBAL",0)~ + ~(You leave the current page with the spell "Minor Sequencer" open and put the book away again.)~ EXIT
+ ~Global("c#brbok1","GLOBAL",1)~ + ~(You already used the book today. The page can't be turned until after your next rest.)~ EXIT
END

/* "c#brbo03" */
IF ~HasItem("c#brbo03",Player4)~ THEN player4_03
SAY ~(You take the book into your  hand.)~ [c#ablank]
/* "c#brbo01" */
+ ~!PartyHasItem("c#brbo01") GlobalGT("C#Br_WriteBookPage01","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Fireball".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brbo03"))
ActionOverride(Player4,DestroyItem("c#brbo03"))
GiveItemCreate("c#brbo01",Player4,1,0,0)~ + book_01
/* "c#brbo02" */
+ ~!PartyHasItem("c#brbo02") GlobalGT("C#Br_WriteBookPage02","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Minor Sequencer".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brbo03"))
ActionOverride(Player4,DestroyItem("c#brbo03"))
GiveItemCreate("c#brbo02",Player4,1,0,0)~ + book_01
/* "c#brbo04" */
+ ~!PartyHasItem("c#brbo04") GlobalGT("C#Br_WriteBookPage04","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Spell Deflection".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brbo03"))
ActionOverride(Player4,DestroyItem("c#brbo03"))
GiveItemCreate("c#brbo04",Player4,1,0,0)~ + book_01
/* "c#brbo05" */
+ ~!PartyHasItem("c#brbo05") GlobalGT("C#Br_WriteBookPage05","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Mass Invisibility".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brbo03"))
ActionOverride(Player4,DestroyItem("c#brbo03"))
GiveItemCreate("c#brbo05",Player4,1,0,0)~ + book_01
/* "c#brbo06" */
+ ~!PartyHasItem("c#brbo06") GlobalGT("C#Br_WriteBookPage06","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Summon Efreeti".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brbo03"))
ActionOverride(Player4,DestroyItem("c#brbo03"))
GiveItemCreate("c#brbo06",Player4,1,0,0)~ + book_01
/* "c#brbo07" */
+ ~!PartyHasItem("c#brbo07") GlobalGT("C#Br_WriteBookPage07","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Bigby's Clenched Fist".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brbo03"))
ActionOverride(Player4,DestroyItem("c#brbo03"))
GiveItemCreate("c#brbo07",Player4,1,0,0)~ + book_01
/* "c#brbo08" */
+ ~!PartyHasItem("c#brbo08") GlobalGT("C#Br_WriteBookPage08","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Pierce Shield".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brbo03"))
ActionOverride(Player4,DestroyItem("c#brbo03"))
GiveItemCreate("c#brbo08",Player4,1,0,0)~ + book_01
/* "c#brbo09" */
+ ~!PartyHasItem("c#brbo09") GlobalGT("C#Br_WriteBookPage09","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Bigby's Crushing Hand".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brbo03"))
ActionOverride(Player4,DestroyItem("c#brbo03"))
GiveItemCreate("c#brbo09",Player4,1,0,0)~ + book_01
/* "c#brbo10" */
+ ~!PartyHasItem("c#brbo10") GlobalGT("C#Br_WriteBookPage10","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Chain Contingency".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brbo03"))
ActionOverride(Player4,DestroyItem("c#brbo03"))
GiveItemCreate("c#brbo10",Player4,1,0,0)~ + book_01
+ ~Global("c#brbok1","GLOBAL",0)~ + ~(You leave the current page with the spell "Breach" open and put the book away again.)~ EXIT
+ ~Global("c#brbok1","GLOBAL",1)~ + ~(You already used the book today. The page can't be turned until after your next rest.)~ EXIT
END

/* "c#brbo04" */
IF ~HasItem("c#brbo04",Player4)~ THEN player4_04
SAY ~(You take the book into your  hand.)~ [c#ablank]
/* "c#brbo01" */
+ ~!PartyHasItem("c#brbo01") GlobalGT("C#Br_WriteBookPage01","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Fireball".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brbo04"))
ActionOverride(Player4,DestroyItem("c#brbo04"))
GiveItemCreate("c#brbo01",Player4,1,0,0)~ + book_01
/* "c#brbo02" */
+ ~!PartyHasItem("c#brbo02") GlobalGT("C#Br_WriteBookPage02","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Minor Sequencer".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brbo04"))
ActionOverride(Player4,DestroyItem("c#brbo04"))
GiveItemCreate("c#brbo02",Player4,1,0,0)~ + book_01
/* "c#brbo03" */
+ ~!PartyHasItem("c#brbo03") GlobalGT("C#Br_WriteBookPage03","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Breach".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brbo04"))
ActionOverride(Player4,DestroyItem("c#brbo04"))
GiveItemCreate("c#brbo03",Player4,1,0,0)~ + book_01
/* "c#brbo05" */
+ ~!PartyHasItem("c#brbo05") GlobalGT("C#Br_WriteBookPage05","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Mass Invisibility".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brbo04"))
ActionOverride(Player4,DestroyItem("c#brbo04"))
GiveItemCreate("c#brbo05",Player4,1,0,0)~ + book_01
/* "c#brbo06" */
+ ~!PartyHasItem("c#brbo06") GlobalGT("C#Br_WriteBookPage06","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Summon Efreeti".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brbo04"))
ActionOverride(Player4,DestroyItem("c#brbo04"))
GiveItemCreate("c#brbo06",Player4,1,0,0)~ + book_01
/* "c#brbo07" */
+ ~!PartyHasItem("c#brbo07") GlobalGT("C#Br_WriteBookPage07","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Bigby's Clenched Fist".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brbo04"))
ActionOverride(Player4,DestroyItem("c#brbo04"))
GiveItemCreate("c#brbo07",Player4,1,0,0)~ + book_01
/* "c#brbo08" */
+ ~!PartyHasItem("c#brbo08") GlobalGT("C#Br_WriteBookPage08","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Pierce Shield".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brbo04"))
ActionOverride(Player4,DestroyItem("c#brbo04"))
GiveItemCreate("c#brbo08",Player4,1,0,0)~ + book_01
/* "c#brbo09" */
+ ~!PartyHasItem("c#brbo09") GlobalGT("C#Br_WriteBookPage09","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Bigby's Crushing Hand".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brbo04"))
ActionOverride(Player4,DestroyItem("c#brbo04"))
GiveItemCreate("c#brbo09",Player4,1,0,0)~ + book_01
/* "c#brbo10" */
+ ~!PartyHasItem("c#brbo10") GlobalGT("C#Br_WriteBookPage10","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Chain Contingency".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brbo04"))
ActionOverride(Player4,DestroyItem("c#brbo04"))
GiveItemCreate("c#brbo10",Player4,1,0,0)~ + book_01
+ ~Global("c#brbok1","GLOBAL",0)~ + ~(You leave the current page with the spell "Spell Deflection" open and put the book away again.)~ EXIT
+ ~Global("c#brbok1","GLOBAL",1)~ + ~(You already used the book today. The page can't be turned until after your next rest.)~ EXIT
END

/* "c#brbo05" */
IF ~HasItem("c#brbo05",Player4)~ THEN player4_05
SAY ~(You take the book into your  hand.)~ [c#ablank]
/* "c#brbo01" */
+ ~!PartyHasItem("c#brbo01") GlobalGT("C#Br_WriteBookPage01","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Fireball".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brbo05"))
ActionOverride(Player4,DestroyItem("c#brbo05"))
GiveItemCreate("c#brbo01",Player4,1,0,0)~ + book_01
/* "c#brbo02" */
+ ~!PartyHasItem("c#brbo02") GlobalGT("C#Br_WriteBookPage02","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Minor Sequencer".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brbo05"))
ActionOverride(Player4,DestroyItem("c#brbo05"))
GiveItemCreate("c#brbo02",Player4,1,0,0)~ + book_01
/* "c#brbo03" */
+ ~!PartyHasItem("c#brbo03") GlobalGT("C#Br_WriteBookPage03","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Breach".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brbo05"))
ActionOverride(Player4,DestroyItem("c#brbo05"))
GiveItemCreate("c#brbo03",Player4,1,0,0)~ + book_01
/* "c#brbo04" */
+ ~!PartyHasItem("c#brbo04") GlobalGT("C#Br_WriteBookPage04","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Spell Deflection".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brbo05"))
ActionOverride(Player4,DestroyItem("c#brbo05"))
GiveItemCreate("c#brbo04",Player4,1,0,0)~ + book_01
/* "c#brbo06" */
+ ~!PartyHasItem("c#brbo06") GlobalGT("C#Br_WriteBookPage06","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Summon Efreeti".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brbo05"))
ActionOverride(Player4,DestroyItem("c#brbo05"))
GiveItemCreate("c#brbo06",Player4,1,0,0)~ + book_01
/* "c#brbo07" */
+ ~!PartyHasItem("c#brbo07") GlobalGT("C#Br_WriteBookPage07","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Bigby's Clenched Fist".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brbo05"))
ActionOverride(Player4,DestroyItem("c#brbo05"))
GiveItemCreate("c#brbo07",Player4,1,0,0)~ + book_01
/* "c#brbo08" */
+ ~!PartyHasItem("c#brbo08") GlobalGT("C#Br_WriteBookPage08","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Pierce Shield".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brbo05"))
ActionOverride(Player4,DestroyItem("c#brbo05"))
GiveItemCreate("c#brbo08",Player4,1,0,0)~ + book_01
/* "c#brbo09" */
+ ~!PartyHasItem("c#brbo09") GlobalGT("C#Br_WriteBookPage09","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Bigby's Crushing Hand".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brbo05"))
ActionOverride(Player4,DestroyItem("c#brbo05"))
GiveItemCreate("c#brbo09",Player4,1,0,0)~ + book_01
/* "c#brbo10" */
+ ~!PartyHasItem("c#brbo10") GlobalGT("C#Br_WriteBookPage10","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Chain Contingency".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brbo05"))
ActionOverride(Player4,DestroyItem("c#brbo05"))
GiveItemCreate("c#brbo10",Player4,1,0,0)~ + book_01
+ ~Global("c#brbok1","GLOBAL",0)~ + ~(You leave the current page with the spell "Mass Invisibility" open and put the book away again.)~ EXIT
+ ~Global("c#brbok1","GLOBAL",1)~ + ~(You already used the book today. The page can't be turned until after your next rest.)~ EXIT
END

/* "c#brbo06" */
IF ~HasItem("c#brbo06",Player4)~ THEN player4_06
SAY ~(You take the book into your  hand.)~ [c#ablank]
/* "c#brbo01" */
+ ~!PartyHasItem("c#brbo01") GlobalGT("C#Br_WriteBookPage01","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Fireball".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brbo06"))
ActionOverride(Player4,DestroyItem("c#brbo06"))
GiveItemCreate("c#brbo01",Player4,1,0,0)~ + book_01
/* "c#brbo02" */
+ ~!PartyHasItem("c#brbo02") GlobalGT("C#Br_WriteBookPage02","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Minor Sequencer".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brbo06"))
ActionOverride(Player4,DestroyItem("c#brbo06"))
GiveItemCreate("c#brbo02",Player4,1,0,0)~ + book_01
/* "c#brbo03" */
+ ~!PartyHasItem("c#brbo03") GlobalGT("C#Br_WriteBookPage03","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Breach".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brbo06"))
ActionOverride(Player4,DestroyItem("c#brbo06"))
GiveItemCreate("c#brbo03",Player4,1,0,0)~ + book_01
/* "c#brbo04" */
+ ~!PartyHasItem("c#brbo04") GlobalGT("C#Br_WriteBookPage04","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Spell Deflection".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brbo06"))
ActionOverride(Player4,DestroyItem("c#brbo06"))
GiveItemCreate("c#brbo04",Player4,1,0,0)~ + book_01
/* "c#brbo05" */
+ ~!PartyHasItem("c#brbo05") GlobalGT("C#Br_WriteBookPage05","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Mass Invisibility".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brbo06"))
ActionOverride(Player4,DestroyItem("c#brbo06"))
GiveItemCreate("c#brbo05",Player4,1,0,0)~ + book_01
/* "c#brbo07" */
+ ~!PartyHasItem("c#brbo07") GlobalGT("C#Br_WriteBookPage07","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Bigby's Clenched Fist".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brbo06"))
ActionOverride(Player4,DestroyItem("c#brbo06"))
GiveItemCreate("c#brbo07",Player4,1,0,0)~ + book_01
/* "c#brbo08" */
+ ~!PartyHasItem("c#brbo08") GlobalGT("C#Br_WriteBookPage08","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Pierce Shield".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brbo06"))
ActionOverride(Player4,DestroyItem("c#brbo06"))
GiveItemCreate("c#brbo08",Player4,1,0,0)~ + book_01
/* "c#brbo09" */
+ ~!PartyHasItem("c#brbo09") GlobalGT("C#Br_WriteBookPage09","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Bigby's Crushing Hand".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brbo06"))
ActionOverride(Player4,DestroyItem("c#brbo06"))
GiveItemCreate("c#brbo09",Player4,1,0,0)~ + book_01
/* "c#brbo10" */
+ ~!PartyHasItem("c#brbo10") GlobalGT("C#Br_WriteBookPage10","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Chain Contingency".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brbo06"))
ActionOverride(Player4,DestroyItem("c#brbo06"))
GiveItemCreate("c#brbo10",Player4,1,0,0)~ + book_01
+ ~Global("c#brbok1","GLOBAL",0)~ + ~(You leave the current page with the spell "Summon Efreeti" open and put the book away again.)~ EXIT
+ ~Global("c#brbok1","GLOBAL",1)~ + ~(You already used the book today. The page can't be turned until after your next rest.)~ EXIT
END

/* "c#brbo07" */
IF ~HasItem("c#brbo07",Player4)~ THEN player4_07
SAY ~(You take the book into your  hand.)~ [c#ablank]
/* "c#brbo01" */
+ ~!PartyHasItem("c#brbo01") GlobalGT("C#Br_WriteBookPage01","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Fireball".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brbo07"))
ActionOverride(Player4,DestroyItem("c#brbo07"))
GiveItemCreate("c#brbo01",Player4,1,0,0)~ + book_01
/* "c#brbo02" */
+ ~!PartyHasItem("c#brbo02") GlobalGT("C#Br_WriteBookPage02","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Minor Sequencer".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brbo07"))
ActionOverride(Player4,DestroyItem("c#brbo07"))
GiveItemCreate("c#brbo02",Player4,1,0,0)~ + book_01
/* "c#brbo03" */
+ ~!PartyHasItem("c#brbo03") GlobalGT("C#Br_WriteBookPage03","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Breach".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brbo07"))
ActionOverride(Player4,DestroyItem("c#brbo07"))
GiveItemCreate("c#brbo03",Player4,1,0,0)~ + book_01
/* "c#brbo04" */
+ ~!PartyHasItem("c#brbo04") GlobalGT("C#Br_WriteBookPage04","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Spell Deflection".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brbo07"))
ActionOverride(Player4,DestroyItem("c#brbo07"))
GiveItemCreate("c#brbo04",Player4,1,0,0)~ + book_01
/* "c#brbo05" */
+ ~!PartyHasItem("c#brbo05") GlobalGT("C#Br_WriteBookPage05","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Mass Invisibility".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brbo07"))
ActionOverride(Player4,DestroyItem("c#brbo07"))
GiveItemCreate("c#brbo05",Player4,1,0,0)~ + book_01
/* "c#brbo06" */
+ ~!PartyHasItem("c#brbo06") GlobalGT("C#Br_WriteBookPage06","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Summon Efreeti".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brbo07"))
ActionOverride(Player4,DestroyItem("c#brbo07"))
GiveItemCreate("c#brbo06",Player4,1,0,0)~ + book_01
/* "c#brbo08" */
+ ~!PartyHasItem("c#brbo08") GlobalGT("C#Br_WriteBookPage08","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Pierce Shield".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brbo07"))
ActionOverride(Player4,DestroyItem("c#brbo07"))
GiveItemCreate("c#brbo08",Player4,1,0,0)~ + book_01
/* "c#brbo09" */
+ ~!PartyHasItem("c#brbo09") GlobalGT("C#Br_WriteBookPage09","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Bigby's Crushing Hand".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brbo07"))
ActionOverride(Player4,DestroyItem("c#brbo07"))
GiveItemCreate("c#brbo09",Player4,1,0,0)~ + book_01
/* "c#brbo10" */
+ ~!PartyHasItem("c#brbo10") GlobalGT("C#Br_WriteBookPage10","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Chain Contingency".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brbo07"))
ActionOverride(Player4,DestroyItem("c#brbo07"))
GiveItemCreate("c#brbo10",Player4,1,0,0)~ + book_01
+ ~Global("c#brbok1","GLOBAL",0)~ + ~(You leave the current page with the spell "Bigby's Clenched Fist" open and put the book away again.)~ EXIT
+ ~Global("c#brbok1","GLOBAL",1)~ + ~(You already used the book today. The page can't be turned until after your next rest.)~ EXIT
END

/* "c#brbo08" */
IF ~HasItem("c#brbo08",Player4)~ THEN player4_08
SAY ~(You take the book into your  hand.)~ [c#ablank]
/* "c#brbo01" */
+ ~!PartyHasItem("c#brbo01") GlobalGT("C#Br_WriteBookPage01","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Fireball".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brbo08"))
ActionOverride(Player4,DestroyItem("c#brbo08"))
GiveItemCreate("c#brbo01",Player4,1,0,0)~ + book_01
/* "c#brbo02" */
+ ~!PartyHasItem("c#brbo02") GlobalGT("C#Br_WriteBookPage02","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Minor Sequencer".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brbo08"))
ActionOverride(Player4,DestroyItem("c#brbo08"))
GiveItemCreate("c#brbo02",Player4,1,0,0)~ + book_01
/* "c#brbo03" */
+ ~!PartyHasItem("c#brbo03") GlobalGT("C#Br_WriteBookPage03","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Breach".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brbo08"))
ActionOverride(Player4,DestroyItem("c#brbo08"))
GiveItemCreate("c#brbo03",Player4,1,0,0)~ + book_01
/* "c#brbo04" */
+ ~!PartyHasItem("c#brbo04") GlobalGT("C#Br_WriteBookPage04","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Spell Deflection".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brbo08"))
ActionOverride(Player4,DestroyItem("c#brbo08"))
GiveItemCreate("c#brbo04",Player4,1,0,0)~ + book_01
/* "c#brbo05" */
+ ~!PartyHasItem("c#brbo05") GlobalGT("C#Br_WriteBookPage05","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Mass Invisibility".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brbo08"))
ActionOverride(Player4,DestroyItem("c#brbo08"))
GiveItemCreate("c#brbo05",Player4,1,0,0)~ + book_01
/* "c#brbo06" */
+ ~!PartyHasItem("c#brbo06") GlobalGT("C#Br_WriteBookPage06","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Summon Efreeti".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brbo08"))
ActionOverride(Player4,DestroyItem("c#brbo08"))
GiveItemCreate("c#brbo06",Player4,1,0,0)~ + book_01
/* "c#brbo07" */
+ ~!PartyHasItem("c#brbo07") GlobalGT("C#Br_WriteBookPage07","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Bigby's Clenched Fist".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brbo08"))
ActionOverride(Player4,DestroyItem("c#brbo08"))
GiveItemCreate("c#brbo07",Player4,1,0,0)~ + book_01
/* "c#brbo09" */
+ ~!PartyHasItem("c#brbo09") GlobalGT("C#Br_WriteBookPage09","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Bigby's Crushing Hand".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brbo08"))
ActionOverride(Player4,DestroyItem("c#brbo08"))
GiveItemCreate("c#brbo09",Player4,1,0,0)~ + book_01
/* "c#brbo10" */
+ ~!PartyHasItem("c#brbo10") GlobalGT("C#Br_WriteBookPage10","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Chain Contingency".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brbo08"))
ActionOverride(Player4,DestroyItem("c#brbo08"))
GiveItemCreate("c#brbo10",Player4,1,0,0)~ + book_01
+ ~Global("c#brbok1","GLOBAL",0)~ + ~(You leave the current page with the spell "Pierce Shield" open and put the book away again.)~ EXIT
+ ~Global("c#brbok1","GLOBAL",1)~ + ~(You already used the book today. The page can't be turned until after your next rest.)~ EXIT
END

/* "c#brbo09" */
IF ~HasItem("c#brbo09",Player4)~ THEN player4_09
SAY ~(You take the book into your  hand.)~ [c#ablank]
/* "c#brbo01" */
+ ~!PartyHasItem("c#brbo01") GlobalGT("C#Br_WriteBookPage01","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Fireball".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brbo09"))
ActionOverride(Player4,DestroyItem("c#brbo09"))
GiveItemCreate("c#brbo01",Player4,1,0,0)~ + book_01
/* "c#brbo02" */
+ ~!PartyHasItem("c#brbo02") GlobalGT("C#Br_WriteBookPage02","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Minor Sequencer".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brbo09"))
ActionOverride(Player4,DestroyItem("c#brbo09"))
GiveItemCreate("c#brbo02",Player4,1,0,0)~ + book_01
/* "c#brbo03" */
+ ~!PartyHasItem("c#brbo03") GlobalGT("C#Br_WriteBookPage03","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Breach".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brbo09"))
ActionOverride(Player4,DestroyItem("c#brbo09"))
GiveItemCreate("c#brbo03",Player4,1,0,0)~ + book_01
/* "c#brbo04" */
+ ~!PartyHasItem("c#brbo04") GlobalGT("C#Br_WriteBookPage04","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Spell Deflection".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brbo09"))
ActionOverride(Player4,DestroyItem("c#brbo09"))
GiveItemCreate("c#brbo04",Player4,1,0,0)~ + book_01
/* "c#brbo05" */
+ ~!PartyHasItem("c#brbo05") GlobalGT("C#Br_WriteBookPage05","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Mass Invisibility".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brbo09"))
ActionOverride(Player4,DestroyItem("c#brbo09"))
GiveItemCreate("c#brbo05",Player4,1,0,0)~ + book_01
/* "c#brbo06" */
+ ~!PartyHasItem("c#brbo06") GlobalGT("C#Br_WriteBookPage06","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Summon Efreeti".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brbo09"))
ActionOverride(Player4,DestroyItem("c#brbo09"))
GiveItemCreate("c#brbo06",Player4,1,0,0)~ + book_01
/* "c#brbo07" */
+ ~!PartyHasItem("c#brbo07") GlobalGT("C#Br_WriteBookPage07","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Bigby's Clenched Fist".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brbo09"))
ActionOverride(Player4,DestroyItem("c#brbo09"))
GiveItemCreate("c#brbo07",Player4,1,0,0)~ + book_01
/* "c#brbo08" */
+ ~!PartyHasItem("c#brbo08") GlobalGT("C#Br_WriteBookPage08","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Pierce Shield".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brbo09"))
ActionOverride(Player4,DestroyItem("c#brbo09"))
GiveItemCreate("c#brbo08",Player4,1,0,0)~ + book_01
/* "c#brbo10" */
+ ~!PartyHasItem("c#brbo10") GlobalGT("C#Br_WriteBookPage10","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Chain Contingency".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brbo09"))
ActionOverride(Player4,DestroyItem("c#brbo09"))
GiveItemCreate("c#brbo10",Player4,1,0,0)~ + book_01
+ ~Global("c#brbok1","GLOBAL",0)~ + ~(You leave the current page with the spell "Bigby's Crushing Hand" open and put the book away again.)~ EXIT
+ ~Global("c#brbok1","GLOBAL",1)~ + ~(You already used the book today. The page can't be turned until after your next rest.)~ EXIT
END

/* "c#brbo10" */
IF ~HasItem("c#brbo10",Player4)~ THEN player4_10
SAY ~(You take the book into your  hand.)~ [c#ablank]
/* "c#brbo01" */
+ ~!PartyHasItem("c#brbo01") GlobalGT("C#Br_WriteBookPage01","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Fireball".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brbo10"))
ActionOverride(Player4,DestroyItem("c#brbo10"))
GiveItemCreate("c#brbo01",Player4,1,0,0)~ + book_01
/* "c#brbo02" */
+ ~!PartyHasItem("c#brbo02") GlobalGT("C#Br_WriteBookPage02","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Minor Sequencer".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brbo10"))
ActionOverride(Player4,DestroyItem("c#brbo10"))
GiveItemCreate("c#brbo02",Player4,1,0,0)~ + book_01
/* "c#brbo03" */
+ ~!PartyHasItem("c#brbo03") GlobalGT("C#Br_WriteBookPage03","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Breach".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brbo10"))
ActionOverride(Player4,DestroyItem("c#brbo10"))
GiveItemCreate("c#brbo03",Player4,1,0,0)~ + book_01
/* "c#brbo04" */
+ ~!PartyHasItem("c#brbo04") GlobalGT("C#Br_WriteBookPage04","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Spell Deflection".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brbo10"))
ActionOverride(Player4,DestroyItem("c#brbo10"))
GiveItemCreate("c#brbo04",Player4,1,0,0)~ + book_01
/* "c#brbo05" */
+ ~!PartyHasItem("c#brbo05") GlobalGT("C#Br_WriteBookPage05","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Mass Invisibility".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brbo10"))
ActionOverride(Player4,DestroyItem("c#brbo10"))
GiveItemCreate("c#brbo05",Player4,1,0,0)~ + book_01
/* "c#brbo06" */
+ ~!PartyHasItem("c#brbo06") GlobalGT("C#Br_WriteBookPage06","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Summon Efreeti".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brbo10"))
ActionOverride(Player4,DestroyItem("c#brbo10"))
GiveItemCreate("c#brbo06",Player4,1,0,0)~ + book_01
/* "c#brbo07" */
+ ~!PartyHasItem("c#brbo07") GlobalGT("C#Br_WriteBookPage07","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Bigby's Clenched Fist".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brbo10"))
ActionOverride(Player4,DestroyItem("c#brbo10"))
GiveItemCreate("c#brbo07",Player4,1,0,0)~ + book_01
/* "c#brbo08" */
+ ~!PartyHasItem("c#brbo08") GlobalGT("C#Br_WriteBookPage08","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Pierce Shield".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brbo10"))
ActionOverride(Player4,DestroyItem("c#brbo10"))
GiveItemCreate("c#brbo08",Player4,1,0,0)~ + book_01
/* "c#brbo10" */
+ ~!PartyHasItem("c#brbo09") GlobalGT("C#Br_WriteBookPage09","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Bigby's Crushing Hand".)~ DO ~ActionOverride(Player4,TakePartyItem("c#brbo10"))
ActionOverride(Player4,DestroyItem("c#brbo10"))
GiveItemCreate("c#brbo09",Player4,1,0,0)~ + book_01
+ ~Global("c#brbok1","GLOBAL",0)~ + ~(You leave the current page with the spell "Chain Contingency" open and put the book away again.)~ EXIT
+ ~Global("c#brbok1","GLOBAL",1)~ + ~(You already used the book today. The page can't be turned until after your next rest.)~ EXIT
END

/* Player5 */

/* "c#brbo01" */
IF ~HasItem("c#brbo01",Player5)~ THEN player5_01
SAY ~(You take the book into your  hand.)~ [c#ablank]
/* "c#brbo02" */
+ ~!PartyHasItem("c#brbo02") GlobalGT("C#Br_WriteBookPage02","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Minor Sequencer".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brbo01"))
ActionOverride(Player5,DestroyItem("c#brbo01"))
GiveItemCreate("c#brbo02",Player5,1,0,0)~ + book_01
/* "c#brbo03" */
+ ~!PartyHasItem("c#brbo03") GlobalGT("C#Br_WriteBookPage03","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Breach".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brbo01"))
ActionOverride(Player5,DestroyItem("c#brbo01"))
GiveItemCreate("c#brbo03",Player5,1,0,0)~ + book_01
/* "c#brbo04" */
+ ~!PartyHasItem("c#brbo04") GlobalGT("C#Br_WriteBookPage04","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Spell Deflection".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brbo01"))
ActionOverride(Player5,DestroyItem("c#brbo01"))
GiveItemCreate("c#brbo04",Player5,1,0,0)~ + book_01
/* "c#brbo05" */
+ ~!PartyHasItem("c#brbo05") GlobalGT("C#Br_WriteBookPage05","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Mass Invisibility".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brbo01"))
ActionOverride(Player5,DestroyItem("c#brbo01"))
GiveItemCreate("c#brbo05",Player5,1,0,0)~ + book_01
/* "c#brbo06" */
+ ~!PartyHasItem("c#brbo06") GlobalGT("C#Br_WriteBookPage06","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Summon Efreeti".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brbo01"))
ActionOverride(Player5,DestroyItem("c#brbo01"))
GiveItemCreate("c#brbo06",Player5,1,0,0)~ + book_01
/* "c#brbo07" */
+ ~!PartyHasItem("c#brbo07") GlobalGT("C#Br_WriteBookPage07","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Bigby's Clenched Fist".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brbo01"))
ActionOverride(Player5,DestroyItem("c#brbo01"))
GiveItemCreate("c#brbo07",Player5,1,0,0)~ + book_01
/* "c#brbo08" */
+ ~!PartyHasItem("c#brbo08") GlobalGT("C#Br_WriteBookPage08","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Pierce Shield".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brbo01"))
ActionOverride(Player5,DestroyItem("c#brbo01"))
GiveItemCreate("c#brbo08",Player5,1,0,0)~ + book_01
/* "c#brbo09" */
+ ~!PartyHasItem("c#brbo09") GlobalGT("C#Br_WriteBookPage09","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Bigby's Crushing Hand".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brbo01"))
ActionOverride(Player5,DestroyItem("c#brbo01"))
GiveItemCreate("c#brbo09",Player5,1,0,0)~ + book_01
/* "c#brbo10" */
+ ~!PartyHasItem("c#brbo10") GlobalGT("C#Br_WriteBookPage10","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Chain Contingency".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brbo01"))
ActionOverride(Player5,DestroyItem("c#brbo01"))
GiveItemCreate("c#brbo10",Player5,1,0,0)~ + book_01
+ ~Global("c#brbok1","GLOBAL",0)~ + ~(You leave the current page with the spell "Fireball" open and put the book away again.)~ EXIT
+ ~Global("c#brbok1","GLOBAL",1)~ + ~(You already used the book today. The page can't be turned until after your next rest.)~ EXIT
END

/* "c#brbo02" */
IF ~HasItem("c#brbo02",Player5)~ THEN player5_02
SAY ~(You take the book into your  hand.)~ [c#ablank]
/* "c#brbo01" */
+ ~!PartyHasItem("c#brbo01") GlobalGT("C#Br_WriteBookPage01","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Fireball".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brbo02"))
ActionOverride(Player5,DestroyItem("c#brbo02"))
GiveItemCreate("c#brbo01",Player5,1,0,0)~ + book_01
/* "c#brbo03" */
+ ~!PartyHasItem("c#brbo03") GlobalGT("C#Br_WriteBookPage03","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Breach".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brbo02"))
ActionOverride(Player5,DestroyItem("c#brbo02"))
GiveItemCreate("c#brbo03",Player5,1,0,0)~ + book_01
/* "c#brbo04" */
+ ~!PartyHasItem("c#brbo04") GlobalGT("C#Br_WriteBookPage04","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Spell Deflection".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brbo02"))
ActionOverride(Player5,DestroyItem("c#brbo02"))
GiveItemCreate("c#brbo04",Player5,1,0,0)~ + book_01
/* "c#brbo05" */
+ ~!PartyHasItem("c#brbo05") GlobalGT("C#Br_WriteBookPage05","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Mass Invisibility".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brbo02"))
ActionOverride(Player5,DestroyItem("c#brbo02"))
GiveItemCreate("c#brbo05",Player5,1,0,0)~ + book_01
/* "c#brbo06" */
+ ~!PartyHasItem("c#brbo06") GlobalGT("C#Br_WriteBookPage06","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Summon Efreeti".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brbo02"))
ActionOverride(Player5,DestroyItem("c#brbo02"))
GiveItemCreate("c#brbo06",Player5,1,0,0)~ + book_01
/* "c#brbo07" */
+ ~!PartyHasItem("c#brbo07") GlobalGT("C#Br_WriteBookPage07","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Bigby's Clenched Fist".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brbo02"))
ActionOverride(Player5,DestroyItem("c#brbo02"))
GiveItemCreate("c#brbo07",Player5,1,0,0)~ + book_01
/* "c#brbo08" */
+ ~!PartyHasItem("c#brbo08") GlobalGT("C#Br_WriteBookPage08","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Pierce Shield".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brbo02"))
ActionOverride(Player5,DestroyItem("c#brbo02"))
GiveItemCreate("c#brbo08",Player5,1,0,0)~ + book_01
/* "c#brbo09" */
+ ~!PartyHasItem("c#brbo09") GlobalGT("C#Br_WriteBookPage09","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Bigby's Crushing Hand".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brbo02"))
ActionOverride(Player5,DestroyItem("c#brbo02"))
GiveItemCreate("c#brbo09",Player5,1,0,0)~ + book_01
/* "c#brbo10" */
+ ~!PartyHasItem("c#brbo10") GlobalGT("C#Br_WriteBookPage10","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Chain Contingency".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brbo02"))
ActionOverride(Player5,DestroyItem("c#brbo02"))
GiveItemCreate("c#brbo10",Player5,1,0,0)~ + book_01
+ ~Global("c#brbok1","GLOBAL",0)~ + ~(You leave the current page with the spell "Minor Sequencer" open and put the book away again.)~ EXIT
+ ~Global("c#brbok1","GLOBAL",1)~ + ~(You already used the book today. The page can't be turned until after your next rest.)~ EXIT
END

/* "c#brbo03" */
IF ~HasItem("c#brbo03",Player5)~ THEN player5_03
SAY ~(You take the book into your  hand.)~ [c#ablank]
/* "c#brbo01" */
+ ~!PartyHasItem("c#brbo01") GlobalGT("C#Br_WriteBookPage01","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Fireball".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brbo03"))
ActionOverride(Player5,DestroyItem("c#brbo03"))
GiveItemCreate("c#brbo01",Player5,1,0,0)~ + book_01
/* "c#brbo02" */
+ ~!PartyHasItem("c#brbo02") GlobalGT("C#Br_WriteBookPage02","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Minor Sequencer".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brbo03"))
ActionOverride(Player5,DestroyItem("c#brbo03"))
GiveItemCreate("c#brbo02",Player5,1,0,0)~ + book_01
/* "c#brbo04" */
+ ~!PartyHasItem("c#brbo04") GlobalGT("C#Br_WriteBookPage04","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Spell Deflection".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brbo03"))
ActionOverride(Player5,DestroyItem("c#brbo03"))
GiveItemCreate("c#brbo04",Player5,1,0,0)~ + book_01
/* "c#brbo05" */
+ ~!PartyHasItem("c#brbo05") GlobalGT("C#Br_WriteBookPage05","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Mass Invisibility".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brbo03"))
ActionOverride(Player5,DestroyItem("c#brbo03"))
GiveItemCreate("c#brbo05",Player5,1,0,0)~ + book_01
/* "c#brbo06" */
+ ~!PartyHasItem("c#brbo06") GlobalGT("C#Br_WriteBookPage06","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Summon Efreeti".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brbo03"))
ActionOverride(Player5,DestroyItem("c#brbo03"))
GiveItemCreate("c#brbo06",Player5,1,0,0)~ + book_01
/* "c#brbo07" */
+ ~!PartyHasItem("c#brbo07") GlobalGT("C#Br_WriteBookPage07","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Bigby's Clenched Fist".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brbo03"))
ActionOverride(Player5,DestroyItem("c#brbo03"))
GiveItemCreate("c#brbo07",Player5,1,0,0)~ + book_01
/* "c#brbo08" */
+ ~!PartyHasItem("c#brbo08") GlobalGT("C#Br_WriteBookPage08","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Pierce Shield".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brbo03"))
ActionOverride(Player5,DestroyItem("c#brbo03"))
GiveItemCreate("c#brbo08",Player5,1,0,0)~ + book_01
/* "c#brbo09" */
+ ~!PartyHasItem("c#brbo09") GlobalGT("C#Br_WriteBookPage09","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Bigby's Crushing Hand".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brbo03"))
ActionOverride(Player5,DestroyItem("c#brbo03"))
GiveItemCreate("c#brbo09",Player5,1,0,0)~ + book_01
/* "c#brbo10" */
+ ~!PartyHasItem("c#brbo10") GlobalGT("C#Br_WriteBookPage10","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Chain Contingency".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brbo03"))
ActionOverride(Player5,DestroyItem("c#brbo03"))
GiveItemCreate("c#brbo10",Player5,1,0,0)~ + book_01
+ ~Global("c#brbok1","GLOBAL",0)~ + ~(You leave the current page with the spell "Breach" open and put the book away again.)~ EXIT
+ ~Global("c#brbok1","GLOBAL",1)~ + ~(You already used the book today. The page can't be turned until after your next rest.)~ EXIT
END

/* "c#brbo04" */
IF ~HasItem("c#brbo04",Player5)~ THEN player5_04
SAY ~(You take the book into your  hand.)~ [c#ablank]
/* "c#brbo01" */
+ ~!PartyHasItem("c#brbo01") GlobalGT("C#Br_WriteBookPage01","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Fireball".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brbo04"))
ActionOverride(Player5,DestroyItem("c#brbo04"))
GiveItemCreate("c#brbo01",Player5,1,0,0)~ + book_01
/* "c#brbo02" */
+ ~!PartyHasItem("c#brbo02") GlobalGT("C#Br_WriteBookPage02","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Minor Sequencer".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brbo04"))
ActionOverride(Player5,DestroyItem("c#brbo04"))
GiveItemCreate("c#brbo02",Player5,1,0,0)~ + book_01
/* "c#brbo03" */
+ ~!PartyHasItem("c#brbo03") GlobalGT("C#Br_WriteBookPage03","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Breach".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brbo04"))
ActionOverride(Player5,DestroyItem("c#brbo04"))
GiveItemCreate("c#brbo03",Player5,1,0,0)~ + book_01
/* "c#brbo05" */
+ ~!PartyHasItem("c#brbo05") GlobalGT("C#Br_WriteBookPage05","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Mass Invisibility".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brbo04"))
ActionOverride(Player5,DestroyItem("c#brbo04"))
GiveItemCreate("c#brbo05",Player5,1,0,0)~ + book_01
/* "c#brbo06" */
+ ~!PartyHasItem("c#brbo06") GlobalGT("C#Br_WriteBookPage06","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Summon Efreeti".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brbo04"))
ActionOverride(Player5,DestroyItem("c#brbo04"))
GiveItemCreate("c#brbo06",Player5,1,0,0)~ + book_01
/* "c#brbo07" */
+ ~!PartyHasItem("c#brbo07") GlobalGT("C#Br_WriteBookPage07","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Bigby's Clenched Fist".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brbo04"))
ActionOverride(Player5,DestroyItem("c#brbo04"))
GiveItemCreate("c#brbo07",Player5,1,0,0)~ + book_01
/* "c#brbo08" */
+ ~!PartyHasItem("c#brbo08") GlobalGT("C#Br_WriteBookPage08","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Pierce Shield".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brbo04"))
ActionOverride(Player5,DestroyItem("c#brbo04"))
GiveItemCreate("c#brbo08",Player5,1,0,0)~ + book_01
/* "c#brbo09" */
+ ~!PartyHasItem("c#brbo09") GlobalGT("C#Br_WriteBookPage09","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Bigby's Crushing Hand".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brbo04"))
ActionOverride(Player5,DestroyItem("c#brbo04"))
GiveItemCreate("c#brbo09",Player5,1,0,0)~ + book_01
/* "c#brbo10" */
+ ~!PartyHasItem("c#brbo10") GlobalGT("C#Br_WriteBookPage10","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Chain Contingency".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brbo04"))
ActionOverride(Player5,DestroyItem("c#brbo04"))
GiveItemCreate("c#brbo10",Player5,1,0,0)~ + book_01
+ ~Global("c#brbok1","GLOBAL",0)~ + ~(You leave the current page with the spell "Spell Deflection" open and put the book away again.)~ EXIT
+ ~Global("c#brbok1","GLOBAL",1)~ + ~(You already used the book today. The page can't be turned until after your next rest.)~ EXIT
END

/* "c#brbo05" */
IF ~HasItem("c#brbo05",Player5)~ THEN player5_05
SAY ~(You take the book into your  hand.)~ [c#ablank]
/* "c#brbo01" */
+ ~!PartyHasItem("c#brbo01") GlobalGT("C#Br_WriteBookPage01","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Fireball".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brbo05"))
ActionOverride(Player5,DestroyItem("c#brbo05"))
GiveItemCreate("c#brbo01",Player5,1,0,0)~ + book_01
/* "c#brbo02" */
+ ~!PartyHasItem("c#brbo02") GlobalGT("C#Br_WriteBookPage02","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Minor Sequencer".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brbo05"))
ActionOverride(Player5,DestroyItem("c#brbo05"))
GiveItemCreate("c#brbo02",Player5,1,0,0)~ + book_01
/* "c#brbo03" */
+ ~!PartyHasItem("c#brbo03") GlobalGT("C#Br_WriteBookPage03","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Breach".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brbo05"))
ActionOverride(Player5,DestroyItem("c#brbo05"))
GiveItemCreate("c#brbo03",Player5,1,0,0)~ + book_01
/* "c#brbo04" */
+ ~!PartyHasItem("c#brbo04") GlobalGT("C#Br_WriteBookPage04","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Spell Deflection".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brbo05"))
ActionOverride(Player5,DestroyItem("c#brbo05"))
GiveItemCreate("c#brbo04",Player5,1,0,0)~ + book_01
/* "c#brbo06" */
+ ~!PartyHasItem("c#brbo06") GlobalGT("C#Br_WriteBookPage06","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Summon Efreeti".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brbo05"))
ActionOverride(Player5,DestroyItem("c#brbo05"))
GiveItemCreate("c#brbo06",Player5,1,0,0)~ + book_01
/* "c#brbo07" */
+ ~!PartyHasItem("c#brbo07") GlobalGT("C#Br_WriteBookPage07","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Bigby's Clenched Fist".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brbo05"))
ActionOverride(Player5,DestroyItem("c#brbo05"))
GiveItemCreate("c#brbo07",Player5,1,0,0)~ + book_01
/* "c#brbo08" */
+ ~!PartyHasItem("c#brbo08") GlobalGT("C#Br_WriteBookPage08","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Pierce Shield".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brbo05"))
ActionOverride(Player5,DestroyItem("c#brbo05"))
GiveItemCreate("c#brbo08",Player5,1,0,0)~ + book_01
/* "c#brbo09" */
+ ~!PartyHasItem("c#brbo09") GlobalGT("C#Br_WriteBookPage09","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Bigby's Crushing Hand".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brbo05"))
ActionOverride(Player5,DestroyItem("c#brbo05"))
GiveItemCreate("c#brbo09",Player5,1,0,0)~ + book_01
/* "c#brbo10" */
+ ~!PartyHasItem("c#brbo10") GlobalGT("C#Br_WriteBookPage10","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Chain Contingency".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brbo05"))
ActionOverride(Player5,DestroyItem("c#brbo05"))
GiveItemCreate("c#brbo10",Player5,1,0,0)~ + book_01
+ ~Global("c#brbok1","GLOBAL",0)~ + ~(You leave the current page with the spell "Mass Invisibility" open and put the book away again.)~ EXIT
+ ~Global("c#brbok1","GLOBAL",1)~ + ~(You already used the book today. The page can't be turned until after your next rest.)~ EXIT
END

/* "c#brbo06" */
IF ~HasItem("c#brbo06",Player5)~ THEN player5_06
SAY ~(You take the book into your  hand.)~ [c#ablank]
/* "c#brbo01" */
+ ~!PartyHasItem("c#brbo01") GlobalGT("C#Br_WriteBookPage01","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Fireball".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brbo06"))
ActionOverride(Player5,DestroyItem("c#brbo06"))
GiveItemCreate("c#brbo01",Player5,1,0,0)~ + book_01
/* "c#brbo02" */
+ ~!PartyHasItem("c#brbo02") GlobalGT("C#Br_WriteBookPage02","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Minor Sequencer".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brbo06"))
ActionOverride(Player5,DestroyItem("c#brbo06"))
GiveItemCreate("c#brbo02",Player5,1,0,0)~ + book_01
/* "c#brbo03" */
+ ~!PartyHasItem("c#brbo03") GlobalGT("C#Br_WriteBookPage03","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Breach".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brbo06"))
ActionOverride(Player5,DestroyItem("c#brbo06"))
GiveItemCreate("c#brbo03",Player5,1,0,0)~ + book_01
/* "c#brbo04" */
+ ~!PartyHasItem("c#brbo04") GlobalGT("C#Br_WriteBookPage04","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Spell Deflection".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brbo06"))
ActionOverride(Player5,DestroyItem("c#brbo06"))
GiveItemCreate("c#brbo04",Player5,1,0,0)~ + book_01
/* "c#brbo05" */
+ ~!PartyHasItem("c#brbo05") GlobalGT("C#Br_WriteBookPage05","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Mass Invisibility".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brbo06"))
ActionOverride(Player5,DestroyItem("c#brbo06"))
GiveItemCreate("c#brbo05",Player5,1,0,0)~ + book_01
/* "c#brbo07" */
+ ~!PartyHasItem("c#brbo07") GlobalGT("C#Br_WriteBookPage07","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Bigby's Clenched Fist".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brbo06"))
ActionOverride(Player5,DestroyItem("c#brbo06"))
GiveItemCreate("c#brbo07",Player5,1,0,0)~ + book_01
/* "c#brbo08" */
+ ~!PartyHasItem("c#brbo08") GlobalGT("C#Br_WriteBookPage08","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Pierce Shield".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brbo06"))
ActionOverride(Player5,DestroyItem("c#brbo06"))
GiveItemCreate("c#brbo08",Player5,1,0,0)~ + book_01
/* "c#brbo09" */
+ ~!PartyHasItem("c#brbo09") GlobalGT("C#Br_WriteBookPage09","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Bigby's Crushing Hand".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brbo06"))
ActionOverride(Player5,DestroyItem("c#brbo06"))
GiveItemCreate("c#brbo09",Player5,1,0,0)~ + book_01
/* "c#brbo10" */
+ ~!PartyHasItem("c#brbo10") GlobalGT("C#Br_WriteBookPage10","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Chain Contingency".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brbo06"))
ActionOverride(Player5,DestroyItem("c#brbo06"))
GiveItemCreate("c#brbo10",Player5,1,0,0)~ + book_01
+ ~Global("c#brbok1","GLOBAL",0)~ + ~(You leave the current page with the spell "Summon Efreeti" open and put the book away again.)~ EXIT
+ ~Global("c#brbok1","GLOBAL",1)~ + ~(You already used the book today. The page can't be turned until after your next rest.)~ EXIT
END

/* "c#brbo07" */
IF ~HasItem("c#brbo07",Player5)~ THEN player5_07
SAY ~(You take the book into your  hand.)~ [c#ablank]
/* "c#brbo01" */
+ ~!PartyHasItem("c#brbo01") GlobalGT("C#Br_WriteBookPage01","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Fireball".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brbo07"))
ActionOverride(Player5,DestroyItem("c#brbo07"))
GiveItemCreate("c#brbo01",Player5,1,0,0)~ + book_01
/* "c#brbo02" */
+ ~!PartyHasItem("c#brbo02") GlobalGT("C#Br_WriteBookPage02","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Minor Sequencer".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brbo07"))
ActionOverride(Player5,DestroyItem("c#brbo07"))
GiveItemCreate("c#brbo02",Player5,1,0,0)~ + book_01
/* "c#brbo03" */
+ ~!PartyHasItem("c#brbo03") GlobalGT("C#Br_WriteBookPage03","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Breach".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brbo07"))
ActionOverride(Player5,DestroyItem("c#brbo07"))
GiveItemCreate("c#brbo03",Player5,1,0,0)~ + book_01
/* "c#brbo04" */
+ ~!PartyHasItem("c#brbo04") GlobalGT("C#Br_WriteBookPage04","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Spell Deflection".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brbo07"))
ActionOverride(Player5,DestroyItem("c#brbo07"))
GiveItemCreate("c#brbo04",Player5,1,0,0)~ + book_01
/* "c#brbo05" */
+ ~!PartyHasItem("c#brbo05") GlobalGT("C#Br_WriteBookPage05","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Mass Invisibility".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brbo07"))
ActionOverride(Player5,DestroyItem("c#brbo07"))
GiveItemCreate("c#brbo05",Player5,1,0,0)~ + book_01
/* "c#brbo06" */
+ ~!PartyHasItem("c#brbo06") GlobalGT("C#Br_WriteBookPage06","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Summon Efreeti".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brbo07"))
ActionOverride(Player5,DestroyItem("c#brbo07"))
GiveItemCreate("c#brbo06",Player5,1,0,0)~ + book_01
/* "c#brbo08" */
+ ~!PartyHasItem("c#brbo08") GlobalGT("C#Br_WriteBookPage08","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Pierce Shield".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brbo07"))
ActionOverride(Player5,DestroyItem("c#brbo07"))
GiveItemCreate("c#brbo08",Player5,1,0,0)~ + book_01
/* "c#brbo09" */
+ ~!PartyHasItem("c#brbo09") GlobalGT("C#Br_WriteBookPage09","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Bigby's Crushing Hand".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brbo07"))
ActionOverride(Player5,DestroyItem("c#brbo07"))
GiveItemCreate("c#brbo09",Player5,1,0,0)~ + book_01
/* "c#brbo10" */
+ ~!PartyHasItem("c#brbo10") GlobalGT("C#Br_WriteBookPage10","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Chain Contingency".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brbo07"))
ActionOverride(Player5,DestroyItem("c#brbo07"))
GiveItemCreate("c#brbo10",Player5,1,0,0)~ + book_01
+ ~Global("c#brbok1","GLOBAL",0)~ + ~(You leave the current page with the spell "Bigby's Clenched Fist" open and put the book away again.)~ EXIT
+ ~Global("c#brbok1","GLOBAL",1)~ + ~(You already used the book today. The page can't be turned until after your next rest.)~ EXIT
END

/* "c#brbo08" */
IF ~HasItem("c#brbo08",Player5)~ THEN player5_08
SAY ~(You take the book into your  hand.)~ [c#ablank]
/* "c#brbo01" */
+ ~!PartyHasItem("c#brbo01") GlobalGT("C#Br_WriteBookPage01","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Fireball".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brbo08"))
ActionOverride(Player5,DestroyItem("c#brbo08"))
GiveItemCreate("c#brbo01",Player5,1,0,0)~ + book_01
/* "c#brbo02" */
+ ~!PartyHasItem("c#brbo02") GlobalGT("C#Br_WriteBookPage02","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Minor Sequencer".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brbo08"))
ActionOverride(Player5,DestroyItem("c#brbo08"))
GiveItemCreate("c#brbo02",Player5,1,0,0)~ + book_01
/* "c#brbo03" */
+ ~!PartyHasItem("c#brbo03") GlobalGT("C#Br_WriteBookPage03","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Breach".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brbo08"))
ActionOverride(Player5,DestroyItem("c#brbo08"))
GiveItemCreate("c#brbo03",Player5,1,0,0)~ + book_01
/* "c#brbo04" */
+ ~!PartyHasItem("c#brbo04") GlobalGT("C#Br_WriteBookPage04","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Spell Deflection".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brbo08"))
ActionOverride(Player5,DestroyItem("c#brbo08"))
GiveItemCreate("c#brbo04",Player5,1,0,0)~ + book_01
/* "c#brbo05" */
+ ~!PartyHasItem("c#brbo05") GlobalGT("C#Br_WriteBookPage05","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Mass Invisibility".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brbo08"))
ActionOverride(Player5,DestroyItem("c#brbo08"))
GiveItemCreate("c#brbo05",Player5,1,0,0)~ + book_01
/* "c#brbo06" */
+ ~!PartyHasItem("c#brbo06") GlobalGT("C#Br_WriteBookPage06","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Summon Efreeti".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brbo08"))
ActionOverride(Player5,DestroyItem("c#brbo08"))
GiveItemCreate("c#brbo06",Player5,1,0,0)~ + book_01
/* "c#brbo07" */
+ ~!PartyHasItem("c#brbo07") GlobalGT("C#Br_WriteBookPage07","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Bigby's Clenched Fist".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brbo08"))
ActionOverride(Player5,DestroyItem("c#brbo08"))
GiveItemCreate("c#brbo07",Player5,1,0,0)~ + book_01
/* "c#brbo09" */
+ ~!PartyHasItem("c#brbo09") GlobalGT("C#Br_WriteBookPage09","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Bigby's Crushing Hand".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brbo08"))
ActionOverride(Player5,DestroyItem("c#brbo08"))
GiveItemCreate("c#brbo09",Player5,1,0,0)~ + book_01
/* "c#brbo10" */
+ ~!PartyHasItem("c#brbo10") GlobalGT("C#Br_WriteBookPage10","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Chain Contingency".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brbo08"))
ActionOverride(Player5,DestroyItem("c#brbo08"))
GiveItemCreate("c#brbo10",Player5,1,0,0)~ + book_01
+ ~Global("c#brbok1","GLOBAL",0)~ + ~(You leave the current page with the spell "Pierce Shield" open and put the book away again.)~ EXIT
+ ~Global("c#brbok1","GLOBAL",1)~ + ~(You already used the book today. The page can't be turned until after your next rest.)~ EXIT
END

/* "c#brbo09" */
IF ~HasItem("c#brbo09",Player5)~ THEN player5_09
SAY ~(You take the book into your  hand.)~ [c#ablank]
/* "c#brbo01" */
+ ~!PartyHasItem("c#brbo01") GlobalGT("C#Br_WriteBookPage01","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Fireball".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brbo09"))
ActionOverride(Player5,DestroyItem("c#brbo09"))
GiveItemCreate("c#brbo01",Player5,1,0,0)~ + book_01
/* "c#brbo02" */
+ ~!PartyHasItem("c#brbo02") GlobalGT("C#Br_WriteBookPage02","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Minor Sequencer".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brbo09"))
ActionOverride(Player5,DestroyItem("c#brbo09"))
GiveItemCreate("c#brbo02",Player5,1,0,0)~ + book_01
/* "c#brbo03" */
+ ~!PartyHasItem("c#brbo03") GlobalGT("C#Br_WriteBookPage03","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Breach".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brbo09"))
ActionOverride(Player5,DestroyItem("c#brbo09"))
GiveItemCreate("c#brbo03",Player5,1,0,0)~ + book_01
/* "c#brbo04" */
+ ~!PartyHasItem("c#brbo04") GlobalGT("C#Br_WriteBookPage04","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Spell Deflection".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brbo09"))
ActionOverride(Player5,DestroyItem("c#brbo09"))
GiveItemCreate("c#brbo04",Player5,1,0,0)~ + book_01
/* "c#brbo05" */
+ ~!PartyHasItem("c#brbo05") GlobalGT("C#Br_WriteBookPage05","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Mass Invisibility".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brbo09"))
ActionOverride(Player5,DestroyItem("c#brbo09"))
GiveItemCreate("c#brbo05",Player5,1,0,0)~ + book_01
/* "c#brbo06" */
+ ~!PartyHasItem("c#brbo06") GlobalGT("C#Br_WriteBookPage06","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Summon Efreeti".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brbo09"))
ActionOverride(Player5,DestroyItem("c#brbo09"))
GiveItemCreate("c#brbo06",Player5,1,0,0)~ + book_01
/* "c#brbo07" */
+ ~!PartyHasItem("c#brbo07") GlobalGT("C#Br_WriteBookPage07","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Bigby's Clenched Fist".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brbo09"))
ActionOverride(Player5,DestroyItem("c#brbo09"))
GiveItemCreate("c#brbo07",Player5,1,0,0)~ + book_01
/* "c#brbo08" */
+ ~!PartyHasItem("c#brbo08") GlobalGT("C#Br_WriteBookPage08","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Pierce Shield".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brbo09"))
ActionOverride(Player5,DestroyItem("c#brbo09"))
GiveItemCreate("c#brbo08",Player5,1,0,0)~ + book_01
/* "c#brbo10" */
+ ~!PartyHasItem("c#brbo10") GlobalGT("C#Br_WriteBookPage10","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Chain Contingency".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brbo09"))
ActionOverride(Player5,DestroyItem("c#brbo09"))
GiveItemCreate("c#brbo10",Player5,1,0,0)~ + book_01
+ ~Global("c#brbok1","GLOBAL",0)~ + ~(You leave the current page with the spell "Bigby's Crushing Hand" open and put the book away again.)~ EXIT
+ ~Global("c#brbok1","GLOBAL",1)~ + ~(You already used the book today. The page can't be turned until after your next rest.)~ EXIT
END

/* "c#brbo10" */
IF ~HasItem("c#brbo10",Player5)~ THEN player5_10
SAY ~(You take the book into your  hand.)~ [c#ablank]
/* "c#brbo01" */
+ ~!PartyHasItem("c#brbo01") GlobalGT("C#Br_WriteBookPage01","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Fireball".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brbo10"))
ActionOverride(Player5,DestroyItem("c#brbo10"))
GiveItemCreate("c#brbo01",Player5,1,0,0)~ + book_01
/* "c#brbo02" */
+ ~!PartyHasItem("c#brbo02") GlobalGT("C#Br_WriteBookPage02","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Minor Sequencer".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brbo10"))
ActionOverride(Player5,DestroyItem("c#brbo10"))
GiveItemCreate("c#brbo02",Player5,1,0,0)~ + book_01
/* "c#brbo03" */
+ ~!PartyHasItem("c#brbo03") GlobalGT("C#Br_WriteBookPage03","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Breach".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brbo10"))
ActionOverride(Player5,DestroyItem("c#brbo10"))
GiveItemCreate("c#brbo03",Player5,1,0,0)~ + book_01
/* "c#brbo04" */
+ ~!PartyHasItem("c#brbo04") GlobalGT("C#Br_WriteBookPage04","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Spell Deflection".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brbo10"))
ActionOverride(Player5,DestroyItem("c#brbo10"))
GiveItemCreate("c#brbo04",Player5,1,0,0)~ + book_01
/* "c#brbo05" */
+ ~!PartyHasItem("c#brbo05") GlobalGT("C#Br_WriteBookPage05","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Mass Invisibility".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brbo10"))
ActionOverride(Player5,DestroyItem("c#brbo10"))
GiveItemCreate("c#brbo05",Player5,1,0,0)~ + book_01
/* "c#brbo06" */
+ ~!PartyHasItem("c#brbo06") GlobalGT("C#Br_WriteBookPage06","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Summon Efreeti".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brbo10"))
ActionOverride(Player5,DestroyItem("c#brbo10"))
GiveItemCreate("c#brbo06",Player5,1,0,0)~ + book_01
/* "c#brbo07" */
+ ~!PartyHasItem("c#brbo07") GlobalGT("C#Br_WriteBookPage07","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Bigby's Clenched Fist".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brbo10"))
ActionOverride(Player5,DestroyItem("c#brbo10"))
GiveItemCreate("c#brbo07",Player5,1,0,0)~ + book_01
/* "c#brbo08" */
+ ~!PartyHasItem("c#brbo08") GlobalGT("C#Br_WriteBookPage08","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Pierce Shield".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brbo10"))
ActionOverride(Player5,DestroyItem("c#brbo10"))
GiveItemCreate("c#brbo08",Player5,1,0,0)~ + book_01
/* "c#brbo10" */
+ ~!PartyHasItem("c#brbo09") GlobalGT("C#Br_WriteBookPage09","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Bigby's Crushing Hand".)~ DO ~ActionOverride(Player5,TakePartyItem("c#brbo10"))
ActionOverride(Player5,DestroyItem("c#brbo10"))
GiveItemCreate("c#brbo09",Player5,1,0,0)~ + book_01
+ ~Global("c#brbok1","GLOBAL",0)~ + ~(You leave the current page with the spell "Chain Contingency" open and put the book away again.)~ EXIT
+ ~Global("c#brbok1","GLOBAL",1)~ + ~(You already used the book today. The page can't be turned until after your next rest.)~ EXIT
END

/* Player6 */

/* "c#brbo01" */
IF ~HasItem("c#brbo01",Player6)~ THEN player6_01
SAY ~(You take the book into your  hand.)~ [c#ablank]
/* "c#brbo02" */
+ ~!PartyHasItem("c#brbo02") GlobalGT("C#Br_WriteBookPage02","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Minor Sequencer".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brbo01"))
ActionOverride(Player6,DestroyItem("c#brbo01"))
GiveItemCreate("c#brbo02",Player6,1,0,0)~ + book_01
/* "c#brbo03" */
+ ~!PartyHasItem("c#brbo03") GlobalGT("C#Br_WriteBookPage03","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Breach".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brbo01"))
ActionOverride(Player6,DestroyItem("c#brbo01"))
GiveItemCreate("c#brbo03",Player6,1,0,0)~ + book_01
/* "c#brbo04" */
+ ~!PartyHasItem("c#brbo04") GlobalGT("C#Br_WriteBookPage04","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Spell Deflection".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brbo01"))
ActionOverride(Player6,DestroyItem("c#brbo01"))
GiveItemCreate("c#brbo04",Player6,1,0,0)~ + book_01
/* "c#brbo05" */
+ ~!PartyHasItem("c#brbo05") GlobalGT("C#Br_WriteBookPage05","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Mass Invisibility".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brbo01"))
ActionOverride(Player6,DestroyItem("c#brbo01"))
GiveItemCreate("c#brbo05",Player6,1,0,0)~ + book_01
/* "c#brbo06" */
+ ~!PartyHasItem("c#brbo06") GlobalGT("C#Br_WriteBookPage06","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Summon Efreeti".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brbo01"))
ActionOverride(Player6,DestroyItem("c#brbo01"))
GiveItemCreate("c#brbo06",Player6,1,0,0)~ + book_01
/* "c#brbo07" */
+ ~!PartyHasItem("c#brbo07") GlobalGT("C#Br_WriteBookPage07","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Bigby's Clenched Fist".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brbo01"))
ActionOverride(Player6,DestroyItem("c#brbo01"))
GiveItemCreate("c#brbo07",Player6,1,0,0)~ + book_01
/* "c#brbo08" */
+ ~!PartyHasItem("c#brbo08") GlobalGT("C#Br_WriteBookPage08","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Pierce Shield".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brbo01"))
ActionOverride(Player6,DestroyItem("c#brbo01"))
GiveItemCreate("c#brbo08",Player6,1,0,0)~ + book_01
/* "c#brbo09" */
+ ~!PartyHasItem("c#brbo09") GlobalGT("C#Br_WriteBookPage09","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Bigby's Crushing Hand".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brbo01"))
ActionOverride(Player6,DestroyItem("c#brbo01"))
GiveItemCreate("c#brbo09",Player6,1,0,0)~ + book_01
/* "c#brbo10" */
+ ~!PartyHasItem("c#brbo10") GlobalGT("C#Br_WriteBookPage10","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Chain Contingency".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brbo01"))
ActionOverride(Player6,DestroyItem("c#brbo01"))
GiveItemCreate("c#brbo10",Player6,1,0,0)~ + book_01
+ ~Global("c#brbok1","GLOBAL",0)~ + ~(You leave the current page with the spell "Fireball" open and put the book away again.)~ EXIT
+ ~Global("c#brbok1","GLOBAL",1)~ + ~(You already used the book today. The page can't be turned until after your next rest.)~ EXIT
END

/* "c#brbo02" */
IF ~HasItem("c#brbo02",Player6)~ THEN player6_02
SAY ~(You take the book into your  hand.)~ [c#ablank]
/* "c#brbo01" */
+ ~!PartyHasItem("c#brbo01") GlobalGT("C#Br_WriteBookPage01","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Fireball".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brbo02"))
ActionOverride(Player6,DestroyItem("c#brbo02"))
GiveItemCreate("c#brbo01",Player6,1,0,0)~ + book_01
/* "c#brbo03" */
+ ~!PartyHasItem("c#brbo03") GlobalGT("C#Br_WriteBookPage03","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Breach".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brbo02"))
ActionOverride(Player6,DestroyItem("c#brbo02"))
GiveItemCreate("c#brbo03",Player6,1,0,0)~ + book_01
/* "c#brbo04" */
+ ~!PartyHasItem("c#brbo04") GlobalGT("C#Br_WriteBookPage04","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Spell Deflection".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brbo02"))
ActionOverride(Player6,DestroyItem("c#brbo02"))
GiveItemCreate("c#brbo04",Player6,1,0,0)~ + book_01
/* "c#brbo05" */
+ ~!PartyHasItem("c#brbo05") GlobalGT("C#Br_WriteBookPage05","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Mass Invisibility".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brbo02"))
ActionOverride(Player6,DestroyItem("c#brbo02"))
GiveItemCreate("c#brbo05",Player6,1,0,0)~ + book_01
/* "c#brbo06" */
+ ~!PartyHasItem("c#brbo06") GlobalGT("C#Br_WriteBookPage06","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Summon Efreeti".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brbo02"))
ActionOverride(Player6,DestroyItem("c#brbo02"))
GiveItemCreate("c#brbo06",Player6,1,0,0)~ + book_01
/* "c#brbo07" */
+ ~!PartyHasItem("c#brbo07") GlobalGT("C#Br_WriteBookPage07","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Bigby's Clenched Fist".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brbo02"))
ActionOverride(Player6,DestroyItem("c#brbo02"))
GiveItemCreate("c#brbo07",Player6,1,0,0)~ + book_01
/* "c#brbo08" */
+ ~!PartyHasItem("c#brbo08") GlobalGT("C#Br_WriteBookPage08","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Pierce Shield".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brbo02"))
ActionOverride(Player6,DestroyItem("c#brbo02"))
GiveItemCreate("c#brbo08",Player6,1,0,0)~ + book_01
/* "c#brbo09" */
+ ~!PartyHasItem("c#brbo09") GlobalGT("C#Br_WriteBookPage09","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Bigby's Crushing Hand".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brbo02"))
ActionOverride(Player6,DestroyItem("c#brbo02"))
GiveItemCreate("c#brbo09",Player6,1,0,0)~ + book_01
/* "c#brbo10" */
+ ~!PartyHasItem("c#brbo10") GlobalGT("C#Br_WriteBookPage10","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Chain Contingency".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brbo02"))
ActionOverride(Player6,DestroyItem("c#brbo02"))
GiveItemCreate("c#brbo10",Player6,1,0,0)~ + book_01
+ ~Global("c#brbok1","GLOBAL",0)~ + ~(You leave the current page with the spell "Minor Sequencer" open and put the book away again.)~ EXIT
+ ~Global("c#brbok1","GLOBAL",1)~ + ~(You already used the book today. The page can't be turned until after your next rest.)~ EXIT
END

/* "c#brbo03" */
IF ~HasItem("c#brbo03",Player6)~ THEN player6_03
SAY ~(You take the book into your  hand.)~ [c#ablank]
/* "c#brbo01" */
+ ~!PartyHasItem("c#brbo01") GlobalGT("C#Br_WriteBookPage01","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Fireball".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brbo03"))
ActionOverride(Player6,DestroyItem("c#brbo03"))
GiveItemCreate("c#brbo01",Player6,1,0,0)~ + book_01
/* "c#brbo02" */
+ ~!PartyHasItem("c#brbo02") GlobalGT("C#Br_WriteBookPage02","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Minor Sequencer".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brbo03"))
ActionOverride(Player6,DestroyItem("c#brbo03"))
GiveItemCreate("c#brbo02",Player6,1,0,0)~ + book_01
/* "c#brbo04" */
+ ~!PartyHasItem("c#brbo04") GlobalGT("C#Br_WriteBookPage04","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Spell Deflection".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brbo03"))
ActionOverride(Player6,DestroyItem("c#brbo03"))
GiveItemCreate("c#brbo04",Player6,1,0,0)~ + book_01
/* "c#brbo05" */
+ ~!PartyHasItem("c#brbo05") GlobalGT("C#Br_WriteBookPage05","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Mass Invisibility".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brbo03"))
ActionOverride(Player6,DestroyItem("c#brbo03"))
GiveItemCreate("c#brbo05",Player6,1,0,0)~ + book_01
/* "c#brbo06" */
+ ~!PartyHasItem("c#brbo06") GlobalGT("C#Br_WriteBookPage06","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Summon Efreeti".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brbo03"))
ActionOverride(Player6,DestroyItem("c#brbo03"))
GiveItemCreate("c#brbo06",Player6,1,0,0)~ + book_01
/* "c#brbo07" */
+ ~!PartyHasItem("c#brbo07") GlobalGT("C#Br_WriteBookPage07","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Bigby's Clenched Fist".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brbo03"))
ActionOverride(Player6,DestroyItem("c#brbo03"))
GiveItemCreate("c#brbo07",Player6,1,0,0)~ + book_01
/* "c#brbo08" */
+ ~!PartyHasItem("c#brbo08") GlobalGT("C#Br_WriteBookPage08","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Pierce Shield".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brbo03"))
ActionOverride(Player6,DestroyItem("c#brbo03"))
GiveItemCreate("c#brbo08",Player6,1,0,0)~ + book_01
/* "c#brbo09" */
+ ~!PartyHasItem("c#brbo09") GlobalGT("C#Br_WriteBookPage09","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Bigby's Crushing Hand".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brbo03"))
ActionOverride(Player6,DestroyItem("c#brbo03"))
GiveItemCreate("c#brbo09",Player6,1,0,0)~ + book_01
/* "c#brbo10" */
+ ~!PartyHasItem("c#brbo10") GlobalGT("C#Br_WriteBookPage10","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Chain Contingency".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brbo03"))
ActionOverride(Player6,DestroyItem("c#brbo03"))
GiveItemCreate("c#brbo10",Player6,1,0,0)~ + book_01
+ ~Global("c#brbok1","GLOBAL",0)~ + ~(You leave the current page with the spell "Breach" open and put the book away again.)~ EXIT
+ ~Global("c#brbok1","GLOBAL",1)~ + ~(You already used the book today. The page can't be turned until after your next rest.)~ EXIT
END

/* "c#brbo04" */
IF ~HasItem("c#brbo04",Player6)~ THEN player6_04
SAY ~(You take the book into your  hand.)~ [c#ablank]
/* "c#brbo01" */
+ ~!PartyHasItem("c#brbo01") GlobalGT("C#Br_WriteBookPage01","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Fireball".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brbo04"))
ActionOverride(Player6,DestroyItem("c#brbo04"))
GiveItemCreate("c#brbo01",Player6,1,0,0)~ + book_01
/* "c#brbo02" */
+ ~!PartyHasItem("c#brbo02") GlobalGT("C#Br_WriteBookPage02","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Minor Sequencer".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brbo04"))
ActionOverride(Player6,DestroyItem("c#brbo04"))
GiveItemCreate("c#brbo02",Player6,1,0,0)~ + book_01
/* "c#brbo03" */
+ ~!PartyHasItem("c#brbo03") GlobalGT("C#Br_WriteBookPage03","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Breach".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brbo04"))
ActionOverride(Player6,DestroyItem("c#brbo04"))
GiveItemCreate("c#brbo03",Player6,1,0,0)~ + book_01
/* "c#brbo05" */
+ ~!PartyHasItem("c#brbo05") GlobalGT("C#Br_WriteBookPage05","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Mass Invisibility".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brbo04"))
ActionOverride(Player6,DestroyItem("c#brbo04"))
GiveItemCreate("c#brbo05",Player6,1,0,0)~ + book_01
/* "c#brbo06" */
+ ~!PartyHasItem("c#brbo06") GlobalGT("C#Br_WriteBookPage06","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Summon Efreeti".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brbo04"))
ActionOverride(Player6,DestroyItem("c#brbo04"))
GiveItemCreate("c#brbo06",Player6,1,0,0)~ + book_01
/* "c#brbo07" */
+ ~!PartyHasItem("c#brbo07") GlobalGT("C#Br_WriteBookPage07","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Bigby's Clenched Fist".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brbo04"))
ActionOverride(Player6,DestroyItem("c#brbo04"))
GiveItemCreate("c#brbo07",Player6,1,0,0)~ + book_01
/* "c#brbo08" */
+ ~!PartyHasItem("c#brbo08") GlobalGT("C#Br_WriteBookPage08","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Pierce Shield".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brbo04"))
ActionOverride(Player6,DestroyItem("c#brbo04"))
GiveItemCreate("c#brbo08",Player6,1,0,0)~ + book_01
/* "c#brbo09" */
+ ~!PartyHasItem("c#brbo09") GlobalGT("C#Br_WriteBookPage09","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Bigby's Crushing Hand".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brbo04"))
ActionOverride(Player6,DestroyItem("c#brbo04"))
GiveItemCreate("c#brbo09",Player6,1,0,0)~ + book_01
/* "c#brbo10" */
+ ~!PartyHasItem("c#brbo10") GlobalGT("C#Br_WriteBookPage10","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Chain Contingency".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brbo04"))
ActionOverride(Player6,DestroyItem("c#brbo04"))
GiveItemCreate("c#brbo10",Player6,1,0,0)~ + book_01
+ ~Global("c#brbok1","GLOBAL",0)~ + ~(You leave the current page with the spell "Spell Deflection" open and put the book away again.)~ EXIT
+ ~Global("c#brbok1","GLOBAL",1)~ + ~(You already used the book today. The page can't be turned until after your next rest.)~ EXIT
END

/* "c#brbo05" */
IF ~HasItem("c#brbo05",Player6)~ THEN player6_05
SAY ~(You take the book into your  hand.)~ [c#ablank]
/* "c#brbo01" */
+ ~!PartyHasItem("c#brbo01") GlobalGT("C#Br_WriteBookPage01","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Fireball".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brbo05"))
ActionOverride(Player6,DestroyItem("c#brbo05"))
GiveItemCreate("c#brbo01",Player6,1,0,0)~ + book_01
/* "c#brbo02" */
+ ~!PartyHasItem("c#brbo02") GlobalGT("C#Br_WriteBookPage02","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Minor Sequencer".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brbo05"))
ActionOverride(Player6,DestroyItem("c#brbo05"))
GiveItemCreate("c#brbo02",Player6,1,0,0)~ + book_01
/* "c#brbo03" */
+ ~!PartyHasItem("c#brbo03") GlobalGT("C#Br_WriteBookPage03","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Breach".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brbo05"))
ActionOverride(Player6,DestroyItem("c#brbo05"))
GiveItemCreate("c#brbo03",Player6,1,0,0)~ + book_01
/* "c#brbo04" */
+ ~!PartyHasItem("c#brbo04") GlobalGT("C#Br_WriteBookPage04","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Spell Deflection".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brbo05"))
ActionOverride(Player6,DestroyItem("c#brbo05"))
GiveItemCreate("c#brbo04",Player6,1,0,0)~ + book_01
/* "c#brbo06" */
+ ~!PartyHasItem("c#brbo06") GlobalGT("C#Br_WriteBookPage06","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Summon Efreeti".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brbo05"))
ActionOverride(Player6,DestroyItem("c#brbo05"))
GiveItemCreate("c#brbo06",Player6,1,0,0)~ + book_01
/* "c#brbo07" */
+ ~!PartyHasItem("c#brbo07") GlobalGT("C#Br_WriteBookPage07","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Bigby's Clenched Fist".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brbo05"))
ActionOverride(Player6,DestroyItem("c#brbo05"))
GiveItemCreate("c#brbo07",Player6,1,0,0)~ + book_01
/* "c#brbo08" */
+ ~!PartyHasItem("c#brbo08") GlobalGT("C#Br_WriteBookPage08","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Pierce Shield".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brbo05"))
ActionOverride(Player6,DestroyItem("c#brbo05"))
GiveItemCreate("c#brbo08",Player6,1,0,0)~ + book_01
/* "c#brbo09" */
+ ~!PartyHasItem("c#brbo09") GlobalGT("C#Br_WriteBookPage09","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Bigby's Crushing Hand".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brbo05"))
ActionOverride(Player6,DestroyItem("c#brbo05"))
GiveItemCreate("c#brbo09",Player6,1,0,0)~ + book_01
/* "c#brbo10" */
+ ~!PartyHasItem("c#brbo10") GlobalGT("C#Br_WriteBookPage10","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Chain Contingency".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brbo05"))
ActionOverride(Player6,DestroyItem("c#brbo05"))
GiveItemCreate("c#brbo10",Player6,1,0,0)~ + book_01
+ ~Global("c#brbok1","GLOBAL",0)~ + ~(You leave the current page with the spell "Mass Invisibility" open and put the book away again.)~ EXIT
+ ~Global("c#brbok1","GLOBAL",1)~ + ~(You already used the book today. The page can't be turned until after your next rest.)~ EXIT
END

/* "c#brbo06" */
IF ~HasItem("c#brbo06",Player6)~ THEN player6_06
SAY ~(You take the book into your  hand.)~ [c#ablank]
/* "c#brbo01" */
+ ~!PartyHasItem("c#brbo01") GlobalGT("C#Br_WriteBookPage01","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Fireball".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brbo06"))
ActionOverride(Player6,DestroyItem("c#brbo06"))
GiveItemCreate("c#brbo01",Player6,1,0,0)~ + book_01
/* "c#brbo02" */
+ ~!PartyHasItem("c#brbo02") GlobalGT("C#Br_WriteBookPage02","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Minor Sequencer".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brbo06"))
ActionOverride(Player6,DestroyItem("c#brbo06"))
GiveItemCreate("c#brbo02",Player6,1,0,0)~ + book_01
/* "c#brbo03" */
+ ~!PartyHasItem("c#brbo03") GlobalGT("C#Br_WriteBookPage03","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Breach".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brbo06"))
ActionOverride(Player6,DestroyItem("c#brbo06"))
GiveItemCreate("c#brbo03",Player6,1,0,0)~ + book_01
/* "c#brbo04" */
+ ~!PartyHasItem("c#brbo04") GlobalGT("C#Br_WriteBookPage04","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Spell Deflection".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brbo06"))
ActionOverride(Player6,DestroyItem("c#brbo06"))
GiveItemCreate("c#brbo04",Player6,1,0,0)~ + book_01
/* "c#brbo05" */
+ ~!PartyHasItem("c#brbo05") GlobalGT("C#Br_WriteBookPage05","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Mass Invisibility".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brbo06"))
ActionOverride(Player6,DestroyItem("c#brbo06"))
GiveItemCreate("c#brbo05",Player6,1,0,0)~ + book_01
/* "c#brbo07" */
+ ~!PartyHasItem("c#brbo07") GlobalGT("C#Br_WriteBookPage07","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Bigby's Clenched Fist".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brbo06"))
ActionOverride(Player6,DestroyItem("c#brbo06"))
GiveItemCreate("c#brbo07",Player6,1,0,0)~ + book_01
/* "c#brbo08" */
+ ~!PartyHasItem("c#brbo08") GlobalGT("C#Br_WriteBookPage08","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Pierce Shield".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brbo06"))
ActionOverride(Player6,DestroyItem("c#brbo06"))
GiveItemCreate("c#brbo08",Player6,1,0,0)~ + book_01
/* "c#brbo09" */
+ ~!PartyHasItem("c#brbo09") GlobalGT("C#Br_WriteBookPage09","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Bigby's Crushing Hand".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brbo06"))
ActionOverride(Player6,DestroyItem("c#brbo06"))
GiveItemCreate("c#brbo09",Player6,1,0,0)~ + book_01
/* "c#brbo10" */
+ ~!PartyHasItem("c#brbo10") GlobalGT("C#Br_WriteBookPage10","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Chain Contingency".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brbo06"))
ActionOverride(Player6,DestroyItem("c#brbo06"))
GiveItemCreate("c#brbo10",Player6,1,0,0)~ + book_01
+ ~Global("c#brbok1","GLOBAL",0)~ + ~(You leave the current page with the spell "Summon Efreeti" open and put the book away again.)~ EXIT
+ ~Global("c#brbok1","GLOBAL",1)~ + ~(You already used the book today. The page can't be turned until after your next rest.)~ EXIT
END

/* "c#brbo07" */
IF ~HasItem("c#brbo07",Player6)~ THEN player6_07
SAY ~(You take the book into your  hand.)~ [c#ablank]
/* "c#brbo01" */
+ ~!PartyHasItem("c#brbo01") GlobalGT("C#Br_WriteBookPage01","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Fireball".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brbo07"))
ActionOverride(Player6,DestroyItem("c#brbo07"))
GiveItemCreate("c#brbo01",Player6,1,0,0)~ + book_01
/* "c#brbo02" */
+ ~!PartyHasItem("c#brbo02") GlobalGT("C#Br_WriteBookPage02","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Minor Sequencer".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brbo07"))
ActionOverride(Player6,DestroyItem("c#brbo07"))
GiveItemCreate("c#brbo02",Player6,1,0,0)~ + book_01
/* "c#brbo03" */
+ ~!PartyHasItem("c#brbo03") GlobalGT("C#Br_WriteBookPage03","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Breach".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brbo07"))
ActionOverride(Player6,DestroyItem("c#brbo07"))
GiveItemCreate("c#brbo03",Player6,1,0,0)~ + book_01
/* "c#brbo04" */
+ ~!PartyHasItem("c#brbo04") GlobalGT("C#Br_WriteBookPage04","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Spell Deflection".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brbo07"))
ActionOverride(Player6,DestroyItem("c#brbo07"))
GiveItemCreate("c#brbo04",Player6,1,0,0)~ + book_01
/* "c#brbo05" */
+ ~!PartyHasItem("c#brbo05") GlobalGT("C#Br_WriteBookPage05","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Mass Invisibility".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brbo07"))
ActionOverride(Player6,DestroyItem("c#brbo07"))
GiveItemCreate("c#brbo05",Player6,1,0,0)~ + book_01
/* "c#brbo06" */
+ ~!PartyHasItem("c#brbo06") GlobalGT("C#Br_WriteBookPage06","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Summon Efreeti".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brbo07"))
ActionOverride(Player6,DestroyItem("c#brbo07"))
GiveItemCreate("c#brbo06",Player6,1,0,0)~ + book_01
/* "c#brbo08" */
+ ~!PartyHasItem("c#brbo08") GlobalGT("C#Br_WriteBookPage08","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Pierce Shield".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brbo07"))
ActionOverride(Player6,DestroyItem("c#brbo07"))
GiveItemCreate("c#brbo08",Player6,1,0,0)~ + book_01
/* "c#brbo09" */
+ ~!PartyHasItem("c#brbo09") GlobalGT("C#Br_WriteBookPage09","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Bigby's Crushing Hand".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brbo07"))
ActionOverride(Player6,DestroyItem("c#brbo07"))
GiveItemCreate("c#brbo09",Player6,1,0,0)~ + book_01
/* "c#brbo10" */
+ ~!PartyHasItem("c#brbo10") GlobalGT("C#Br_WriteBookPage10","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Chain Contingency".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brbo07"))
ActionOverride(Player6,DestroyItem("c#brbo07"))
GiveItemCreate("c#brbo10",Player6,1,0,0)~ + book_01
+ ~Global("c#brbok1","GLOBAL",0)~ + ~(You leave the current page with the spell "Bigby's Clenched Fist" open and put the book away again.)~ EXIT
+ ~Global("c#brbok1","GLOBAL",1)~ + ~(You already used the book today. The page can't be turned until after your next rest.)~ EXIT
END

/* "c#brbo08" */
IF ~HasItem("c#brbo08",Player6)~ THEN player6_08
SAY ~(You take the book into your  hand.)~ [c#ablank]
/* "c#brbo01" */
+ ~!PartyHasItem("c#brbo01") GlobalGT("C#Br_WriteBookPage01","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Fireball".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brbo08"))
ActionOverride(Player6,DestroyItem("c#brbo08"))
GiveItemCreate("c#brbo01",Player6,1,0,0)~ + book_01
/* "c#brbo02" */
+ ~!PartyHasItem("c#brbo02") GlobalGT("C#Br_WriteBookPage02","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Minor Sequencer".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brbo08"))
ActionOverride(Player6,DestroyItem("c#brbo08"))
GiveItemCreate("c#brbo02",Player6,1,0,0)~ + book_01
/* "c#brbo03" */
+ ~!PartyHasItem("c#brbo03") GlobalGT("C#Br_WriteBookPage03","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Breach".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brbo08"))
ActionOverride(Player6,DestroyItem("c#brbo08"))
GiveItemCreate("c#brbo03",Player6,1,0,0)~ + book_01
/* "c#brbo04" */
+ ~!PartyHasItem("c#brbo04") GlobalGT("C#Br_WriteBookPage04","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Spell Deflection".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brbo08"))
ActionOverride(Player6,DestroyItem("c#brbo08"))
GiveItemCreate("c#brbo04",Player6,1,0,0)~ + book_01
/* "c#brbo05" */
+ ~!PartyHasItem("c#brbo05") GlobalGT("C#Br_WriteBookPage05","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Mass Invisibility".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brbo08"))
ActionOverride(Player6,DestroyItem("c#brbo08"))
GiveItemCreate("c#brbo05",Player6,1,0,0)~ + book_01
/* "c#brbo06" */
+ ~!PartyHasItem("c#brbo06") GlobalGT("C#Br_WriteBookPage06","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Summon Efreeti".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brbo08"))
ActionOverride(Player6,DestroyItem("c#brbo08"))
GiveItemCreate("c#brbo06",Player6,1,0,0)~ + book_01
/* "c#brbo07" */
+ ~!PartyHasItem("c#brbo07") GlobalGT("C#Br_WriteBookPage07","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Bigby's Clenched Fist".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brbo08"))
ActionOverride(Player6,DestroyItem("c#brbo08"))
GiveItemCreate("c#brbo07",Player6,1,0,0)~ + book_01
/* "c#brbo09" */
+ ~!PartyHasItem("c#brbo09") GlobalGT("C#Br_WriteBookPage09","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Bigby's Crushing Hand".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brbo08"))
ActionOverride(Player6,DestroyItem("c#brbo08"))
GiveItemCreate("c#brbo09",Player6,1,0,0)~ + book_01
/* "c#brbo10" */
+ ~!PartyHasItem("c#brbo10") GlobalGT("C#Br_WriteBookPage10","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Chain Contingency".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brbo08"))
ActionOverride(Player6,DestroyItem("c#brbo08"))
GiveItemCreate("c#brbo10",Player6,1,0,0)~ + book_01
+ ~Global("c#brbok1","GLOBAL",0)~ + ~(You leave the current page with the spell "Pierce Shield" open and put the book away again.)~ EXIT
+ ~Global("c#brbok1","GLOBAL",1)~ + ~(You already used the book today. The page can't be turned until after your next rest.)~ EXIT
END

/* "c#brbo09" */
IF ~HasItem("c#brbo09",Player6)~ THEN player6_09
SAY ~(You take the book into your  hand.)~ [c#ablank]
/* "c#brbo01" */
+ ~!PartyHasItem("c#brbo01") GlobalGT("C#Br_WriteBookPage01","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Fireball".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brbo09"))
ActionOverride(Player6,DestroyItem("c#brbo09"))
GiveItemCreate("c#brbo01",Player6,1,0,0)~ + book_01
/* "c#brbo02" */
+ ~!PartyHasItem("c#brbo02") GlobalGT("C#Br_WriteBookPage02","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Minor Sequencer".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brbo09"))
ActionOverride(Player6,DestroyItem("c#brbo09"))
GiveItemCreate("c#brbo02",Player6,1,0,0)~ + book_01
/* "c#brbo03" */
+ ~!PartyHasItem("c#brbo03") GlobalGT("C#Br_WriteBookPage03","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Breach".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brbo09"))
ActionOverride(Player6,DestroyItem("c#brbo09"))
GiveItemCreate("c#brbo03",Player6,1,0,0)~ + book_01
/* "c#brbo04" */
+ ~!PartyHasItem("c#brbo04") GlobalGT("C#Br_WriteBookPage04","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Spell Deflection".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brbo09"))
ActionOverride(Player6,DestroyItem("c#brbo09"))
GiveItemCreate("c#brbo04",Player6,1,0,0)~ + book_01
/* "c#brbo05" */
+ ~!PartyHasItem("c#brbo05") GlobalGT("C#Br_WriteBookPage05","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Mass Invisibility".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brbo09"))
ActionOverride(Player6,DestroyItem("c#brbo09"))
GiveItemCreate("c#brbo05",Player6,1,0,0)~ + book_01
/* "c#brbo06" */
+ ~!PartyHasItem("c#brbo06") GlobalGT("C#Br_WriteBookPage06","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Summon Efreeti".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brbo09"))
ActionOverride(Player6,DestroyItem("c#brbo09"))
GiveItemCreate("c#brbo06",Player6,1,0,0)~ + book_01
/* "c#brbo07" */
+ ~!PartyHasItem("c#brbo07") GlobalGT("C#Br_WriteBookPage07","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Bigby's Clenched Fist".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brbo09"))
ActionOverride(Player6,DestroyItem("c#brbo09"))
GiveItemCreate("c#brbo07",Player6,1,0,0)~ + book_01
/* "c#brbo08" */
+ ~!PartyHasItem("c#brbo08") GlobalGT("C#Br_WriteBookPage08","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Pierce Shield".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brbo09"))
ActionOverride(Player6,DestroyItem("c#brbo09"))
GiveItemCreate("c#brbo08",Player6,1,0,0)~ + book_01
/* "c#brbo10" */
+ ~!PartyHasItem("c#brbo10") GlobalGT("C#Br_WriteBookPage10","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Chain Contingency".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brbo09"))
ActionOverride(Player6,DestroyItem("c#brbo09"))
GiveItemCreate("c#brbo10",Player6,1,0,0)~ + book_01
+ ~Global("c#brbok1","GLOBAL",0)~ + ~(You leave the current page with the spell "Bigby's Crushing Hand" open and put the book away again.)~ EXIT
+ ~Global("c#brbok1","GLOBAL",1)~ + ~(You already used the book today. The page can't be turned until after your next rest.)~ EXIT
END

/* "c#brbo10" */
IF ~HasItem("c#brbo10",Player6)~ THEN player6_10
SAY ~(You take the book into your  hand.)~ [c#ablank]
/* "c#brbo01" */
+ ~!PartyHasItem("c#brbo01") GlobalGT("C#Br_WriteBookPage01","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Fireball".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brbo10"))
ActionOverride(Player6,DestroyItem("c#brbo10"))
GiveItemCreate("c#brbo01",Player6,1,0,0)~ + book_01
/* "c#brbo02" */
+ ~!PartyHasItem("c#brbo02") GlobalGT("C#Br_WriteBookPage02","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Minor Sequencer".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brbo10"))
ActionOverride(Player6,DestroyItem("c#brbo10"))
GiveItemCreate("c#brbo02",Player6,1,0,0)~ + book_01
/* "c#brbo03" */
+ ~!PartyHasItem("c#brbo03") GlobalGT("C#Br_WriteBookPage03","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Breach".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brbo10"))
ActionOverride(Player6,DestroyItem("c#brbo10"))
GiveItemCreate("c#brbo03",Player6,1,0,0)~ + book_01
/* "c#brbo04" */
+ ~!PartyHasItem("c#brbo04") GlobalGT("C#Br_WriteBookPage04","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Spell Deflection".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brbo10"))
ActionOverride(Player6,DestroyItem("c#brbo10"))
GiveItemCreate("c#brbo04",Player6,1,0,0)~ + book_01
/* "c#brbo05" */
+ ~!PartyHasItem("c#brbo05") GlobalGT("C#Br_WriteBookPage05","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Mass Invisibility".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brbo10"))
ActionOverride(Player6,DestroyItem("c#brbo10"))
GiveItemCreate("c#brbo05",Player6,1,0,0)~ + book_01
/* "c#brbo06" */
+ ~!PartyHasItem("c#brbo06") GlobalGT("C#Br_WriteBookPage06","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Summon Efreeti".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brbo10"))
ActionOverride(Player6,DestroyItem("c#brbo10"))
GiveItemCreate("c#brbo06",Player6,1,0,0)~ + book_01
/* "c#brbo07" */
+ ~!PartyHasItem("c#brbo07") GlobalGT("C#Br_WriteBookPage07","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Bigby's Clenched Fist".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brbo10"))
ActionOverride(Player6,DestroyItem("c#brbo10"))
GiveItemCreate("c#brbo07",Player6,1,0,0)~ + book_01
/* "c#brbo08" */
+ ~!PartyHasItem("c#brbo08") GlobalGT("C#Br_WriteBookPage08","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Pierce Shield".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brbo10"))
ActionOverride(Player6,DestroyItem("c#brbo10"))
GiveItemCreate("c#brbo08",Player6,1,0,0)~ + book_01
/* "c#brbo10" */
+ ~!PartyHasItem("c#brbo09") GlobalGT("C#Br_WriteBookPage09","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Bigby's Crushing Hand".)~ DO ~ActionOverride(Player6,TakePartyItem("c#brbo10"))
ActionOverride(Player6,DestroyItem("c#brbo10"))
GiveItemCreate("c#brbo09",Player6,1,0,0)~ + book_01
+ ~Global("c#brbok1","GLOBAL",0)~ + ~(You leave the current page with the spell "Chain Contingency" open and put the book away again.)~ EXIT
+ ~Global("c#brbok1","GLOBAL",1)~ + ~(You already used the book today. The page can't be turned until after your next rest.)~ EXIT
END

/* Player7-10 */

/* "c#brbo01" */
IF ~PartyHasItem("c#brbo01")
!HasItem("c#brbo01",Player1)
!HasItem("c#brbo01",Player2)
!HasItem("c#brbo01",Player3)
!HasItem("c#brbo01",Player4)
!HasItem("c#brbo01",Player5)
!HasItem("c#brbo01",Player6)~ THEN player7_01
SAY ~(You take the book into your  hand.)~ [c#ablank]
/* "c#brbo02" */
+ ~!PartyHasItem("c#brbo02") GlobalGT("C#Br_WriteBookPage02","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Minor Sequencer".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo01"))
ActionOverride(Player1,DestroyItem("c#brbo01"))
GiveItemCreate("c#brbo02",Player1,1,0,0)~ + book_01
/* "c#brbo03" */
+ ~!PartyHasItem("c#brbo03") GlobalGT("C#Br_WriteBookPage03","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Breach".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo01"))
ActionOverride(Player1,DestroyItem("c#brbo01"))
GiveItemCreate("c#brbo03",Player1,1,0,0)~ + book_01
/* "c#brbo04" */
+ ~!PartyHasItem("c#brbo04") GlobalGT("C#Br_WriteBookPage04","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Spell Deflection".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo01"))
ActionOverride(Player1,DestroyItem("c#brbo01"))
GiveItemCreate("c#brbo04",Player1,1,0,0)~ + book_01
/* "c#brbo05" */
+ ~!PartyHasItem("c#brbo05") GlobalGT("C#Br_WriteBookPage05","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Mass Invisibility".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo01"))
ActionOverride(Player1,DestroyItem("c#brbo01"))
GiveItemCreate("c#brbo05",Player1,1,0,0)~ + book_01
/* "c#brbo06" */
+ ~!PartyHasItem("c#brbo06") GlobalGT("C#Br_WriteBookPage06","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Summon Efreeti".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo01"))
ActionOverride(Player1,DestroyItem("c#brbo01"))
GiveItemCreate("c#brbo06",Player1,1,0,0)~ + book_01
/* "c#brbo07" */
+ ~!PartyHasItem("c#brbo07") GlobalGT("C#Br_WriteBookPage07","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Bigby's Clenched Fist".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo01"))
ActionOverride(Player1,DestroyItem("c#brbo01"))
GiveItemCreate("c#brbo07",Player1,1,0,0)~ + book_01
/* "c#brbo08" */
+ ~!PartyHasItem("c#brbo08") GlobalGT("C#Br_WriteBookPage08","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Pierce Shield".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo01"))
ActionOverride(Player1,DestroyItem("c#brbo01"))
GiveItemCreate("c#brbo08",Player1,1,0,0)~ + book_01
/* "c#brbo09" */
+ ~!PartyHasItem("c#brbo09") GlobalGT("C#Br_WriteBookPage09","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Bigby's Crushing Hand".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo01"))
ActionOverride(Player1,DestroyItem("c#brbo01"))
GiveItemCreate("c#brbo09",Player1,1,0,0)~ + book_01
/* "c#brbo10" */
+ ~!PartyHasItem("c#brbo10") GlobalGT("C#Br_WriteBookPage10","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Chain Contingency".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo01"))
ActionOverride(Player1,DestroyItem("c#brbo01"))
GiveItemCreate("c#brbo10",Player1,1,0,0)~ + book_01
+ ~Global("c#brbok1","GLOBAL",0)~ + ~(You leave the current page with the spell "Fireball" open and put the book away again.)~ EXIT
+ ~Global("c#brbok1","GLOBAL",1)~ + ~(You already used the book today. The page can't be turned until after your next rest.)~ EXIT
END

/* "c#brbo02" */
IF ~PartyHasItem("c#brbo02")
!HasItem("c#brbo02",Player1)
!HasItem("c#brbo02",Player2)
!HasItem("c#brbo02",Player3)
!HasItem("c#brbo02",Player4)
!HasItem("c#brbo02",Player5)
!HasItem("c#brbo02",Player6)~ THEN player7_02
SAY ~(You take the book into your  hand.)~ [c#ablank]
/* "c#brbo01" */
+ ~!PartyHasItem("c#brbo01") GlobalGT("C#Br_WriteBookPage01","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Fireball".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo02"))
ActionOverride(Player1,DestroyItem("c#brbo02"))
GiveItemCreate("c#brbo01",Player1,1,0,0)~ + book_01
/* "c#brbo03" */
+ ~!PartyHasItem("c#brbo03") GlobalGT("C#Br_WriteBookPage03","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Breach".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo02"))
ActionOverride(Player1,DestroyItem("c#brbo02"))
GiveItemCreate("c#brbo03",Player1,1,0,0)~ + book_01
/* "c#brbo04" */
+ ~!PartyHasItem("c#brbo04") GlobalGT("C#Br_WriteBookPage04","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Spell Deflection".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo02"))
ActionOverride(Player1,DestroyItem("c#brbo02"))
GiveItemCreate("c#brbo04",Player1,1,0,0)~ + book_01
/* "c#brbo05" */
+ ~!PartyHasItem("c#brbo05") GlobalGT("C#Br_WriteBookPage05","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Mass Invisibility".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo02"))
ActionOverride(Player1,DestroyItem("c#brbo02"))
GiveItemCreate("c#brbo05",Player1,1,0,0)~ + book_01
/* "c#brbo06" */
+ ~!PartyHasItem("c#brbo06") GlobalGT("C#Br_WriteBookPage06","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Summon Efreeti".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo02"))
ActionOverride(Player1,DestroyItem("c#brbo02"))
GiveItemCreate("c#brbo06",Player1,1,0,0)~ + book_01
/* "c#brbo07" */
+ ~!PartyHasItem("c#brbo07") GlobalGT("C#Br_WriteBookPage07","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Bigby's Clenched Fist".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo02"))
ActionOverride(Player1,DestroyItem("c#brbo02"))
GiveItemCreate("c#brbo07",Player1,1,0,0)~ + book_01
/* "c#brbo08" */
+ ~!PartyHasItem("c#brbo08") GlobalGT("C#Br_WriteBookPage08","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Pierce Shield".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo02"))
ActionOverride(Player1,DestroyItem("c#brbo02"))
GiveItemCreate("c#brbo08",Player1,1,0,0)~ + book_01
/* "c#brbo09" */
+ ~!PartyHasItem("c#brbo09") GlobalGT("C#Br_WriteBookPage09","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Bigby's Crushing Hand".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo02"))
ActionOverride(Player1,DestroyItem("c#brbo02"))
GiveItemCreate("c#brbo09",Player1,1,0,0)~ + book_01
/* "c#brbo10" */
+ ~!PartyHasItem("c#brbo10") GlobalGT("C#Br_WriteBookPage10","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Chain Contingency".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo02"))
ActionOverride(Player1,DestroyItem("c#brbo02"))
GiveItemCreate("c#brbo10",Player1,1,0,0)~ + book_01
+ ~Global("c#brbok1","GLOBAL",0)~ + ~(You leave the current page with the spell "Minor Sequencer" open and put the book away again.)~ EXIT
+ ~Global("c#brbok1","GLOBAL",1)~ + ~(You already used the book today. The page can't be turned until after your next rest.)~ EXIT
END

/* "c#brbo03" */
IF ~PartyHasItem("c#brbo03")
!HasItem("c#brbo03",Player1)
!HasItem("c#brbo03",Player2)
!HasItem("c#brbo03",Player3)
!HasItem("c#brbo03",Player4)
!HasItem("c#brbo03",Player5)
!HasItem("c#brbo03",Player6)~ THEN player7_03
SAY ~(You take the book into your  hand.)~ [c#ablank]
/* "c#brbo01" */
+ ~!PartyHasItem("c#brbo01") GlobalGT("C#Br_WriteBookPage01","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Fireball".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo03"))
ActionOverride(Player1,DestroyItem("c#brbo03"))
GiveItemCreate("c#brbo01",Player1,1,0,0)~ + book_01
/* "c#brbo02" */
+ ~!PartyHasItem("c#brbo02") GlobalGT("C#Br_WriteBookPage02","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Minor Sequencer".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo03"))
ActionOverride(Player1,DestroyItem("c#brbo03"))
GiveItemCreate("c#brbo02",Player1,1,0,0)~ + book_01
/* "c#brbo04" */
+ ~!PartyHasItem("c#brbo04") GlobalGT("C#Br_WriteBookPage04","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Spell Deflection".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo03"))
ActionOverride(Player1,DestroyItem("c#brbo03"))
GiveItemCreate("c#brbo04",Player1,1,0,0)~ + book_01
/* "c#brbo05" */
+ ~!PartyHasItem("c#brbo05") GlobalGT("C#Br_WriteBookPage05","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Mass Invisibility".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo03"))
ActionOverride(Player1,DestroyItem("c#brbo03"))
GiveItemCreate("c#brbo05",Player1,1,0,0)~ + book_01
/* "c#brbo06" */
+ ~!PartyHasItem("c#brbo06") GlobalGT("C#Br_WriteBookPage06","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Summon Efreeti".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo03"))
ActionOverride(Player1,DestroyItem("c#brbo03"))
GiveItemCreate("c#brbo06",Player1,1,0,0)~ + book_01
/* "c#brbo07" */
+ ~!PartyHasItem("c#brbo07") GlobalGT("C#Br_WriteBookPage07","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Bigby's Clenched Fist".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo03"))
ActionOverride(Player1,DestroyItem("c#brbo03"))
GiveItemCreate("c#brbo07",Player1,1,0,0)~ + book_01
/* "c#brbo08" */
+ ~!PartyHasItem("c#brbo08") GlobalGT("C#Br_WriteBookPage08","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Pierce Shield".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo03"))
ActionOverride(Player1,DestroyItem("c#brbo03"))
GiveItemCreate("c#brbo08",Player1,1,0,0)~ + book_01
/* "c#brbo09" */
+ ~!PartyHasItem("c#brbo09") GlobalGT("C#Br_WriteBookPage09","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Bigby's Crushing Hand".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo03"))
ActionOverride(Player1,DestroyItem("c#brbo03"))
GiveItemCreate("c#brbo09",Player1,1,0,0)~ + book_01
/* "c#brbo10" */
+ ~!PartyHasItem("c#brbo10") GlobalGT("C#Br_WriteBookPage10","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Chain Contingency".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo03"))
ActionOverride(Player1,DestroyItem("c#brbo03"))
GiveItemCreate("c#brbo10",Player1,1,0,0)~ + book_01
+ ~Global("c#brbok1","GLOBAL",0)~ + ~(You leave the current page with the spell "Breach" open and put the book away again.)~ EXIT
+ ~Global("c#brbok1","GLOBAL",1)~ + ~(You already used the book today. The page can't be turned until after your next rest.)~ EXIT
END

/* "c#brbo04" */
IF ~PartyHasItem("c#brbo04")
!HasItem("c#brbo04",Player1)
!HasItem("c#brbo04",Player2)
!HasItem("c#brbo04",Player3)
!HasItem("c#brbo04",Player4)
!HasItem("c#brbo04",Player5)
!HasItem("c#brbo04",Player6)~ THEN player7_04
SAY ~(You take the book into your  hand.)~ [c#ablank]
/* "c#brbo01" */
+ ~!PartyHasItem("c#brbo01") GlobalGT("C#Br_WriteBookPage01","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Fireball".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo04"))
ActionOverride(Player1,DestroyItem("c#brbo04"))
GiveItemCreate("c#brbo01",Player1,1,0,0)~ + book_01
/* "c#brbo02" */
+ ~!PartyHasItem("c#brbo02") GlobalGT("C#Br_WriteBookPage02","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Minor Sequencer".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo04"))
ActionOverride(Player1,DestroyItem("c#brbo04"))
GiveItemCreate("c#brbo02",Player1,1,0,0)~ + book_01
/* "c#brbo03" */
+ ~!PartyHasItem("c#brbo03") GlobalGT("C#Br_WriteBookPage03","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Breach".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo04"))
ActionOverride(Player1,DestroyItem("c#brbo04"))
GiveItemCreate("c#brbo03",Player1,1,0,0)~ + book_01
/* "c#brbo05" */
+ ~!PartyHasItem("c#brbo05") GlobalGT("C#Br_WriteBookPage05","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Mass Invisibility".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo04"))
ActionOverride(Player1,DestroyItem("c#brbo04"))
GiveItemCreate("c#brbo05",Player1,1,0,0)~ + book_01
/* "c#brbo06" */
+ ~!PartyHasItem("c#brbo06") GlobalGT("C#Br_WriteBookPage06","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Summon Efreeti".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo04"))
ActionOverride(Player1,DestroyItem("c#brbo04"))
GiveItemCreate("c#brbo06",Player1,1,0,0)~ + book_01
/* "c#brbo07" */
+ ~!PartyHasItem("c#brbo07") GlobalGT("C#Br_WriteBookPage07","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Bigby's Clenched Fist".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo04"))
ActionOverride(Player1,DestroyItem("c#brbo04"))
GiveItemCreate("c#brbo07",Player1,1,0,0)~ + book_01
/* "c#brbo08" */
+ ~!PartyHasItem("c#brbo08") GlobalGT("C#Br_WriteBookPage08","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Pierce Shield".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo04"))
ActionOverride(Player1,DestroyItem("c#brbo04"))
GiveItemCreate("c#brbo08",Player1,1,0,0)~ + book_01
/* "c#brbo09" */
+ ~!PartyHasItem("c#brbo09") GlobalGT("C#Br_WriteBookPage09","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Bigby's Crushing Hand".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo04"))
ActionOverride(Player1,DestroyItem("c#brbo04"))
GiveItemCreate("c#brbo09",Player1,1,0,0)~ + book_01
/* "c#brbo10" */
+ ~!PartyHasItem("c#brbo10") GlobalGT("C#Br_WriteBookPage10","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Chain Contingency".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo04"))
ActionOverride(Player1,DestroyItem("c#brbo04"))
GiveItemCreate("c#brbo10",Player1,1,0,0)~ + book_01
+ ~Global("c#brbok1","GLOBAL",0)~ + ~(You leave the current page with the spell "Spell Deflection" open and put the book away again.)~ EXIT
+ ~Global("c#brbok1","GLOBAL",1)~ + ~(You already used the book today. The page can't be turned until after your next rest.)~ EXIT
END

/* "c#brbo05" */
IF ~PartyHasItem("c#brbo05")
!HasItem("c#brbo05",Player1)
!HasItem("c#brbo05",Player2)
!HasItem("c#brbo05",Player3)
!HasItem("c#brbo05",Player4)
!HasItem("c#brbo05",Player5)
!HasItem("c#brbo05",Player6)~ THEN player7_05
SAY ~(You take the book into your  hand.)~ [c#ablank]
/* "c#brbo01" */
+ ~!PartyHasItem("c#brbo01") GlobalGT("C#Br_WriteBookPage01","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Fireball".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo05"))
ActionOverride(Player1,DestroyItem("c#brbo05"))
GiveItemCreate("c#brbo01",Player1,1,0,0)~ + book_01
/* "c#brbo02" */
+ ~!PartyHasItem("c#brbo02") GlobalGT("C#Br_WriteBookPage02","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Minor Sequencer".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo05"))
ActionOverride(Player1,DestroyItem("c#brbo05"))
GiveItemCreate("c#brbo02",Player1,1,0,0)~ + book_01
/* "c#brbo03" */
+ ~!PartyHasItem("c#brbo03") GlobalGT("C#Br_WriteBookPage03","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Breach".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo05"))
ActionOverride(Player1,DestroyItem("c#brbo05"))
GiveItemCreate("c#brbo03",Player1,1,0,0)~ + book_01
/* "c#brbo04" */
+ ~!PartyHasItem("c#brbo04") GlobalGT("C#Br_WriteBookPage04","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Spell Deflection".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo05"))
ActionOverride(Player1,DestroyItem("c#brbo05"))
GiveItemCreate("c#brbo04",Player1,1,0,0)~ + book_01
/* "c#brbo06" */
+ ~!PartyHasItem("c#brbo06") GlobalGT("C#Br_WriteBookPage06","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Summon Efreeti".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo05"))
ActionOverride(Player1,DestroyItem("c#brbo05"))
GiveItemCreate("c#brbo06",Player1,1,0,0)~ + book_01
/* "c#brbo07" */
+ ~!PartyHasItem("c#brbo07") GlobalGT("C#Br_WriteBookPage07","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Bigby's Clenched Fist".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo05"))
ActionOverride(Player1,DestroyItem("c#brbo05"))
GiveItemCreate("c#brbo07",Player1,1,0,0)~ + book_01
/* "c#brbo08" */
+ ~!PartyHasItem("c#brbo08") GlobalGT("C#Br_WriteBookPage08","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Pierce Shield".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo05"))
ActionOverride(Player1,DestroyItem("c#brbo05"))
GiveItemCreate("c#brbo08",Player1,1,0,0)~ + book_01
/* "c#brbo09" */
+ ~!PartyHasItem("c#brbo09") GlobalGT("C#Br_WriteBookPage09","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Bigby's Crushing Hand".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo05"))
ActionOverride(Player1,DestroyItem("c#brbo05"))
GiveItemCreate("c#brbo09",Player1,1,0,0)~ + book_01
/* "c#brbo10" */
+ ~!PartyHasItem("c#brbo10") GlobalGT("C#Br_WriteBookPage10","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Chain Contingency".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo05"))
ActionOverride(Player1,DestroyItem("c#brbo05"))
GiveItemCreate("c#brbo10",Player1,1,0,0)~ + book_01
+ ~Global("c#brbok1","GLOBAL",0)~ + ~(You leave the current page with the spell "Mass Invisibility" open and put the book away again.)~ EXIT
+ ~Global("c#brbok1","GLOBAL",1)~ + ~(You already used the book today. The page can't be turned until after your next rest.)~ EXIT
END

/* "c#brbo06" */
IF ~PartyHasItem("c#brbo06")
!HasItem("c#brbo06",Player1)
!HasItem("c#brbo06",Player2)
!HasItem("c#brbo06",Player3)
!HasItem("c#brbo06",Player4)
!HasItem("c#brbo06",Player5)
!HasItem("c#brbo06",Player6)~ THEN player7_06
SAY ~(You take the book into your  hand.)~ [c#ablank]
/* "c#brbo01" */
+ ~!PartyHasItem("c#brbo01") GlobalGT("C#Br_WriteBookPage01","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Fireball".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo06"))
ActionOverride(Player1,DestroyItem("c#brbo06"))
GiveItemCreate("c#brbo01",Player1,1,0,0)~ + book_01
/* "c#brbo02" */
+ ~!PartyHasItem("c#brbo02") GlobalGT("C#Br_WriteBookPage02","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Minor Sequencer".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo06"))
ActionOverride(Player1,DestroyItem("c#brbo06"))
GiveItemCreate("c#brbo02",Player1,1,0,0)~ + book_01
/* "c#brbo03" */
+ ~!PartyHasItem("c#brbo03") GlobalGT("C#Br_WriteBookPage03","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Breach".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo06"))
ActionOverride(Player1,DestroyItem("c#brbo06"))
GiveItemCreate("c#brbo03",Player1,1,0,0)~ + book_01
/* "c#brbo04" */
+ ~!PartyHasItem("c#brbo04") GlobalGT("C#Br_WriteBookPage04","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Spell Deflection".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo06"))
ActionOverride(Player1,DestroyItem("c#brbo06"))
GiveItemCreate("c#brbo04",Player1,1,0,0)~ + book_01
/* "c#brbo05" */
+ ~!PartyHasItem("c#brbo05") GlobalGT("C#Br_WriteBookPage05","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Mass Invisibility".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo06"))
ActionOverride(Player1,DestroyItem("c#brbo06"))
GiveItemCreate("c#brbo05",Player1,1,0,0)~ + book_01
/* "c#brbo07" */
+ ~!PartyHasItem("c#brbo07") GlobalGT("C#Br_WriteBookPage07","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Bigby's Clenched Fist".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo06"))
ActionOverride(Player1,DestroyItem("c#brbo06"))
GiveItemCreate("c#brbo07",Player1,1,0,0)~ + book_01
/* "c#brbo08" */
+ ~!PartyHasItem("c#brbo08") GlobalGT("C#Br_WriteBookPage08","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Pierce Shield".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo06"))
ActionOverride(Player1,DestroyItem("c#brbo06"))
GiveItemCreate("c#brbo08",Player1,1,0,0)~ + book_01
/* "c#brbo09" */
+ ~!PartyHasItem("c#brbo09") GlobalGT("C#Br_WriteBookPage09","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Bigby's Crushing Hand".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo06"))
ActionOverride(Player1,DestroyItem("c#brbo06"))
GiveItemCreate("c#brbo09",Player1,1,0,0)~ + book_01
/* "c#brbo10" */
+ ~!PartyHasItem("c#brbo10") GlobalGT("C#Br_WriteBookPage10","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Chain Contingency".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo06"))
ActionOverride(Player1,DestroyItem("c#brbo06"))
GiveItemCreate("c#brbo10",Player1,1,0,0)~ + book_01
+ ~Global("c#brbok1","GLOBAL",0)~ + ~(You leave the current page with the spell "Summon Efreeti" open and put the book away again.)~ EXIT
+ ~Global("c#brbok1","GLOBAL",1)~ + ~(You already used the book today. The page can't be turned until after your next rest.)~ EXIT
END

/* "c#brbo07" */
IF ~PartyHasItem("c#brbo07")
!HasItem("c#brbo07",Player1)
!HasItem("c#brbo07",Player2)
!HasItem("c#brbo07",Player3)
!HasItem("c#brbo07",Player4)
!HasItem("c#brbo07",Player5)
!HasItem("c#brbo07",Player6)~ THEN player7_07
SAY ~(You take the book into your  hand.)~ [c#ablank]
/* "c#brbo01" */
+ ~!PartyHasItem("c#brbo01") GlobalGT("C#Br_WriteBookPage01","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Fireball".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo07"))
ActionOverride(Player1,DestroyItem("c#brbo07"))
GiveItemCreate("c#brbo01",Player1,1,0,0)~ + book_01
/* "c#brbo02" */
+ ~!PartyHasItem("c#brbo02") GlobalGT("C#Br_WriteBookPage02","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Minor Sequencer".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo07"))
ActionOverride(Player1,DestroyItem("c#brbo07"))
GiveItemCreate("c#brbo02",Player1,1,0,0)~ + book_01
/* "c#brbo03" */
+ ~!PartyHasItem("c#brbo03") GlobalGT("C#Br_WriteBookPage03","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Breach".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo07"))
ActionOverride(Player1,DestroyItem("c#brbo07"))
GiveItemCreate("c#brbo03",Player1,1,0,0)~ + book_01
/* "c#brbo04" */
+ ~!PartyHasItem("c#brbo04") GlobalGT("C#Br_WriteBookPage04","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Spell Deflection".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo07"))
ActionOverride(Player1,DestroyItem("c#brbo07"))
GiveItemCreate("c#brbo04",Player1,1,0,0)~ + book_01
/* "c#brbo05" */
+ ~!PartyHasItem("c#brbo05") GlobalGT("C#Br_WriteBookPage05","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Mass Invisibility".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo07"))
ActionOverride(Player1,DestroyItem("c#brbo07"))
GiveItemCreate("c#brbo05",Player1,1,0,0)~ + book_01
/* "c#brbo06" */
+ ~!PartyHasItem("c#brbo06") GlobalGT("C#Br_WriteBookPage06","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Summon Efreeti".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo07"))
ActionOverride(Player1,DestroyItem("c#brbo07"))
GiveItemCreate("c#brbo06",Player1,1,0,0)~ + book_01
/* "c#brbo08" */
+ ~!PartyHasItem("c#brbo08") GlobalGT("C#Br_WriteBookPage08","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Pierce Shield".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo07"))
ActionOverride(Player1,DestroyItem("c#brbo07"))
GiveItemCreate("c#brbo08",Player1,1,0,0)~ + book_01
/* "c#brbo09" */
+ ~!PartyHasItem("c#brbo09") GlobalGT("C#Br_WriteBookPage09","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Bigby's Crushing Hand".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo07"))
ActionOverride(Player1,DestroyItem("c#brbo07"))
GiveItemCreate("c#brbo09",Player1,1,0,0)~ + book_01
/* "c#brbo10" */
+ ~!PartyHasItem("c#brbo10") GlobalGT("C#Br_WriteBookPage10","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Chain Contingency".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo07"))
ActionOverride(Player1,DestroyItem("c#brbo07"))
GiveItemCreate("c#brbo10",Player1,1,0,0)~ + book_01
+ ~Global("c#brbok1","GLOBAL",0)~ + ~(You leave the current page with the spell "Bigby's Clenched Fist" open and put the book away again.)~ EXIT
+ ~Global("c#brbok1","GLOBAL",1)~ + ~(You already used the book today. The page can't be turned until after your next rest.)~ EXIT
END

/* "c#brbo08" */
IF ~PartyHasItem("c#brbo08")
!HasItem("c#brbo08",Player1)
!HasItem("c#brbo08",Player2)
!HasItem("c#brbo08",Player3)
!HasItem("c#brbo08",Player4)
!HasItem("c#brbo08",Player5)
!HasItem("c#brbo08",Player6)~ THEN player7_08
SAY ~(You take the book into your  hand.)~ [c#ablank]
/* "c#brbo01" */
+ ~!PartyHasItem("c#brbo01") GlobalGT("C#Br_WriteBookPage01","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Fireball".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo08"))
ActionOverride(Player1,DestroyItem("c#brbo08"))
GiveItemCreate("c#brbo01",Player1,1,0,0)~ + book_01
/* "c#brbo02" */
+ ~!PartyHasItem("c#brbo02") GlobalGT("C#Br_WriteBookPage02","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Minor Sequencer".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo08"))
ActionOverride(Player1,DestroyItem("c#brbo08"))
GiveItemCreate("c#brbo02",Player1,1,0,0)~ + book_01
/* "c#brbo03" */
+ ~!PartyHasItem("c#brbo03") GlobalGT("C#Br_WriteBookPage03","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Breach".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo08"))
ActionOverride(Player1,DestroyItem("c#brbo08"))
GiveItemCreate("c#brbo03",Player1,1,0,0)~ + book_01
/* "c#brbo04" */
+ ~!PartyHasItem("c#brbo04") GlobalGT("C#Br_WriteBookPage04","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Spell Deflection".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo08"))
ActionOverride(Player1,DestroyItem("c#brbo08"))
GiveItemCreate("c#brbo04",Player1,1,0,0)~ + book_01
/* "c#brbo05" */
+ ~!PartyHasItem("c#brbo05") GlobalGT("C#Br_WriteBookPage05","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Mass Invisibility".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo08"))
ActionOverride(Player1,DestroyItem("c#brbo08"))
GiveItemCreate("c#brbo05",Player1,1,0,0)~ + book_01
/* "c#brbo06" */
+ ~!PartyHasItem("c#brbo06") GlobalGT("C#Br_WriteBookPage06","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Summon Efreeti".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo08"))
ActionOverride(Player1,DestroyItem("c#brbo08"))
GiveItemCreate("c#brbo06",Player1,1,0,0)~ + book_01
/* "c#brbo07" */
+ ~!PartyHasItem("c#brbo07") GlobalGT("C#Br_WriteBookPage07","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Bigby's Clenched Fist".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo08"))
ActionOverride(Player1,DestroyItem("c#brbo08"))
GiveItemCreate("c#brbo07",Player1,1,0,0)~ + book_01
/* "c#brbo09" */
+ ~!PartyHasItem("c#brbo09") GlobalGT("C#Br_WriteBookPage09","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Bigby's Crushing Hand".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo08"))
ActionOverride(Player1,DestroyItem("c#brbo08"))
GiveItemCreate("c#brbo09",Player1,1,0,0)~ + book_01
/* "c#brbo10" */
+ ~!PartyHasItem("c#brbo10") GlobalGT("C#Br_WriteBookPage10","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Chain Contingency".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo08"))
ActionOverride(Player1,DestroyItem("c#brbo08"))
GiveItemCreate("c#brbo10",Player1,1,0,0)~ + book_01
+ ~Global("c#brbok1","GLOBAL",0)~ + ~(You leave the current page with the spell "Pierce Shield" open and put the book away again.)~ EXIT
+ ~Global("c#brbok1","GLOBAL",1)~ + ~(You already used the book today. The page can't be turned until after your next rest.)~ EXIT
END

/* "c#brbo09" */
IF ~PartyHasItem("c#brbo09")
!HasItem("c#brbo09",Player1)
!HasItem("c#brbo09",Player2)
!HasItem("c#brbo09",Player3)
!HasItem("c#brbo09",Player4)
!HasItem("c#brbo09",Player5)
!HasItem("c#brbo09",Player6)~ THEN player7_09
SAY ~(You take the book into your  hand.)~ [c#ablank]
/* "c#brbo01" */
+ ~!PartyHasItem("c#brbo01") GlobalGT("C#Br_WriteBookPage01","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Fireball".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo09"))
ActionOverride(Player1,DestroyItem("c#brbo09"))
GiveItemCreate("c#brbo01",Player1,1,0,0)~ + book_01
/* "c#brbo02" */
+ ~!PartyHasItem("c#brbo02") GlobalGT("C#Br_WriteBookPage02","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Minor Sequencer".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo09"))
ActionOverride(Player1,DestroyItem("c#brbo09"))
GiveItemCreate("c#brbo02",Player1,1,0,0)~ + book_01
/* "c#brbo03" */
+ ~!PartyHasItem("c#brbo03") GlobalGT("C#Br_WriteBookPage03","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Breach".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo09"))
ActionOverride(Player1,DestroyItem("c#brbo09"))
GiveItemCreate("c#brbo03",Player1,1,0,0)~ + book_01
/* "c#brbo04" */
+ ~!PartyHasItem("c#brbo04") GlobalGT("C#Br_WriteBookPage04","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Spell Deflection".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo09"))
ActionOverride(Player1,DestroyItem("c#brbo09"))
GiveItemCreate("c#brbo04",Player1,1,0,0)~ + book_01
/* "c#brbo05" */
+ ~!PartyHasItem("c#brbo05") GlobalGT("C#Br_WriteBookPage05","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Mass Invisibility".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo09"))
ActionOverride(Player1,DestroyItem("c#brbo09"))
GiveItemCreate("c#brbo05",Player1,1,0,0)~ + book_01
/* "c#brbo06" */
+ ~!PartyHasItem("c#brbo06") GlobalGT("C#Br_WriteBookPage06","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Summon Efreeti".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo09"))
ActionOverride(Player1,DestroyItem("c#brbo09"))
GiveItemCreate("c#brbo06",Player1,1,0,0)~ + book_01
/* "c#brbo07" */
+ ~!PartyHasItem("c#brbo07") GlobalGT("C#Br_WriteBookPage07","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Bigby's Clenched Fist".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo09"))
ActionOverride(Player1,DestroyItem("c#brbo09"))
GiveItemCreate("c#brbo07",Player1,1,0,0)~ + book_01
/* "c#brbo08" */
+ ~!PartyHasItem("c#brbo08") GlobalGT("C#Br_WriteBookPage08","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Pierce Shield".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo09"))
ActionOverride(Player1,DestroyItem("c#brbo09"))
GiveItemCreate("c#brbo08",Player1,1,0,0)~ + book_01
/* "c#brbo10" */
+ ~!PartyHasItem("c#brbo10") GlobalGT("C#Br_WriteBookPage10","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Chain Contingency".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo09"))
ActionOverride(Player1,DestroyItem("c#brbo09"))
GiveItemCreate("c#brbo10",Player1,1,0,0)~ + book_01
+ ~Global("c#brbok1","GLOBAL",0)~ + ~(You leave the current page with the spell "Bigby's Crushing Hand" open and put the book away again.)~ EXIT
+ ~Global("c#brbok1","GLOBAL",1)~ + ~(You already used the book today. The page can't be turned until after your next rest.)~ EXIT
END

/* "c#brbo10" */
IF ~PartyHasItem("c#brbo10")
!HasItem("c#brbo10",Player1)
!HasItem("c#brbo10",Player2)
!HasItem("c#brbo10",Player3)
!HasItem("c#brbo10",Player4)
!HasItem("c#brbo10",Player5)
!HasItem("c#brbo10",Player6)~ THEN player7_10
SAY ~(You take the book into your  hand.)~ [c#ablank]
/* "c#brbo01" */
+ ~!PartyHasItem("c#brbo01") GlobalGT("C#Br_WriteBookPage01","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Fireball".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo10"))
ActionOverride(Player1,DestroyItem("c#brbo10"))
GiveItemCreate("c#brbo01",Player1,1,0,0)~ + book_01
/* "c#brbo02" */
+ ~!PartyHasItem("c#brbo02") GlobalGT("C#Br_WriteBookPage02","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Minor Sequencer".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo10"))
ActionOverride(Player1,DestroyItem("c#brbo10"))
GiveItemCreate("c#brbo02",Player1,1,0,0)~ + book_01
/* "c#brbo03" */
+ ~!PartyHasItem("c#brbo03") GlobalGT("C#Br_WriteBookPage03","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Breach".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo10"))
ActionOverride(Player1,DestroyItem("c#brbo10"))
GiveItemCreate("c#brbo03",Player1,1,0,0)~ + book_01
/* "c#brbo04" */
+ ~!PartyHasItem("c#brbo04") GlobalGT("C#Br_WriteBookPage04","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Spell Deflection".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo10"))
ActionOverride(Player1,DestroyItem("c#brbo10"))
GiveItemCreate("c#brbo04",Player1,1,0,0)~ + book_01
/* "c#brbo05" */
+ ~!PartyHasItem("c#brbo05") GlobalGT("C#Br_WriteBookPage05","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Mass Invisibility".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo10"))
ActionOverride(Player1,DestroyItem("c#brbo10"))
GiveItemCreate("c#brbo05",Player1,1,0,0)~ + book_01
/* "c#brbo06" */
+ ~!PartyHasItem("c#brbo06") GlobalGT("C#Br_WriteBookPage06","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Summon Efreeti".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo10"))
ActionOverride(Player1,DestroyItem("c#brbo10"))
GiveItemCreate("c#brbo06",Player1,1,0,0)~ + book_01
/* "c#brbo07" */
+ ~!PartyHasItem("c#brbo07") GlobalGT("C#Br_WriteBookPage07","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Bigby's Clenched Fist".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo10"))
ActionOverride(Player1,DestroyItem("c#brbo10"))
GiveItemCreate("c#brbo07",Player1,1,0,0)~ + book_01
/* "c#brbo08" */
+ ~!PartyHasItem("c#brbo08") GlobalGT("C#Br_WriteBookPage08","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Pierce Shield".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo10"))
ActionOverride(Player1,DestroyItem("c#brbo10"))
GiveItemCreate("c#brbo08",Player1,1,0,0)~ + book_01
/* "c#brbo10" */
+ ~!PartyHasItem("c#brbo09") GlobalGT("C#Br_WriteBookPage09","GLOBAL",0)
Global("c#brbok1","GLOBAL",0)~ + ~(You turn the page to the one with the spell "Bigby's Crushing Hand".)~ DO ~ActionOverride(Player1,TakePartyItem("c#brbo10"))
ActionOverride(Player1,DestroyItem("c#brbo10"))
GiveItemCreate("c#brbo09",Player1,1,0,0)~ + book_01
+ ~Global("c#brbok1","GLOBAL",0)~ + ~(You leave the current page with the spell "Chain Contingency" open and put the book away again.)~ EXIT
+ ~Global("c#brbok1","GLOBAL",1)~ + ~(You already used the book today. The page can't be turned until after your next rest.)~ EXIT
END


IF ~~ THEN book_01
SAY ~(The book shows the new page now.)~
IF ~~ THEN EXIT
END