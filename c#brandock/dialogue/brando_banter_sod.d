/* 1st with Corwin, "c#brsb01.baf" */
CHAIN
IF WEIGHT #-1
~Global("C#Brandock_CorwinSoD","GLOBAL",2)~ THEN C#BrandB brandock_corwin_sod_1
@0
DO ~SetGlobal("C#Brandock_CorwinSoD","GLOBAL",3)~
== BDCORWIB @1
== C#BrandB @2
== BDCORWIB @3
== C#BrandB @4
== BDCORWIB @5
== C#BrandB @6
EXIT

/* 2nd with Corwin, "c#brsb02.baf" */
CHAIN
IF WEIGHT #-1
~Global("C#Brandock_CorwinSoD","GLOBAL",5)~ THEN C#BrandB brandock_corwin_sod_2
@7
DO ~SetGlobal("C#Brandock_CorwinSoD","GLOBAL",6)~
== BDCORWIB @8
== C#BrandB @9
== BDCORWIB @10
== C#BrandB @11
== BDCORWIB @12
== C#BrandB @13
EXIT

/* 3rd with Corwin, "c#brsb03.baf" */
CHAIN
IF WEIGHT #-1
~Global("C#Brandock_CorwinSoD","GLOBAL",8)~ THEN C#BrandB brandock_corwin_sod_3
@14
DO ~SetGlobal("C#Brandock_CorwinSoD","GLOBAL",9)~
== BDCORWIB @15
== C#BrandB @16
= @17
== BDCORWIB @18
== C#BrandB @19
EXIT


/* 1st with , "c#brsb04.baf" 
BDMKHIIB */
CHAIN
IF WEIGHT #-1
~Global("C#Brandock_MHhiinSoD","GLOBAL",2)~ THEN C#BrandB brandock_corwin_sod_3
@20
DO ~SetGlobal("C#Brandock_MHhiinSoD","GLOBAL",3)~
= @21
= @22
= @23
== BDMKHIIB @24
== C#BrandB @25
EXIT