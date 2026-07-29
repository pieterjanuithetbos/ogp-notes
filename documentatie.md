# Documentatiegids

API definiëren: 
- voorwaarden op input of state (bij `void`-methods)
- wat gebeurt er met input? (= `@mutates`, `@inspects`)
- wat gebeurt er met this, hoe komt de output tot stand? (= `@creates`)
- voorwaarden op output (kan de output `null` zijn?). Zeg misschien iets over de ...
    -  dimensie
    -  inhoud

invarianten schrijven: 
- is het een `representationObject`?
- is het een `peerObject`? 
- Wat kan ik zeggen over het object **zelf** (eventueel door andere methodes te gebruiken)

Procedure voor het definiëren van een data-abstractie:

1. Definieer de API
    1. Schrijf een regel informele documentatie bij de klasse zelf.
        Wat stelt een instantie voor (onwijzigbare abstractie)
        of wat slaat ze op (wijzigbare abstractie)?
    2. Declareer de inspectoren (= getters)
        (= definiëren 'rauwe' abstractetoestandsruimte)
    3. Schrijf de abstractetoestandsinvarianten
        (= definieer de geldige abstractetoestandsruimte)
    4. Documenteer de constructoren en mutatoren

2. [Testen](testen.md)
3. Definieer de implementatie
   1. Definieer de velden (= attributen)
        (= de rauwe concretetoestandsruimte)
   2. Schrijf de representatie-invarianten
        zijn minstens zo streng als de publieke invarianten!
        (= definieer de geldige concretetoestandsruimte)
   3. Implementeer de inspectoren
        (= definiëren van de abstractierelatie)
        SANITY CHECKS
        1. De inspectoren mogen niet crashen bij geldige
           concrete toestanden
        2. De inspectoren mogen geldige concrete toestanden
           afbeelden op geldige abstracte toestanden.
   4. Implementeer de constructoren en mutatoren.


## Handige functies bij documentatie

        SpecUtil.containsDuplicateObjects()

        old(this).method()

## Bijzonderheden

