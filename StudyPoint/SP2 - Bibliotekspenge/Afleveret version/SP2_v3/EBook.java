package SP2.version3;

public class EBook extends NetTitle {
    private int characters;
    private boolean illustrated;

    public EBook(String title, String literatureType, int availability, int reach, int use, int characters, boolean illustrated) {
        super(title, literatureType, availability, reach, use);
        this.characters = characters;
        this.illustrated = illustrated;
    }

    private double calculatePages() {
        if (illustrated) {
            return (characters / 1800.0 + 20) * 1.1;
        } else {
            return characters / 1800.0 + 20;
        }
    }

    @Override
    public double calculatePoints() {
        return calculatePages() * getUseFactor();
    }
}
