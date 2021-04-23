
/* @80   = ~Wenn man der Welt wirklich einen Gefallen tun wollte, dann würde man den Werwolf töten und seine Leiche zu mir schaffen. Vielleicht kann ich durch die Obduktion wertvolle Erkenntnisse gewinnen, für den Fall, dass es den nächsten armen Hund trifft.~
*/
I_C_T ~THALAN~ %thalan_80% C#Brandock_thalan_ac80
== ~c#brandj~ IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN @10 /* ~[Brandock]Was? Nein, das kann nicht Euer Ernst sein! Das ist doch ein Mensch... hinter dem Wolf, und Ihr wisst, wie man ihm hilft. Das meintet Ihr doch bestimmt nicht ernst?~ */
== ~c#brandj~ IF ~OR(2) InParty("C#Brandock") Global("C#BrandockJoined","GLOBAL",2) InMyArea("C#Brandock") !StateCheck("C#Brandock",CD_STATE_NOTVALID)~ THEN @11 /* ~[Thalantyr]Junger Magier, die Erfahrung hat mich gelehrt, dass man nicht immer allen helfen kann - und auch wenn man es könnte, es in manchen Fällen mehr Leid verursacht, als das Missgeschick eines Einzelnen als Anlass zu nehmen, eine grundsätzliche Lösung für ein Unheil zu finden, das sicher noch weitere Leben in Gefahr bringen wird.~ */
END

