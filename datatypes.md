## Datatypes

datatypes in java:
### integers
-  `int`, 
    - mind arithmetic overflow
-  `short`, 
-  `long`, 
    - 'eats' other datatypes: If either operand of an arithmetic expression is of type long and the other operand is of any integer type, the expression itself is of type `long`
-  `byte`,
    - represents an 8-bit signed two's complement integer
    - used to save memory (e.g. in large arrays)
### floating-point numbers
-  `double`,  
    - three kinds of values, analogous to `float`a
    - compare with `Double.doubleToRawIntBits`
-  `float`.
    - mind implicit rouding
    - have three kinds of values: 
        1. real values
        2. infinities: `Float.POSITIVE_INFINITY`
        3. NaN
    - compare with `Float.floatToRawIntBits`
### de rest 
-  `boolean`, 
    - is mostly used to represent charachters (eg via Unicode)
-  `char`, 


### good to know
- `byte`, `short`, `char` are promoted to `int` when performing arithmetic operations
- underscores can make numbers more readable: `2_000_000`
