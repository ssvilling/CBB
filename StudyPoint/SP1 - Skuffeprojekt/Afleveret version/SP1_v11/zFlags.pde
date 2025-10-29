class Flags {
  PImage[] flags;

  // Constructor
  Flags(float centerWidth, float centerHeight) {
    noStroke();
    flags = new PImage[] {

      // GROUP A
      loadImage("../flags/groupA/russia.png"),
      loadImage("../flags/groupA/saudiArabia.png"),
      loadImage("../flags/groupA/egypt.png"),
      loadImage("../flags/groupA/uruguay.png"),

      // GROUP C
      loadImage("../flags/groupC/france.png"),
      loadImage("../flags/groupC/australia.png"),
      loadImage("../flags/groupC/peru.png"),
      loadImage("../flags/groupC/denmark.gif"),

      // GROUP B
      loadImage("../flags/groupB/portugal.png"),
      loadImage("../flags/groupB/spain.png"),
      loadImage("../flags/groupB/morocco.png"),
      loadImage("../flags/groupB/iran.png"),

      // GROUP D
      loadImage("../flags/groupD/argentina.png"),
      loadImage("../flags/groupD/iceland.png"),
      loadImage("../flags/groupD/croatia.png"),
      loadImage("../flags/groupD/nigeria.png")
    };
    image(flags[indexUpdate], centerWidth - 155, centerHeight + offset, 70, boxHeight);
  }
}
