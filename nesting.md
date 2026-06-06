## Nesting is fun
De velden zijn strikt `private`. Introduceer pkg-private getters en mutatoren.
### Package-level abstraction

+ representation?
    1. pkg-accessible getters 
        - de documentatie bevat `@peerObject (package-level)` 
        - en ook `@invar` tags die de **consistentie van de bidirectionele associatie** garanderen, gebruik makende van enkel **pgk-scoped** methods.


### Class-level abstraction

+ representation?
    1. (getters) geldige abstracte toestandsruimte: as usual, met `@peerObject`!
        - de buitenwereld moet op de hoogte zijn van de bidirectionele associatie
        - gebruik daarvoor enkel **publieke getters**.
    2. (velden) geldige concretetoestandsruimte:
        - enkel voor de interne keuken van de klasse, 
        - zonder rekening te houden met de bidir. associatie



### Belangrijke regels
Voor en na het oproepen van een publieke getter moeten de klasse-invarianten gelden

Ondertussen kan het object in een ongeldige toestand zijn, en moeten enkel de pkg-scoped invarianten gelden.

> De klasse-documtentatie voor de abstracte toestandsruimte is dezelfde als bij de standaard aanpak, maar de documentatie voor de concretetoestandsruimte is **verdeeld over de pkg-scoped methodes en de velden van de klasse**
