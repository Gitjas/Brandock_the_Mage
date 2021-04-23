
/* Cloakwood mines */

/* @270 = ~Whatever. The iron deposits are far from being depleted and if our enemies have found a way to extract the Orothiar deposits, they sit on virtually unlimited iron ore.~ */
I_C_T ~ACBREJ~ %ACBREJ_270% C#Brandock_CloakwoodMines
== C#BrandJ IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2)
See("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN @18 /* ~Secret mines! Secret mines, now *that* makes sense. Taint the official ore, use and sell the good ore yourself, from a secret mine. Oh, and blame everything onto the neighboring lands and stir up a war. Who would play little, if he can play big?~ */
END




/* BG1 Breagars Buch der Schmiederkunst */
CHAIN
IF WEIGHT #-1 
~%BG1_BEFORE_TRANSITION%
CombatCounter(0) !See([ENEMY]) 
OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2)
See("ACBRE") See(Player1)
!StateCheck("ACBRE",CD_STATE_NOTVALID)
!StateCheck(Myself,CD_STATE_NOTVALID)
InParty("ACBRE")
HasItem("acbook","ACBRE")
Global("C#Brandock_BreagarBook","GLOBAL",0)
~ THEN C#BrandB brandockbreagar_book1
@0 /* ~A book on blacksmithing? How interesting! I don't think I know much about it, but I would very much like to...~ */ DO ~SetGlobal("C#Brandock_BreagarBook","GLOBAL",1) SetGlobal("C#Brandock_BreagarBG1","GLOBAL",1)~
== ~ACBREB~ @1 /* ~Hands off.~ */
== C#BrandB @2 /* ~I... I'm sorry, I didn't mean to sound forward. All I would like to do is have a look at it, if...~ */
== ~ACBREB~ @1 /* ~Hands off.~ */
== C#BrandB @3 /* ~But I didn't even reach for it! All I did was ask!~ */
== ~ACBREB~ @4 /* ~Do you know anything about Dwarven blacksmithing?~ */
== C#BrandB @5 /* ~No, I don't. But I...~ */
== ~ACBREB~ @6 /* ~See? - Hands off.~ */
== C#BrandB @7 /* ~It's... it's alright, I got it.~ */
== ~ACBREB~ @20 /* ~You wouldn't understand any of it anyway! Not only it is about Dwarven blacksmithing, it is also written in Dwarven runes.~ */
== C#BrandB @16 /* ~Dwarven runes! Oh, I really have to learn how to read those!~ */
== ~ACBREB~ @17 /* ~Buzzurk. I should have kept my mouth shut!~ */
EXIT



/* second book of smithing talk - book is still with Breagar. Might be skipped if accident happens too soon. Then different talk below fires. */
CHAIN
IF 
~%BG1_BEFORE_TRANSITION%
CombatCounter(0) !See([ENEMY]) 
OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2)
See("ACBRE") See(Player1)
!StateCheck("ACBRE",CD_STATE_NOTVALID)
!StateCheck(Myself,CD_STATE_NOTVALID)
InParty("ACBRE")
HasItem("acbook","ACBRE")
Global("C#Brandock_BreagarBook","GLOBAL",1)
~ THEN C#BrandB brandockbreagar_book2
@8 /* ~Breagar, why are you worried about me taking a look at your book of blacksmithing? I am very interested, indeed.~ */ DO ~SetGlobal("C#Brandock_BreagarBook","GLOBAL",2)~
== ~ACBREB~ IF ~GlobalGT("C#Brandock_Possessions","GLOBAL",1)~ THEN @23 /* ~You are asking me this after what happened to your book?~ */
== ~C#BrandB~ IF ~GlobalGT("C#Brandock_Possessions","GLOBAL",1)~ THEN @24 /* ~Ouch. I won't fall asleep with your book, Breagar. Plus, I learned my lesson...~ */
== ~ACBREB~ IF ~GlobalGT("C#Brandock_Possessions","GLOBAL",1)~ THEN @25 /* ~No, you wouldn't, because I'd see to it. Still, there is other dangers!~ */
== ~ACBREB~ @9 /* ~Dirty fingerprints, scribbles, torn out pages and other unidentifiable stains!~ */
== C#BrandB @10 /* ~But Breagar! I would never treat a book like that. Never!~ */
== C#BrandB IF ~GlobalGT("C#Brandock_Possessions","GLOBAL",1)~ THEN @19 /* ~(mumbles) I mean, at least as long as it *is* in my possession...~ */
== ~ACBREB~ @11 /* ~That's what my cousin said, and then his nose started itching and he had to sneeze - the spot is still visible!~ */
== C#BrandB @12 /* ~But I...~ */
== ~ACBREB~ @13 /* ~Can you guarantee me that your nose will not start itching?~ */
== C#BrandB @14 /* ~No, of course not! But I would never...~ */
== ~ACBREB~ @15 /* ~There you have it - hands off! I didn't went through all the hassle to carry it through Candlekeep to get it besmirched now.~ */
== C#BrandB @21 /* ~Candlekeep? Wait, *you* were in Candlekeep?!~ */
== ~ACBREB~ @22 /* ~Buzzurk! Was hab ich jetzt wieder losgetreten!~ */
EXIT


/* after Breagar's Accident */
CHAIN
IF WEIGHT #-1
~%BG1_BEFORE_TRANSITION%
CombatCounter(0) !See([ENEMY]) 
OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2)
See("ACBRE") See(Player1)
!StateCheck("ACBRE",CD_STATE_NOTVALID)
!StateCheck(Myself,CD_STATE_NOTVALID)
InParty("ACBRE")
HasItem("ACHAND1","ACBRE") //nach Unfall
GlobalLT("ACSTORY","GLOBAL",4) //Göttin noch nicht erschienen
Global("C#Brandock_BreagarAccident","GLOBAL",0)
~ THEN C#BrandB brandockbreagar_accident
@26 /* ~Breagar, was mit Euch geschehen ist tut mir unglaublich Leid. Ich...~ */ DO ~SetGlobal("C#Brandock_BreagarAccident","GLOBAL",1) SetGlobal("C#Brandock_BreagarBG1","GLOBAL",1)~
== ~ACBREB~ @27 /* ~Ich brauche Euer Mitleid nicht. Magier... Pah!~ */
== C#BrandB @28 /* ~Aber, ich... ich wollte Euch nur mein Mitgefühl aussprechen. Ich weiß, dass es nicht ungeschehen machen kann, was passiert ist. Aber es ist mir wichtig, dass Ihr wisst, das Ihr nicht alleine seid.~ */
== ~ACBREB~ @29 /* ~Offensichtlich bin ich das nicht, buzzurk. Sonst hätte ich jetzt meine Ruhe!~ */
EXIT

/*  */
CHAIN
IF WEIGHT #-1
~%BG1_BEFORE_TRANSITION%
CombatCounter(0) !See([ENEMY]) 
OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2)
See("ACBRE") See(Player1)
!StateCheck("ACBRE",CD_STATE_NOTVALID)
!StateCheck(Myself,CD_STATE_NOTVALID)
InParty("ACBRE")
HasItem("ACHAND1","ACBRE") //nach Unfall
GlobalLT("ACSTORY","GLOBAL",4) //Göttin noch nicht erschienen
GlobalGT("C#Brandock_Possessions","GLOBAL",1) //Brandock hat sein zerstörtes Buch wiedergfunden
Global("C#Brandock_BreagarAccident","GLOBAL",1)
~ THEN C#BrandB brandockbreagar_accident_2
@30 /* ~[Brandock]Breagar, Ihr müsst unglaublich verzweifelt sein... Wollt Ihr denn gar nicht darüber reden?~ */ DO ~SetGlobal("C#Brandock_BreagarAccident","GLOBAL",2)~
== ~ACBREB~ @31 /* ~[Breagar]Nein.~ */
== C#BrandB @32 /* ~[Brandock]Zumindest nicht mit mir, nehme ich an... Das kann ich problemlos akzeptieren, solange ich weiß, dass Ihr jemand anderen habt, um Eure Sorgen zu teilen. Ich würde ohne <CHARNAME>'s Unterstützung mein Missgeschick gar nicht ertragen...~ */
== ~ACBREB~ @33 /* ~[Breagar]Vergleicht Ihr jetzt ernsthaft-~ */
== C#BrandB @34 /* ~[Brandock]Nein! Neinnein, ich vergleiche nicht meinen Buchverlust mit Eurem - bei dem Euch auch noch Euer Arm zerfetzt wurde. Obwohl auch ich meinen Ruf in meiner Profession und ein unbeschreiblich kostbares Buch zerstört habe...~ */
== ~ACBREB~ @35 /* ~[Breagar]Ihr vergleicht das ja doch miteinander!~ */
== C#BrandB @36 /* ~[Brandock]Ich... ja, das habe ich. Es tut mir Leid. Ich weiß, dass Euer Schicksal härter ist, viel härter.~ */
== ~ACBREB~ @37 /* ~[Breagar]Härter, pah! Bei Euch war es Dummheit. Bei mir was es schändliches Versagen! DAS ist der Unterschied, Brandock! Da gibt es nichts, *nichts*, um das schönzureden!~ */
EXIT


CHAIN
IF 
~%BG1_BEFORE_TRANSITION%
CombatCounter(0) !See([ENEMY]) 
OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2)
See("ACBRE") See(Player1)
!StateCheck("ACBRE",CD_STATE_NOTVALID)
!StateCheck(Myself,CD_STATE_NOTVALID)
InParty("ACBRE")
HasItem("ACHAND1","ACBRE")
GlobalLT("ACSTORY","GLOBAL",4)
Global("C#Brandock_BreagarAccident","GLOBAL",2)
~ THEN C#BrandB brandockbreagar_accident_3
@38 /* Breagar, können wir denn gar nichts für Euch tun?~ */ DO ~SetGlobal("C#Brandock_BreagarAccident","GLOBAL",3)~
== ~ACBREB~ @39 /* ~[Breagar] /* ~Ja, da könnt Ihr! Schweigen und einen Zwerg seinen Gedanken überlassen.~ */
== C#BrandB @40 /* ~Aber Ihr solltet nicht allein vor Euch hin brüten. Gemeinsam können wir eine Lös...~ */
== ~ACBREB~ @41 /* ~Magier, mein Arm ist dahin. All meine Pläne und Hoffnungen... Ich brauche Euer Mitleid nicht und keine guten Ratschläge!~ */
== C#BrandB @42 /* Aber... */
== ~ACBREB~ @43 /* ~KEIN ABER, Mensch! Alles ist dahin, und NICHTS und NIEMAND kann daran etwas ändern! Lasst mich also in RUHE!~ */
== C#BrandB @44 /* ~Ich... es tut mir Leid, dass ich Euch nur reize, Breagar, dabei möchte ich doch nur... ein guter Freund sein. Ihr müsst nicht nochmal schreien! Ich habe verstanden, dass ein guter Freund Euch einfach in Ruhe lassen muss.~ */
EXIT

/* nach dem ersten Besuch der Göttin- Breagar weiß, dass er wohl hintergangen wurde */

CHAIN
IF 
~%BG1_BEFORE_TRANSITION%
CombatCounter(0) !See([ENEMY]) 
OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2)
See("ACBRE") See(Player1)
!StateCheck("ACBRE",CD_STATE_NOTVALID)
!StateCheck(Myself,CD_STATE_NOTVALID)
InParty("ACBRE")
HasItem("ACHAND1","ACBRE") //Breagar hat noch nicht seinen Silberarm
Global("ACSTORY","GLOBAL",4) //Göttin war da
GlobalGT("C#Br_BookRestore","GLOBAL",5) //Brandock hat sein Buch restauriert, Part 1
Global("C#Brandock_BreagarSilber","GLOBAL",0)
~ THEN C#BrandB brandockbreagar_silber_00
@45 /* ~Ich glaube, Ihr habt Euren ganz eigenen Regenerationszauber für Euer Missgeschick gefunden, Breagar - und was für einer das ist!~ */
END
IF ~~ THEN + brandockbreagar_silber

CHAIN
IF 
~%BG1_BEFORE_TRANSITION%
CombatCounter(0) !See([ENEMY]) 
OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2)
See("ACBRE") See(Player1)
!StateCheck("ACBRE",CD_STATE_NOTVALID)
!StateCheck(Myself,CD_STATE_NOTVALID)
InParty("ACBRE")
HasItem("ACHAND1","ACBRE") //Breagar hat noch nicht seinen Silberarm
Global("ACSTORY","GLOBAL",4) //Göttin war da
Global("C#Brandock_BreagarSilber","GLOBAL",0)
~ THEN C#BrandB brandockbreagar_silber
@46 /* ~Ein Besuch einer göttlichen Gesandten. Eine Andeutung eines Verrats. Breagar, ich glaube, Ihr müsst Eure Situation noch einmal neu bewerten.~ */ DO ~SetGlobal("C#Brandock_BreagarSilber","GLOBAL",1) SetGlobal("C#Brandock_BreagarBG1","GLOBAL",1)~ */
== ~ACBREB~ @47 /* ~Das muss ich in der Tat, Brandock. Ich würde sagen "zwickt mich mal" wenn ich noch einen Schildarm hätte, den ich Euch dafür hinhalten könnte.~ */
== C#BrandB @48 /* ~Seid Ihr nervös, was das für Euch bedeutet? Was die Göttin noch mit Euch vorhat und was es mit dem angedeuteten Verrat zu tun hat? Ob es bedeutet, dass Euch Euer Missgeschick vielleicht doch noch verziehen wird und alles gut werden könnte?~ */
== ~ACBREB~ @49 /* ~Was für bescheuerte Fragen Ihr manchmal stellt! Was glaubt Ihr denn? Ja, natürlich bin ich nervös! Ich habe nicht alle Tage eine Gesandte der Silbernen Göttin, die mir Aufträge erteilt.~ */
== C#BrandB @50 /* ~Entschuldigt. Mein Mundwerk plappert immer, wenn ich aufgeregt bin... Da wartet noch Großes auf Euch, Breagar. Und wir sind mit dabei...~ */
== ~ACBREB~ @51 /* ~Ja, das seid Ihr. Also vermasselt es nicht, ja?!~ */
== C#BrandB @52 /* ~Ja, jetzt werdet Ihr langsam wieder der alte. Nun gut, dann wollen wir mal!~ */
EXIT

/* second book of smithing talk - book is no longer with Breagar.
Will fire even if first one didn't. 
Is first banter if none other fired. */
CHAIN
IF 
~%BG1_BEFORE_TRANSITION%
CombatCounter(0) !See([ENEMY]) 
OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2)
See("ACBRE") See(Player1)
!StateCheck("ACBRE",CD_STATE_NOTVALID)
!StateCheck(Myself,CD_STATE_NOTVALID)
InParty("ACBRE")
HasItem("ACHAND1","ACBRE")
GlobalLT("C#Brandock_BreagarBG1","GLOBAL",2)
~ THEN C#BrandB brandockbreagar_bg1
@53 /* ~Es ist schade, dass ich Euer Buch der Zwergenschmiedekunst nicht studieren konnte, Breagar. Nicht nur, weil es nun gar nicht mehr geht. Sondern weil ich mir vielleicht etwas daraus hätte merken können...~ */ 
DO ~SetGlobal("C#Brandock_BreagarBG1","GLOBAL",2)~
== ~ACBREB~ @54 /* ~Wollt Ihr mit weismachen, Ihr hättet das ganze Buch voller Zwergenrunen auswendig gelernt? Seid nicht albern.~ */
== C#BrandB @55 /* ~Nein... Ihr habt Recht, das hätte ich nicht.~ */
== ~ACBREB~ @56 /* ~Selbst die Weisen in Kerzenburg mussten es einige Zeit studieren, bis sie mir meine Fragen beantworten konnten.~ */
== C#BrandB IF ~GlobalLT("C#Brandock_BreagarBook","GLOBAL",2)~ THEN @21 /* ~Candlekeep? Wait, *you* were in Candlekeep?!~ */
== ~ACBREB~ IF ~GlobalLT("C#Brandock_BreagarBook","GLOBAL",2)~ THEN @22 /* ~Buzzurk! Was hab ich jetzt wieder losgetreten!~ */
EXIT

/* Breagar was in Candlekeep! */
CHAIN
IF 
~%BG1_BEFORE_TRANSITION%
CombatCounter(0) !See([ENEMY]) 
OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2)
See("ACBRE") See(Player1)
!StateCheck("ACBRE",CD_STATE_NOTVALID)
!StateCheck(Myself,CD_STATE_NOTVALID)
InParty("ACBRE")
HasItem("ACHAND1","ACBRE")
Global("C#Brandock_BreagarBG1","GLOBAL",2)
~ THEN C#BrandB brandockbreagar_bg1_2
@57 /* ~[Brandock]Breagar, Ihr wart in Kerzenburg? Innen drin, bei den Mönchen und Gelehrten?~ */ 
DO ~SetGlobal("C#Brandock_BreagarBG1","GLOBAL",3)~
== ~ACBREB~ @58 /* ~[Breagar]Nein, nur draußen im Garten! Was glaubt Ihr? Was soll der erstaunte Tonfall?~ */
== C#BrandB @59 /* ~[Brandock]Ich... ich hatte nur nicht erwartet, dass Ihr Euch für das Wissen dort interessieren würdet.~ */
== ~ACBREB~ @60 /* ~[Breagar]Tu ich auch nicht. Ich hatte Fragen zum Buch der Zwergenschmiedekunst. Ich musste das Buch bis in die letzte Zeile richtig verstehen! Das Wissen dazu gibt es nur in Kerzenburg.~ */
EXIT

CHAIN
IF 
~%BG1_BEFORE_TRANSITION%
CombatCounter(0) !See([ENEMY]) 
OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2)
See("ACBRE") See(Player1)
!StateCheck("ACBRE",CD_STATE_NOTVALID)
!StateCheck(Myself,CD_STATE_NOTVALID)
InParty("ACBRE")
HasItem("ACHAND1","ACBRE")
Global("C#Brandock_BreagarBG1","GLOBAL",3)
~ THEN C#BrandB brandockbreagar_bg1_2
@61 /* ~[Brandock]Und... wie seid Ihr denn nach Kerzenburg reingekommen, Breagar?~ */ 
DO ~SetGlobal("C#Brandock_BreagarBG1","GLOBAL",4)~
== ~ACBREB~ @62 /* ~[Breagar]Wie ich reingekommen bin? Mit einem Buch, Brandock, wie denn sonst? Glaubt Ihr als Zwerg grabe ich mir einen Tunnel unter der Mauer durch?~ */
== C#BrandB @63 /* ~[Brandock]Nein - ja - ich meine ich weiß, dass Ihr ein Buch gehabt haben müsst. Ich wundere mich nur. Es muss ein sehr kostbares Buch gewesen sein!~ */
== ~ACBREB~ @64 /* ~[Breagar]Natürlich war es das! Was glotzt Ihr mit offenem Mund? Glaubt Ihr, ich würde nicht die Möglichkeit finden da rein zu kommen, wenn es mir entsprechend wichtig ist? Glaubt Ihr, Zwerge haben keine wertvollen Bücher?!~ */
== C#BrandB @65 /* ~[Brandock]Doch, natürlich, Breagar. Nur... wie seid Ihr denn dazu gekommen?~ */
== ~ACBREB~ @66 /* ~[Breagar]Was glaubt Ihr denn, wie ich dazu gekommen bin! Das war das eine Buch, dass ich dafür haben konnte, und es war teuer genug.~ */
== ~ACBREB~ @67 /* ~[Breagar]Nun, es hat vielleicht geholfen, dass es ein zwergisches Buch war. Das war für die Bibliothek wertvoller als für uns daheim, das stimmt schon.~ */
EXIT

CHAIN
IF 
~%BG1_BEFORE_TRANSITION%
CombatCounter(0) !See([ENEMY]) 
OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2)
See("ACBRE") See(Player1)
!StateCheck("ACBRE",CD_STATE_NOTVALID)
!StateCheck(Myself,CD_STATE_NOTVALID)
InParty("ACBRE")
HasItem("ACHAND1","ACBRE")
Global("C#Brandock_BreagarBG1","GLOBAL",4)
~ THEN C#BrandB brandockbreagar_bg1_2
@68 /* ~[Brandock]Breagar - Ihr habt keine Möglichkeit, nochmal so ein wertvolles Buch zu beschaffen, oder? Also, das nötige Gold vorausgesetzt... Ich... Ich frage nicht nur, weil ich über Kerzenburg nachdenke.~ */
DO ~SetGlobal("C#Brandock_BreagarBG1","GLOBAL",5)~
== C#BrandB IF ~GlobalGT("C#Brandock_Expelled","GLOBAL",0)~ THEN @69 /* ~Vor allem nicht nach dem, was geschehen ist...~ */
== C#BrandB @70 /* ~[Brandock] sondern weil mich Bücher überhaupt sehr interessieren - und ich große Achtung vor Leuten habe, die Zugang zu magischen Büchern haben.~ */
== ~ACBREB~ @71 /* ~[Breagar]Glaubt Ihr, ich hab einen Baum, an dem die wachsen? Wenn ich wüsste, wo man noch eines herbekommt, hätte ich es schon längst <CHARNAME> angeboten!~ */
== C#BrandB @72 /* ~[Brandock]Nein, ich dachte, nur, weil es ein zwergisches Buch war, dass bei Euch daheim nicht so wertvoll war wie für Kerzenburg...~ */
== ~ACBREB~ @73 /* ~[Breagar]Das heißt trotzdem nicht, dass jedes Zwergenbuch für Euch 10,000 Gold Wert wär. Und es heißt auch nicht, dass mich dieses Buch nicht trotzdem viel Gold gekostet hat. Es war auch für uns kostbar, und ich hab es bewacht und behütet, bis ich in Kerzenburg war, das könnt Ihr mir glauben!~ */
== C#BrandB @74 /* ~[Brandock]Das glaube ich Euch sofort...~ */
== ~ACBREB~ @75 /* ~[Breagar]Hey, macht nicht so ein langes Gesicht, Magier. Zu Beginn habe ich über Euer Missgeschick die Nase gerümpft. Aber nach dem, was mir passiert ist, habe ich verstanden, dass man manchmal einfach trotz aller Verbissenheit und Hingabe ein Spielball in den Händen der Götter bleibt.~ */
= @76 /* ~Auch bei Euch wird alles gut, da bin ich mir sicher. Heißt nicht, dass Ihr zwischendrin nicht ein bisschen schwitzen müsst, um da hinzukommen!~ */
EXIT
