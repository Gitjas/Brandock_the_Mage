
/* Gatewarden, before chapter 6 */
EXTEND_BOTTOM ~%tutu_var%KEEPER~ 1 
+ ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)
OR(2) PartyHasItem("c#br0001") HasItem("c#br0001","C#Brandock")
!GlobalGT("C#Br_BookRestore","GLOBAL",1)
Global("C#Br_OfferedDestroyedBook","MYAREA",0)~ + @1050 DO ~SetGlobal("C#Br_OfferedDestroyedBook","MYAREA",1)
SetGlobal("C#Brandock_EnterCandlekeepPID","LOCALS",3)~ EXTERN c#brandj keeper_destroyedbook
+ ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)
OR(2) PartyHasItem("c#br0001") HasItem("c#br0001","C#Brandock")
GlobalGT("C#Br_BookRestore","GLOBAL",1)
Global("C#Br_OfferedDestroyedBook","MYAREA",0)~ + @1050 DO ~SetGlobal("C#Br_OfferedDestroyedBook","MYAREA",1)
SetGlobal("C#Brandock_EnterCandlekeepPID","LOCALS",3)~ + keeper_destroyedbook_02
+ ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)
OR(2) PartyHasItem("c#br0007") HasItem("c#br0007","C#Brandock")
Global("C#Br_OfferedRestoredBook","MYAREA",0)~ + @1051 DO ~SetGlobal("C#Br_OfferedRestoredBook","MYAREA",1)~ + keeper_destroyedbook_03
END

APPEND c#brandj
IF ~~ THEN keeper_destroyedbook
SAY @1052
IF ~~ THEN EXTERN ~%tutu_var%KEEPER~ keeper_destroyedbook_02
END
END //APPEND

CHAIN
IF ~~ THEN ~%tutu_var%KEEPER~ keeper_destroyedbook_02
@1053
== c#brandj IF ~!GlobalGT("C#Br_BookRestore","GLOBAL",1)~ THEN @1054
== c#brandj IF ~GlobalGT("C#Br_BookRestore","GLOBAL",1)~ THEN @1055
EXIT

CHAIN
IF ~~ THEN ~%tutu_var%KEEPER~ keeper_destroyedbook_03
@1056
== c#brandj @1057
EXIT


/* Duke Eltan */
I_C_T ~%tutu_var%DELTAN~ 10 C#Brandock_DELTAN_10
== ~c#brandj~ IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN @1058
== ~%tutu_var%DELTAN~ IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN @1059
END


APPEND c#brandj 
/* entered Candlekeep area (not inside yet) */


IF ~Global("C#Brandock_SeeCandlekeep","GLOBAL",1)~ THEN seeing_candlekeep
SAY @1060 /* ~Oh - my - ... (Brandock stopps talking and just stands there, looking at the towers of Candlekeep, mouth open.)~ */
++ @1061 /* ~You've never actually seen it, have you?~ */ + seeing_candlekeep_01
++ @1062 /* ~I agree it's quite impressive, now that I look at it from here.~ */ + seeing_candlekeep_02
++ @1063 /* ~You alright?~ */ + seeing_candlekeep_03
++ @1064 /* ~Great. If the walls from here already freeze your brain, then I don't want to know how we'll manage to actually approach the doors.~ */ + seeing_candlekeep_04
END

IF ~~ THEN seeing_candlekeep_01
SAY @1065 /* ~No, never.~ */
++ @1062 /* ~I agree it's quite impressive, now that I look at it from here.~ */ + seeing_candlekeep_02
++ @1063 /* ~You alright?~ */ + seeing_candlekeep_03
++ @1064 /* ~Great. If the walls from here already freeze your brain, then I don't want to know how we'll manage to actually approach the doors.~ */ + seeing_candlekeep_04
END

IF ~~ THEN seeing_candlekeep_02
SAY @1066 /* ~It *is*, isn't it?~ */
++ @1063 /* ~You alright?~ */ + seeing_candlekeep_03
++ @1064 /* ~Great. If the walls from here already freeze your brain, then I don't want to know how we'll manage to actually approach the doors.~ */ + seeing_candlekeep_04
END

IF ~~ THEN seeing_candlekeep_03
SAY @1067 /* ~Oh yes, yes, I am alright.~ */
IF ~~ THEN + seeing_candlekeep_05
END

IF ~~ THEN seeing_candlekeep_04
SAY @1068 /* ~Whut? Oh, yes, you are right.~ */
IF ~~ THEN + seeing_candlekeep_05
END

IF ~~ THEN seeing_candlekeep_05
SAY @1069 /* ~Isn't it *marvelous*? This is by far the most impressive monastery I've ever seen. Well, what am I saying. It's Candlekeep!~ */
IF ~Global("C#BR_KnowGorionsDeath","GLOBAL",1) GlobalLT("Chapter","GLOBAL",%tutu_chapter_6%)~ + seeing_candlekeep_12
IF ~Global("C#BR_KnowGorionsDeath","GLOBAL",1) !GlobalLT("Chapter","GLOBAL",%tutu_chapter_6%)~ + seeing_candlekeep_13
+ ~!Global("C#BR_KnowGorionsDeath","GLOBAL",1)~ + @1070 + seeing_candlekeep_06
+ ~!Global("C#BR_KnowGorionsDeath","GLOBAL",1) GlobalLT("Chapter","GLOBAL",%tutu_chapter_6%)~ + @1071 + seeing_candlekeep_12
+ ~!Global("C#BR_KnowGorionsDeath","GLOBAL",1) !GlobalLT("Chapter","GLOBAL",%tutu_chapter_6%)~ + @1071 + seeing_candlekeep_13
END

IF ~~ THEN seeing_candlekeep_06
SAY @324
++ @192 DO ~SetGlobal("C#BR_seeing_candlekeep_09","LOCALS",1)~ + seeing_candlekeep_09
++ @325 DO ~SetGlobal("C#BR_KnowGorionsDeath","GLOBAL",1)~ + seeing_candlekeep_07
++ @326 DO ~SetGlobal("C#BR_KnowGorionsDeath","GLOBAL",1)~ + seeing_candlekeep_07
++ @82 DO ~SetGlobal("C#BR_KnowGorionsDeath","GLOBAL",1)~ + seeing_candlekeep_08
END

IF ~~ THEN seeing_candlekeep_07
SAY @1072 /* ~Gods, <CHARNAME>, and here I am, gaping at Candlekeep's towers in the distance, while you lost your father, your home... I am sorry for your loss!~ */
+ ~Global("C#BR_seeing_candlekeep_09","LOCALS",0)~ + @165 + seeing_candlekeep_11
+ ~Global("C#BR_seeing_candlekeep_09","LOCALS",1) GlobalLT("Chapter","GLOBAL",%tutu_chapter_6%)~ + @165 + seeing_candlekeep_12
+ ~Global("C#BR_seeing_candlekeep_09","LOCALS",1) !GlobalLT("Chapter","GLOBAL",%tutu_chapter_6%)~ + @165 + seeing_candlekeep_13
+ ~Global("C#BR_seeing_candlekeep_09","LOCALS",0)~ + @192 + seeing_candlekeep_10
+ ~GlobalLT("Chapter","GLOBAL",%tutu_chapter_6%)~ + @196 + seeing_candlekeep_12
+ ~!GlobalLT("Chapter","GLOBAL",%tutu_chapter_6%)~ + @196 + seeing_candlekeep_13
END

IF ~~ THEN seeing_candlekeep_08
SAY @194
IF ~~ THEN + seeing_candlekeep_07
END

IF ~~ THEN seeing_candlekeep_09
SAY @170
= @333
++ @325 DO ~SetGlobal("C#BR_KnowGorionsDeath","GLOBAL",1)~ + seeing_candlekeep_07
++ @326 DO ~SetGlobal("C#BR_KnowGorionsDeath","GLOBAL",1)~ + seeing_candlekeep_07
++ @82 DO ~SetGlobal("C#BR_KnowGorionsDeath","GLOBAL",1)~ + seeing_candlekeep_08
END

IF ~~ THEN seeing_candlekeep_10
SAY @170
IF ~~ THEN + seeing_candlekeep_13
IF ~GlobalLT("Chapter","GLOBAL",%tutu_chapter_6%)~ THEN + seeing_candlekeep_12
END


IF ~~ THEN seeing_candlekeep_11
SAY @1073
++ @192 + seeing_candlekeep_10
+ ~GlobalLT("Chapter","GLOBAL",%tutu_chapter_6%)~ + @196 + seeing_candlekeep_12
+ ~!GlobalLT("Chapter","GLOBAL",%tutu_chapter_6%)~ + @196 + seeing_candlekeep_13
END

END //APPEND

/* before chapter 6 */
CHAIN
IF ~~ THEN c#brandj seeing_candlekeep_12
@1097 /* And now we are here, in front of these impressive walls.~ */
== c#brandj @1074 /* ~Are we going to the gates?~ */
== c#brandj IF ~GlobalLT("C#Brandock_Dialog","GLOBAL",6)~ THEN @1075 
== c#brandj IF ~GlobalGT("C#Brandock_Dialog","GLOBAL",5)~ THEN @1077
== c#brandj IF ~OR(2) PartyHasItem("c#br0001") HasItem("c#br0001","C#Brandock")
GlobalLT("C#Brandock_EnterCandlekeepPID","LOCALS",2)~ THEN @1076
END
IF ~~ THEN DO ~SetGlobal("C#Brandock_SeeCandlekeep","GLOBAL",2)~ EXIT


/* chapter 6 [or access via Framed mod] */
CHAIN
IF ~~ THEN c#brandj seeing_candlekeep_13
@1078 DO ~SetGlobal("C#Brandock_SeeCandlekeep","GLOBAL",4)~ 

/* Brandock's book restore quest line: going into Candlekeep! */
== c#brandj IF ~GlobalGT("C#Brandock_Possessions","GLOBAL",0) GlobalGT("C#Br_BookRestore","GLOBAL",0) GlobalLT("C#Br_BookRestore","GLOBAL",6)~ THEN @1079
== c#brandj IF ~GlobalGT("C#Brandock_Possessions","GLOBAL",0) Global("C#Br_BookRestore","GLOBAL",0)~ THEN @1080
END
IF ~~ THEN EXIT
IF ~GlobalGT("C#Br_BookRestore","GLOBAL",5)~ THEN + approaching_candlekeep


APPEND c#brandj 
IF ~Global("C#Brandock_SeeCandlekeep","GLOBAL",3)~ THEN approaching_candlekeep
SAY @1081 /* ~We are going to Candlekeep! We are going *into* Candlekeep!~ */
++ @1082 /* ~Yes, we are, my friend!~ */ + approaching_candlekeep_03
++ @1083 /* ~So it seems.~ */ + approaching_candlekeep_03
++ @1084 /* ~We are going there on an official investigation, Brandock.~ */ + approaching_candlekeep_02
++ @1085 /* ~Brandock, I need you as a mage in this group. Promise you will not turn into a knowledge seeking zombie in there.~ */ + approaching_candlekeep_01
END

IF ~~ THEN approaching_candlekeep_01
SAY @1086 /* ~I... I promise I will behave in there, <CHARNAME>. Although I beg you, don't be too cruel on me once we are inside and I'll turn into an excited adolescent.~ */
IF ~~ THEN DO ~SetGlobal("C#Brandock_SeeCandlekeep","GLOBAL",4)~ EXIT
END

IF ~~ THEN approaching_candlekeep_02
SAY @1087 /* ~Of... of course. Although spending a *little* bit of time there would be alright, no? Like... one afternoon. A few hours. *One* hour!~ */
+ ~Global("Chapter","GLOBAL",%tutu_chapter_6%)~ + @1088 /* ~Brandock, this is your chance. This book will give us entry, you have the needed seal and a gift to stay as a seeker.~ */ + approaching_candlekeep_06
++ @1089 /* ~(smiles) I am sure we could arrange for an extra hour or two while we investigate the place.~ */ + approaching_candlekeep_04
++ @1090 /* ~We'll see, Brandock.~ */ + approaching_candlekeep_05
++ @1085 /* ~Brandock, I need you as a mage in this group. Promise you will not turn into a knowledge seeking zombie in there.~ */ + approaching_candlekeep_01
END

IF ~~ THEN approaching_candlekeep_03
SAY @1091 /* ~Just like that...~ */ 
+ ~Global("Chapter","GLOBAL",%tutu_chapter_6%)~ + @1088 /* ~Brandock, this is your chance. This book will give us entry, you have the needed seal and a gift to stay as a seeker.~ */ + approaching_candlekeep_06
++ @1089 /* ~(smiles) I am sure we could arrange for an extra hour or two while we investigate the place.~ */ + approaching_candlekeep_04
++ @1085 /* ~Brandock, I need you as a mage in this group. Promise you will not turn into a knowledge seeking zombie in there.~ */ + approaching_candlekeep_01
END

IF ~~ THEN approaching_candlekeep_04
SAY @1092 /* ~That would be fabulous!~ */
IF ~~ THEN + approaching_candlekeep_05
END

IF ~~ THEN approaching_candlekeep_05
SAY @1093 /* ~(sigh) This is all I ever wanted, entering Candlekeep. All I wanted and worked towards for months. And now, that it is so close... All I'd do in the tenday is working on the translation of the pages in Ruathlek in the De Simplex Magicae. I have no experience with the language so it would take me the whole time, I am sure. I wouldn't have the nerve to study anything else!~ */
= @1098 /* And while it is a valid thing to do, I have Master Elvenhair's word that he'll help me translate it later. Surely he will understand that I feel obliged to accompany you? Candlekeep doesn't go anywhere, but I can't just abandon you and our tasks! */
= @1103 /* ~Because... I would abandon you and your search, <CHARNAME>... the Sword Coast, even! My home land, Amn, in the coming war! And all that just to study a book...~ */
= @1112 /* ~Arrrrgh I really hope some god is enjoying this, so there'd be at least someone having fun here.~ */
+ ~Global("Chapter","GLOBAL",%tutu_chapter_6%)~ + @1099 /* ~Are you sure you won't regret it later?~ */ + approaching_candlekeep_07
++ @1096 /* I am sure he'll understand. He seemed quite interested in knowing what it says, too.~ */ + approaching_candlekeep_01
++ @1085 /* ~Brandock, I need you as a mage in this group. Promise you will not turn into a knowledge seeking zombie in there.~ */ + approaching_candlekeep_01
END

IF ~~ THEN approaching_candlekeep_06
SAY @1094 /* ~You really mean it? But what about your quest, what about my promise to support you? Candlekeep will stay right here and go nowhere... I guess.~ */
IF ~~ THEN + approaching_candlekeep_05
END

IF ~~ THEN approaching_candlekeep_07
SAY @1095 /* ~Oh, I'll most definitely regret it. But this is not how I anticipated coming here...~ */
= @1104 /* ~(moans) The gods really think this is funny, don't they? I'd have all I wanted, right here... but can't grab it without feeling bad!~ */
IF ~~ THEN + approaching_candlekeep_01
END

END //APPEND


/* WILLIA & : CHARNAME on the buff */
I_C_T ~%tutu_scriptbg%WILLIA%eet_var%~ 10 C#Brandock_WILLIA10
== ~c#brandj~ IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN @1120
== ~%tutu_scriptbg%WILLIA%eet_var%~ IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN @1121
END


ADD_TRANS_ACTION SHISTA BEGIN 8 END BEGIN END ~IncrementGlobal("C#Brandock_Shistal","GLOBAL",1)~
ADD_TRANS_ACTION POGHM9 BEGIN 3 END BEGIN END ~IncrementGlobal("C#Brandock_Shistal","GLOBAL",1)~


APPEND c#brandj 

/* Shistal or priest of Oghma - doppelgangers in Candlekeep */

IF ~Global("C#Brandock_Shistal","GLOBAL",2)~ THEN doppelgangers_candlekeep
SAY @1122
IF ~~ THEN DO ~SetGlobal("C#Brandock_Shistal","GLOBAL",3)~ EXIT
END

END //APPEND

/* Tethtoril, Candlekeep */

I_C_T ~%tutu_var%TETHTO2~ 3 C#Brandock_Tethtoril
== ~c#brandj~ IF ~GlobalGT("C#Brandock_Shistal","GLOBAL",2) OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN @1123
== ~%tutu_var%TETHTO2~ IF ~GlobalGT("C#Brandock_Shistal","GLOBAL",2) OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN @1124
END


/* Doppelgangers in Candlekeep Catacombs */
CHAIN
IF ~Global("C#Brandock_CKeepDoppelgangers","GLOBAL",1)~ THEN c#brandj catacombs
@1125
== c#brandj IF ~GlobalGT("C#Brandock_Shistal","GLOBAL",2)~ THEN @1126
== c#brandj @1127
END
IF ~~ THEN DO ~SetGlobal("C#Brandock_CKeepDoppelgangers","GLOBAL",2)~ EXIT



ADD_TRANS_ACTION TETHTO2 BEGIN 2 END BEGIN END ~SetGlobal("C#Brandock_KnowSarevokName","GLOBAL",1)~

/* detect whether CHARNAME spoke to Arkanis and Deder */
ADD_TRANS_ACTION ARKANI3 BEGIN 0 END BEGIN END ~SetGlobal("C#Brandock_MetArkanis","GLOBAL",1)~



/* After meeting Elminster doppelganger in Candlekeep Catacombs */
CHAIN
IF ~Global("C#Brandock_DoppelElminster","GLOBAL",1)~ THEN c#brandj  elminster_illusion
@1128
= @1129 
== c#brandj IF ~Global("C#Brandock_KnowSarevokName","GLOBAL",1)~ THEN @1130
END
IF ~~ THEN DO ~SetGlobal("C#Brandock_DoppelElminster","GLOBAL",2)~ EXIT


APPEND c#brandj 

/* after being arrested in Candlekeep */

IF ~Global("C#Brandock_Expelled","GLOBAL",1)~ THEN candlekeep_catacombs_expelled
SAY @1131
++ @1132 + candlekeep_catacombs_expelled_01
++ @1133 + candlekeep_catacombs_expelled_03
++ @1134 + candlekeep_catacombs_expelled_02
END

IF ~~ THEN candlekeep_catacombs_expelled_01
SAY @1135
IF ~~ THEN + candlekeep_catacombs_expelled_03
END

IF ~~ THEN candlekeep_catacombs_expelled_02
SAY @1136
IF ~~ THEN + candlekeep_catacombs_expelled_03
END

IF ~~ THEN candlekeep_catacombs_expelled_03
SAY @1137
++ @1138 + candlekeep_catacombs_expelled_04
++ @1139 + candlekeep_catacombs_expelled_04_b
++ @1140 + candlekeep_catacombs_expelled_04
END

IF ~~ THEN candlekeep_catacombs_expelled_04
SAY @1141
IF ~~ THEN + candlekeep_catacombs_expelled_04_b
END

END //APPEND

CHAIN
IF ~~ THEN c#brandj candlekeep_catacombs_expelled_04_b
@1142
== c#brandj IF ~Dead("Rieltar")~ THEN @1143
END
++ @1144 + candlekeep_catacombs_expelled_07
++ @1145 + candlekeep_catacombs_expelled_07
++ @1146 + candlekeep_catacombs_expelled_07
++ @1147 + candlekeep_catacombs_expelled_06
++ @1148 + candlekeep_catacombs_expelled_05


APPEND c#brandj 

IF ~~ THEN candlekeep_catacombs_expelled_05
SAY @1149
IF ~~ THEN DO ~AddJournalEntry(@10053,QUEST) SetGlobal("C#Brandock_Expelled","GLOBAL",2)~ EXIT
END

END //APPEND

CHAIN
IF ~~ THEN c#brandj candlekeep_catacombs_expelled_06
@1150
== c#brandj IF ~GlobalGT("C#Brandock_Shistal","GLOBAL",2)~ THEN @1151
== c#brandj IF ~!GlobalGT("C#Brandock_Shistal","GLOBAL",2)~ THEN @1152
END
IF ~~ THEN + candlekeep_catacombs_expelled_08


APPEND c#brandj 

IF ~~ THEN candlekeep_catacombs_expelled_07
SAY @1153
IF ~~ THEN + candlekeep_catacombs_expelled_06
END
END //APPEND

CHAIN
IF ~~ THEN c#brandj candlekeep_catacombs_expelled_08
@1154
== c#brandj IF ~GlobalGT("C#Brandock_Dialog","GLOBAL",6)~ THEN @1155
END
IF ~~ THEN DO ~AddJournalEntry(@10053,QUEST) SetGlobal("C#Brandock_Expelled","GLOBAL",2)~ EXIT


APPEND c#brandj

/* After Candlekeep Catacombs */

IF ~Global("C#Brandock_CKeepDoppelgangers","GLOBAL",3)~ THEN catacombs_doppelgangers
SAY @1156
= @1157
= @1158
++ @1159 + catacombs_doppelgangers_01
++ @1160 + catacombs_doppelgangers_01
++ @1161 + catacombs_doppelgangers_01
++ @1162 + catacombs_doppelgangers_02
++ @1163 + catacombs_doppelgangers_03
END

IF ~~ THEN catacombs_doppelgangers_01
SAY @1164
IF ~~ THEN + catacombs_doppelgangers_02
END

IF ~~ THEN catacombs_doppelgangers_02
SAY @1165
= @1100
+ ~Global("C#Brandock_Tethtoril","GLOBAL",1)~ + @1166 + catacombs_doppelgangers_03
+ ~Global("C#Brandock_MetArkanis","GLOBAL",1)
!Allegiance("Arkanis",ENEMY)
!Allegiance("Deder",ENEMY)
OR(2)
!Dead("Arkanis")
!Dead("Deder")~ + @1167 + catacombs_doppelgangers_03
++ @1168 + catacombs_doppelgangers_03
++ @1169 + catacombs_doppelgangers_04
END

END //APPEND

CHAIN
IF ~~ THEN c#brandj catacombs_doppelgangers_03
@1170
== ~%AJANTIS_JOINED%~ IF ~InParty("Ajantis") InMyArea("Ajantis") !StateCheck("Ajantis",CD_STATE_NOTVALID)~ THEN @1171
== c#brandj IF ~InParty("Ajantis") InMyArea("Ajantis") !StateCheck("Ajantis",CD_STATE_NOTVALID)~ THEN @1172
==  c#brandj @1173
END
IF ~~ THEN DO ~SetGlobal("C#Brandock_CKeepDoppelgangers","GLOBAL",4)~ EXIT

APPEND c#brandj

IF ~~ THEN catacombs_doppelgangers_04
SAY @1174
IF ~~ THEN + catacombs_doppelgangers_03
END



/* Follow up: doppelgangers in Candlekeep */

IF ~Global("C#Brandock_CKeepDoppelgangers","GLOBAL",5)~ THEN candlekeep_followup
SAY @1175
+ ~GlobalGT("C#Brandock_Shapeshift","GLOBAL",17)~ + @1200 /* ~Nice of you to ask - considering you have your plate full yourself currently with happenings to yourself we can't explain.~ */ + candlekeep_followup_05
++ @1176 + candlekeep_followup_02
++ @1177 + candlekeep_followup_02
++ @1178 + candlekeep_followup_02
++ @1179 + candlekeep_followup_01
+ ~Global("C#Brandock_KnowBhaal","GLOBAL",1)~ + @1180 + candlekeep_followup_01
++ @1181 + candlekeep_followup_01
END

IF ~~ THEN candlekeep_followup_01
SAY @1182
IF ~~ THEN + candlekeep_followup_04
END

IF ~~ THEN candlekeep_followup_02
SAY @1183
IF ~~ THEN + candlekeep_followup_04
END

END //APPEND

CHAIN
IF ~~ THEN c#brandj APPENDcandlekeep_followup_03
@1184
== c#brandj @1201 /* ~Even... even if I'd have to stomp as a half-ogre at your side!~ */
END
IF ~~ THEN + candlekeep_followup_02

APPEND c#brandj
IF ~~ THEN candlekeep_followup_04
SAY @1185
IF ~~ THEN DO ~SetGlobal("C#Brandock_CKeepDoppelgangers","GLOBAL",7)~ EXIT
END

IF ~~ THEN candlekeep_followup_05
SAY @1202 /* ~Oh, but what's happening to me is nothing compared to being expelled from your home and seeing it being invaded by doppelgangers!~ */
++ @1176 + candlekeep_followup_02
++ @1177 + candlekeep_followup_02
++ @1203 /* ~I'm afraid there is nothing you can do. This is something I'll have to deal with, and nothing will make it better.~ */ + candlekeep_followup_02
++ @1179 + candlekeep_followup_01
+ ~Global("C#Brandock_KnowBhaal","GLOBAL",1)~ + @1180 + candlekeep_followup_01
++ @1181 + candlekeep_followup_01
END




/* #2  */
IF ~Global("C#Brandock_CKeepDoppelgangers","GLOBAL",7)~ THEN candlekeep_followup2
SAY @1186
+ ~GlobalGT("C#Brandock_Shapeshift","GLOBAL",17)~ + @1204 /* ~You mean after you stomped your way through them as a half-oger?~ */+ candlekeep_followup2_07
++ @1187 + candlekeep_followup2_01
++ @1188 + candlekeep_followup2_02
++ @1189 + candlekeep_followup2_03
++ @1190 + candlekeep_followup2_01
++ @1191 + candlekeep_followup2_04
++ @1192 + candlekeep_followup2_06
END

IF ~~ THEN candlekeep_followup2_01
SAY @1193
IF ~~ THEN + candlekeep_followup2_05
END

IF ~~ THEN candlekeep_followup2_02
SAY @1194
IF ~~ THEN + candlekeep_followup2_01
END

IF ~~ THEN candlekeep_followup2_03
SAY @1164
IF ~~ THEN + candlekeep_followup2_05
END

IF ~~ THEN candlekeep_followup2_04
SAY @1195
IF ~~ THEN + candlekeep_followup2_01
END

IF ~~ THEN candlekeep_followup2_05
SAY @1196
= @1197
= @1198
IF ~~ THEN DO ~SetGlobal("C#Brandock_CKeepDoppelgangers","GLOBAL",8)~ EXIT
END

IF ~~ THEN candlekeep_followup2_06
SAY @1199  
IF ~~ THEN DO ~SetGlobal("C#Brandock_CKeepDoppelgangers","GLOBAL",8)~ EXIT
END

IF ~~ THEN candlekeep_followup2_07
SAY @1205 /* ~Oh yes, that's... that's actually funny. Still... I don't think it would have saved me in the end from the doppelgangers.~ */
++ @1187 + candlekeep_followup2_01
++ @1188 + candlekeep_followup2_02
++ @1189 + candlekeep_followup2_03
++ @1190 + candlekeep_followup2_01
++ @1191 + candlekeep_followup2_04
++ @1192 + candlekeep_followup2_06
END



END //APPEND