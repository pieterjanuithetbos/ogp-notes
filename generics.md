### Generics
- Iterators en Iterables zorgen voor abstractie over verschillende implementaties van iterators en iterables.
- Voor abstractie over eenzelfde implementatie, gebruiken we generics.
Dat noemt met *subtype polymorphism*.

Doe niet 
    
    		return kop == ((NietLegeLijst<T>) obj).kop && Objects.equals(staart,  ((NietLegeLijst<?>) obj).staart);

maar 

		return kop == ((NietLegeLijst<T>) obj).kop && Objects.equals(staart,  ((NietLegeLijst<?>) obj).staart);


Dat komt door **erasure**.

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

