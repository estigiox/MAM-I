int bastaoYD = 0;
int bolaX = 40;
int bolaY = 300;
int dX = 3;
int dY = 3;

void setup() {
  size(600, 600);
}

void draw() {
  background(0);

  rect(570, bastaoYD, 20, 100);
  ellipse(bolaX, bolaY, 20, 20);

  bolaX += dX;
  bolaY += dY;

  if ( bastaoYD >= 500) {
    bastaoYD = 500;
  } else if ( bastaoYD <= 0) {
    bastaoYD = 0;
  }

  if (bolaY <= 10 || bolaY >= 590) {
    dY = -dY;
  }
  
  if ((bolaX >= 560) && (bolaY >= bastaoYD) && (bolaY <= bastaoYD +100)) {
    dX = -dX;
  } else if (bolaX >= 610) {
    textSize(20);
    text("Jogador 1 venceu", width/2, height/2);
    noLoop();
  } else if (bolaX <= 10) {
    dX = -dX;
  }
}

void keyPressed() {
  if (keyCode == DOWN) {
    bastaoYD += 9;
  } else if (keyCode == UP) {
    bastaoYD -= 9;
  }
}
