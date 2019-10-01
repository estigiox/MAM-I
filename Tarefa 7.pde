int t = 30;

void setup() {
  size(800, 600);
}

void draw() {
  background(100);

  noStroke();
  rectMode(CENTER);
  fill(255);
  rect(width/2, height/2, 320, 180);

  correspondencia();
}

void correspondencia() {
  float dx = dist(0, 0, mouseX, 0);
  float dy = dist(0, 0, 0, mouseY);
  float x = map(dx, 0, width, 240+t/2, 560-t/2);
  float y = map(dy, 0, height, 210+t/2, 390-t/2);
  fill(0);
  ellipse(x, y, t, t);
}
