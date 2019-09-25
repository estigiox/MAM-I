float t = 0;  //tempo
float vx = 50; //velocidade inicial horizontal
float vy = 50; //velocidade inicial vertical
float a = -10; // aceleração (vertical)
float dx, dy;      //distância
String svx, svy, sdx, sdy, sdr;

void setup() {
  size(601, 700);
}

void draw() {
  background(255);
  mostraMundo();

  dx = MRU(vx, t); //armazenar em variável o valor da distância horizontal e fazer o cálculo do MRU
  dy = MRUV(vy, a, t); //armazenar em variável o valor da distância vertical e fazer o cálculo do MRUV

  fill(155);
  ellipse(dx, 600-dy, 10, 10); // fazer elipse andar no gráfico e andando verticalmente
  t+=1.0/60;

  fill(0);
  svx = "A velocidade da bola no eixo x é igual a: " + vx ;  // criar variável armazenando um texto
  text(svx, 10, 615); // exibir texto na tela.
  svy = "A velocidade da bola no eixo y é igual a: " + (vy+a*t) ;  // criar variável armazenando um texto
  text(svy, 10, 635); // exibir texto na tela.
  sdx = "A distância em que o centro da bola se encontra no eixo x é igual a: " + dx ;  // criar variável armazenando um texto
  text(sdx, 10, 655); // exibir texto na tela.
  sdy = "A distância em que o centro da bola se encontra no eixo y é igual a: " + dy ;  // criar variável armazenando um texto
  text(sdy, 10, 675); // exibir texto na tela.
  sdr = "A distância retilínea em que o centro da bola se encontra é igual a: " + (sqrt(sq(dx)+sq(dy)));
  text(sdr, 10, 695);


  if (dy < 0 || (dx > 600)) {  // se ela chegar na extremidade do mundo, parar de rodar o código
    noLoop();
  }
}

float MRUV(float v, float a, float t) {
  float dy = v*t+a*t*t/2.0; // (calculo do MRUV para o eixo y)
  return dy;
}

float MRU(float v, float t) {
  float dx = v*t; // (calculo do MRU para o eixo x)
  return dx;
}

void mostraMundo() {
  for (int i = 0; i<13; i++) {
    line(i*50, 0, i*50, 600); // cria as linhas verticais
    line(0, i*50, 600, i*50); // cria as linhas horizontais
  }
}
