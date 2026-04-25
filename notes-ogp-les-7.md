bij getters ook @immutable
@creates result ...result
    
    new double[numberOfRows][numberOfColumns]


Gebruik geen velden in de documentatie! Dat is een grote fout!
Je mag ze wel gebruiken in de implementatie van methodes, zolang je ze niet teruggeeft.

Wat geen 'good practice' is, is om methodes te gebruiken bij de implementatie van andere methodes.

## verschillen implementatie mutatoren vs 'simpele' methoden:
- mutatoren:

        @mutates | this
        @inspects | other

gebruik zeker: 

        old()

- niet-mutatoren:

        @creates | result
      

Stackoverflowerror: infinite recursion in documentation
