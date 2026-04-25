# Multi-object abstracties: meerklassige graafabstracties

Het veld `team` in klasse Person hebben we van de klant gekregen en mogen we probleemloos teruggeven.


Default access:
    - geef alle klassen binnen de package toegang tot het veld
    - wanneer je geen expliciete access modifier schrijft
    - wil zeggen: haal klantcode uit de package (!)

## Testen
- sets:
    - initialiseer met `Set.of(...)`


## Interessant

        assertNull()

Maak geen deepcopy van objecten die geen represenationobject zijn


## Vragen
+ wanneer schrijf je `@creates | result` bij een setter? (iets met 'identiteit')


- 'Je kan er niet van uit gaan dat de lezer van de documentatie gaat kijken naar de superklasse'
- Verschil mutates vs mutates_properties
    + bij mutates_properties combineert mutates_property met een aantal postcondities op de getters die niet vermeld worden (als er bij de getters elders een result == (ifv een andere getter) staat, hoeft die niet opnieuw vermeld worden 
- test representation exposure:



        boolean exposure = false;
        try {
          members.add(piet);
          if (team.getMembers().contains(piet))
                exposure = true;

        } catch (Throwable t) {

        }

