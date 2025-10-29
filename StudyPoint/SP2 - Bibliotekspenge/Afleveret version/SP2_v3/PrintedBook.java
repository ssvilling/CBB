package SP2.version3;

public class PrintedBook extends PhysicalTitle {
    int pages;

    public PrintedBook(String title, String literatureType, int copies, int pages) {
        super(title, literatureType, copies);
        this.pages = pages;
    }

    @Override
    public double calculatePoints() {
        return pages * super.convertLiteratureType(literatureType) * copies;
    }
}
