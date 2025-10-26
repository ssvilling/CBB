package SP2.version3;

abstract class Title {
    protected String title;
    protected String literatureType;
    protected static final double RATE = 0.67574;

    public Title(String title, String literatureType) {
        this.title = title;
        this.literatureType = literatureType;
    }

    public double calculateRoyalty() {
        return calculatePoints() * RATE;
    }

    public double calculatePoints() {
        return 0;
    }

    public double convertLiteratureType(String literatureType) {
        return switch (literatureType.toUpperCase().trim()) {
            case "BI", "TE" -> 3;
            case "LYRIK" -> 6;
            case "SKØN" -> 1.7;
            case "FAG" -> 1;
            default -> 0;
        };
    }
}
