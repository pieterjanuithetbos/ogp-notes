## List, sets and maps


1. lists
    - ArrayList
        + mutable
        +

    - LinkedList
        + mutable
        +

       
            private class Node() {
            }

2. sets

_HashSet_: partition the set using a _hash function_. Store each partition using another Set implementation: _ArraySet_


3. maps

Very analogous to set.

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

Other notable data structures:

Very interesting ...
