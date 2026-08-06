# Generics

## Waarom?
Neem het voorbeeld van een lijst-implementatie. Wat we niet doen: 
- voor elk type een eigen lijst implementeren (te veel werk)
- een lijst voor algemeen type `Object` definiëren 
    - dan moeten we typecasts invoeren
    - we lose much of the benefit of Java’s static type checker
    - allows many programming errors

Wat we **wel doen**:
- de lijst definieren voor een variabel parametertype `T`.

- Voor abstractie over eenzelfde implementatie, gebruiken we generics.
Dat noemt met *subtype polymorphism*.

Doe niet 
    
    		return kop == ((NietLegeLijst<T>) obj).kop && Objects.equals(staart,  ((NietLegeLijst<?>) obj).staart);

maar 

		return kop == ((NietLegeLijst<T>) obj).kop && Objects.equals(staart,  ((NietLegeLijst<?>) obj).staart);


Dat komt door **erasure**.

## Erasure 
- Type arguments must be subtypes of Object; using a primitive type (like int) as a type argument is not allowed.
- Since type arguments are not available at run time, they cannot be used in ways that affect the run-time type of an object or otherwise affect the program’s run-time behavior.
- one should not cast types to a generic type, as they are not available at runtime. Generally they cause an *unchecked cast warning*.


1. @compiletime worden alle T's vervangen door de constraint. Als er geen constraint is, wordt alles vervangen door `Object`.
2. Bij het doorgeven van een wildcard ? check je enkel dat het object een `NietLegeLijst` was en niet welke objecten het herbergde. Bij `T` wil de compiler dat wel proberen achterhalen, maar lukt dat niet omdat het type weggevaagd is.
3. ` .<T>accept`: garandeert dat de invoer van method accept van type T is.
4. wildcards. 
    - zo algemeen mogelijk: gebruik een _lower bounded wildcard_ : `? super T`
    - specifieker: `? extends T`


- **generic class, 
- **generic interface, 
- **type parameter, 
- **type argument, 
- **generic type instantiation, 
- **parameterized type, 
- **bounded type parameter**: `extend` en `super`

    
            class Student implements Comparable<Student> {
        
        int nbCredits;
        
        public int compareTo(Student other) { return nbCredits - other.nbCredits; }
        
    }



- **covariance**: `LinkedList<Student>` is not a subtype of LinkedList<Member>, even though Student is a subtype of `Member`. 
- **contravariance**: e.g.  
- **invariance**: generic types are invariant. That's why we need wildcards. 
- **upper-bounded wildcard**, 
- **lower-bounded wildcard**. Summarizing: 

            static <T> void copyInto(LinkedList<T> from, LinkedList<? super T> to) {
            static <T> void copyInto2(LinkedList<? extends T> from, LinkedList<T> to) {
            static <T> void copyInto3(LinkedList<? extends T> from, LinkedList<? super T> to) {


- **generic method** 
- **erasure** 
- **unchecked cast warning**


## Final remarks
diamons notation:
        
        ArrayList<Member> temp = new ArrayList<>();

use a method-leve type parameter to link the return type to a type parameter:

         static <T> LinkedList<T> copy(LinkedList<T> list) {
             LinkedList<T> result = new LinkedList<>();
             result.addAll(list);
             return result;
         }


