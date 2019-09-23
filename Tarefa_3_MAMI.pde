float t = 0;  //tempo
float v = 10; //velocidade
float d;      //distância

void setup() {
  size(600,600);
}

void draw(){
  background(255);
  mostraMundo();
  
  String s = "A distância no tempo " + t + " segundos é igual a: " + MRU(v,t) + " metros"; // variável contendo uma mensagem a ser exibida
  fill(0);
  text(s, 200,40);  //mostrar na janela (mensagem,x,y) (x e y da 1a letra)
  
  d = MRU(v,t); //armazenar em variável
  ellipse(d,300,10,10); //fazer elipse andar no gráfico e andando horizontalmente
  t+=1.0/60; //aumenta 1 segundo
}

float MRU(float v, float t) {
  float d = v*t; // (m)
  return d;
}

void mostraMundo() {
  for (int i = 0; i<12; i++) {
    line(i*50, 0, i*50, 600); // cria as linhas verticais
    line(0, i*50, 600, i*50); // cria as linhas horizontais
  }
}
