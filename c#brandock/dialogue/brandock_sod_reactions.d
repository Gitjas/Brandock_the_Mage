APPEND c#brandj

/* 2.1 Conclude that Caelar's ulterior motive is to save her uncle: After knowing that she is planning on freeing souls from Avernus and knowing that Aun went to Avernus for her. */
IF ~Global("C#Brandock_AllForAun","GLOBAL",2)~ THEN caelar_plan_aun
SAY @1001 /* [Brandock]Caelar's uncle is in Avernus on her stead - and now she is leading a crusade to free souls from Avernus... */
++ @1002 /* Do you think she is doing all this - the whole crusade *just* for freeing her uncle? */ + caelar_plan_aun_01
++ @1003 /* It is obvious she wants to free him, too. */ + caelar_plan_aun_04
++ @1004 /* Your point being? */ + caelar_plan_aun_02
++ @1005 /* I don't care about Caelar's ultimate goal in this, Brandock. */ + caelar_plan_aun_03
END

IF ~~ THEN caelar_plan_aun_01
SAY @1006 /* [Brandock]No, because that would be - I mean, that would be... No, I'll not go there. */
IF ~~ THEN + caelar_plan_aun_02
END

IF ~~ THEN caelar_plan_aun_02
SAY @1007 /* [Brandock]She doesn't seem to phrase it, but I'll eat my hat if freeing her uncle isn't her very personal ulterior motive. That much is clear. */
++ @1008 /* But why doesn't she tell people about it? */ + caelar_plan_aun_05
++ @1009 /* I think so, too. */ + caelar_plan_aun_04
++ @1005 /* I don't care about Caelar's ultimate goal in this, Brandock. */ + caelar_plan_aun_03
END

IF ~~ THEN caelar_plan_aun_03
SAY @1010 /* [Brandock]Alright, I agree it doesn't really make a difference. Probably. */
IF ~~ THEN + caelar_plan_aun_04
END

IF ~~ THEN caelar_plan_aun_04
SAY @1011 /* [Brandock]I'm on an odyssey to save a *book* - how much stronger must the motivation be if it's a loved person who was doomed due to your own stupidity. - Which doesn't excuse anything, of course. I'm just saying. */
IF ~~ THEN DO ~SetGlobal("C#Brandock_AllForAun","GLOBAL",3)
SetGlobal("C#SoD_CaelarPlanAun","GLOBAL",1)
SetGlobal("C#RtD_CaelarPlan_SET","GLOBAL",5) 
SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~ EXIT
IF ~GlobalGT("C#RtD_CaelarPlan","GLOBAL",4)~ THEN DO ~SetGlobal("C#Brandock_AllForAun","GLOBAL",3)~ EXIT
END

IF ~~ THEN caelar_plan_aun_05
SAY @1012 /* [Brandock]That's a good question, but there is several valid reasons I could think of - from some leadership considerations with regard to not looking compromised to putting her wishes last for the sake of her followers. */
++ @1013 /* Or people suspecting he is her *only* objective. */ + caelar_plan_aun_04
++ @1014 /* I think she aims to free him, too. */ + caelar_plan_aun_04
++ @1005 /* I don't care about Caelar's ultimate goal in this, Brandock. */ + caelar_plan_aun_03
END

END //APPEND

/* Interjection into Aun's dialogue in Avernus if dialogue didn't run before */

I_C_T BDAUN 28 C#Brandock_AllForAun
== c#brandj IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN @1011 /* [Brandock]I'm on an odyssey to save a *book* - how much stronger must the motivation be if it's a loved person who was doomed due to your own stupidity. - Which doesn't excuse anything, of course. I'm just saying. */
END

I_C_T BDAUN 30 C#Brandock_AllForAun
== c#brandj IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN @1011 /* [Brandock]I'm on an odyssey to save a *book* - how much stronger must the motivation be if it's a loved person who was doomed due to your own stupidity. - Which doesn't excuse anything, of course. I'm just saying. */
END

I_C_T BDAUN 31 C#Brandock_AllForAun
== c#brandj IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN @1011 /* [Brandock]I'm on an odyssey to save a *book* - how much stronger must the motivation be if it's a loved person who was doomed due to your own stupidity. - Which doesn't excuse anything, of course. I'm just saying. */
END

I_C_T BDAUN 32 C#Brandock_AllForAun
== c#brandj IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN @1011 /* [Brandock]I'm on an odyssey to save a *book* - how much stronger must the motivation be if it's a loved person who was doomed due to your own stupidity. - Which doesn't excuse anything, of course. I'm just saying. */
END




/* bdbook11 "A Historical Treatise of Dragonspear Castle" */

CHAIN
IF ~Global("C#Brandock_SoD_Foundbdbook11","GLOBAL",1)~ THEN c#brandj treatise
@1015 /* [Brandock]"A Historical Treatise of Dragonspear Castle", that sounds interesting, considering that's where Caelar and her crusade went... */
== c#brandj IF ~OR(2)
GlobalGT("C#RtD_CaelarPlan","GLOBAL",1)
GlobalGT("bd_plot","global",409)~ THEN @1016 /* [Brandock]Wait, there is handwritten notes in it. Those were written by a crusader. A portal to Avernus - beneath Dragonspear Castle, to be opened with blood tainted by god's influence... */
== c#brandj IF ~OR(2)
GlobalGT("C#RtD_KnowsPortalBlood","GLOBAL",2)
GlobalGT("bd_plot","global",409)~ THEN @1017 /* [Brandock]Yep, it all fits. They knew it all along - of course they did, Caelar wove her whole plan of madness around this information. (sigh) */ 
== c#brandj IF ~GlobalGT("C#RtD_CaelarPlan","GLOBAL",1)
GlobalLT("C#RtD_KnowsPortalBlood","GLOBAL",3)
GlobalLT("bd_plot","global",410)~ THEN @1018 /* [Brandock]This is valuable information. It sounds as if they hope to find the means to reach into Avernus there, don't you agree? */
END
IF ~OR(3)
GlobalLT("C#RtD_CaelarPlan","GLOBAL",2)
GlobalGT("C#RtD_KnowsPortalBlood","GLOBAL",2)
GlobalGT("bd_plot","global",409)~ THEN DO ~SetGlobal("C#Brandock_SoD_Foundbdbook11","GLOBAL",2)~ EXIT
+ ~GlobalGT("C#RtD_CaelarPlan","GLOBAL",1)
GlobalLT("C#RtD_KnowsPortalBlood","GLOBAL",3)
GlobalLT("bd_plot","global",410)~ + @1019 /* You might be onto something there. */ + treatise_01
+ ~GlobalGT("C#RtD_CaelarPlan","GLOBAL",1)
GlobalLT("C#RtD_KnowsPortalBlood","GLOBAL",3)
GlobalLT("bd_plot","global",410)~ + @1020 /* Whatever, Brandock. Let's move on. */ + treatise_02


APPEND c#brandj

IF ~~ THEN treatise_01
SAY @1021 /* [Brandock]I... I definitely am, ain't I. */
++ @1022 /* Oh yes. A portal to Avernus beneath Dragonspear Castle which can be opened with blood of a god's direct decendant - like my Bhaalchild blood, for example? */ + treatise_03 
++ @1020 /* Whatever, Brandock. Let's move on. */ + treatise_02
END

IF ~~ THEN treatise_02
SAY @1023 /* [Brandock]Only too gladly. */
IF ~~ THEN DO ~SetGlobal("C#Brandock_SoD_Foundbdbook11","GLOBAL",2)~ EXIT
END

IF ~~ THEN treatise_03
SAY @1024 /* [Brandock]Ooh, this is all connected - isn't it... */
IF ~~ THEN DO ~SetGlobal("C#Brandock_SoD_Foundbdbook11","GLOBAL",2)
SetGlobal("C#RtD_KnowsPortalBlood_SET","GLOBAL",2)
SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~ EXIT
END

/* reaction line after Hephernaan's betrayal happened - portal is opened */
IF ~Global("C#Brandock_HephernaanBetrayal","GLOBAL",1)~ THEN hephernaan_betrayal 
SAY @1025 /* [Brandock]We-we are standing on top of... of... <CHARNAME>, he hurt you! Are you alright? */
++ @1026 /* It was just a small cut, Brandock, I'm fine. */ + hephernaan_betrayal_03
++ @1027 /* I think we have bigger problems than my cut wound! */ + hephernaan_betrayal_03
++ @1028 /* Yes, I'll be alright to fight fiends, Brandock, don't worry. */ + hephernaan_betrayal_02
+ ~Global("C#RtD_HephernaanBetrayal","GLOBAL",0)~ + @1029 /* That bastard. He planned on betraying Caelar all along. */ + hephernaan_betrayal_01
+ ~GlobalGT("C#RtD_HephernaanBetrayal","GLOBAL",0)~ + @1030 /* That bastard. He managed to betray Caelar in the end. */ + hephernaan_betrayal_03
++ @1031 /* We are standing on an open hellhole! There is really no time to talk now! */ + hephernaan_betrayal_04
END

IF ~~ THEN hephernaan_betrayal_01
SAY @1032 /* [Brandock]And succeeded... most obviously. */
IF ~~ THEN + hephernaan_betrayal_03
END

IF ~~ THEN hephernaan_betrayal_02
SAY @1033 /* [Brandock]That's... that's not what I meant. But thanks for reassuring me. */
IF ~~ THEN + hephernaan_betrayal_03
END

IF ~~ THEN hephernaan_betrayal_03
SAY @1034 /* [Brandock]I was scared for a moment he would just slit your throat. He could have. */
IF ~~ THEN + hephernaan_betrayal_04
END

IF ~~ THEN hephernaan_betrayal_04
SAY @1035 /* [Brandock]Well, then I guess we should go and face this master of Hephernaan behind this portal. I guess we don't have another choice... do we? (moans) */
IF ~~ THEN DO ~SetGlobal("C#Brandock_HephernaanBetrayal","GLOBAL",2) SetGlobal("C#RtD_HephernaanBetrayal_SET","GLOBAL",2) SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~ EXIT
END
END //APPEND

/* And changes in the d-file to detect NPC's presence in scrying pool scene */
/* witnessed scrying pool - Hooded man scene */
ADD_TRANS_ACTION BDIRENI BEGIN 78 END BEGIN END ~IncrementGlobal("C#Brandock_HepherScryPool","GLOBAL",1)~

APPEND c#brandj

/* 1.1 after seeing him at Coastway Crossing / knowing who Hephernaan is AND seeing the scry pool scene. */
IF ~Global("C#Brandock_HepherScryPool","GLOBAL",3)~ THEN hephernaan_scrying_pool
SAY @1036 /* [Brandock]That man talking to the Hooded man in the scrying pool - that was Hephernaan, Caelar's advisor - right? */
++ @1037 /* I recognized him, too. */ + hephernaan_scrying_pool_03
+ ~GlobalLT("C#RtD_HephernaanFiend","GLOBAL",2)~ + @1038 /* What do you make of this? */ + hephernaan_scrying_pool_02
+ ~GlobalGT("C#RtD_HephernaanFiend","GLOBAL",3)~ + @1039 /* Well, we know he is betraying Caelar with a fiend master, so... */ + hephernaan_scrying_pool_01
++ @1040 /* Let's move on. */ + hephernaan_scrying_pool_03
END

IF ~~ THEN hephernaan_scrying_pool_01
SAY @1041 /* [Brandock]Oooh dear... */
IF ~~ THEN + hephernaan_scrying_pool_03
END

IF ~~ THEN hephernaan_scrying_pool_02
SAY @1042 /* [Brandock]That Hephernaan and probably the whole crusade has much more ressources than we are aware of... and are aware of your heritage. */
IF ~~ THEN + hephernaan_scrying_pool_03
END

IF ~~ THEN hephernaan_scrying_pool_03
SAY @1043 /* [Brandock]Whoever they mentioned seems to be after you, too! I am sure they meant you. I mean, who else. */
IF ~~ THEN DO ~SetGlobal("C#Brandock_HepherScryPool","GLOBAL",4)~ EXIT
END

END //APPEND

CHAIN
IF ~Global("C#Brandock_HephernaanFiend","GLOBAL",1)~ THEN c#brandj hephernaan_working_for_fiend
@1044 /* [Brandock]I can't wrap my head around it - Hephernaan working for a fiend, betraying Caelar and her grand plans. */
DO ~SetGlobal("C#Brandock_HephernaanFiend","GLOBAL",2)~ 
== c#brandj IF ~Global("C#Brandock_SoD_PortalConclusion","GLOBAL",0)
OR(2)
	!GlobalGT("bd_plot","global",169) //after seeing Hephernaan at the parley at Coastway Crossing
	Global("C#RtD_RoadToDiscovery","GLOBAL",1)
OR(2)
	GlobalLT("C#RtD_CaelarPlan","GLOBAL",2)
	Global("C#RtD_RoadToDiscovery","GLOBAL",0)~ THEN @1045 /* Whatever her grand plans are. */
== c#brandj IF ~OR(2)
GlobalGT("C#RtD_CaelarPlan","GLOBAL",2)
GlobalGT("C#Brandock_PortalAvernus","GLOBAL",0)~ THEN @1046 /* She thinks she's opening a portal to free trapped souls... While Hephernaan is preparing a fiend army to greet them on the other side? */
END
IF ~~ THEN + hephernaan_working_for_fiend_01
IF ~Global("C#Brandock_SoD_PortalConclusion","GLOBAL",0)
OR(2)
	GlobalGT("bd_plot","global",169) //after seeing Hephernaan at the parley at Coastway Crossing
	Global("C#RtD_RoadToDiscovery","GLOBAL",1)
OR(2)
	Global("C#RtD_CaelarPlan","GLOBAL",2)
	Global("C#RtD_RoadToDiscovery","GLOBAL",0)~ THEN + 1_conclusion_portal

APPEND c#brandj

IF ~~ THEN hephernaan_working_for_fiend_01
SAY @1047 /* [Brandock]I still haven't wrapped my mind around this. - Just when I thought this can't get any worse... It makes sense, though. It all makes *so* much more sense now. */
IF ~~ THEN EXIT
END

/* Conclusion that Caelar is no child of Bhaal: after PC reasons / concludes / speculates that Caelar / Hephernaan want PC's blood for [open portal to Avernus] AND hearing rumors that she is a child of Bhaal (or the portal would already be open / she wouldn't go for the PC.) */
IF ~Global("C#Brandock_CaelarNoBhaalChild","GLOBAL",1)~ THEN no_bhaalchild_conclusion
SAY @1048 /* [Brandock]Caelar *knows* about the portal - but nothing happened at Dragonspear Castle yet that would imply that there is an open portal to (shudders)... to Avernus. */ 
++ @1049 /* Yes, she seems to miss an important ingredient to open it, or she would have already. */ + no_bhaalchild_conclusion_02
++ @1050 /* Do you think she's waiting for something? */ + no_bhaalchild_conclusion_01
++ @1051 /* I don't want to specuate about Caelar, Brandock. We don't know enugh to be sure. */ + no_bhaalchild_conclusion_03
END

IF ~~ THEN no_bhaalchild_conclusion_01
SAY @1052 /* [Brandock]Other than your blood? I can't think of any reason she would risk being sieged by the coalition like she does. */
IF ~~ THEN + no_bhaalchild_conclusion_04
END

IF ~~ THEN no_bhaalchild_conclusion_02
SAY @1053 /* [Brandock]That's what I think - she doesn't have the means to open it. You know, the needed blood "tainted by godly influence". */
IF ~~ THEN + no_bhaalchild_conclusion_04
END

IF ~~ THEN no_bhaalchild_conclusion_03
SAY @1054 /* [Brandock]Alright. I'll stop theorizing about Caelar's divine heritage, then. */
IF ~~ THEN DO ~SetGlobal("C#Brandock_CaelarNoBhaalChild","GLOBAL",-1) 
SetGlobal("C#SoD_CaelarNoBhaalChild","GLOBAL",1)~ EXIT
END

IF ~~ THEN no_bhaalchild_conclusion_04
SAY @1055 /* [Brandock]I think we can assume Caelar not to be a child of Bhaal. Or the whole chase for your blood wouldn't make any sense. */ 
++ @1056 /* I think you are right. Otherwise, she would have opened the portal already - and we would know if she did!  */ + no_bhaalchild_conclusion_05
++ @1051 /* I don't want to specuate about Caelar, Brandock. We don't know enugh to be sure. */ + no_bhaalchild_conclusion_03
END

IF ~~ THEN no_bhaalchild_conclusion_05
SAY @1057 /* [Brandock]Oh, yes - we would know *that*. */
IF ~~ THEN DO ~SetGlobal("C#SoD_CaelarNoBhaalChild","GLOBAL",1)
SetGlobal("C#Brandock_CaelarNoBhaalChild","GLOBAL",2) 
SetGlobal("C#RtD_CaelarBhaalChild_SET","GLOBAL",2) 
SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~ EXIT
END

/* Reaction to the knowledge that Caelar is no Bhaalchild. */
IF ~Global("C#Brandock_CaelarNoBhaalChild","GLOBAL",3)~ THEN caelar_no_childofbhaal
SAY @1058 /* [Brandock]Caelar is not a child of Bhaal. In a way, it's reassuring - to see that it's not a unique feature of Bhaal children to fall prey to megalomania. Erm, no offence meant. */
++ @1059 /* None taken. */ + caelar_no_childofbhaal_04
++ @1060 /* Then be careful with statements like that. Some Bhaalchildren are also quite ill-tempered, or so I heard. */ + caelar_no_childofbhaal_03
++ @1061 /* I'm quite happy she's not another 'half-sibling', indeed. */ + caelar_no_childofbhaal_01
++ @1062 /* I wouldn't have minded. It made kind of sense. */ + caelar_no_childofbhaal_01
++ @1063 /* Well, I'm 'hero of Baldur's Gate' and a warlord myself, so to speak - not sure that counts for megalomania, though. */ + caelar_no_childofbhaal_02
++ @1064 /* Look how high I have risen - and without wanting to. Seems it can just *happen* to some people. */ + caelar_no_childofbhaal_02
END

IF ~~ THEN caelar_no_childofbhaal_01
SAY @1065 /* [Brandock]On the other hand - maybe I'm not so fond of the idea that literally *everyone* can rise to be an usurper... oh well. */
IF ~~ THEN DO ~SetGlobal("C#Brandock_CaelarNoBhaalChild","GLOBAL",4)~ EXIT
END

IF ~~ THEN caelar_no_childofbhaal_02
SAY @1066 /* [Brandock]It's not megalomania if you only go because people asked you for help, though. */
IF ~~ THEN + caelar_no_childofbhaal_01
END

IF ~~ THEN caelar_no_childofbhaal_03
SAY @1067 /* [Brandock]Their sense of humor is not so bad, either, I reccon. Heh. */
++ @1061 /* I'm quite happy she's not another 'half-sibling', indeed. */ + caelar_no_childofbhaal_01
++ @1062 /* I wouldn't have minded. It made kind of sense. */ + caelar_no_childofbhaal_01
++ @1063 /* Well, I'm 'hero of Baldur's Gate' and a warlord myself, so to speak - not sure that counts for megalomania, though. */ + caelar_no_childofbhaal_02
++ @1064 /* Look how high I have risen - and without wanting to. Seems it can just *happen* to some people. */ + caelar_no_childofbhaal_02
END

IF ~~ THEN caelar_no_childofbhaal_04
SAY @1068 /* [Brandock]Thanks! */
++ @1061 /* I'm quite happy she's not another 'half-sibling', indeed. */ + caelar_no_childofbhaal_01
++ @1062 /* I wouldn't have minded. It made kind of sense. */ + caelar_no_childofbhaal_01
++ @1063 /* Well, I'm 'hero of Baldur's Gate' and a warlord myself, so to speak - not sure that counts for megalomania, though. */ + caelar_no_childofbhaal_02
++ @1064 /* Look how high I have risen - and without wanting to. Seems it can just *happen* to some people. */ + caelar_no_childofbhaal_02
END

/* 5.1 Conclusion that Caelar wants to open a portal to Avernus: if PC knows that Caelar is planning on marching into Avernus AND Hephernaan is working for a fiend. */
IF ~Global("C#Brandock_SoD_PortalConclusion","GLOBAL",1)~ THEN 1_conclusion_portal
SAY @1069 /* [Brandock]<CHARNAME> - if Caelar plans to free souls from Avernus... and... and Hephernaan is helping a fiend to cross planes... */
++ @1070 /* It won't work without some sort of entrance to and from Avernus. Yes, I know. */ DO ~SetGlobal("C#SoD_PortalConclusion_1","GLOBAL",1)~ + conclusion_portal_02
++ @1071 /* Then what? */ DO ~SetGlobal("C#SoD_PortalConclusion_1","GLOBAL",1)~ + conclusion_portal_02
++ @1072 /* We don't know what they'll plan. Let's not speculate about it. */ DO ~SetGlobal("C#SoD_PortalConclusion_1","GLOBAL",1)~ + conclusion_portal_01
END

/* 5.2 Conclusion that Caelar wants to open a portal to Avernus: if PC knows that Caelar is planning on marching into Avernus AND that there is a dormant rift below Dragonspear Castle. */
IF ~Global("C#Brandock_SoD_PortalConclusion","GLOBAL",2)~ THEN 2_conclusion_portal
SAY @1073 /* [Brandock]Caelar plans to free souls from Avernus... And there is a dormant portal below the Castle. */
++ @1074 /* Makes one think they'll try to open that portal. */ DO ~SetGlobal("C#SoD_PortalConclusion_2","GLOBAL",1)~ + conclusion_portal_04
++ @1071 /* Then what? */ DO ~SetGlobal("C#SoD_PortalConclusion_2","GLOBAL",1)~ + conclusion_portal_04
++ @1072 /* We don't know what they'll plan. Let's not speculate about it. */ DO ~SetGlobal("C#SoD_PortalConclusion_2","GLOBAL",1)~ + conclusion_portal_01
END

/* 5.3 Conclusion that Caelar wants to open a portal to Avernus: if PC knows that Caelar is planning on marching into Avernus AND that the PC's blood is needed to open the portal. */
IF ~Global("C#Brandock_SoD_PortalConclusion","GLOBAL",3)~ THEN 3_conclusion_portal
SAY @1075 /* [Brandock]The portal below Dragonspear Castle can be opened by your blood, and we know the crusade is planning on freeing souls from Avernus... */
++ @1076 /* That's what they are planning, isn't it? Opening this portal to Avernus beneath Dragonspear Castle. */ DO ~SetGlobal("C#SoD_PortalConclusion_3","GLOBAL",1)~ + conclusion_portal_04
++ @1077 /* So what? */ + conclusion_portal_04
++ @1072 /* We don't know what they'll plan. Let's not speculate about it. */ + conclusion_portal_01
END

IF ~~ THEN conclusion_portal_01
SAY @1078 /* [Brandock]If you say so... I'll gladly drop thinking about this, it scares me quite a bit. */
IF ~~ THEN DO ~SetGlobal("C#Brandock_SoD_PortalConclusion","GLOBAL",-1)~ EXIT
END

IF ~~ THEN conclusion_portal_02
SAY @1079 /* [Brandock]They'll *have* to plan to open a portal. */
++ @1080 /* I agree this must be what they are planning, yes. */ + conclusion_portal_03
++ @1072 /* We don't know what they'll plan. Let's not speculate about it. */ + conclusion_portal_01
END

IF ~~ THEN conclusion_portal_03
SAY @1081 /* [Brandock]They are going to open a portal, aren't they. A portal! To Avernus. */ 
IF ~~ THEN + conclusion_portal_05
END

IF ~~ THEN conclusion_portal_04
SAY @1082 /* [Brandock]They'll *have* to plan to open it. */
++ @1080 /* I agree this must be what they are planning, yes. */ + conclusion_portal_03
++ @1072 /* We don't know what they'll plan. Let's not speculate about it. */ + conclusion_portal_01
END

IF ~~ THEN conclusion_portal_05
SAY @1083 /* [Brandock]I need a moment to digest this. */
IF ~~ THEN DO ~SetGlobal("C#Brandock_SoD_PortalConclusion","GLOBAL",4)
SetGlobal("C#RtD_CaelarPlan_SET","GLOBAL",4)
SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~ EXIT
END

/* 5.4 General reaction: Caelar wants to open a portal to Avernus. */
IF ~Global("C#Brandock_PortalAvernus","GLOBAL",1)~ THEN knows_avernus_portal
SAY @1084 /* [Brandock]Caelar wants to open a portal to Avernus! Which was the reason the first Dragonspear War took place at all - because of an open portal to Avernus where the devils came out, with forces from Waterdeep and Baldur's Gate eventually marched on the castle in the first Dragonspear War. And now she's repeating it all over again? And the people *fell* for that? */
= @1085 /* [Brandock]Please tell me we will stop this madness. Please tell me we will do so soon! */
++ @1086 /* "We will stop this madness, and we will do so soon." */ + knows_avernus_portal_01
++ @1087 /* I am sure we will, Brandock. */ + knows_avernus_portal_02
++ @1088 /* We will do what we can. That's the best I'm afraid. */ + knows_avernus_portal_02
++ @1089 /* We will see, Brandock. */ + knows_avernus_portal_02
++ @1090 /* Brandock, get a grib! You losing your head is the last thing I'd need right now! */ + knows_avernus_portal_03
END

IF ~~ THEN knows_avernus_portal_01
SAY @1091 /* [Brandock](Exhales) Thanks, but it didn't work. Please, say it again... */
++ @1092 /* Brandock, look at me. We will do anything in our power to stop Caelar. */ + knows_avernus_portal_02 
++ @1088 /* We will do what we can. That's the best I'm afraid. */ + knows_avernus_portal_02
++ @1089 /* We will see, Brandock. */ + knows_avernus_portal_02
++ @1090 /* Brandock, get a grib! You losing your head is the last thing I'd need right now! */ + knows_avernus_portal_03
END

IF ~~ THEN knows_avernus_portal_02
SAY @1093 /* [Brandock]I... I guess that's the best I can get. */
IF ~~ THEN + knows_avernus_portal_04
END

IF ~~ THEN knows_avernus_portal_03
SAY @1094 /* [Brandock]I'm... I'm *trying*. */
IF ~~ THEN + knows_avernus_portal_04
END

IF ~~ THEN knows_avernus_portal_04
SAY @1095 /* [Brandock]I am not comfortable about the thought of hell creatures coming into this plane. This is bad. Worse than bad. And I am *babbling* again because I am scared. (inhales) */
IF ~~ THEN + knows_avernus_portal_05
/*
IF ~OR(2) GlobalGT("C#Brandock_SoD_Foundbdbook11","GLOBAL",0)
GlobalGT("C#RtD_KnowsPortalBlood","GLOBAL",2)
Global("C#Brandock_PortalPCBlood","GLOBAL",0)~ THEN DO ~SetGlobal("C#Brandock_PortalAvernus","GLOBAL",2)~ + portal_needs_pc_blood
*/
END

IF ~~ THEN knows_avernus_portal_05
SAY @1096 /* [Brandock]We should get going. And stop this madness... May the gods help us. */
IF ~~ THEN DO ~SetGlobal("C#Brandock_PortalAvernus","GLOBAL",2)~ EXIT
END



/* 6.1 Conclusion that Caelar didn't want to kill the PC but only kidnap after hearing about weak poison. */
IF ~Global("C#Brandock_SoDKidnapConclusion","GLOBAL",1)~ THEN kidnap_conclusion
SAY @1097 /* [Brandock]The poison Caelar's assassins used was too weak to kill? What were they planning with you - if not killing? */
++ @1098 /* Maybe they did but the poison used on Imoen wasn't meant for me? */ + kidnap_conclusion_02
++ @1099 /* Do you really think they came all the way and didn't want to kill me? */ + kidnap_conclusion_03
++ @1100 /* Maybe they wanted to incapacite me of sorts? */ + kidnap_conclusion_04
++ @1101 /* Whatever they were planning, I will not speculate about it. */ + kidnap_conclusion_01
END

IF ~~ THEN kidnap_conclusion_01
SAY @1102 /* [Brandock]Then I will be quiet. */
IF ~~ THEN DO ~SetGlobal("C#Brandock_SoDKidnapConclusion","GLOBAL",-1) 
SetGlobal("C#SoD_KidnapConclusion","GLOBAL",1) //cross-mod variable: prevent other NPCs to come with the same conclusion.
~ EXIT
END

IF ~~ THEN kidnap_conclusion_02
SAY @1103 /* [Brandock]I'm not an assassin, but handling with different kinds of poisons in the heat of a fight... sounds like something an assassin should be able to do, indeed - but to me, this sounds very risky. */
IF ~~ THEN + kidnap_conclusion_03
END

IF ~~ THEN kidnap_conclusion_03
SAY @1104 /* [Brandock]You really think they would try to kill you, but take care only to incapacitate the others? Sounds too nice to be true - er, I mean except for the "trying to kill you" part, of course. */
++ @1105 /* Maybe they wanted to take me with them? */ + kidnap_conclusion_06
++ @1100 /* Maybe they wanted to incapacite me of sorts? */ + kidnap_conclusion_04
++ @1101 /* Whatever they were planning, I will not speculate about it. */ + kidnap_conclusion_01
END

IF ~~ THEN kidnap_conclusion_04
SAY @1106 /* [Brandock]But what for? So you are unconscious for some days and your hands tremble for a few more?  - I am not saying this wouldn't be bad, but it wouldn't really keep the coalition from chasing after the crusade. */
++ @1105 /* Maybe they wanted to take me with them? */ + kidnap_conclusion_06
++ @1107 /* Maybe we are overthinking this. The solution might be right in front of our eyes. */ + kidnap_conclusion_05
++ @1108 /* I think it's a fact that they did not try to kill me but incapacitate me - question is why. */ + kidnap_conclusion_06
++ @1101 /* Whatever they were planning, I will not speculate about it. */ + kidnap_conclusion_01
END

IF ~~ THEN kidnap_conclusion_05
SAY @1109 /* [Brandock]Overthinking something? Who, me?... Definitely. */
++ @1105 /* Maybe they wanted to take me with them? */ + kidnap_conclusion_06
++ @1108 /* I think it's a fact that they did not try to kill me but incapacitate me - question is why. */ + kidnap_conclusion_06
++ @1101 /* Whatever they were planning, I will not speculate about it. */ + kidnap_conclusion_01
END

IF ~~ THEN kidnap_conclusion_06
SAY @1110 /* [Brandock]If it were normal assassins I'd say they tried to take you for a ransom or because someone payed them for kidnapping you... */
++ @1111 /* Yes, that's it. Making me helpless to be able to kidnap me! */ + kidnap_conclusion_07
++ @1101 /* Whatever they were planning, I will not speculate about it. */ + kidnap_conclusion_01
END

IF ~~ THEN kidnap_conclusion_07
SAY @1112 /* [Brandock]That sounds possible, indeed! */
IF ~~ THEN DO ~SetGlobal("C#Brandock_SoDKidnapConclusion","GLOBAL",2)
SetGlobal("C#RtD_CaelarKidnap_SET","GLOBAL",1) 
//SetGlobal("C#RtD_CaelarWantsPC_SET","GLOBAL",1) will be set by script
SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~ EXIT
END

/* 7.1 Conclusion that Caelar needs the PC's blood to open the portal: if Caelar needs Bhaalblood AND PC knows that she is no Bhaalspawn herself. */
IF ~Global("C#Brandock_PortalPCBloodConclusion","GLOBAL",1)~ THEN 1_portal_needs_pc_blood_conclusion
SAY @1113 /* [Brandock]Caelar is no Bhaalspawn herself and she needs Bhaalblood... I think it is obvious what for. */
++ @1114 /* To open that portal below Dragonspear Castle, yes, I figured it out myself. */ DO ~SetGlobal("C#SoD_PortalPCBloodConclusion_1","GLOBAL",1)~ + portal_needs_pc_blood_conclusion_02
++ @1115 /* What for then? */ DO ~SetGlobal("C#SoD_PortalPCBloodConclusion_1","GLOBAL",1)~ + portal_needs_pc_blood_conclusion_01
++ @1116 /* Well - is it obvious or do you only think you know what for? */ DO ~SetGlobal("C#SoD_PortalPCBloodConclusion_1","GLOBAL",1)~ + portal_needs_pc_blood_conclusion_03
++ @1117 /* I don't care what for, Brandock. Let's move on. */ DO ~SetGlobal("C#SoD_PortalPCBloodConclusion_1","GLOBAL",1)~ + portal_needs_pc_blood_conclusion_07
END

/* 7.2 Conclusion that Caelar needs the PC's blood to open the portal: if Caelar needs Bhaalblood AND wanted to kidnap the PC. */
IF ~Global("C#Brandock_PortalPCBloodConclusion","GLOBAL",2)~ THEN 2_portal_needs_pc_blood_conclusion
SAY @1118 /* [Brandock]Caelar tried to kidnap you and needs Bhaalblood... I think it is obvious what for. */
++ @1114 /* To open that portal below Dragonspear Castle, yes, I figured it out myself. */ DO ~SetGlobal("C#SoD_PortalPCBloodConclusion_2","GLOBAL",1)~ + portal_needs_pc_blood_conclusion_02
++ @1115 /* What for then? */ DO ~SetGlobal("C#SoD_PortalPCBloodConclusion_2","GLOBAL",1)~ + portal_needs_pc_blood_conclusion_01
++ @1116 /* Well - is it obvious or do you only think you know what for? */ DO ~SetGlobal("C#SoD_PortalPCBloodConclusion_2","GLOBAL",2)~ + portal_needs_pc_blood_conclusion_03
++ @1117 /* I don't care what for, Brandock. Let's move on. */ DO ~SetGlobal("C#SoD_PortalPCBloodConclusion_2","GLOBAL",2)~ + portal_needs_pc_blood_conclusion_07
END

IF ~~ THEN portal_needs_pc_blood_conclusion_01
SAY @1119 /* [Brandock]The portal below Dragonspear Castle can be opened by blood with divine influence - like your blood, <CHARNAME>. It can't get any more tainted than if you are a direct offspring of a god, can it? */
IF ~~ THEN + portal_needs_pc_blood_conclusion_02
END

IF ~~ THEN portal_needs_pc_blood_conclusion_02
SAY @1120 /* [Brandock]I am very sure Caelar wants to open the portal with your blood. */
++ @1121 /* It's indeed obvious. */ + portal_needs_pc_blood_conclusion_05
++ @1122 /* Yes, I agree. Godsdammit! */ + portal_needs_pc_blood_conclusion_04
++ @1123 /* So, I would be one source to open the portal... */ + portal_needs_pc_blood_conclusion_06
++ @1124 /* So they need me for *this* - or my blood, to be precise. */ + portal_needs_pc_blood_conclusion_06
++ @1117 /* I don't care what for, Brandock. Let's move on. */ + portal_needs_pc_blood_conclusion_07
END

IF ~~ THEN portal_needs_pc_blood_conclusion_03
SAY @1125 /* [Brandock]I *think* it's obvious... alright, it *is* obvious what she needs your blood for. To me! */
++ @1114 /* To open that portal below Dragonspear Castle, yes, I figured it out myself. */ + portal_needs_pc_blood_conclusion_02
++ @1115 /* What for then? */ + portal_needs_pc_blood_conclusion_01
++ @1117 /* I don't care what for, Brandock. Let's move on. */ + portal_needs_pc_blood_conclusion_07
END

IF ~~ THEN portal_needs_pc_blood_conclusion_04
SAY @1126 /* [Brandock]I couldn't have put it better. */
IF ~~ THEN + portal_needs_pc_blood_conclusion_05
END

IF ~~ THEN portal_needs_pc_blood_conclusion_05
SAY @1127 /* [Brandock]Well - let's make sure she doesn't get it, shall we? */
IF ~~ THEN DO ~SetGlobal("C#Brandock_PortalPCBloodConclusion","GLOBAL",3)
SetGlobal("C#RtD_KnowsPortalBlood_SET","GLOBAL",3) 
//SetGlobal("C#RtD_WantBhaalBlood_SET","GLOBAL",2) will be set by script
SetGlobal("C#RtD_VariableEvaluation","GLOBAL",1)~ EXIT
END

IF ~~ THEN portal_needs_pc_blood_conclusion_06
SAY @1128 /* [Brandock]It seems like it. */
IF ~~ THEN + portal_needs_pc_blood_conclusion_05
END

IF ~~ THEN portal_needs_pc_blood_conclusion_07
SAY @1129 /* [Brandock]Fine. We want to make sure they won't get their hands on your blood, anyway. */
IF ~~ THEN DO ~SetGlobal("C#Brandock_PortalPCBloodConclusion","GLOBAL",-1)~ EXIT
END

/* after Bhaal sign incident at bridge */
IF ~Global("C#Brando_SoDBoareskyrBridgeScene","GLOBAL",1)
Global("C#Brandock_c#stff24_10","GLOBAL",0)~ THEN bhaal_bridge
SAY @1000 /* What in the nine hells' name was that? <CHARNAME>, are you alright? */ /* @1000 /* What in the nine hells' name was that? <CHARNAME>, are you alright? */ */
IF ~~ THEN DO ~SetGlobal("C#Brando_SoDBoareskyrBridgeScene","GLOBAL",2)~ EXIT
END

IF ~Global("C#Brando_SoDBoareskyrBridgeScene","GLOBAL",3)
Global("C#Brandock_c#stff24_10","GLOBAL",1)~ THEN bhaal_bridge_00
SAY @1130 /* [Brandock]What happened back on the Boareskyr Bridge... You know, the surge of divine energy, the symbol of Bhaal burning itself into the ground - I'm not sure why I'm repeating this, I'm pretty sure you didn't forget about it yet. */
IF ~~ THEN + bhaal_bridge_02
END

IF ~~ THEN bhaal_bridge_01
SAY @1131 /* [Brandock]Well, it was a *lot* to take in for "nothing", but fine, I'll be quiet. */
IF ~~ THEN DO ~SetGlobal("C#Brando_SoDBoareskyrBridgeScene","GLOBAL",4)~ EXIT
END

IF ~~ THEN bhaal_bridge_02
SAY @1132 /* [Brandock]It sure as hell looked very impressive. Not to say frightening. Good that I know you so well already, or my imagination would go wild. It was a real show off, now that I think about it. So much unlike your Bhaal dreams. And *so* scary. */
= @1133 /* [Brandock]I wonder what kind of magic that was. Divine, for sure. But is was not only a vision, because we all saw it - and *felt* it. Did something happen to you? */
++ @1134 /* You catched the part where the sign of Bhaal appeared around me in a pile of smoke?... */ + bhaal_bridge_07
++ @1135 /* Well, I do feel like I'm the stare of everyone these days. */ + bhaal_bridge_04
++ @156 /* What do you mean? */ + bhaal_bridge_08
++ @1136 /* It's nothing, Brandock. Let's move on. */ + bhaal_bridge_01
END

IF ~~ THEN bhaal_bridge_03
SAY @1137 /* [Brandock]This is where Bhaal was killed, after all. Best you go and see a priest soon. I can judge the magic involved and see that there is no more spell on you, but I do not know how it could have affected your health. Maybe... it did drain you somehow? */
= @1138 /* [Brandock]The thought of this magic arising out of godly magic stored at this spot is pretty scary, and that it did nothing to you is even more frightening, because I expect it to having done *something* we just do not know yet. */
IF ~~ THEN DO ~SetGlobal("C#Brando_SoDBoareskyrBridgeScene","GLOBAL",4)~ EXIT
END

IF ~~ THEN bhaal_bridge_04
SAY @1139 /* [Brandock]Yes, I know what you mean... but that's not what I meant. */
IF ~~ THEN + bhaal_bridge_08
END

IF ~~ THEN bhaal_bridge_05
SAY @1140 /* [Brandock]Oh, that's good. Right? I mean it has to be good. This is where Bhaal was killed, after all. Best you go and see a priest soon. I can judge the magic involved and see that there is no more spell on you *now*, so how it could have affected your health is something we will only be able to tell in time. */
= @1141 /* [Brandock]The thought of this magic arising out of godly magic stored at this spot is pretty scary, and I am not sure I like that it did something to you, because I expect it to having done *something* so I hope that was it and there won't be a follow-up we just do not know about yet. */
IF ~~ THEN DO ~SetGlobal("C#Brando_SoDBoareskyrBridgeScene","GLOBAL",4)~ EXIT
END

IF ~~ THEN bhaal_bridge_06
SAY @1142 /* [Brandock]Nothing *yet*? That's exactly what I am talking about, you know? */
IF ~~ THEN + bhaal_bridge_03
END

IF ~~ THEN bhaal_bridge_07
SAY @1143 /* [Brandock]Yes! I didn't mean *that*. I meant to *you*! Did something happen to you? */
IF ~~ THEN + bhaal_bridge_08
END

IF ~~ THEN bhaal_bridge_08
SAY @1144 /* [Brandock]Do you feel any different? Any new abilities or somesuch? */
+ ~Global("C#stbb_StatChange","GLOBAL",0)~ + @1145 /* Not that I notice, no. */ + bhaal_bridge_03
+ ~Global("C#stbb_StatChange","GLOBAL",0)~ + @1146 /* Nothing yet. */ + bhaal_bridge_06
+ ~GlobalGT("C#stbb_StatChange","GLOBAL",0)~ + @1147 /* Something has changed, yes... */ + bhaal_bridge_05
+ ~Global("C#stbb_StatChange","GLOBAL",1)~ + @1148 /* Well, I see things more clearly... */ + bhaal_bridge_05
+ ~Global("C#stbb_StatChange","GLOBAL",2)~ + @1149 /* Well, I do feel more skilled... */ + bhaal_bridge_05
+ ~Global("C#stbb_StatChange","GLOBAL",3)~ + @1150 /* Well, I do feel more resolute... */ + bhaal_bridge_05
++ @1136 /* It's nothing, Brandock. Let's move on. */ + bhaal_bridge_01
END
END //APPEND