- `%` rest bij deling door
- `/` deling, afgerond naar beneden


## Syntax and more

    String 	substring(int beginIndex)

Returns a string that is a substring of this string. Strings are **immutable**.

### Copying representation Objects

A first way of doing it is using **clone()**. It is inherited from `Object`, but cannot be used on abstract types.

Immutable copies can be made through:
+ List, Set, Map.copyOf()

When to use the `copy()` method??
    --> (volgens Gemini) een copy is vaak handmatig gemaakt, terwijl `clone()` ingebouwde Java-syntax is. 




## keywords before methods
The first keyword defines visibility. There is: `private`, `public`, or nothing. In the latter case, the method is pkg-scoped.

The second one is either absent, or can be: 

- `abstract` 
- `static`: no implicit `this` will be passed on to the method (if `static` is absent, the method is nonstatic). Belongs to the class rather than to an instance.
- `final`: the method cannot be overridden by subclasses.


To finish: a `default` method is fully implemented inside the interface. Is is the opposite of  `abstract` (and in some sense similar to `static`).
