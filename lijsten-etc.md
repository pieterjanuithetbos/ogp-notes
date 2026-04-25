## Vragen
- wat betekent _default_ bij interfaces?

## Arraylist
elementen vooraan/achteraan toevoegen of verwijderen: lineair met lengte

element op index n opvragen
## LinkedList

element op index n opvragen: lineair


elementen vooraan/achteraan toevoegen of verwijderen: sneller

## Interfaces
Betekenis default?

## ArrayList

trade-off tussen ruimte- en tijdgebruik

_amortized time complexity_

- geen goede _real-time_ tijdscomplexiteit

lineair in ...
- het aantal kopieeroperaties
- elementen dat je kopieert?
-

_conclusie_: LinkedLists worden enkel gebruikt in real-time toepassingen met strikte deadlines

## sets
### hashset
- gebruik buckets
    - je kiest hoeveel buckets je zal voorzien
    - je deelt de hashcode door $n$ en je neemt de hashcode % n als index


Zorg ervoor dat het aantal elementen per bucket constant en begrens is, is de tijd om elementen toe te voegen, te controleren etc.
--> kan dat in **constante tijd**a

### ArraySet

### HashSet
% rondt quotiënt af naar 0
Math.floorMod naar beneden
