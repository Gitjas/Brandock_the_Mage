/* Solaufein crossmod  */

/* @1119 = ~Let's hope <PRO_HESHE>'ll finish <PRO_HISHER> destiny-shaping before I start turning into the slayer or some giant werechicken.~ */
I_C_T ~BIMOEN25~ %BIMOEN25_1119% C#Brando_BIMOEN25_1119
== C#BrandJ IF ~GlobalGT("C#Brandock_Shapeshift","GLOBAL",10)
OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2)
See("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN @0 /* ~Imoen, you *had* to chose that example, yes?~ */
END

