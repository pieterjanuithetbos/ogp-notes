& is bitsgewijze conjunctie


Kunnen we dynamische binding gebruiken om ervoor te zorgen dat elke Waarde weet welke bewerkingen hij ondersteunt?

## Limieten van klassen
Een klasse mag slechts van één klasse overerven

## Interfaces
interfaces en bijhorende methodes zijn abstract, tenzij je er default bij zet

methodes in interfaces zijn _by default_ publiek

gebruik `implements` ipv `extend`

## Syntax

        super();

        return Objects.hash(super.hashCode());
