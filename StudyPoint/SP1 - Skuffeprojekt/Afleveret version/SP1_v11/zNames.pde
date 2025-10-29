class Names {
  String[] names = {
    "RUSSIA", "SAUDI ARABIA", "EGYPT", "URUGUAY", // Group A
    "FRANCE", "AUSTRALIA", "PERU", "DENMARK", // Group C
    "PORTUGAL", "SPAIN", "MOROCCO", "IRAN", // Group B
    "ARGENTINA", "ICELAND", "CROATIA", "NIGERIA" // Group D
  };

  Names(float centerWidth, float centerHeight) {
    noStroke();
    textSize(24);
    fill(0);
    textAlign(LEFT, CENTER);
    text(names[indexUpdate], centerWidth - offsetXText, centerHeight + offset);
  }
}
