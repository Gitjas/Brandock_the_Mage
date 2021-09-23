/* Brandock the Half-Ogre: BG1 part */


/* first encounter: Melicamp and half-ogre */

/* Brandock comments on Chicken Melicamp */
I_C_T3 ~MELICA~ 10 C#Brandock_MELICA_10
== ~c#brandj~ IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) 
InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN @1250
== c#brandj IF ~!GlobalGT("C#Brandock_Possessions","GLOBAL",1)
!Dead("Thalantyr")
!Allegiance("Thalantyr",ENEMY)
OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2)
InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN @1251
END

BEGIN C#BRMELI

/* With Melicamp in High Hedge area */
CHAIN
IF ~Global("C#Brandock_Shapeshift","GLOBAL",1)~ THEN c#brandj melicamp_dialogue
@1252
== C#BRMELI @1253
== c#brandj @1254
== C#BRMELI @1255
== c#brandj @1256
== C#BRMELI @1257
== c#brandj @1258
END
++ @1259 + melicamp_dialogue_04
+ ~!PartyHasItem("c#br0001")
!HasItem("c#br0001","C#Brandock")
!PartyHasItem("c#br0007")
!HasItem("c#br0007","C#Brandock")~ + @1260 + melicamp_dialogue_02 
+ ~OR(4)
PartyHasItem("c#br0001")
HasItem("c#br0001","C#Brandock")
PartyHasItem("c#br0007")
HasItem("c#br0007","C#Brandock")~ + @1260 + melicamp_dialogue_02_withbook
++ @1261 + melicamp_dialogue_01
+ ~!PartyHasItem("c#br0001")
!HasItem("c#br0001","C#Brandock")
!PartyHasItem("c#br0007")
!HasItem("c#br0007","C#Brandock")~ + @1262 + melicamp_dialogue_02 
+ ~OR(4)
PartyHasItem("c#br0001")
HasItem("c#br0001","C#Brandock")
PartyHasItem("c#br0007")
HasItem("c#br0007","C#Brandock")~ + @1262 + melicamp_dialogue_02_withbook
++ @1263 + melicamp_dialogue_03

APPEND c#brandj

IF ~~ THEN melicamp_dialogue_01
SAY @1264
++ @1259 + melicamp_dialogue_04
+ ~!PartyHasItem("c#br0001")
!HasItem("c#br0001","C#Brandock")
!PartyHasItem("c#br0007")
!HasItem("c#br0007","C#Brandock")~ + @1260 + melicamp_dialogue_02 
+ ~OR(4)
PartyHasItem("c#br0001")
HasItem("c#br0001","C#Brandock")
PartyHasItem("c#br0007")
HasItem("c#br0007","C#Brandock")~ + @1260 + melicamp_dialogue_02_withbook
+ ~!PartyHasItem("c#br0001")
!HasItem("c#br0001","C#Brandock")
!PartyHasItem("c#br0007")
!HasItem("c#br0007","C#Brandock")~ + @1262 + melicamp_dialogue_02 
+ ~OR(4)
PartyHasItem("c#br0001")
HasItem("c#br0001","C#Brandock")
PartyHasItem("c#br0007")
HasItem("c#br0007","C#Brandock")~ + @1262 + melicamp_dialogue_02_withbook
++ @1263 + melicamp_dialogue_03
END

IF ~~ THEN melicamp_dialogue_02
SAY @1265
++ @1266 + melicamp_dialogue_04
++ @1263 + melicamp_dialogue_03
END

IF ~~ THEN melicamp_dialogue_02_withbook
SAY @1267
++ @1266 + melicamp_dialogue_04
++ @1263 + melicamp_dialogue_03
END

IF ~~ THEN melicamp_dialogue_03
SAY @1268
IF ~~ THEN DO ~ActionOverride("C#BRMELI",DestroySelf()) SetGlobal("C#Brandock_Shapeshift","GLOBAL",2)~ EXIT
END

IF ~~ THEN melicamp_dialogue_04
SAY @1269
IF ~HasItem("MISC49","C#Brandock")~ THEN DO ~
GiveItem("MISC49",Player1)
SetGlobal("C#Brandock_Shapeshift","GLOBAL",3)
	ClearAllActions() 
	SetInterrupt(FALSE)
	StartCutSceneMode()	
	StartCutScene("c#brcut1")~ EXIT
IF ~!HasItem("MISC49","C#Brandock")~ THEN DO ~
SetGlobal("C#Brandock_Shapeshift","GLOBAL",3)
	ClearAllActions() 
	SetInterrupt(FALSE)
	StartCutSceneMode()	
	StartCutScene("c#brcut1")~ EXIT
END

IF ~Global("C#Brandock_Shapeshift","GLOBAL",3)~ THEN goes_wrong
SAY @1270
IF ~~ THEN DO ~SetGlobal("C#Brandock_Shapeshift","GLOBAL",4)
	ClearAllActions() 
	SetInterrupt(FALSE)
	StartCutSceneMode()
	StartCutScene("c#brcut2")~ EXIT
END

END //APPEND


/* after first cutscene: Brandock and half-ogre */
CHAIN
IF ~Global("C#Brandock_Shapeshift","GLOBAL",4)~ THEN c#brandj went_wrong
@1271
== c#brhao2 @1272
= @1273
== C#BRMELI @1274 
== c#brhao2 @1275
= @1276
== C#BRMELI @1277
END
IF ~Global("C#BrandockJoined","GLOBAL",1)~ THEN DO ~SetInterrupt(FALSE)
SetGlobal("C#Brandock_Shapeshift","GLOBAL",5)
ClearAllActions() 
	StartCutSceneMode()
	ActionOverride("C#Brandock",LeaveParty())
	SetGlobal("C#BrandockJoined","GLOBAL",0)
	ActionOverride("C#Brandock",ChangeAIScript("",DEFAULT))
	ActionOverride("C#Brandock",SetLeavePartyDialogFile())
	StartCutScene("c#brcut3")
~ 
UNSOLVED_JOURNAL @10005 /* ~Brandock the Mage

Brandock tried to help Melicamp, and that turned horribly wrong. The magic Melicamp used seemed to be something very powerful, indeed. I think I just witnessed Brandock turning himself into a half-ogre. Or, switching bodies with one is the better term. Whatever it was, they both went to Thalantyr's abode to get help. I should go there, too, I guess.~ */ EXIT

IF ~Global("C#BrandockJoined","GLOBAL",2)~ THEN DO ~SetInterrupt(FALSE)
SetGlobal("C#Brandock_Shapeshift","GLOBAL",5)
ClearAllActions() 
	StartCutSceneMode()
	ActionOverride("C#Brandock",RemoveFamiliar())
	SetGlobal("C#BrandockJoined","GLOBAL",0)
	ActionOverride("C#Brandock",ChangeAIScript("",DEFAULT))
	ActionOverride("C#Brandock",ChangeEnemyAlly(Myself,NEUTRAL))
	ActionOverride("C#Brandock",SetLeavePartyDialogFile())
	StartCutScene("c#brcut3")
~ 
UNSOLVED_JOURNAL @10005 /* ~Brandock the Mage

Brandock tried to help Melicamp, and that turned horribly wrong. The magic Melicamp used seemed to be something very powerful, indeed. I think I just witnessed Brandock turning himself into a half-ogre. Or, switching bodies with one is the better term. Whatever it was, they both went to Thalantyr's abode to get help. I should go there, too, I guess.~ */ EXIT


/* Dialogue of the half-ogre cre (is Brandock) */
BEGIN c#brhao2

IF ~Global("C#Brandock_Shapeshift","GLOBAL",6)
RandomNum(3,1)~ THEN ogre_01
SAY @1278
IF ~~ THEN EXIT
END

IF ~Global("C#Brandock_Shapeshift","GLOBAL",6)
RandomNum(3,2)~ THEN ogre_02
SAY @1279
IF ~~ THEN EXIT
END

IF ~Global("C#Brandock_Shapeshift","GLOBAL",6)
RandomNum(3,3)~ THEN ogre_03
SAY @1280
IF ~~ THEN EXIT
END

/* add reply line to Thalantyr's dialogue to ask about Brandock's cure */
EXTEND_BOTTOM ~THALAN~ 1 
+ ~Global("C#Brandock_Shapeshift","GLOBAL",6) !Dead("C#Brandock") !Dead("c#brhao2")
Global("C#BrandockShapeshift","LOCALS",0)
Global("C#BrandockThalan25","GLOBAL",0)~ + @1281 DO ~SetGlobal("C#BrandockShapeshift","LOCALS",1)~ + brandock
END


/* additions to Thalantyr's dialogue with regard to Brandock's body switch and cure */
APPEND ~THALAN~

/* Global("TransformedChicken","GLOBAL",2) */

IF WEIGHT #-1
~Global("C#Brandock_Shapeshift","GLOBAL",7)~ brandock_reverse
SAY @1282
IF ~~ THEN DO ~SetInterrupt(FALSE) SetGlobal("C#Brandock_Shapeshift","GLOBAL",8)~ EXIT
END

IF ~~ THEN brandock
SAY @1283
= @1284
IF ~~ THEN + 1
END

END //APPEND

I_C_T ~THALAN~ 25 C#BrandockThalan25
== ~THALAN~ IF ~Global("C#Brandock_Shapeshift","GLOBAL",6) !Dead("C#Brandock") !Dead("c#brhao2")~ THEN @1285
END

I_C_T ~THALAN~ 26 C#BrandockThalan26
== ~THALAN~ IF ~Global("C#Brandock_Shapeshift","GLOBAL",6) !Dead("C#Brandock") !Dead("c#brhao2")~ THEN @1286
END

/* Dialogue after Brandock was restored */
CHAIN
IF WEIGHT #-1
~Global("C#Brandock_Shapeshift","GLOBAL",8)~ THEN ~THALAN~ brandock_reverse_01
@1287
== c#brandj @1288
= @1289
== c#brandj @1290
== ~THALAN~ @1291
== ~THALAN~ @1292
== c#brandj @1293
== ~THALAN~ @1294
== c#brandj @1295 DO ~SetGlobal("C#BR_KnowsBookName","LOCALS",1)~
== ~THALAN~ @1296
END
IF ~~ THEN DO ~
ActionOverride("C#Brandock",SetDialog("c#brandP")
SetGlobal("C#Brandock_Shapeshift","GLOBAL",9)
ActionOverride("c#brhao2", EscapeArea())
EraseJournalEntry(@10005)~ UNSOLVED_JOURNAL @10008 EXIT



/* Dialogue for Brandock's cre (is half-ogre) */

CHAIN
IF ~Global("C#Brandock_Shapeshift","GLOBAL",6)
Global("C#Br_HalfogrePhilosophy","LOCALS",0)~ THEN c#brandP who_am_i
@1248 /* ~Who am I? I am... I mean, theoretically speaking, I *was* the different acquaintance of another polymorphial being of very little intellectual habitus, if phrased in terms of principally conditions...~ */
DO ~SetGlobal("C#Br_HalfogrePhilosophy","LOCALS",1)~
== c#brhao2 @1249 = ~He not speak clear. He dumb, with my brain! Me... bright, with his dumb brain! And clumsy hands... Need help!~
END

APPEND c#brandP

IF WEIGHT #-1
~Global("C#Brandock_Shapeshift","GLOBAL",6)
RandomNum(3,1)~ THEN ogre_01
SAY @1297 
IF ~~ THEN EXIT
END

IF WEIGHT #-1
~Global("C#Brandock_Shapeshift","GLOBAL",6)
RandomNum(3,2)~ THEN ogre_02
SAY @1298 
IF ~~ THEN EXIT
END

IF WEIGHT #-1
~Global("C#Brandock_Shapeshift","GLOBAL",6)
RandomNum(3,3)~ THEN ogre_03
SAY @1299 
IF ~~ THEN EXIT
END

/* after the re-transformation */
/* BG1. Brandock is standing at Thalantyr's, after the body switch was reversed */

IF WEIGHT #-1
~Global("C#Brandock_Shapeshift","GLOBAL",9)~ THEN what_now
SAY @1300
IF ~~ THEN + what_now_02
END

IF ~~ THEN what_now_02
SAY @1301
IF ~~ THEN + what_now_07
END

IF ~~ THEN what_now_03
SAY @1302
++ @1303 + what_now_05
++ @1304 + what_now_05
++ @1305 + what_now_04
++ @1306 + resqued_03
END

IF ~~ THEN what_now_04
SAY @1307
IF ~~ THEN + what_now_05
END

IF ~~ THEN what_now_05
SAY @1308
IF ~~ THEN + what_now_06
END

IF ~~ THEN what_now_06
SAY @1309
= @1310
= @1311
++ @1312 + resqued_05
++ @1313 + resqued_05
++ @1314 + resqued_02
++ @1315 + resqued_03
END

IF ~~ THEN what_now_07
SAY @1316
++ @1317 + what_now_03
+ ~GlobalGT("C#Brandock_Possessions","GLOBAL",1)~ + @1318 + what_now_09
++ @1319 + what_now_08
++ @1320 + what_now_10
++ @1321 + resqued_04
++ @1306 + resqued_03
END

IF ~~ THEN what_now_08
SAY @1322
++ @1317 + what_now_03
+ ~GlobalGT("C#Brandock_Possessions","GLOBAL",1)~ + @1318 + what_now_09
++ @1320 + what_now_10
++ @1321 + resqued_04
++ @1306 + resqued_03
END

IF ~~ THEN what_now_09
SAY @1323
++ @1317 + what_now_03
++ @1320 + what_now_10
++ @1321 + resqued_04
++ @1306 + resqued_03
END

IF ~~ THEN what_now_10
SAY @1324
IF ~~ THEN DO ~SetGlobal("C#Brandock_Shapeshift","GLOBAL",11) SetGlobal("C#BrandockJoined","GLOBAL",1) JoinParty()~ EXIT
END

IF ~~ THEN resqued_02
SAY @1325
IF ~~ THEN + resqued_05
END

IF ~~ THEN resqued_03
SAY @1326
IF ~~ THEN + resqued_04
END

IF ~~ THEN resqued_04
SAY @1327
IF ~~ THEN DO ~SetGlobal("C#BrandockJoined","GLOBAL",0)
SetGlobal("C#Brandock_Shapeshift","GLOBAL",10)
EscapeAreaMove("%Beregost_JovialJuggler_L1%",479,841,0)~ UNSOLVED_JOURNAL @10001 EXIT
END

IF ~~ THEN resqued_05
SAY @1328
= @1329
++ @1330 + resqued_07
++ @1331 + resqued_06
++ @1315 + resqued_03
END

IF ~~ THEN resqued_06
SAY @1332
IF ~~ THEN + resqued_07
END

IF ~~ THEN resqued_07
SAY @1333
IF ~~ THEN DO ~SetGlobal("C#Brandock_Shapeshift","GLOBAL",11) SetGlobal("C#Br_PIDPuppiesNGrannies","LOCALS",1) SetGlobal("C#BrandockJoined","GLOBAL",1) JoinParty()~ EXIT
END

END //APPEND


APPEND c#brandj

/* dialogue in between - life as half-ogre was easy */
/* all other dialogues about his time as a half-ogre are via PID */

IF ~Global("C#Brandock_Shapeshift","GLOBAL",12)~ THEN time_as_halfogre
SAY @1334
++ @1335 + time_as_halfogre_01
++ @1336 + time_as_halfogre_05
END

IF ~~ THEN time_as_halfogre_01
SAY @1337
= @1338
= @1339
= @1340
++ @1341 + time_as_halfogre_02
++ @1342 + time_as_halfogre_03
++ @1343 + time_as_halfogre_04
END

IF ~~ THEN time_as_halfogre_02
SAY @1344
IF ~~ THEN + time_as_halfogre_05
END

IF ~~ THEN time_as_halfogre_03
SAY @1345
IF ~~ THEN + time_as_halfogre_02
END

IF ~~ THEN time_as_halfogre_04
SAY @1346
IF ~~ THEN + time_as_halfogre_02
END

IF ~~ THEN time_as_halfogre_05
SAY @1347
IF ~~ THEN DO ~SetGlobal("C#Brandock_Shapeshift","GLOBAL",13)~ EXIT
END

END //APPEND

/* Encounter with "Elvenhair" in the catacombs. After Gorion & Elminster, when all other Doppelgangrs are done 

GlobalGT("C#Brandock_Shapeshift","GLOBAL",10)
GlobalLT("C#Brandock_Shapeshift","GLOBAL",14) */

BEGIN C#BRFIRE

CHAIN
IF ~True()~ THEN C#BRFIRE encounter
@1348
== c#brandj IF ~GlobalGT("C#Br_BookRestore","GLOBAL",1)~ THEN @1349
== C#BRFIRE IF ~GlobalGT("C#Br_BookRestore","GLOBAL",1)~ THEN @1350 
== C#BRFIRE @1351
END
IF ~~ THEN DO ~SetGlobal("C#Brandock_Shapeshift","GLOBAL",17) ClearAllActions() StartCutSceneMode() StartCutScene("c#brcut9")~ EXIT

APPEND c#brandj

/* Brandock still half-ogre, after slashing the doppelganger on his own */

IF ~Global("C#Brandock_Shapeshift","GLOBAL",17)~ THEN half_ogre
SAY @1352
++ @1353 + half_ogre_02
++ @1354 + half_ogre_02
++ @1355 + half_ogre_01
++ @1356 + half_ogre_01
++ @1357 + half_ogre_03
END

IF ~~ THEN half_ogre_01
SAY @1358
IF ~~ THEN + half_ogre_02
END

IF ~~ THEN half_ogre_02
SAY @1359
++ @1360 + half_ogre_03
++ @1361 + half_ogre_02_b
++ @1362 + half_ogre_04
END

IF ~~ THEN half_ogre_02_b
SAY @1477 /* ~I just slashed with my hands... slashed and slashed... while feeling how the dopplegangers skin tore, and...~ */
++ @1478 /* ~I meant the half-ogre transformation.~ */ + half_ogre_03
++ @1479 /* ~Yes, Brandock, I *saw* that part. I meant what happened before. Why are you a half-ogre?~ */ + half_ogre_03
++ @1362 + half_ogre_04
END

IF ~~ THEN half_ogre_03
SAY @1363
IF ~~ THEN + half_ogre_05
END

IF ~~ THEN half_ogre_04
SAY @1364
IF ~~ THEN + half_ogre_05
END

IF ~~ THEN half_ogre_05
SAY @1365
IF ~~ THEN DO ~SetGlobal("C#Brandock_Shapeshift","GLOBAL",18) ClearAllActions() StartCutSceneMode() StartCutScene("c#brcu10")~ EXIT
END

IF ~Global("C#Brandock_Shapeshift","GLOBAL",18)~ THEN half_ogre_06
SAY @1366
++ @1367 + half_ogre_07
++ @1368 + half_ogre_08
++ @1369 + half_ogre_08
END

IF ~~ THEN half_ogre_07
SAY @1370
IF ~~ THEN + half_ogre_08
END

END //APPEND

CHAIN
IF ~~ THEN c#brandj half_ogre_08
@1371
== c#brandj IF ~GlobalGT("C#Br_BookRestore","GLOBAL",1)~ THEN @1372
END
IF ~~ THEN DO ~EraseJournalEntry(@10008)
SetGlobal("C#Brandock_Shapeshift","GLOBAL",19)~ UNSOLVED_JOURNAL @10069 EXIT




/* Ranger vor Thalantyr's abode */
BEGIN C#BRRANG
CHAIN
IF ~True()~ THEN C#BRRANG info
@1373
== c#brandj IF ~GlobalGT("C#Brando_VisitedMalm","GLOBAL",0)~ THEN @1374
== c#brandj IF ~Global("C#Brando_VisitedMalm","GLOBAL",0)~ THEN @1375
== c#brandj @1376
== C#BRRANG @1377
END
IF ~~ THEN DO ~SetGlobal("C#Brando_SpawnRanger","MYAREA",2)
ActionOverride("C#BRRANG",EscapeAreaDestroy(5))~ EXIT




/* visit to Thalantyr */
/* -Brandock fragt Thalantyr zwei Sachen: 
1. ist es heilbar?
2. verwandle ich mich für immer? Oder kann ich mich für immer verwandeln, wenn ich nicht aufpasse? */

EXTEND_BOTTOM ~THALAN~ 1 
+ ~Global("C#Brandock_Shapeshift","GLOBAL",19)
OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2)
!StateCheck("C#Brandock",CD_STATE_NOTVALID)
See("C#Brandock")~ + @1378 EXTERN c#brandj halfogre_change
END


CHAIN
IF ~~ THEN c#brandj halfogre_change
@1379
== THALAN @1380
== c#brandj @1381
== THALAN @1382
= @1383
== c#brandj @1384
== THALAN @1385
= 
@1386
== c#brandj @1387
== c#brandj IF ~Global("C#Brando_VisitedMalm","GLOBAL",0)~ THEN @1388
== c#brandj @1389
== c#brandj @1390
END
IF ~~ THEN DO ~EraseJournalEntry(@10069)
SetGlobal("C#Brandock_Shapeshift","GLOBAL",20)
AddJournalEntry(@10071,QUEST)~ UNSOLVED_JOURNAL @10070 EXIT


/* easter egg: dialogue with Melicamp after Thalantyr's help */

I_C_T ~MELICA~ 26 C#Brandock_MELICA_26
== ~c#brandj~ IF ~GlobalGT("C#Brandock_Shapeshift","GLOBAL",18)
OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) 
InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN @1391
== MELICA IF ~GlobalGT("C#Brandock_Shapeshift","GLOBAL",18)
OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) 
InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN @1392
== c#brandj IF ~GlobalGT("C#Brandock_Shapeshift","GLOBAL",18)
OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) 
InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN @1393
== MELICA IF ~Global("c#brisog","GLOBAL",0)
GlobalGT("C#Brandock_Shapeshift","GLOBAL",18)
OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) 
InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN @1394 
== c#brandj IF ~Global("c#brisog","GLOBAL",0)
Global("C#Brandock_Shapeshift","GLOBAL",19)
OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) 
InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN @1395 
== MELICA IF ~Global("c#brisog","GLOBAL",1)
GlobalGT("C#Brandock_Shapeshift","GLOBAL",18)
OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) 
InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN @1396 
== MELICA @1397
== c#brandj IF ~GlobalGT("C#Brandock_Shapeshift","GLOBAL",18)
OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) 
InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN @1398
END



APPEND c#brandj

IF ~Global("C#Brando_ShapeFollowup","LOCALS",1)~ THEN after_change_01
SAY @1399
IF ~~ THEN DO ~SetGlobal("C#Brando_ShapeFollowup","LOCALS",2)~ EXIT
END


/* later, regardless whether group was already by Thalantyr */
IF ~Global("C#Brando_ShapeFollowup","LOCALS",3)~ THEN after_change_02
SAY @1400
= @1401
++ @1402 + after_change_03
++ @1403 + after_change_03
++ @1404 + after_change_11
++ @1405 + after_change_12
END

IF ~~ THEN after_change_03
SAY @1406
= @1407
= @1408
++ @1409 + after_change_05
++ @1410 + after_change_05
++ @1411 + after_change_04
++ @1404 + after_change_11
END

IF ~~ THEN after_change_04
SAY @1412
IF ~~ THEN + after_change_05
END

IF ~~ THEN after_change_05
SAY @1413
++ @1414 + after_change_06
++ @1415 + after_change_07
++ @1404 + after_change_11
END

IF ~~ THEN after_change_06
SAY @1416
IF ~~ THEN + after_change_08
END

IF ~~ THEN after_change_07
SAY @1417
IF ~~ THEN + after_change_08
END

IF ~~ THEN after_change_08
SAY @1418
++ @1419 + after_change_09
++ @1420 + after_change_09
++ @1421 + after_change_09
++ @1422 + after_change_12
END

IF ~~ THEN after_change_09
SAY @1423
IF ~~ THEN + after_change_10
END

END //APPEND

CHAIN
IF ~~ THEN c#brandj after_change_10
@1424
== c#brandj IF ~Global("DukeThanks","GLOBAL",0)~ THEN @1425
== c#brandj IF ~Global("DukeThanks","GLOBAL",1) !Dead("Sarevok")~ THEN @1426
== c#brandj @1427
END
++ @1428 + after_change_11
++ @1429 + after_change_11
++ @1422 + after_change_12

APPEND c#brandj

IF ~~ THEN after_change_11
SAY @1430
IF ~~ THEN + after_change_14
END

IF ~~ THEN after_change_12
SAY @1431
++ @1432 + after_change_13
++ @1433 + after_change_11
END

IF ~~ THEN after_change_13
SAY @1434
IF ~Global("C#BrandockJoined","GLOBAL",1)~ THEN DO ~SetInterrupt(FALSE)
EraseJournalEntry(@10070)
GivePartyAllEquipment()
TakePartyItem("c#br0001") DestroyItem("c#br0001")
TakePartyItem("c#br0007") DestroyItem("c#br0007")
SetGlobal("C#Brandock_Gone","GLOBAL",1)
SetGlobal("C#BrandockJoined","GLOBAL",0) ChangeAIScript("",DEFAULT)
SetLeavePartyDialogFile() LeaveParty() EscapeArea() SetInterrupt(TRUE)~ EXIT
IF ~Global("C#BrandockJoined","GLOBAL",2)~ THEN DO ~SetInterrupt(FALSE)
EraseJournalEntry(@10070)
GivePartyAllEquipment()
SetGlobal("C#Brandock_Gone","GLOBAL",1)
SetGlobal("C#BrandockJoined","GLOBAL",0)
RemoveFamiliar()
ChangeAIScript("",DEFAULT)
ChangeEnemyAlly(Myself,NEUTRAL)
TakePartyItem("c#br0001") DestroyItem("c#br0001")
TakePartyItem("c#br0007") DestroyItem("c#br0007")
EscapeArea() SetInterrupt(TRUE)~ EXIT
END

END //APPEND

CHAIN
IF ~~ THEN c#brandj after_change_14
@1435
== c#brandj IF ~Global("C#Brando_VisitedMalm","GLOBAL",0)~ THEN @1436
== c#brandj IF ~GlobalGT("C#Brando_VisitedMalm","GLOBAL",0)~ THEN @1437
== c#brandj @1438
= @1439
END
IF ~~ THEN DO ~EraseJournalEntry(@10070)
AddJournalEntry(@10073,QUEST)
ReallyForceSpellRES("c#brsh01","C#Brandock") 
SetGlobal("C#Brando_ShapeFollowup","LOCALS",4)
SetGlobal("C#Brandock_Shapeshift","GLOBAL",21)~ UNSOLVED_JOURNAL @10071 EXIT

BEGIN c#brhabr

/* Halboger im Lager */

CHAIN
IF ~GlobalLT("C#Brando_VisitedMalm","GLOBAL",2)~ THEN c#brhabr hello
@1440
DO ~SetGlobal("C#Brando_VisitedMalm","GLOBAL",1)~
== c#brandj IF ~GlobalLT("C#Brandock_Shapeshift","GLOBAL",20)
OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) See("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN @1441
== c#brandj IF ~GlobalLT("C#Brandock_Shapeshift","GLOBAL",20)
OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) See("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN @1442
END
IF ~GlobalGT("C#Brandock_Shapeshift","GLOBAL",19)
OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) See("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN EXTERN c#brandj hello_brandock_01
+ ~GlobalLT("C#Brandock_Shapeshift","GLOBAL",20)
GlobalGT("C#BrandockSpawn","GLOBAL",1)~ + @1443 + hello_02
+ ~GlobalLT("C#Brandock_Shapeshift","GLOBAL",20)
OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) See("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ + @1444 EXTERN c#brandj hello_brandock 
++ @1445 + hello_03
++ @1446 + hello_01

APPEND c#brandj

IF ~~ THEN hello_brandock
SAY @1447
IF ~~ THEN EXTERN c#brhabr hello_01
END

END //APPEND

CHAIN
IF ~~ THEN c#brhabr hello_01
@1448
== c#brandj IF ~GlobalLT("C#Brandock_Shapeshift","GLOBAL",20)
OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) See("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN @1449
EXIT

APPEND c#brhabr

IF ~~ THEN hello_02
SAY @1450
IF ~~ THEN + hello_01
END

IF ~~ THEN hello_03
SAY @1451
IF ~~ THEN + hello_02
END

END //APPEND

CHAIN
IF ~~ THEN c#brandj hello_brandock_01
@1452
== c#brhabr @1453
== c#brandj @1454
== c#brhabr @1455
== c#brandj @1456
= @1457
END
++ @1458 + hello_brandock_02
++ @1459 + hello_brandock_02

APPEND c#brandj 

IF ~~ THEN hello_brandock_02
SAY @1460
++ @1461 + hello_brandock_05
++ @1462 + hello_brandock_04
++ @1463 + hello_brandock_08
END

IF ~~ THEN hello_brandock_03
SAY @1464
++ @1465 + hello_brandock_08
++ @1463 + hello_brandock_08
END

IF ~~ THEN hello_brandock_04
SAY @1466
IF ~~ THEN + hello_brandock_06
END

IF ~~ THEN hello_brandock_05
SAY @1467
IF ~~ THEN + hello_brandock_06
END

IF ~~ THEN hello_brandock_06
SAY @1468
++ @1469 + hello_brandock_07
++ @1470 + hello_brandock_03
++ @1465 + hello_brandock_08
++ @1463 + hello_brandock_08
END

IF ~~ THEN hello_brandock_07
SAY @1471
++ @1470 + hello_brandock_03
++ @1465 + hello_brandock_08
++ @1463 + hello_brandock_08
END

END //APPEND

/* Brandock zeigt Halboger das Knobelspiel */

CHAIN
IF ~~ THEN c#brandj hello_brandock_08
@1472
== c#brhabr @1473
== c#brandj @1474
== c#brhabr @1475
END
/* -> Halfoger räumt sein Lager in der Wildnis und geht in den Tempel des Morgenfürsten bei Beregost. */
IF ~~ THEN DO ~EraseJournalEntry(@10073)
SetGlobal("C#Brando_VisitedMalm","GLOBAL",2)
ActionOverride("c#brhabr",EscapeAreaMove("%Temple_SongoftheMorning%",508,183,0))~ UNSOLVED_JOURNAL @10074 EXIT

APPEND c#brhabr

IF ~Global("C#Brando_VisitedMalm","GLOBAL",2)~ THEN hello_again
SAY @1476
IF ~~ THEN EXIT
END

END //APPEND

