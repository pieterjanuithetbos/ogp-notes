## List, sets and maps

I do not see an efficient way of making a mutable copy of Lists, Sets and maps. You could however try to **iterate** through the collection:

### Lists
    - ArrayList

    - LinkedList
     
A linkedList supports methods: 
- add, remove, get(index), stream(), size, contains(). 

The node class:

            private class Node() {
                private Node previous;
                private Node next;
                private Object element;
            }


**What is the _sentinel_ used for?** --> it is used to mark the (beginning | end) of a list, but doesn't store anything else. 

### Sets

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

## Java Collections framework
 
`java.util` is the place to be. They also implement `equals()` and `hashCode()`.

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


## Arrays
bv. `char[]`

Of these datatypes, we can build arrays.

                byte[] byteArray = {10, 20, 30, 40, 50};


Arrays kan je aanpassen door bv.

                byteArray[2] = 20;

                Maps:
