## streams
- collect
- .get?

TODO 
- iterators (cf oefening)


geel lijntje?
raw datatype 
--> is verkeerd


## generics
stel elementtype in als parameter 
bv. Iterator<T>

Dan krijg je zoiets als
class X<T extends ...> extends ...
--> 

INVARIANTIE
... van supertype van X, is geen supertype van ... van X

sypertype-relatie wordt niet overgedragen op generics


_students_ zijn subtype van _members_

java laat dat niet toe, omdat dat behavioral subtyping niet respecteert
bv. je kan niet alles doen met ... van students wat je wel met ... van members kan doen


+ upperbounded
    - met `? extends`
+ lowerbounded 
    - met `? super`


Zie ook 
        

            LinkedList.<StaffMember>copy(StaffMember, result)


### Beperkingen
+ erasure
    - 


Je mag geen instanties maken van `T`

heap pollution

'ben ik zeker dat dit object @runtime een object van type T zal zijn?'
