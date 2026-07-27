## Dynamic binding
### Record classes 

    public record Point(int x, int y) {}

+ immutable and _final_
+ provides `equals, toString, hashCode`

### Enum classes
Enum classes are a _closed_ type. It is impossible to make other instances of the class.


    public String getScoreInFrench(Score score) {
     switch (score) {
        case LOVE -> { return "zéro"; }
        case FIFTEEN -> { return "quinze"; }
        case THIRTY -> { return "trente"; }
        default -> { return "quarante"; }
         }
    }

