## Om te beginnen
- arrays are mutable, 
- but their **length** is not


## Aanmaken
- met `{}`
```
    String[] object = {"test", "one", "two"}
```
of met `new`
```
    String[] object = new String[] {"test"}
    String[] object = new String[5] 
```
- er is een verschil tussen `int[][]` en `Integer[][]`



## Kopiëren
- met `.clone()`
    - is een shallow copy
- met `Arrays.copyof(T[] original, int newLength)`

- `System.arraycopy()`, with parameters:
    - `src` the source array.
    - `srcPos` starting position in the source array.
    - `dest` the destination array.
    - `destPos` starting position in the destination data.
    - `length` the number of array elements to be copied

## Geneste arrays
- lengte berekenen: 
    
    aantal rijen: `array.length`
    aantal kolommen: `array[0].length`

- merk op: bv. `@creates`, wordt `@creates | result, ...result`
- een geneste array aanmaken:

        double[][] new  = new double[][] {
                {1, 2},
                {4, 5},
            }

## Bewerkingen
- Kan je twee arrays optellen?
    - niet met een shortcut

## Interessante methodes
Erg interessant is de `Arrays`-library:

- `copyOf(original, size)`
- `stream()`
- gebruik niet `toString()`, maar `Arrays.toString(toArray())`
- `equals()`
- (eventueel) `deepEquals`


## Testen
Gebruik `assertArrayEquals`. 
Werkt ook voor geneste arrays.
werkt wel:

		assertArrayEquals(new int[] {1, 2}, test1.getAll());

werkt niet:

		assertEquals(new int[] {1, 2}, test1.getAll());
