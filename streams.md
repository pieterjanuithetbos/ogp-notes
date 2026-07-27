## Streams
- `collect`

    
        .collect(Collectors.toList());
        .collect(StringBuilder::new, (x, y) -> x.append(y),
		(a, b) -> a.append(",").append(b));


Om enkele zaken op een rijtje te zetten:
1. je kan de uitvoer limiteren met `limit()`
2. Er zijn booleaanse operatoren die `orElse()` vereisen

	public List<Studenten> filterStudents(List<Studenten> lijst) {
		return lijst.stream().filter(
				i -> i.exams.stream().mapToInt(j -> j.score).average().orElse(0) > 10
				).limit(10).collect(Collectors.toList());
				
	}

