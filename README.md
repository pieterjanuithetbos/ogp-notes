# Notities OGP

Voor verdere lectuur: zie 
+ een bestandje over [shortcuts](shortcuts.md)


## Dynamic binding
Record classes: 

    public record Point(int x, int y) {}

+ immutable and _final_
+ provide `equals, toString, hashCode`


## Iterators en Iterables

Onthoud goed: de moederklasse implements `Iterable`, een een geneste private klasse kan `Iterator` implementeren.

`forEach()`wordt opgeroepen op een Iterable.

### Lamdba-expressies


- werken enkel voor _functional interfaces_, dwz klassen die slechts één abstracte methode declareren. 
Daarom krijgt `Consumer` een aparte klasse.

- variabelen moeten _effectively final_ zijn


## Streams
- `collect`

## Syntax and more

    String 	substring(int beginIndex)

Returns a string that is a substring of this string.




