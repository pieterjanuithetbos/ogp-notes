klassen nesten

geneste klasse: 
    - `static`: enige verschil met niet-geneste klasse is dat je hem nu private kan maken


# Vraag 
Probleem: we willen het itereren over een lijst op een abstracte manier definiëren en dynamisch binden bij uitvoering.

Toepassing: van vandaag: hoe kan je een _overloaded_ method gebruiken zonder die tweemaal te moeten implementeren?

je wil dus drie zaken abstract definiëren
+ kijken of je op het einde zit
+ de pointer een vakje vooruit zetten
+ en het huidig element uitlezen


## Nested class

## Inner class

### To static or not to static?
static weglaten --> impliciete verwijzing naar een object van de _outer classs_

## Lokale klasse

- gelijkaardig principe
- een lokale klasse kan enkel opgeroepen worden in de _outer class_


## Anonieme klasse
binnen één expressie definieer je een klasse waar enkel op die plaats naar verwezen wordt

# inwendige vs uitwendige klassen
## Uitwendige klasse
lus is uitwendig aan de abstractie
## Inwendige klasse
~ inwendig ~


## Lambda expressies
    - maakt anonieme klasse die de code van de lambda expressie implementeert
    - kunnen ook objecten in methode gebruiken


bv: geef een _predicate_ mee 


if predicaat.test(element)

