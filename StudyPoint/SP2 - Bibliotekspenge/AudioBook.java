package SP2.version3;

public class AudioBook extends PhysicalTitle implements IAudioBook {
    private int durationInMinutes;

    public AudioBook(String title, String literatureType, int copies, int durationInMinutes) {
        super(title, literatureType, copies);
        this.durationInMinutes = durationInMinutes;
    }

    @Override
    public double calculatePoints() {
        return (durationInMinutes * 0.5) * super.convertLiteratureType(literatureType) * copies;
    }
}
