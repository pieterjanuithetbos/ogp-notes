# les 4

## termen
rauw

geldig

concrete toestand
    - de waarden van de velden
    -
abstracte toestand

inspectoren beelden abstracte toestanden af op geldige conrete toestanden


## stappenplan

+ API documenteren
    - onafhankelijk van manier van implementatie
+ API implementeren
    -
    -


implementatie mag nooit crashen


## Abstracte informatie

vs 
## Concrete implementatie

Klant mag op geen enkele manier te weten komen dat achter abstracte view ook een concrete view schuilgaat.

Welkom _representation objects_, die je **nooit** mag blootstellen aan een klant.
    - als dat gebeurt op het examen, ben je waarschijnlijk gebuisd.a


fsc4j even uitschakelen? refactor en voeg 0fsc4j toe

## representation objects

    mutates this

betekent ook dat alle representation objects van this gewijzigd morgen worden.

Wat zijn voorbeelden van abstractetoestandsinvarianten
# vragen
- mag je in een setter gebruik maken van een getter?
