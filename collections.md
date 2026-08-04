## List, sets and maps

Java offers several built-in features:

* the Java Collections Framework implements `ArrayList`, `LinkedList`, `HashSet` `HashMap` etc.
    - their type arguments are *generic* (type arguments have to be interfaces or classes, not primitive values. Use their wrapper classes instead.)
* another interface, Collections, generalizes over lists, sets and maps.


You can iterate over any collection object using the **enhanced for-loop**.
We list some important methods and constructors: 
- `List.of()`, `Set.of()`, and `Map.of()` create immutable lists, sets and maps.
- `List.copyOf()`, `Set.copyOf`, `Map.copyOf()` return immutable copies. The first two take *any* collection as an argument.
- `Collections.unmodifiableList(myList)` returns an unmodifiable view (idem for mySet or myMap as argument)
- `Arrays.asList(myArray)` returns a `List` view of `myArray`.
- `myCollection.addAll(yourCollection)`
- `Collections.sort(myList)`
- `Objects.equals(o1, o2)`, `myList.equals(myObject)`, `mySet.equals(myObject)`, `myMap.equals(myObject)`

- [`ArrayDeque`](https://docs.oracle.com/en/java/javase/15/docs/api/java.base/java/util/ArrayDeque.html) implements ADTs [`Queue`](https://docs.oracle.com/en/java/javase/15/docs/api/java.base/java/util/Queue.html) and [`Deque`](https://docs.oracle.com/en/java/javase/15/docs/api/java.base/java/util/Deque.html) (*double-ended queue*) using the *ring buffer* data structure. 
- When iterating over `HashSet` or `HashMap` objects, the order in which elements are returned is unspecified and may be different every time. [`LinkedHashSet`](https://docs.oracle.com/en/java/javase/15/docs/api/java.base/java/util/LinkedHashSet.html) and [`LinkedHashMap`](https://docs.oracle.com/en/java/javase/15/docs/api/java.base/java/util/LinkedHashMap.html) are like `HashSet` and `HashMap` except that the iteration order is well-defined: the elements are returned in the order in which they were added.

The following data structures require that the elements be *comparable*. Specifically, either the elements have to implement interface [`Comparable`](https://docs.oracle.com/en/java/javase/15/docs/api/java.base/java/lang/Comparable.html) or a [`Comparator`](https://docs.oracle.com/en/java/javase/15/docs/api/java.base/java/util/Comparator.html) must be specified. Java Platform API classes that implement interface `Comparable` include `Byte`, `Short`, `Integer`, `Long`, `Char`, `Float`, `Double`, and `String`.

- [`TreeSet`](https://docs.oracle.com/en/java/javase/15/docs/api/java.base/java/util/TreeSet.html) implements interface [`SortedSet`](https://docs.oracle.com/en/java/javase/15/docs/api/java.base/java/util/SortedSet.html) and [`TreeMap`](https://docs.oracle.com/en/java/javase/15/docs/api/java.base/java/util/TreeMap.html) implements interface [`SortedMap`](https://docs.oracle.com/en/java/javase/15/docs/api/java.base/java/util/SortedMap.html) using a *red-black tree* data structure (a type of *balanced search tree*). 
- [`PriorityQueue`](https://docs.oracle.com/en/java/javase/15/docs/api/java.base/java/util/PriorityQueue.html) implements interface [`Queue`](https://docs.oracle.com/en/java/javase/15/docs/api/java.base/java/util/Queue.html) using a *priority heap* data structure. 

















### The `of`-method, and derived ones:
+ type arguments have to be classes or interfaces (so `Character` instead of `char`)a
+ `... .of()` returns an **immutable** ...-object.
+ analogously: `... .copyOf()` returns an **immutable** copy. 


Alternatives using *views*:
+ `Collections.unmodifiable...(my...)` returns an unmodifiable *view*.
+ `Arrays.asList(myArray)`

### Useful operations
+ `myCollection.addAll(otherCollection)`
+ `Collections.sort(myList)`


### Equality methods
+ `Objects.equals(o1, o2)`
+ `my... .equals(your...)`

## Further questions

- I do not see an efficient way of making a mutable copy of Lists, Sets and maps. You could however try to **iterate** through the collection:

### Lists
- iterate using `.stream()`
* Arrays store sequences but can't efficiently add or remove elements.
* A **List** provides flexible insertion and deletion.
* **ArrayList:** fast index access and appending; slow front insertions/removals.
* **LinkedList:** fast front/back insertions and removals; slow index access.
* The best implementation depends on the use case.
* The **`List` interface** lets code work with both `ArrayList` and `LinkedList`.
k 
#### ArrayList
#### LinkedList
implement with a **doubly** linked list. 
Interesting: 
    - linkedlist: linked 'forward'
    - doubly-linked list: also linked 'backwards'


supports:
- add, remove, get(index), stream(), size, contains(). 

The node class:

            private class Node() {
                private Node previous;
                private Node next;
                private Object element;
            }

> What is the _sentinel_ used for?
it is used to mark the beginning or end of a list, but doesn't store anything else. 

### Sets
Checks if a set contains an element in *amortized constant* time
#### ArraySet
#### HashSet
_HashSet_: partition the set using a _hash function_. Store each partition using another Set implementation: _ArraySet_. Supported methods:
+ `toArray`, 
+ `contains`, 
+ add, remove.

### Maps

Very analogous to implementation of sets. `Arraylist` is used to represent the Map using Entries. Supported methods:

+ `entrySet`, met voor elke entry:
    -` getKey()`
    - `getValue()`
+ put, remove
+ getBucket
+ `values()`

