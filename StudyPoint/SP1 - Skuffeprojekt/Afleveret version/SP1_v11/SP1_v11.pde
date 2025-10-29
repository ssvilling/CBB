int quarter;
int boxLength = 380;
int boxHeight = 36;
float stripeSize = 20;

// For for-loops
int yDifference = 40;
int textTopMargin = 5;
int offsetXText = 100;
float offset;
int indexUpdate;

Rects rects;
Names names;
Groups groups;
Flags flags;
Gradient gradient;

void setup() {
  size(800, 400);
  background(0);
  
  fill(#2c436A);
  rectMode(CENTER);
  rect(width / 2, height / 2, width - 10, height - 10);
  
  display();
  
  fill(255);
  rect(width / 2, height / 2, 3, height - 10);
}

void display() {
  imageMode(CENTER);
  rectMode(CENTER);
  noStroke();
  fill(255);
  
  Quarter();
}

void Quarter() {
  for (quarter = 0; quarter < 4; quarter++) {
    float centerWidth = (quarter % 2 == 0) ? width / 4 : 3 * width / 4;
    float centerHeight = (quarter < 2) ? height / 4 + 10 : 3 * height / 4 + 10;

    for (int i = 0; i < 4; i++) {
      offset = (i - 1.5) * yDifference;
      indexUpdate = quarter * 4 + i;

      rects = new Rects(centerWidth, centerHeight);
      gradient = new Gradient(centerWidth, centerHeight + offset, 80, boxHeight, color(0), color(255));
      names = new Names(centerWidth, centerHeight);
      groups = new Groups(centerWidth, centerHeight, quarter);
      flags = new Flags(centerWidth, centerHeight);
    }
  }
}
