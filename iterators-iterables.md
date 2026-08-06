## Iterators en Iterables

Probleem: we willen op een tijds- en geheugenefficiënte manier kunnen itereren over een datastructuur.
Wat we niet doen:
- alle elementen in een lijst teruggeven en de klant erover laten itereren
- een methode `getElement(i)` gebruiken

Wat we wel doen: de logica groeperen in een object, dat als het ware **doorheen** de datastructuur **loopt**.

### Samenvatting
```
public class ... implements Iterable {
        Iterator iterator() { return new Iterator() { /** implement de Iterator-klasse /*}; }
        void forEach(Consumer consumer) { /** implement de Consumer-klasse */ }
    }

```

### Iterat _or_ s
Iterator-objecten hebben over het algemeen twee methodes, die volgende functionaliteit implementeren: 
- een `boolean` teruggeven die aangeeft of het einde van de lijst bereikt is, 
- een methode die naar het volgende element wijst.



### Iterables
Een Iter- _able_ **laat toe** dat een iterator eroverheen loopt. 


De interface iterable abstraheert over collecties die een iterator implementeren.
Zoals de cursus het zegt: 
>Classes `ArrayList` and `ArrayListIterator` are not really independent classes; rather, they together implement the Iterable abstraction.

Daarom implementeert de moederklasse (zeg bv. `ArrayList`) `Iterable`, en is `ArrayListIterator` een geneste private klasse die `Iterator` implementeert. 

### Interne iterator
- `Iterator` en `Consumer` implementeren dikwijls hun respectieve interfaces. 
- `Iterable` niet per se, als het alleen om `forEach` gaat (wat bedoel ik daarmee?)


- **(static) nested classes** look like normal classes, excpect from the fact that one has to address them with `Outerclass.NestedClass`.
- **inner classes**: their fields take an implicit `this` argument.
- **local classes** are defined inside a method
- **anonymous classes** are very much like local classes, except from the fact that you don't have to invent a name for them.


- **enhanced for loop**: 


        for (Iterator iterator = iterable.iterator(); iterator.hasNext(); ) {
            doSomething()
            }

        for (Object element: iterable) {
            doSomething()
            }



- **internal iterators** do not exclude external ones: 


        public interface Iterable {
            Iterator iterator();
            default void forEach(Consumer consumer) {
                for (Iterator i = iterator(); i.hasNext(); ) {
                    consumer.accept(i.next());
                }
            }
        }

- **lambda expressions**: 
    - are very much like anonymous classes, 
    - implement *functional interfaces*: interfaces with only one abstract method (this allows *target typing*)
- **capturing outer variables** means: outer variables are copied into an implicit field of the object resulting in local classes, anonymous classes and lambda expressions. But only if ther are 
- **effectively final variables**. That means that they are not mutated after initialization.
