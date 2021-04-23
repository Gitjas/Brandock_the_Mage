/* Brage - Brandock */

/* Brage's interjection into Brandock's dialogue */

/*
C#BRAND_DIALOGUES.TRA
@3524 = ~[Brandock]Uuh, ich kann es nicht fassen, dass sich jemand die Mühe macht, eine verfluchte Schriftrolle zu kreieren, die den Anwender so schädigt! Wozu soll die gut sein?! Manchmal schäme ich mich für meine Magierkollegen, <CHARNAME>. So eine Verschwendung von magischen Ressourcen, und wofür - damit sich jemand irgendwo eins ins Fäustchen lachen kann, weil sich jemand damit selbst schädigt?~
*/

I_C_T c#brandj ~%brandj_DIAL3524%~ C#BE_BRANDJ_DIAL3524
== c#bragej IF ~InParty("C#Brage") See("C#Brage") !StateCheck("C#Brage",CD_STATE_NOTVALID)~ THEN @58 /* ~[Brage]Ich bin froh dass wir sie rechtzeitig identifiziert haben. Danke, Brandock... dass Ihr da so ein scharfes Auge drauf habt.~ */
== c#brandj IF ~InParty("C#Brage") See("C#Brage") !StateCheck("C#Brage",CD_STATE_NOTVALID)~ THEN @59 /* ~[Brandock]Sehr gerne, Brage. Mein... mein Selbsterhaltungstrieb lässt gar nichts anderes zu.~ */
END


/* If Brage is in party: Brandock's comment about Brage will not fire but this banter instead. */

CHAIN
IF WEIGHT #-1
~%BGT_VAR%
InParty("C#Brage")
See("C#Brage")
!StateCheck("C#Brage",CD_STATE_NOTVALID)
OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2)
!StateCheck("C#Brandock",CD_STATE_NOTVALID)
See(Player1)
!StateCheck(Player1,CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
GlobalLT("C#Brandock_Brage","GLOBAL",3)
!Global("C#Brandock_Brage","GLOBAL",4)~ THEN C#BrandB brage_dialogue
@0 
DO ~SetGlobal("C#Brandock_Brage","GLOBAL",4)~ 
== C#BrageB @1
== C#BrandB @2
== C#BrageB @3
== C#BrandB @4
EXIT

/* in case Brandock and PC already talked about Brage before Brage joined */
CHAIN
IF WEIGHT #-1
~%BGT_VAR%
InParty("C#Brage")
See("C#Brage")
!StateCheck("C#Brage",CD_STATE_NOTVALID)
OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2)
!StateCheck("C#Brandock",CD_STATE_NOTVALID)
See(Player1)
!StateCheck(Player1,CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C#Brandock_Brage","GLOBAL",3)~ THEN C#BrandB brage_dialogue_b
@5 
DO ~SetGlobal("C#Brandock_Brage","GLOBAL",4)~ 
== C#BrageB @1
== C#BrandB @6
== C#BrageB @3
== C#BrandB @7
EXIT

CHAIN
IF WEIGHT #-1
~%BGT_VAR%
InParty("C#Brage")
See("C#Brage")
!StateCheck("C#Brage",CD_STATE_NOTVALID)
OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2)
!StateCheck("C#Brandock",CD_STATE_NOTVALID)
See(Player1)
!StateCheck(Player1,CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C#Brandock_Brage","GLOBAL",4)~ THEN C#BrandB brage_dialogue_2
@8 /* ~Brage, let me stress - all I see in you is a righteous man who was struck by evil fate without his own doing. And I see a man who tries and would give everything to make up for what happened. I... I'm noone to grant you absolution, but to me, you do not have to be ashamed of anything that happened.~ */ 
DO ~SetGlobal("C#Brandock_Brage","GLOBAL",5)~ 
== C#BrageB @9 /* ~I appreciate your words, Brandock.~ */
== C#BrandB @10 /* ~The only thing that will noone take from you is the grieve you will be burdened with for the rest of your live. Er. That wasn't very comforting and rather insensitive of me to say...~ */
== C#BrageB @11 /* ~It is the simple truth, and there is no harm in phrasing it in words. I see what you are trying to say, and I thank you for your kind words, Brandock. They were comforting - as much as it is possible for words after what my hands did...~ */
EXIT

CHAIN
IF WEIGHT #-1
~%BGT_VAR%
InParty("C#Brage")
See("C#Brandock")
!StateCheck("C#Brage",CD_STATE_NOTVALID)
OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2)
!StateCheck("C#Brandock",CD_STATE_NOTVALID)
See(Player1)
!StateCheck(Player1,CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C#Brandock_Brage","GLOBAL",5)~ THEN C#BrageB brage_dialogue_3
@12 /* ~[Brage] Brandock, ich... ich mag die Art, wie Ihr Euch mit Magie beschäftigt.~ */ 
DO ~SetGlobal("C#Brandock_Brage","GLOBAL",6)~ 
== C#BrandB IF ~GlobalGT("C#Brandock_Possessions","GLOBAL",0) Global("C#Brandock_Shapeshift","GLOBAL",0)~ THEN @13/* ~[Brandock, kaputtes Buch wiedergefunden NO Halboger Incident] You mean the way I mistreat and lose my valuable magic possessions?...~ */
== C#BrandB IF ~GlobalGT("C#Brandock_Possessions","GLOBAL",0) GlobalGT("C#Brandock_Shapeshift","GLOBAL",2)~ THEN @14 /* ~[Brandock, kaputtes Buch wiedergefunden AND Halboger Incident] You mean the way I mistreat and lose my valuable magic possessions and tamper with wild magic I don't understand?...~ */
== C#BrandB IF ~Global("C#Brandock_Possessions","GLOBAL",0) 
GlobalGT("C#Brandock_Shapeshift","GLOBAL",2)~ THEN @17 /* ~[Brandock, kaputtes Buch NICHT wiedergefunden AND Halboger Incident] You mean the way I tamper with wild magic I don't understand?...~ */
== C#BrandB IF ~OR(2)
GlobalGT("C#Brandock_Possessions","GLOBAL",0)
GlobalGT("C#Brandock_Shapeshift","GLOBAL",2)~ THEN @15 /* ~[Brandock, kaputtes Buch wiedergefunden ODER Halboger Incident] I'm... I'm sorry, I didn't think before talking. I shouldn't let my self-pity and sarcasm out on you.~ */
== C#BrageB IF ~OR(2)
GlobalGT("C#Brandock_Possessions","GLOBAL",0)
GlobalGT("C#Brandock_Shapeshift","GLOBAL",2)~ THEN @16 /* ~[Brage, kaputtes Buch wiedergefunden ODER Halboger Incident] You are a curious mind, Brandock, and you are young and inexperienced. Believe me, this is always a dangerous mixture - some do not survive it. You made mistakes and had bad luck, but I do not see the degree of recklessness and arrogance that would make me fear for your life - and our safety. On the contrary.~ */
== C#BrageB @18 /* ~[Brage] You strive to learn - to *understand* magic, wile at the same time knowing how dangerous it is. This is a good approach for a profession that has potential for such powerful - and destructive - outcomes.~ */
== C#BrandB @19 /* ~[Brandock] I thank you, Brage. I... I strive to understand what I'm doing *before* becoming too powerful...~ */
EXIT


CHAIN
IF WEIGHT #-1
~%BGT_VAR%
InParty("C#Brage")
See("C#Brandock")
!StateCheck("C#Brage",CD_STATE_NOTVALID)
OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2)
!StateCheck("C#Brandock",CD_STATE_NOTVALID)
See(Player1)
!StateCheck(Player1,CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C#Brandock_Brage","GLOBAL",6)~ THEN C#BrageB brage_dialogue_4
@20 /* ~[Brage] Brandock, I can only stress what I said recently. Magic is dangerous and needs to be kept under control. To do so we need to know what we are dealing with. Your ability to identify unknown magic is of utmost importance to us to keep us safe.~ */ 
DO ~SetGlobal("C#Brandock_Brage","GLOBAL",7)~ 
== C#BrandB @21 /* ~[Brandock] Yes, I can assure you that I do not wish us to repeat what happened to you... I am so sorry, that was rather insensitive of me to say.~ */
== C#BrageB @22 /* ~[Brage] But it is true... it is true what you are saying. You are only phrasing out loud what I thought in my mind. Would we only have had a mage in the Nashkel Guard, all this might not have happened...~ */
EXIT

CHAIN
IF WEIGHT #-1
~%BGT_VAR%
InParty("C#Brage")
See("C#Brage")
!StateCheck("C#Brage",CD_STATE_NOTVALID)
OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2)
!StateCheck("C#Brandock",CD_STATE_NOTVALID)
See(Player1)
!StateCheck(Player1,CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C#Brandock_Brage","GLOBAL",7)~ THEN C#BrandB brage_dialogue_5
@23 /* ~[Brandock] Brage, ich verstehe, was Ihr meint. Jeder trägt einen wichtigen Teil zur Gesamtfähigkeit der Gruppe bei. Bei mir ist es die Magie, und bei Euch ist es die Waffe. Ich fühle mich neben Euch und Eurem Schwert auch sehr viel sicherer in der Wildnis.~ */ 
DO ~SetGlobal("C#Brandock_Brage","GLOBAL",8)~ 
== C#BrageB @24 /* ~[Brage] Ja, es ist mein Wille, mit diesem Schwert Gefahren von uns allen abzuwenden. (seufzt schwer) Und doch sind gute Menschen gestorben, weil sie dasselbe dachten...~ */
== C#BrandB @25 /* ~[Brandock] Und hatten nur deswegen Unrecht, weil Ihr von böser Magie übermannt wurdet. I'll do anything in my power to keep evil magic from you, Brage. I swear!~ */
== C#BrageB @26 /* ~[Brage] I... I thank you, Brandock.~ */
EXIT

CHAIN
IF WEIGHT #-1
~%BGT_VAR%
InParty("C#Brage")
See("C#Brandock")
!StateCheck("C#Brage",CD_STATE_NOTVALID)
OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2)
!StateCheck("C#Brandock",CD_STATE_NOTVALID)
See(Player1)
!StateCheck(Player1,CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C#Brandock_Brage","GLOBAL",8)~ THEN C#BrageB brage_dialogue_6
@27 /* ~[Brage] Brandock, your promise to protect me from evil magic as good as you can took me offguard and touched me deeply. I... I need to apologize to you.~ */ 
DO ~SetGlobal("C#Brandock_Brage","GLOBAL",9)~ 
== C#BrandB @28 /* ~[Brandock] For implying that I'm still not as experienced as I should be? That's painfully true, I would say.~ */
== C#BrageB @29 /* ~[Brage] No, because I did you wrong when we first met. I did not tell, but I was taken aback by your youth and inexperience in matters of life. To know what arkane powers you will be able to wield in the future! To know these powers in such small hands and weak body - and what I also thought was such an easily confused - *weak* - mind. But I did you wrong, Brandock. I misjudged you, and I am deeply sorry.~ */
== C#BrandB @30 /* ~[Brandock] Oh, but... but you are right about my physiology lacking any strength. And my mind - calling me weak is not an insult, it's an understatement...~ */
== C#BrageB @31 /* ~[Brage] Brandock, your mind is not weak! You might be insecure, yes, but never weak! As I said, I misjudged you, and greatly. I looked at you as the former commander I were, and saw a man who would not last the blows of a foe. But how wrong was I to judge you so.~ */
= @32 /* ~You are insecure - but you are also cautious. You are inexperienced - but you are well aware of it and free of the arrogance of the ignorant that brings so much peril and evil to this world.~ */
DO ~SetGlobal("C#Brandock_Brage","GLOBAL",10)~
= @33 /* ~[Brage] You are a responsible, reliable person, Brandock. You deal with magic like a smith with fire - understanding its potential as well as knowing about the potential dangers, always learning how to approach and tame it not to threaten you or anyone else.~ */
== C#BrandB @34 /* ~[Brandock] I don't know what to say, Brage. I can't blame you for those first thoughts of yours, but hearing what your opinion about me turned into leaves me speechless with emotion. I am moved. Deeply. Not that it takes much to impress me and leave me speechless, but... Thank you, Brage. This means a lot to me.~ */
EXIT


CHAIN
IF WEIGHT #-1
~%BGT_VAR%
InParty("C#Brage")
See("C#Brandock")
!StateCheck("C#Brage",CD_STATE_NOTVALID)
OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2)
!StateCheck("C#Brandock",CD_STATE_NOTVALID)
See(Player1)
!StateCheck(Player1,CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C#Brandock_Brage","GLOBAL",9)~ THEN C#BrageB brage_dialogue_7
@35 /* ~[Brage] I see your continuous search for more wisdom to be able to tame the beast that is arcane magic and it fills my heart with joy to watch it, Brandock.~ */
DO ~SetGlobal("C#Brandock_Brage","GLOBAL",10)~
= @36 /* ~I meant to phrase this for a long time now: Let me give you back what you said recently. I will watch over your physical integrity as best I can. I will take the blows that would strike you down and this sword arm will fight to keep you out of harm's way.~ */
== C#BrandB @37 /* ~[Brandock] I thank you for your kind words, Brage. I mean what you are saying now, not what you thought about me when first we met... I appreciate your words very much. And I will do all in my best so your sword arm won't be corrupted by evil magic again... Argh, I can't believe I keep on bringing that up. I *meant* well by saying that, Brage, I swear!...~ */
EXIT

/* Imoen will react (in case they know Minsc and Dynaheir) */
CHAIN
IF WEIGHT #-1
~%BGT_VAR%
InParty("C#Brage")
OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2)
InParty("%IMOEN_DV%")
See("C#Brage")
See("C#Brandock")
See(Player1)
!StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)
!StateCheck(Player1,CD_STATE_NOTVALID)
!StateCheck("C#Brage",CD_STATE_NOTVALID)
!StateCheck("C#Brandock",CD_STATE_NOTVALID)
GlobalGT("C#Brandock_Brage","GLOBAL",9)
Global("C#Brandock_Brage_Imoen","GLOBAL",0)
!Dead("Dynaheir")
OR(3)
InParty("Minsc")
InParty("Dynaheir")
GlobalGT("HelpMinsc","GLOBAL",1)~ THEN ~%IMOEN_BANTER%~ brandockbrageimoen
@38 /* ~[Imoen, met Minsc and Dynaheir] Brage, you and Brandock were so sweet recently, assuring each other to keep you safe. Does that mean you are warrior and witch now, like Minsc and Dynaheir?~ */
DO ~SetGlobal("C#Brandock_Brage_Imoen","GLOBAL",1)~
== C#BrageB @39 /* ~[Brage] Imoen - Brandock and I are not on a quest for some maturing ritual - but I am sure you knew that and only wanted to make fun of us.~ */
== C#BrandB @40 /* ~[Brandock] Yes, Imoen - not fair. At all. And you know very well why!...~ */
== ~%IMOEN_BANTER%~ @41 /* ~[Imoen] I'm sorry, Brandock. I know you aren't a woman. Calling you a witch is probably...~ */
== C#BrandB @42 /* ~[Brandock] What? No! I have absolutely no problem with that. But we will never be like Minsc and Dynaheir. Not because Dynaheir is probably 100 times wiser and more deliberate than me - but because Brage doesn't have a fluffy giant miniature space hamster! And probably never will have one!~ */
== ~%IMOEN_BANTER%~ @43 /* ~[Imoen] Oh the gods! Hahahaha! Yes, that's a *major* flaw I didn't even think of! This won't do at *all*!~ */
== ~%IMOEN_BANTER%~ IF ~OR(5)
PartyHasItem("C#Q10002")PartyHasItem("C#Q10003")PartyHasItem("C#Q10004")PartyHasItem("C#Q10005")PartyHasItem("C#Q10006")~ THEN @44 /* ~[Imoen, in case there are little hamsters from "Many little Paws" bgqe quest] At least keep one of these, Brage. Just one! You won't be a real warrior to protect your witch without a cuddly hamster in your pocket.~ */
== C#BrageB IF ~OR(5)
PartyHasItem("C#Q10002")PartyHasItem("C#Q10003")PartyHasItem("C#Q10004")PartyHasItem("C#Q10005")PartyHasItem("C#Q10006")~ THEN @45 /* ~[Brage, in case there are little hamsters from "Many little Paws" bgqe quest] (sigh)~ */
EXIT


CHAIN
IF WEIGHT #-1
~%BGT_VAR%
InParty("C#Brage")
See("C#Brage")
!StateCheck("C#Brage",CD_STATE_NOTVALID)
OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2)
!StateCheck("C#Brandock",CD_STATE_NOTVALID)
See(Player1)
!StateCheck(Player1,CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C#Brandock_Brage","GLOBAL",10)~ THEN C#BrandB brage_dialogue_8
@46 /* ~[Brandock] Brage, hearing you say what you said to me recently - you of all people, after what magic did to you - means a lot to me.~ */
DO ~SetGlobal("C#Brandock_Brage","GLOBAL",11)~
= @47 /* ~And not only because you promised to take the blows intended for me - although that of course is also a very nice to hear, ahem.~ */
== C#BrageB @48 /* ~[Brage] Having you in this group gives me a feeling of security I cherish and do not want to lose, Brandock. Never would I have thought so possible. I might have said I wished for a mage in the Nashkel Guard but truth be told - he or she would have had a difficult stand amongst the soldiers, and me as the commander would have been amongst the most sceptical.~ */
= @49 /* ~(sigh) This of course also originates from how the Coweld Wizards manage magic affairs in southern Amn, with own rules not being subject to the governmental authorities...~ */
== C#BrandB @50 /* ~Well, magic and mages have a difficult stand in Amn in general, and that's where we originate from, so it's only natural that you share the Amnian mistrust against mages, and the way the Coweld Wizards seem to be above the governmental law is not reassuring to say the least - er, what I meant to say is I have *absolutely* no idea what you are talking about, of course.~ */
== IF_FILE_EXISTS BT2VAL IF ~InParty("t2val") See("t2val") !StateCheck("t2val",CD_STATE_NOTVALID)~ THEN @51 /* ~[Valerie, if present] You don't have to put a gag onto yourself if criticizing Coweld Wizards, Brandock. There is indeed some things that could use improvement.~ */
== C#BrandB IF ~InParty("t2val") See("t2val") !StateCheck("t2val",CD_STATE_NOTVALID)~ THEN @52 /* ~[Brandock, if Valrie is present] The problem is that I don't think it's just *some* things, Valerie.~ */
== C#BrageB @53 /* ~[Brage] (smiles) We need mages like you in Amn, Brandock. The more the better.~ */
== C#BrandB @54 /* ~[Brandock] Thank you, Brage. Oh, I *so* hope our fellow mages there think so, too...~ */
EXIT

CHAIN
IF WEIGHT #-1
~%BGT_VAR%
InParty("C#Brage")
See("C#Brandock")
!StateCheck("C#Brage",CD_STATE_NOTVALID)
OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2)
!StateCheck("C#Brandock",CD_STATE_NOTVALID)
See(Player1)
!StateCheck(Player1,CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C#Brandock_Brage","GLOBAL",11)~ THEN C#BrageB brage_dialogue_8
@55 /* ~[Brage] Brandock, the Coweld Wizards will see that they need you. They would be blind if not. And fools - if you succeed in your quest to become a well-versed mage, they won't have a choice but to accept you amongst their powerful.~ */
DO ~SetGlobal("C#Brandock_Brage","GLOBAL",12)~
= @56 /* ~[Brage] Because that is the truth - I might be stronger than you today, and you need protection now. But this will change soon enough when you increase your arkane powers. Not too long from now we might meet foes my sword will not be able to harm unless you make it possible. My hope - my *believe* is that you will not forget where you came from, and what your goals are now.~ */
== C#BrandB @57 /* ~[Brandock] Thank you for your words of encouragement, Brage. I will definitely strive to remain the responsible person I am - not only because I promised and mean it now but because it is who I *am*, at least I hope so. I do not with to lose myself, no matter how desparate I am to be accepted amongst the Cowled Wizards one day!~ */
EXIT


