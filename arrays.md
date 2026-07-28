## Om te beginnen
- arrays are mutable, 
- but their **length** is not


## Aanmaken
met `{}`

    String[] object = {"test", "one", "two"}

of met `new`

    String[] object = new String[] {"test"}
    String[] object = new String[5] 


## Kopiëren
- met `.clone()`
    - is een shallow copy
- met `Arrays.copyof(T[] original, int newLength)`



## Geneste arrays
- lengte berekenen

## Bewerkingen
- Kan je twee arrays optellen?
    - niet met een shortcut

## Interessante methodes
Erg interessant is de `Arrays`-library:

- `copyOf()`
- `stream()`
- `toString()`



## Documentatie
### Gebruik `assertArrayEquals`
werkt wel:

		assertArrayEquals(new int[] {1, 2}, test1.getAll());

werkt niet:

		assertEquals(new int[] {1, 2}, test1.getAll());
