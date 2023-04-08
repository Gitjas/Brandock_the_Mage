/* Brandock - Finch Crossmod - not authorized */

/* library failed SUFINCHJ @800 */
I_C_T SUFINCHJ %finch_800% C#BR_FinchQuestFailed
== c#brandj IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2)
!StateCheck("C#Brandock",CD_STATE_NOTVALID) See("C#Brandock")~ THEN @0 /* [Brandock]Oh no, I am so sorry, Finch! What will you do now? */
END

/* Brandock's Remark about noone noticing that there was an assassin in the Beregost Inn */

I_C_T3 C#BrandJ %assassin_beregost_463% C#Br_C#BrandJ_Int463
== c#brandj IF ~See("sufinch") !Dead("sufinch")~ THEN @1 /* [Brandock]Except for you, of cource, my lady. Thank you for your help in this fight! */ 
== SUFINCHJ IF ~See("sufinch")
!StateCheck("sufinch",CD_STATE_NOTVALID)~ THEN @2 /* [Finch]Oh, of course I would help <CHARNAME>. What a nasty bounty hunter! Attacking inside of an inn - well, I guess attacking at the side of a deserted road wouldn't be better, really, wouldn't it. */
END

/* Finch: ~And here I was, all grouchy over a broken quill nub! If he can cheer up, so can I!~ */
I_C_T SUFINCHJ 70 C#Br_SUFINCHJ_IntQuillNub
== c#brandj IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2)
!StateCheck("C#Brandock",CD_STATE_NOTVALID) See("C#Brandock")~ THEN @3 /* [Brandock]Well, but let's state the fact that a broken quill nub *is* a very serious matter. */
END

I_C_T SUFINCHJ 71 C#Br_SUFINCHJ_IntQuillNub
== c#brandj IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2)
!StateCheck("C#Brandock",CD_STATE_NOTVALID) See("C#Brandock")~ THEN @3 /* [Brandock]Well, but let's state the fact that a broken quill nub *is* a very serious matter. */
END

/* Brandock - Finch 1 */
CHAIN
IF WEIGHT #-1 
~%BG1_BEFORE_TRANSITION%
CombatCounter(0) !See([ENEMY]) 
OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2)
!StateCheck("C#Brandock",CD_STATE_NOTVALID)
InParty("sufinch")
See("sufinch")
!StateCheck("sufinch",CD_STATE_NOTVALID)
Global("C#Brandock_FinchBG1","GLOBAL",0)~ THEN C#BrandB brandock_finch_1
@4 /* [Brandock]Eine eigenen Bibliothek - das ist ein toller Plan, Finch. Ich hoffe, Ihr seid erfolgreich. */
DO ~SetGlobal("C#Brandock_FinchBG1","GLOBAL",1)~
== BSUFINCH @5 /* [Finch]Oh, danke, Brandock. Ich habe mich sehr ausf�hrlich vorbereitet. Meine Abschriften von B�chern in Kerzenburg... */
== C#BrandB @6 /* [Brandock]Ihr wart in Kerzenburg?! */
== BSUFINCH @7 /* [Finch]Oh, ja, das interessiert Euch nat�rlich auch. Daher kannte ich auch <CHARNAME> schon, als dieser unangenehme Kopfgeldj�ger in Beregost ihm auflauerte! */
== BSUFINCH @8 /* [Finch]Jetzt muss sich nur noch alles so finden, wie ich mir das vorgestellt habe. */
== C#BrandB @9 /* [Brandock]Wir helfen Euch dabei! Also, zumindest hoffe ich, dass <CHARNAME> nicht seine Meinung �ndert, denn ich w�rde Euch gerne dabei helfen. */
EXIT


/* Brandocks zerst�rtes Buch 1 */
CHAIN
IF WEIGHT #-1 
~%BG1_BEFORE_TRANSITION%
CombatCounter(0) !See([ENEMY]) 
OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2)
!StateCheck("C#Brandock",CD_STATE_NOTVALID)
InParty("sufinch")
See("C#Brandock")
!StateCheck("sufinch",CD_STATE_NOTVALID)
OR(2) PartyHasItem("c#br0001") HasItem("c#br0001","C#Brandock")
Global("C#Brandock_FinchBG1_Book","GLOBAL",0)~ THEN BSUFINCH brandock_finch_book_1
@10 /* [Finch]Ooh. Brandock, das Buch ist ja wirklich... das sind ja wirklich nur noch zerrissene Seiten! F�chse sind nicht zu untersch�tzen. Ich dachte immer, Stiefel w�ren das einzige, das sie stehlen w�rden... Aber gut. Stiefel waren sonst auch das einzige, was wir drau�en stehen lie�en. B�cher eher nicht so... */
DO ~SetGlobal("C#Brandock_FinchBG1_Book","GLOBAL",1)~
== BSUFINCH @11 /* [Finch]Ich w�rde Euch so gerne helfen, das Buch neu zu binden! Also, die Seiten, die man noch lesen kann... Aber bei magischen B�chern muss man sehr aufpassen, das sollte besser jemand tun, der sich mit den Eigenheiten der eingebundenen Magie auskennt. */
== C#BrandJ @12 /* [Brandock]Danke f�r Eure Anteilnahme, Finch. Ich m�chte es auf alle F�lle erst einem f�higen Magier zeigen, bevor ich *irgendetwas* damit tue. */
== BSUFINCH @13 /* [Finch]Ja, das ist sinnvoll. Es war eben ein magisches Buch. */
EXIT


/* Brandock - Finch 2 */
CHAIN
IF ~%BG1_BEFORE_TRANSITION%
CombatCounter(0) !See([ENEMY]) 
OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2)
!StateCheck("C#Brandock",CD_STATE_NOTVALID)
InParty("sufinch")
See("sufinch")
!StateCheck("sufinch",CD_STATE_NOTVALID)
Global("C#Brandock_FinchBG1","GLOBAL",1)~ THEN C#BrandB brandock_finch_2
@14 /* [Brandock]Ihr wart in Kerzenburg, Finch? */
DO ~SetGlobal("C#Brandock_FinchBG1","GLOBAL",2)~
== BSUFINCH @15 /* [Finch]Oh ja! Diese tolle, gro�e Bibliothek mit all' den vielen B�chern... */
== C#BrandB @16 /* [Brandock]W�rdet Ihr mir mehr erz�hlen? Welche Bereiche der Bibliothek haben Euch besonders interessiert? Was habt Ihr gesehen? */
== BSUFINCH @17 /* [Finch]Also - kommt mal ein St�ck r�ber, das muss ja nicht alle interessieren. Als erstes war ich im dritten Stock... */
== ~%IMOEN_BANTER%~ IF ~InParty("%IMOEN_DV%")
See("%IMOEN_DV%")
!StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @18 /* [Imoen]OK, <CHARNAME>, die zwei k�nnen wir jetzt mindestens eine halbe Stunde alleine lassen. Au�er "B�cher", "Wissen" und irgendwelche Superlative wird in der Unterhaltung nichts bei rumkommen. */
EXIT


/* Brandock - Finch 3 A - Finch didn't find all books yet */
CHAIN
IF WEIGHT #-1 
~%BG1_BEFORE_TRANSITION%
CombatCounter(0) !See([ENEMY]) 
OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2)
!StateCheck("C#Brandock",CD_STATE_NOTVALID)
InParty("sufinch")
See("sufinch")
!StateCheck("sufinch",CD_STATE_NOTVALID)
Global("SUFinchLibraryItem","GLOBAL",0)
Global("C#Brandock_FinchBG1","GLOBAL",2)~ THEN C#BrandB brandock_finch_3_a
@19 /* [Brandock]Ich bin schon sehr gespannt, was Ihr f�r B�cher zusammensuchen werdet, Finch. */
END
IF ~~ THEN DO ~SetGlobal("C#Brandock_FinchBG1","GLOBAL",3) RealSetGlobalTimer("C#Br_ImoenFinchBG1_Timer","GLOBAL",1800)~ EXTERN BSUFINCH brandock_finch_3_rest

/* Brandock - Finch 3 B - Finch didn't find all books yet */
CHAIN
IF WEIGHT #-1 
~%BG1_BEFORE_TRANSITION%
CombatCounter(0) !See([ENEMY]) 
OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2)
!StateCheck("C#Brandock",CD_STATE_NOTVALID)
InParty("sufinch")
See("sufinch")
!StateCheck("sufinch",CD_STATE_NOTVALID)
Global("SUFinchLibraryItem","GLOBAL",1)
Global("C#Brandock_FinchBG1","GLOBAL",2)~ THEN C#BrandB brandock_finch_3_b
@20 /* [Brandock]Ich bin beeindruckt �ber die Zusammenstellung der B�cher, die Ihr zusammengesucht habt, Finch. */
END
IF ~~ THEN DO ~SetGlobal("C#Brandock_FinchBG1","GLOBAL",3)
RealSetGlobalTimer("C#Br_ImoenFinchBG1_Timer","GLOBAL",1800)~ EXTERN BSUFINCH brandock_finch_3_rest

CHAIN
IF ~~ THEN BSUFINCH brandock_finch_3_rest
@21 /* [Finch]Das ist sehr freundlich von Euch, Brandock! Es macht wirklich Spa�, mit jemandem dar�ber zu sprechen, der genauso begeistert ist, wie ich. */
== C#BrandJ @22 /* [Brandock]In der Tat! In Kerzenburg wart Ihr, aber kennt Ihr auch Alisarhold? */
== BSUFINCH @23 /* [Finch]Alisarhold? Ooh, die gro�e Bibliothek in den Snowflake Mountains! Wart Ihr etwa dort? */
== C#BrandJ @24 /* [Brandock]Ich kenne sie, ja. Von dem, was Ihr �ber Kerzenburg erz�hltet, ist es von der Ausstattung recht �hnlich. Soll ich Euch mehr erz�hlen? */
== BSUFINCH @25 /* [Finch]Ooh, ja! Man denkt ja immer Kerzenburg w�re schlechter zu betreten durch den Zoll von einem wertvollen Buch, aber um in Alisarhold bleiben zu d�rfen muss man gut Freund mit den Verh�llten Magiern sein... und der Weg dorthin ist auch recht beschwerlich. */
== C#BrandJ @26 /* [Brandock]Nun gut. Wollen wir etwas abseits laufen, damit wir die anderen nicht st�ren? Lasst mich mal �berlegen, womit ich beginne... */
EXIT

/* Imoen - Brandock - Finch THEEESOME!!1111! */
/* triggered via script to make it run with higher chance */
CHAIN
IF WEIGHT #-1 
~Global("C#Brandock_ImoenFinchBG1","GLOBAL",1)~ THEN ~%IMOEN_JOINED%~ Brandock_ImoenFinch
@27 /* [Imoen]Brandock und Finch - ich sehe Euch beide nur noch tuscheln. Ihr k�nnt mir nicht weis machen, dass Ihr nur �ber B�cher und Bibliotheken sprecht! */
DO ~SetGlobal("C#Brandock_ImoenFinchBG1","GLOBAL",2)~
== BSUFINCH @28 /* [Finch]Nein, das tun wir nat�rlich nicht. Wir sprechen auch �ber Buchbinden, Seitenst�rken, Federkielgeometrien... */
== ~%IMOEN_BANTER%~ IF ~See("sufinch")~ THEN @29 /* [Imoen]Das wird ja immer schlimmer! Oder besser... Ihr versteht Euch auf alle F�lle pr�chtig und habt die gleichen Interessen! Ihr k�nntet heiraten und zusammen die Bibliothek betreiben! Und Brandock w�re f�r die magischen B�cher zust�ndig! */
== C#BrandJ @30 /* [Brandock]Was? Niemals! */
== ~%IMOEN_BANTER%~ @31 /* [Imoen]Ooch, das ist jetzt aber nicht nett, Brandock! */
== C#BrandJ @32 /* [Brandock]Eine B�cherei in *Amn*! Ich werde niemals eine Bibliothek in Amn er�ffnen. Nashkell ist in Amn, Imoen. Wenn auch im Norden. */
== ~%IMOEN_BANTER%~ @33 /* [Imoen]Ach soo, ich dachte jetzt, Ihr h�ttet was gegen eine Bibliothek. Oder gegen magische B�cher. Oder gegen Finch!... */
== C#BrandJ @34 /* [Brandock]Nein, nichts dergleichen. Die Idee, eine eigene Bibliothek aufzumachen ist sogar sehr, sehr sch�n, und Finch genie�t meine h�chste Anerkennung. Aber das mit dem Heiraten �berh�hre ich einfach mal. - Nichts f�r ungut, Finch. Ich... bin einfach nicht daran interessiert. */
== BSUFINCH @35 /* [Finch]Oh, ich hatte da noch nicht mal dr�ber nachgedacht - B�cher sind das, was mich momentan besch�ftigt. Ich unterhalte mich �u�ert gerne mit Brandock, aber - verbreitet nicht so komische Ger�chte, in Ordnung, Imoen? */
== ~%IMOEN_BANTER%~ @36 /* [Imoen]Pfff - da l�uft wirklich nichts zwischen Euch, oder? Gut, dann unterhaltet Euch mal weiterhin Stunden am Tag �ber Federkiele und Papyrusdicken. Ihr seid vielleicht Eulenb�re, Ihr beide! */
EXIT

/* Brandocks zerst�rtes Buch 2 (might be skipped) */
CHAIN
IF ~%BG1_BEFORE_TRANSITION%
CombatCounter(0) !See([ENEMY]) 
OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2)
!StateCheck("C#Brandock",CD_STATE_NOTVALID)
InParty("sufinch")
See("C#Brandock")
!StateCheck("sufinch",CD_STATE_NOTVALID)
OR(2) PartyHasItem("c#br0001") HasItem("c#br0001","C#Brandock")
GlobalLT("C#Br_BookRestore","GLOBAL",8) // Buch noch nicht retauriert
Global("C#Brandock_FinchBG1_Book","GLOBAL",1)~ THEN BSUFINCH brandock_finch_book_2
@37 /* [Finch]Es tut mir sehr Leid, dass mit Eurem Buch, Brandock. Auch, weil Ihr nun erstmal nicht nach Kerzenburg k�nnt. Es ist da wirklich genau so, wie man es immer h�rt. Deckenhohe B�cherregale... */
DO ~SetGlobal("C#Brandock_FinchBG1_Book","GLOBAL",2)~
== BSUFINCH @38 /* [Finch]Oh - das sollte ich jetzt nicht so erz�hlen, oder? Es tut mir Leid, ich wollte keinesfalls Salz in die Wunden streuen. Ich bin nur von Bibliotheken so begeistert... und Kerzenburg ist einfach wirklich die gr��te, die man sich vorstellen kann. */
== C#BrandJ @39 /* [Brandock]Ist schon in Ordnung, Finch. Ich h�re auch gerne von Kerzenburg... Irgendwo, tief in mir, gibt es immer noch einen Bereich, der das ganze Fiasko mit meinem Buch ungl�ubig betrachtet und den Mut noch nicht verloren hat, auch wenn ich h�ufig mit meinen Gedanken woanders stecke. */
END
IF ~~ THEN EXTERN BSUFINCH buchbinder

/* Brandocks zerst�rtes Buch 3 */
CHAIN
IF ~%BG1_BEFORE_TRANSITION%
CombatCounter(0) !See([ENEMY]) 
OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2)
!StateCheck("C#Brandock",CD_STATE_NOTVALID)
InParty("sufinch")
See("C#Brandock")
!StateCheck("sufinch",CD_STATE_NOTVALID)
OR(2) PartyHasItem("c#br0001") HasItem("c#br0001","C#Brandock")
GlobalGT("C#Br_BookRestore","GLOBAL",7)
GlobalGT("C#Brandock_FinchBG1_Book","GLOBAL",0)
GlobalLT("C#Brandock_FinchBG1_Book","GLOBAL",3)~ THEN BSUFINCH brandock_finch_book_3
@40 /* [Finch]Euer Buch hat sich regeneriert! Das ist ja ein tolles Prinzip. Meint Ihr, man kann das nachstellen? */
== C#BrandJ @41 /* ~[Brandock]Ich werde es auf alle F�lle versuchen, Finch. Ich werde nicht aufgeben, bis ich das Prinzip der Magie dahinter verstanden habe.~ */
== BSUFINCH @65 /* ~[Finch]Es w�rde so viel Arbeit ersparen... Oder vielleicht auch nicht, der Pr�parationszauber muss ja erstmal gewirkt werden, und dann w�ssten Unkundige nicht mehr, wie sie damit umgehen sollen - nein, ich denke, Buchbinden wird auch in Zukunft ein gefragtes Handwerk bleiben.~ */
END
IF ~~ THEN EXTERN BSUFINCH buchbinder
IF ~Global("C#Brandock_FinchBG1_Book","GLOBAL",2)~ THEN DO ~SetGlobal("C#Brandock_FinchBG1_Book","GLOBAL",3)~ EXIT

CHAIN
IF ~~ THEN BSUFINCH buchbinder
@42 /* [Finch]Ich hatte in Kerzenburg nat�rlich auch die Buchbinder dort besucht! Sie haben eigens eine Presse f�r das Binden magischer Abschriften, die nur die magisch versierten M�nche bedienen k�nnen. Manche magischen B�cher k�nnen nicht so repariert werden, wie man es normalerweise macht. Die Magie k�nnte einem um die Ohren fliegen! */
== C#BrandJ IF ~GlobalLT("C#Br_BookRestore","GLOBAL",8)~ THEN @43 /* [Brandock]Ja, das kann ich mir vorstellen... (schluck) Ich tue wirklich gut daran, mir fachm�nnische Hilfe mit dem Buch zu holen. */
== C#BrandJ IF ~GlobalGT("C#Br_BookRestore","GLOBAL",7)~ THEN @44 /* [Brandock]Ja, das kann ich mir vorstellen. Und manche B�cher wollen gar nicht neu gebunden werden sondern reparieren sich selbst... */
== BSUFINCH IF ~GlobalGT("C#Br_BookRestore","GLOBAL",7)~ THEN @45 /* [Finch]Oh ja! Wenn ich es nicht selbst w�sste, w�rde ich es f�r den Fiebertraum eines �berarbeiteten Schreibers halten. */
EXIT

/* Brandock - Finch 4 - Imoen interjects if she is nearby. */
CHAIN
IF ~%BG1_BEFORE_TRANSITION%
CombatCounter(0) !See([ENEMY]) 
OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2)
!StateCheck("C#Brandock",CD_STATE_NOTVALID)
InParty("sufinch")
See("sufinch")
!StateCheck("sufinch",CD_STATE_NOTVALID)
Global("C#Brandock_FinchBG1","GLOBAL",3)~ THEN C#BrandB brandock_finch_4
@46 /* [Brandock]Vielleicht bringt es was, etwas Bildung nach Amn zu tragen, damit die Leute dort etwas aufgeschlossener werden, was ihren Horizont �berschreitet, Magie zum Beispiel... */
END
IF ~~ THEN EXTERN BSUFINCH brandock_finch_4_2
IF ~Global("C#Brandock_ImoenFinchBG1","GLOBAL",2)
InParty("%IMOEN_DV%")
!StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)
See("%IMOEN_DV%")~ THEN EXTERN ~%IMOEN_BANTER%~ brandock_finch_4_1


/* If Imoen wasn't nearby, this will go as a separate banter. */
CHAIN
IF WEIGHT #-1
~InParty("%IMOEN_DV%")
!StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)
See("%IMOEN_DV%")
%BG1_BEFORE_TRANSITION%
CombatCounter(0) !See([ENEMY]) 
OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2)
!StateCheck("C#Brandock",CD_STATE_NOTVALID)
InParty("sufinch")
See("sufinch")
!StateCheck("sufinch",CD_STATE_NOTVALID)
GlobalGT("C#Brandock_FinchBG1","GLOBAL",3)
Global("C#Brandock_ImoenFinchBG1","GLOBAL",2)~ THEN ~%IMOEN_BANTER%~ brandock_finch_4_1
@47 /* [Imoen]Horizonterweiterung engstirniger Leute - das klingt aber doch so, als w�re ein Engagement von Euch in Finks Bibliothek mit magischen B�chern in Amn eine sinnvolle Sache, Brandock. */
DO ~SetGlobal("C#Brandock_ImoenFinchBG1","GLOBAL",3)~ 
== C#BrandJ @48 /* [Brandock]Die Idee hat Charme, Imoen - aber ich wei�, wann ich Gefahr laufe, gegen Windm�hlen zu k�mpfen. */
== ~%IMOEN_BANTER%~ @49 /* [Imoen]Aber die Bev�lkerung in Amn ist doch sicher nicht so schlimm? Es gibt doch sicher Leute, die sich daf�r interessieren w�rden. Kleine Schritte und so? */
== C#BrandJ @50 /* [Brandock]Ja, sicher - aber wenn Magie ins Spiel kommt, dann sitzen einem die Verh�llten Magier im Nacken. Und, die, glaubt mir, werden es erfolgreich verhindern, dass eine Bibliothek mit magischen B�chern f�r den normalen Publikumsverkehr ge�ffnet w�re. */
== C#BrandJ IF ~GlobalGT("C#Brandock_FinchBG1","GLOBAL",3)~ THEN @51 /* [Brandock]Es ist auch nicht wirklich mein Platz. Ich w�rde einfach gerne woanders meine Energie aufbrauchen. */
END
IF ~~ THEN EXTERN BSUFINCH brandock_finch_4_2
IF ~GlobalGT("C#Brandock_FinchBG1","GLOBAL",3)~ THEN EXIT

CHAIN
IF ~~ THEN BSUFINCH brandock_finch_4_2
@52 /* [Finch]Oh, die Leute sind zum Teil sehr nett und aufgeschlossen,  - so wie �berall. Aber ich hatte auch nicht vor, Alisarhold, der gro�en Bibliothek, Konkurrenz zu machen, daher werde ich wohl nicht die Ehre haben, dass in meiner Bibliothek Verh�llte Magier ein- und ausgehen. */
DO ~SetGlobal("C#Brandock_FinchBG1","GLOBAL",4)~
== C#BrandJ @53 /* [Brandock]Und das ist besser so, glaubt mir... Ich w�nsche Euch jedenfalls viel Erfolg, Finch. Ich werde Euer Ansinnen nur zu gerne unterst�tzen. */
== C#BrandJ IF ~GlobalGT("C#Brandock_ImoenFinchBG1","GLOBAL",0)
InParty("%IMOEN_DV%")~ THEN @54 /* [Brandock]Ich meine die Vorbereitungen! Nicht das Betreiben der Bibliothek. Vergesst es, Imoen. */
EXIT

/* Brandock - Finch 5 */
CHAIN
IF ~%BG1_BEFORE_TRANSITION%
CombatCounter(0) !See([ENEMY]) 
OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2)
!StateCheck("C#Brandock",CD_STATE_NOTVALID)
InParty("sufinch")
See("sufinch")
!StateCheck("sufinch",CD_STATE_NOTVALID)
Global("C#Brandock_FinchBG1","GLOBAL",4)~ THEN C#BrandB brandock_finch_5
@55 /* [Brandock]Finch, did you find a replacement for your broken quill nub? I could lend you mine, if you want. */
DO ~SetGlobal("C#Brandock_FinchBG1","GLOBAL",5)~
== BSUFINCH @56 /* [Finch]Oh, thank you so much, Brandock, but I would never dare ridding you of yours. I have a new one, see? */
== C#BrandJ @57 /* [Brandock]Oh - that's... that's a *dip* quill with colored feather! This is exquisite - it really feels absolutely comfortable in one's hand. */
== BSUFINCH @58 /* [Finch]Handmade, ideal for calligraphy! I thought, why go for the simple stuff if you can have the good one! We need to chose our equipment carefully to be prepared at all times, isn't it true? */
== C#BrandJ @59 /* [Brandock]It definitely is! And what would be more important than a working quill? */
== BSUFINCH @60 /* [Finch]Exactly! */
EXIT


/* "SUFBOOK2" (Metallurgy Today) OR "SUFBOOK5" ("library books") */
CHAIN
IF ~Global("C#Br_LorePathSUFBOOK2BG1","GLOBAL",1)~ THEN C#BrandJ fichsbook_metallurgy
@61 /* [Brandock]"Metallurgy Today" - with ancient but yet timeless knowledge about dwarfen Schmiedekunst! In common so I can read it easily! - May I? */
== BSUFINCH @62 /* [Finch]Of course! */
== C#BrandJ @63 /* [Brandock]Thank you! Not that I'd ever dig for ore or forge a weapon, but it is still very interesting to read such a tome of specialized wisdom. Getting an impression of how dwarves collected this knowledge is a very enlightening read. */
DO ~SetGlobal("C#Br_LorePathSUFBOOK2BG1","GLOBAL",2)
IncrementGlobal("C#Br_LorePathIncrease","GLOBAL",1)
ReallyForceSpellRES("c#brlob1",Myself)~
== C#BrandJ IF ~GlobalGT("C#Brandock_BreagarBook","GLOBAL",0)~ THEN @64 /* [Brandock]Especially after Breagar didn't allow me to look at his tome... */
EXIT