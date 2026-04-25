# vragen
- code online zetten

# ingebouwde methodes overriden
+ hashCode()


	public int hashCode() {
		// combineer verschillende integers
		return Objects.hash(kop, staart.hashCode());
	}

# voorbeeld 
twee klassen: een company-class en een program-class

de company-class voorziet een string met locaties, 
drie in dit geval

Program print de locaties uit, en gaat er daarbij van uit dat er drie locaties zijn.

Dat is niet zo. Wie is in fout?

**wat betekent het om correct te zijn?**
- eerste vaststelling: je hebt contracten nodig om goed te definiëren wanneer code correct is.


stel: er zijn meerdere classen die de methode getLocations() overriden.
Het kan zijn dat die tegenstrijdige documentatie hebben
Wat kan je doen?
- 

Houd er rekening mee dat klassen kunnen verschijnen/verdwijnen!

## conclusie:
voor 
+ documentatie
documenteer de huidige methode
+ implementatie
de implementatie moet voldoen aan de contracten van al de ouderklassen!

## behavioral subtyping (geavanceerd onderwerp)
maak de specs van dochterklassen echter strenger

voordleel:
- je hoeft enkel de specs van de jongste docterklasse te checken


er moet enkel voldaan zijn aan de postconditie **als de preconditie voldaan is** 

Het is niet voldoende dat de nieuwe postconditie strenger is, de nieuwe preconditie moet ook lakser zijn

_covariant_ vs _contravariant_


oefening _functies_ overgeslaan

to abstract maken or not to abstract maken?

## terminologie: 
sealed Sealed classes and interfaces restrict which other classes or interfaces may extend or implement them
j.
static methodes worden nooit dynamisch gebonden!

**throws**: in alle andere gevallen wordt er géén exceptie gegooid!
abstract



final: the class cannot be extended
public vs niet public?
