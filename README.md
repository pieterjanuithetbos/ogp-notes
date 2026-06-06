# Notities OGP

## Iterators en Iterables

Onthoud goed: de moederklasse implements `Iterable`, een een geneste private klasse kan `Iterator` implementeren.

`forEach()`wordt opgeroepen op een Iterable.

### Lamdba-expressies


- werken enkel voor _functional interfaces_, dwz klassen die slechts één abstracte methode declareren. 
Daarom krijgt `Consumer` een aparte klasse.

- variabelen moeten _effectively final_ zijn

