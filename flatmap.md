### Casestudy: `flatMapToInt` vs `flatMap`

Deze twee implementaties zijn equivalent:
```
		Arrays.stream(new Integer[][] {{0}}).flatMap(i -> Arrays.stream(i)).toArray();
		Arrays.stream(new int[][] {{}}).flatMapToInt(i -> Arrays.stream(i)).toArray();
```
- Want `Integer[][]` bevat referenties naar (wrapper)-objecten, terwijl 
`int[][]` primitieve waarden bevat.
- concreet: `flatMapToInt` returns an **IntStream**, but `flatMap` returns a  stream
