# Lering examen augustus 2025a

+ pas op met **deep copy vs shallow copy**! Bij een deep copy itereer je over het object en kopieer je het. Beter te veel kopiëren dan te weinig!

+ Groepeer zoveel mogelijk in de superklassen, bv. :
    - velden (enkel in **abstracte klassen**, niet in interfaces. Interfaces definiëren per definitie niet de interne voorstelling van een API.)
    - (delen van) constructoren: gebruik dan `super(arg)`
    - delen van implementaties van methods: bv. `equals()`, `hashCode()`. Die moet je al implementeren in de superklasse, maar mag je in de subklassen later opnieuw overriden.


+ gebruik *zo veel mogelijk* `equals()`, niet `==`


+ Java heeft geen ingebouwde manier om een Array te slicen. Probeer eventueel `String.valueOf()`

+ wees precies in documentatie:   

         	 * @post | buffer.length < result || Arrays.equals(buffer, result, buffer.length, old(buffer.clone()), result, buffer.length)


+ `'char'`, maar `"string"`! Dat heeft als gevolg: 
    - `charArray[0] = '/'`


+ `equals()` kijkt doorgaans naar de geheugenlocatie, terwijl `Arrays.equals()` naar de inhoud van twee arrays kijkt.i


+ test eventueel manueel de gelijkheid van ingevoerde data.

+ Let goed op welke methods voorzien zijn. Zo is er `myMap.values()`


+ vergeet niet om na te kijken waar je `@creates |` kan gebruiken.

+ het is een optie om de ingebouwde Java-iterator te importeren, en eventueel in de body van de code te implementeren.

+ Houd rekening met de implicaties van het aanduiden van `...E` als representationObjects. 

+ overschrijf Object.equals() met een een meer specifieke implementatie.

+ schrijf niet `ingangen == getIngangen()`, maar gebruik `equals()`.


+ **testen**: Sets zijn je vrienden. bij het testen van iteratoren en streams. 

## Syntax
+ `Arrays.equals()`
+ `	 * @post | buffer.length < result || Arrays.equals(buffer, result, buffer.length, old(buffer.clone()), result, buffer.length)`
+ `String.equals()`
+ `Arrays.equals()`
+ `String.valueOf()`




## Vragen
-  wat zijn de verschillen tussen interfaces en klassen?
