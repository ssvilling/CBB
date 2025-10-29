class Groups {
  String[] groups = {
    "GROUP A", "GROUP C", "GROUP B", "GROUP D"
  };
  Groups(float centerWidth, float centerHeight, int quarter) {
    noStroke();
    if (quarter == 0 || quarter == 1) {
      fill(105, 236, 252); // GROUP A & GROUP C
    } else {
      fill(246, 255, 3);   // GROUP B & GROUP D
    }
    textSize(16);
    textAlign(CENTER, CENTER);
    text(groups[quarter], centerWidth, centerHeight - height/4 + textTopMargin);
    rect((centerWidth + height / 2) - stripeSize, centerHeight + offset, stripeSize, boxHeight);
  }
}
