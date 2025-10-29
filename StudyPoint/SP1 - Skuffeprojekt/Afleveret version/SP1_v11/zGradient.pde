class Gradient {

  Gradient (float centerX, float centerY, float widthG, float heightG, color c1, color c2) {
    float xStart = centerX - widthG / 2 - 145;
    float yStart = centerY - heightG / 2;

    for (int x = int(xStart); x <= xStart + widthG; x++) {
      float inter = map(x, xStart, xStart + widthG, 0, 1);
      color c = lerpColor(c1, c2, inter);
      stroke(c);
      line(x, yStart, x, yStart + heightG - 1);
    }
  }
}
