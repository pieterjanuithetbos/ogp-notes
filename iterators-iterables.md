## Iterators en Iterables

### Iterators
Een iterat _or_ **loopt** als het ware **doorheen** de datastructuur

### Iterables
Een Iter- _able_ **laat toe** dat een iterator eroverheen loopt. 

- datastructuren die _itereerbaar_ zijn, _implementeren_ de interface `Iterable`.



- Onthoud goed: de moederklasse implements `Iterable`, een een geneste private klasse kan `Iterator` implementeren. 
- `forEach()`wordt opgeroepen op een Iterable.
- `Iterator` en `Consumer` hebben een eigen klasse nodig. `Iterable` niet per se, als het alleen om `forEach` gaat.
