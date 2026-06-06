# Notities OGP

Voor verdere lectuur: zie 
+ een bestandje over [shortcuts](shortcuts.md)
+ uitleg over [_nesting class-level and package-level abstractions_](nesting.md)


## Dynamic binding
Record classes: 

    public record Point(int x, int y) {}

+ immutable and _final_
+ provide `equals, toString, hashCode`


## Iterators en Iterables

Onthoud goed: de moederklasse implements `Iterable`, een een geneste private klasse kan `Iterator` implementeren.

`forEach()`wordt opgeroepen op een Iterable.

### Generics
Iterators en Iterables zorgen voor abstractie over verschillende implementaties van iterators en iterables.
Voor abstractie over eenzelfde implementatie, gebruiken we generics.
Dat noemt met *subtype polymorphism*.

Doe niet 
    
    		return kop == ((NietLegeLijst<T>) obj).kop && Objects.equals(staart,  ((NietLegeLijst<?>) obj).staart);

maar 

		return kop == ((NietLegeLijst<T>) obj).kop && Objects.equals(staart,  ((NietLegeLijst<?>) obj).staart);


Dat komt door erasure.
1. @compiletime worden alle T's vervangen door de constraint. Als er geen constraint is, wordt alles vervangen door `Object`.
2. Bij het doorgeven van een wildcard ? check je enkel dat het object een `NietLegeLijst` was en niet welke objecten het herbergde. Bij `T` wil de compiler dat wel proberen achterhalen, maar lukt dat niet omdat het type weggevaagd is.
3. ` .<T>accept`: garandeert dat de invoer van method accept van type T is.
4. wildcards. 
    - zo algemeen mogelijk: gebruik een _lower bounded wildcard_ : `? super T`
    - specifieker: `? extends T`
### Lamdba-expressies


- werken enkel voor _functional interfaces_, dwz klassen die slechts één abstracte methode declareren. 
Daarom krijgt `Consumer` een aparte klasse.

- variabelen moeten _effectively final_ zijn


## Streams
- `collect`
    
        .collect(Collectors.toList());
        .collect(StringBuilder::new, (x, y) -> x.append(y),
		(a, b) -> a.append(",").append(b));


Om enkele zaken op een rijtje te zetten:
1. je kan de uitvoer limiteren met `limit()`
2. Er zijn booleaanse operatoren die `orElse()` vereisen

	public List<Studenten> filterStudents(List<Studenten> lijst) {
		return lijst.stream().filter(
				i -> i.exams.stream().mapToInt(j -> j.score).average().orElse(0) > 10
				).limit(10).collect(Collectors.toList());
				
	}


## Syntax and more

    String 	substring(int beginIndex)

Returns a string that is a substring of this string.




