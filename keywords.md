## keywords before methods
The first keyword defines visibility. There is: `private`, `public`, or nothing. In the latter case, the method is pkg-scoped.

The second one is either absent, or can be: 

- `abstract` 
- `static`: no implicit `this` will be passed on to the method (if `static` is absent, the method is nonstatic). Belongs to the class rather than to an instance.
- `final`: the method cannot be overridden by subclasses.


To finish: a `default` method is fully implemented inside the interface. Is is the opposite of  `abstract` (and in some sense similar to `static`).
