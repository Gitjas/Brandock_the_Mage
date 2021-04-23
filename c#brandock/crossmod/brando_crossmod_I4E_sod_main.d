/* In case Brandock was not in party when HC said good bye to Imoen in Palace, good bye dialogue becomes two inparty banter 
Global("C#Brandock_ImoenSoD","GLOBAL",0): interjection did not run */

CHAIN
IF WEIGHT #-1 
~Global("C#Brandock_ImoenSoD","GLOBAL",2)~ THEN C#BrandB brandockimoenSoD_1
~Imoen, I am happy that you are back with us now.~
DO ~SetGlobal("C#Brandock_ImoenSoD","GLOBAL",3)~
== C#BrandB IF ~Global("C#Brandock_ImoenSoD_Palace","GLOBAL",0)~ THEN ~I can't tell you how glad I am to see you alive and well.~
== C#BrandB IF ~GlobalGT("C#Brandock_ImoenSoD_Palace","GLOBAL",0)~ THEN ~I'm really glad to see you alive and well.~
== BDIMOENB ~[Imoen] Oh, me too! Being poisoned was scary. Having trembling hands was scary! Letting <CHARNAME> go without me was very scary! I'm glad I'm back.~
EXIT

CHAIN
IF WEIGHT #-1 
~Global("C#Brandock_ImoenSoD","GLOBAL",5)~ THEN BDIMOENB brandockimoenSoD_add
@100285 
DO ~SetGlobal("C#Brandock_ImoenSoD","GLOBAL",6)~
== c#brandj @100286
== BDIMOENB @100287 
== c#brandj ~You mean the one you didn't stay with but left to follow <CHARNAME> into adventure? That well-known magic teacher?... NonoNONO! OUCH!~
== BDIMOENB ~Still she chose me!~
== c#brandj ~I know, Imoen. And she had all reason to. I never doubted your talent. Alright - *maybe* I doubted your talent, but never your ambition, which is a big part of the cake.~
== c#brandj ~I... don't think I was jealous.~
== BDIMOENB @100288
== c#brandj @100289
== BDIMOENB @100290
EXIT