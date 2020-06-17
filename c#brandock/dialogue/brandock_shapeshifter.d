/* quest: Melicamp and half-ogre */



/* Melicamp Chicken */
I_C_T3 ~%tutu_var%MELICA~ 10 C#Brandock_MELICA_10
== ~c#brandj~ IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) 
InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN @1250
== c#brandj IF ~!GlobalGT("C#Brandock_Possessions","GLOBAL",1)
!Dead("Thalantyr")
!Allegiance("Thalantyr",ENEMY)
OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2)
InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN @1251
END


BEGIN C#BRMELI


/* interjection happened */
CHAIN
IF ~Global("C#Brandock_Shapeshift","GLOBAL",2)~ THEN c#brandj melicamp_dialogue
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
!PartyHasItem("c#br0007")~ + @1260 + melicamp_dialogue_02 
+ ~OR(2)
PartyHasItem("c#br0001")
PartyHasItem("c#br0007")~ + @1260 + melicamp_dialogue_02_withbook
++ @1261 + melicamp_dialogue_01
+ ~!PartyHasItem("c#br0001")
!PartyHasItem("c#br0007")~ + @1262 + melicamp_dialogue_02 
+ ~OR(2)
PartyHasItem("c#br0001")
PartyHasItem("c#br0007")~ + @1262 + melicamp_dialogue_02_withbook
++ @1263 + melicamp_dialogue_03

APPEND c#brandj

IF ~~ THEN melicamp_dialogue_01
SAY @1264
++ @1259 + melicamp_dialogue_04
+ ~!PartyHasItem("c#br0001")
!PartyHasItem("c#br0007")~ + @1260 + melicamp_dialogue_02 
+ ~OR(2)
PartyHasItem("c#br0001")
PartyHasItem("c#br0007")~ + @1260 + melicamp_dialogue_02_withbook
+ ~!PartyHasItem("c#br0001")
!PartyHasItem("c#br0007")~ + @1262 + melicamp_dialogue_02 
+ ~OR(2)
PartyHasItem("c#br0001")
PartyHasItem("c#br0007")~ + @1262 + melicamp_dialogue_02_withbook
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
IF ~~ THEN DO ~ActionOverride("C#BRMELI",DestroySelf()) SetGlobal("C#Brandock_Shapeshift","GLOBAL",15)~ EXIT
END

IF ~~ THEN melicamp_dialogue_04
SAY @1269
IF ~HasItem("%tutu_var%MISC49","C#Brandock")~ THEN DO ~
GiveItem("%tutu_var%MISC49",Player1)
SetGlobal("C#Brandock_Shapeshift","GLOBAL",3)
	ClearAllActions() 
	SetInterrupt(FALSE)
	StartCutSceneMode()	
	StartCutScene("c#brcut1")~ EXIT
IF ~!HasItem("%tutu_var%MISC49","C#Brandock")~ THEN DO ~
SetGlobal("C#Brandock_Shapeshift","GLOBAL",3)
	ClearAllActions() 
	SetInterrupt(FALSE)
	StartCutSceneMode()	
	StartCutScene("c#brcut1")~ EXIT
END

IF ~Global("C#Brandock_Shapeshift","GLOBAL",3)~ THEN goes_Wrong
SAY @1270
IF ~~ THEN DO ~SetGlobal("C#Brandock_Shapeshift","GLOBAL",4)
	ClearAllActions() 
	SetInterrupt(FALSE)
	StartCutSceneMode()
	StartCutScene("c#brcut2")~ EXIT
END

END //APPEND



CHAIN
IF ~Global("C#Brandock_Shapeshift","GLOBAL",4)~ THEN c#brandj went_Wrong
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



EXTEND_BOTTOM ~%tutu_var%THALAN~ 1 
+ ~Global("C#Brandock_Shapeshift","GLOBAL",6) !Dead("C#Brandock") !Dead("c#brhao2")
Global("C#BrandockShapeshift","LOCALS",0)
Global("C#BrandockThalan25","GLOBAL",0)~ + @1281 DO ~SetGlobal("C#BrandockShapeshift","LOCALS",1)~ + brandock
END



APPEND ~%tutu_var%THALAN~

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



I_C_T ~%tutu_var%THALAN~ 25 C#BrandockThalan25
== ~%tutu_var%THALAN~ IF ~Global("C#Brandock_Shapeshift","GLOBAL",6) !Dead("C#Brandock") !Dead("c#brhao2")~ THEN @1285
END

I_C_T ~%tutu_var%THALAN~ 26 C#BrandockThalan26
== ~%tutu_var%THALAN~ IF ~Global("C#Brandock_Shapeshift","GLOBAL",6) !Dead("C#Brandock") !Dead("c#brhao2")~ THEN @1286
END



CHAIN
IF WEIGHT #-1
~Global("C#Brandock_Shapeshift","GLOBAL",8)~ THEN ~%tutu_var%THALAN~ brandock_reverse_01
@1287
== c#brandj @1288
= @1289
== c#brandj @1290
== ~%tutu_var%THALAN~ @1291
== ~%tutu_var%THALAN~ @1292
== c#brandj @1293
== ~%tutu_var%THALAN~ @1294
== c#brandj @1295 DO ~SetGlobal("C#BR_KnowsBookName","LOCALS",1)~
== ~%tutu_var%THALAN~ @1296
END
IF ~~ THEN DO ~
//ActionOverride("C#Brandock",DestroyItem("c#br0001"))
ActionOverride("C#Brandock",SetDialog("c#brandP")
SetGlobal("C#Brandock_Shapeshift","GLOBAL",9)
ActionOverride("c#brhao2", EscapeArea())
EraseJournalEntry(@10005)~ SOLVED_JOURNAL @10008 /* ~Brandock the Mage

Thalantyr was able to help Brandock back into his own body.~ */ EXIT

APPEND c#brandP

/* BG1. Shapeshifter incident, half-ogre is Brandock */

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
/* BG1. Brandock is standing at Thalantyr's, after the Ogre-change */

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