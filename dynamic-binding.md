## Dynamic binding

### Pattern matching

1. one can use *pattern matching*: 


       			if (instruction instanceof LoadConstant lc) {

2. or one can use record patterns, as explained in the course notes

### Record classes 

    public record Point(int x, int y) {}

+ immutable and _final_
+ provides `equals, toString, hashCode`
+ they can **implement** interfaces

How are they used in dynamic binding?
> They always implicitly extend built-in class Record; an explicit extends clause is not permitted. (An implements clause is permitted, however; see the chapter on Interfaces.)

### Enum classes
- use the switch-statement,
- enum classes are a _closed_ type. It is impossible to make other instances of the class.
an example: 

```
    public String getScoreInFrench(Score score) {
     switch (score) {
        case LOVE -> { return "zéro"; }
        case FIFTEEN -> { return "quinze"; }
        case THIRTY -> { return "trente"; }
        default -> { return "quarante"; }
         }
    }
```
