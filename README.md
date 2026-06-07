# Notities OGP

Voor verdere lectuur: zie 
+ een bestandje over [shortcuts](shortcuts.md)
+ uitleg over [_nesting class-level and package-level abstractions_](nesting.md)
+ [Lists, sets, Maps and the Java Collections framework](collections.md)
+ lering uit de examens:
    - [augustus 2025](lering-examen-aug-2025.md)
.md

## Veelgemaakte fouten
To represent an empty collection, use an empty collection object. An object obtained using new ArrayList<Person>() or new HashSet<Person>() initially stores an empty collection of Person objects.


    public class Team {
         private Set<Student> members = new HashSet<Student>();
         public void addMember(Student student) {
         members.add(student);
         student.team = this;
          }
    }

## Dynamic binding
### Record classes: 

    public record Point(int x, int y) {}

+ immutable and _final_
+ provides `equals, toString, hashCode`

### Enum classes
Enum classes are a _closed_ type. It is impossible to make other instances of the class.


    public String getScoreInFrench(Score score) {
     switch (score) {
        case LOVE -> { return "zéro"; }
        case FIFTEEN -> { return "quinze"; }
        case THIRTY -> { return "trente"; }
        default -> { return "quarante"; }
         }
    }


## Iterators en Iterables

Onthoud goed: de moederklasse implements `Iterable`, een een geneste private klasse kan `Iterator` implementeren. 
`forEach()`wordt opgeroepen op een Iterable.
`Iterator` en `Consumer` hebben een eigen klasse nodig. `Iterable` niet per se, als het alleen om `forEach` gaat.

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

Returns a string that is a substring of this string. Strings are **immutable**.

### Copying representation Objects

A first way of doing it is using **clone()**. It is inherited from `Object`, but cannot be used on abstract types.

Immutable copies can be made through:
+ List, Set, Map.copyOf()

When to use the `copy()` method??
    --> (volgens Gemini) een copy is vaak handmatig gemaakt, terwijl `clone()` ingebouwde Java-syntax is. 

## Datatypes

datatypes in java: byte, int, long, double, boolean, char, short, float.
- where `char` is mostly used to represent charachters (eg via Unicode)
- mind arithmetic overflow
- `... .POSITIVE_INFINITY`
- mind implicit rouding on floats


## keywords before methods
The first keyword defines visibility. There is: `private`, `public`, or nothing. In the latter case, the method is pkg-scoped.

The second one is either absent, or can be: 

- `abstract` 
- `static`: no implicit `this` will be passed on to the method (if `static` is absent, the method is nonstatic). Belongs to the class rather than to an instance.
- `final`: the method cannot be overridden by subclasses.


To finish: a `default` method is fully implemented inside the interface. Is is the opposite of  `abstract` (and in some sense similar to `static`).

## Documentatie en meer
        
        SpecUtil.containsDuplicateObjects()
