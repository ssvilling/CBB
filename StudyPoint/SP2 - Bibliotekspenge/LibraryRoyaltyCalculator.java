package SP2.version3;

public class LibraryRoyaltyCalculator {
    public static void main(String[] args) {
        Author ditlevsen = new Author("Tove Ditlevsen");
        Title brngd = new PrintedBook("Barndommensgade", "SKØN", 150, 200);
        Title vlhlmsV = new AudioBook("Vilhelms Værelse", "LYRIK", 130, 500);
        Title ngdm = new EBook("Ungdom", "FAG", 100, 30, 15, 4000, true);
        Title kvsnd = new EAudioBook("Kvindesind", "TE", 30, 15, 5, 600);

        ditlevsen.addTitle(brngd);
        ditlevsen.addTitle(vlhlmsV);
        ditlevsen.addTitle(ngdm);
        ditlevsen.addTitle(kvsnd);

        System.out.printf("Forfatter: %-20s | Bibliotekspenge: %.5f kr %n", ditlevsen.getName(), ditlevsen.calculateRoyalties());
        System.out.printf("      Bog: %-20s | Bibliotekspenge: %.5f kr %n", brngd.title, brngd.calculateRoyalty());
        System.out.printf("      Bog: %-20s | Bibliotekspenge: %.5f kr %n", vlhlmsV.title, vlhlmsV.calculateRoyalty());
        System.out.printf("      Bog: %-20s | Bibliotekspenge: %.5f kr %n", ngdm.title, ngdm.calculateRoyalty());
        System.out.printf("      Bog: %-20s | Bibliotekspenge: %.5f kr %n", kvsnd.title, kvsnd.calculateRoyalty());
    }
}
