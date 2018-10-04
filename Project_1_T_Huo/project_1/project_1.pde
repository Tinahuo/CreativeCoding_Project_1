int xLoc, yLoc;
int increment;

void setup() {
  size(800, 800);
  background(0);
  frameRate(50);
  xLoc = 50;
  yLoc = 50;
  increment = 10;
}


void draw() {
  background(0);
  fill(200, 50, 50);
  ellipse(xLoc, yLoc, 50, 50);

  xLoc = xLoc+increment;
  yLoc+=increment;//yLoc = yLov = 10

  if (xLoc > width) {
    increment = -10;
  }
  if (xLoc < 0) {
    increment=10;
  }
  if (yLoc > height) {
    increment = -10;
  }
  if (yLoc < 0) {
    increment = 10;
  }
}
