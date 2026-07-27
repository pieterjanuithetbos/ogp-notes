## Iterators en Iterables

- Onthoud goed: de moederklasse implements `Iterable`, een een geneste private klasse kan `Iterator` implementeren. 
- `forEach()`wordt opgeroepen op een Iterable.
- `Iterator` en `Consumer` hebben een eigen klasse nodig. `Iterable` niet per se, als het alleen om `forEach` gaat.
