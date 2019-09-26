void setup() {
  size(1001, 1001);

  int x, y, h, v;
  h = (int)random(1, 21);;
  v = (int)random(1, 21);;
  x = 25;
  y = 25;

  for (int i=1; i<v*2; i+=2) {
    for (int j=1; j<h*2; j+=2) {
      bloco(x*j, y*i);
    }
  }
}

void bloco(int x, int y) {
  fill(random(256), random(256), random(256));
  rect(x-25, y-25, 50, 50);
  fill(random(256), random(256), random(256));
  ellipse(x, y, 50, 50);
  fill(random(256), random(256), random(256));
  ellipse(x, y, 30, 30);
  fill(random(256), random(256), random(256));
  ellipse(x, y, 10, 10);
}
