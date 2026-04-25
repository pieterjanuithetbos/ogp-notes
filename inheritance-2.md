# switch 
 switch moet alle gevallen afdekken
 
Als we met instructies werken moeten we er rekening mee houden dat er **in de toekomst instructies kunnen bijkomen.** 

+ optie: voeg `default` toe
+ ook een optie: `sealed` toevoegen
    - voeg dan `sealed` toe bij klassen die permitted zijn
    - voeg `permits`-clause toe! 
+ iets met `final` bij extra methods


# switch-aanpak
clients toevoegen: makkelijk
instructies toevoegen: moeilijk

# Dynamische binding
groepeer de code anders
clients toevoegen: moeilijk
instructies toevoegen: makkelijk

de betekenis van een abstracte klasse: enkel objecten van kinderklassen kunnen bestaan

De keuze van welke methode daadwerkelijk opgeroepen wordt, gebeurd pas @runtime!

Oude compilers lieten zich leiden door het statisch type,
die keuze wordt nu uitgesteld.
# Vragen
- wat met `Halt()`?
- wat met `.execute()`?


# Wat meer over de acthergrond van dynamische binding
V-table: tabel in het geheugen met lijst van implementaties van (in casu) `toSVG()`

# meer terminologie
+ **override**: 
zinvol om het erbij te schrijven!
Iedereen is een kind van `Object()`
Nuttig, want die definieert deze nuttige methodes:
+ `equals()`
    - voorbeeld van **contract in de praktijk!**: gaat om een _equivalentierelatie_ 
    - 'gevaarlijk om fouten tegen te maken: kan zoeken in opzoektabellen in de war brengen'
    - MORAAL VAN HET VERHAAL: implementeer enkel je eigen `equals()`-method bij @immutable objecten
    - als je `equals()` wijzigt, moet je ook `hashcode()` wijzigen
+ `toString()`
+ `hashCode()`
    - hashmaps laten toe ...
    - overriden is gevaarlijk


Laat automatisch constructoren/standaard implementaties genereren
- voorbeeld: 

        record 

Komt met getters, setters, constructor, equals en hash?
