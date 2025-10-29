class Rects {
  Rects(float centerWidth, float centerHeight) {
    noStroke();
    fill(255);
    rect(centerWidth, centerHeight + offset, boxLength, boxHeight);
  }
}
