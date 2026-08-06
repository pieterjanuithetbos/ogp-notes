## Veelgemaakte fouten
1. Fout: null gebruiken om een lege verzameling weer te geven
> To represent an empty collection, use an empty collection object. An object obtained using new ArrayList<Person>() or new HashSet<Person>() initially stores an empty collection of Person objects.

2. ??
```
    public class Team {
         private Set<Student> members = new HashSet<Student>();
         public void addMember(Student student) {
         members.add(student);
         student.team = this;
          }
    }
```

