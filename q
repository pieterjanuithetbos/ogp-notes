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


- **sources** are `Collection`-objects, arrays, I/O channels,
- **map**
- **filter**
- **reduce**
> A reduction operation (also called a fold) takes a sequence of input elements and combines them into a single summary result by repeated application of a combining operation, such as finding the sum or maximum of a set of numbers, or accumulating elements into a list. 
- **collect**
A collect operation requires three functions: a supplier function to construct new instances of the result container, an accumulator function to incorporate an input element into a result container, and a combining function to merge the contents of one result container into another.

             ArrayList<String> strings = stream.collect(() -> new ArrayList<>(),
                                                (c, e) -> c.add(e.toString()),
                                                (c1, c2) -> c1.addAll(c2));


Here, our supplier is just the ArrayList constructor, the accumulator adds the stringified element to an ArrayList, and the combiner simply uses addAll to copy the strings from one container into the other.

- **parralel streams
