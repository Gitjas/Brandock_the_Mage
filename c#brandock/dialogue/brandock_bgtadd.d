/* BGT: extra dialogue state for Thalantyr */


EXTEND_BOTTOM %tutu_var%THALAN 35 
+ ~Global("C#Brandock_Shapeshift","GLOBAL",6) !Dead("C#Brandock") !Dead("c#brhao2")
Global("C#BrandockShapeshift","LOCALS",0)
Global("C#BrandockThalan25","GLOBAL",0)~ + @1281  DO ~SetGlobal("C#BrandockShapeshift","LOCALS",1)~ + brandock_bgt
END

APPEND %tutu_var%THALAN

IF ~~ THEN brandock_bgt
SAY @1283
= @1284
IF ~~ THEN + 35
END

END //APPEND