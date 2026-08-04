# Streams

## *Intermediate operations* 

| functie | effect |
| ------- | ------ | 
| `flatMap`(flatmap.md)| vlakt geneste structuren uit, mapt objecten in een stream op een **stream** |
| `map` | Returns a stream consisting of the results of applying the given function to the elements of this stream |


... are **lazy**: they return a *new* stream, and do not perform any operation on the original elements.

... are divided in 
- stateful, and 
- stateless

operations.

- `collect`

    
        .collect(Collectors.toList());
        .collect(StringBuilder::new, (x, y) -> x.append(y),
		(a, b) -> a.append(",").append(b));

## *Terminal operations*
| functie | effect |
| ------- | ------ | 
| `toArray()` | returns an arrays containing the elements of the stream |


Nota bij `toArray()`: neemt een `Intfunction` die de grootte van de stream afbeeldt op een array, bv.:

        .toArray(n -> double[n][]`



## En verder
Om enkele zaken op een rijtje te zetten:
1. je kan de uitvoer limiteren met `limit()`
2. Er zijn booleaanse operatoren die `orElse()` vereisen

        public List<Studenten> filterStudents(List<Studenten> lijst) {
		return lijst.stream().filter(
				i -> i.exams.stream().mapToInt(j -> j.score).average().orElse(0) > 10
				).limit(10).collect(Collectors.toList());
				
	}

