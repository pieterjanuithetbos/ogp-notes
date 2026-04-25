## Bordschema

| Abstractie        | Abstracte waarde  | Implementatie
| String            | tekst             | char-array, knopen
| ArrayList         | [10, 20, 30]      | ArrayList, LinkedList ...
| Set               | {1, 2, 3}         | 

Grafen zijn multiobjectabstracties!

## vb. Student-abstractie
-> dan bestaat één instantie van een grafe-object uit _meerdere_ Student-objecten: een 
**peer group**

Dan heb je _bidirectionele associaties_

consistentie van de bidirectionele associaties!

Dat is één van de **meest gemaakte fouten** op het examen!



In geval van peerobjects: 
je krijgt vaak de situatie dat de invariant van één toestand ook spreekt over andere objects
Laten we enkel toe als een ander een object een 
+ representation object is van this
+ een peerobject is van this


Daarom eisen we dat de peerobject-relatie **symmetrisch** is


## Algemeen
vergeet niet om bij een constructor de initiële toestand van een object te specifieren


Kopieën maken van objecten in graafabstracties is bijna altijd fout!

