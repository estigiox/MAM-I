PImage original, ruido, cinza, vermelha, amarela;
float ruidoMax = 1000;

void setup() {
  size(960, 507);
  original = loadImage("original.jpg");
  image(original, 0, 100);
  ruido = addRuido(original, ruidoMax);
  image(ruido, 0, 269);
  cinza = addCinza(original);
  image(cinza, 320, 100);
  vermelha = addVermelho(original);
  image(vermelha, 320, 269);
  amarela = addAmarelo(original);
  image(amarela, 640, 100);
}

PImage addRuido(PImage original, float ruidoMax) {
  int ruidoAtual = 0;
  int controle;

  while (ruidoAtual < ruidoMax) {
    for (int x = 0; x< original.width; x++) {
      for (int y = 0; y< original.height; y++) {
        controle = int(random(ruidoMax));
        if (controle == 0) {
          original.set(x, y, color(random(256), random(256), random(256)));
          ruidoAtual++;
          if (ruidoAtual >= ruidoMax)
            return original;
        }
      }
    }
  }
  return original;
}

PImage addCinza(PImage original) {
  color corOriginal, corFinal;
  float r, g, b, media;

  for (int x = 0; x< original.width; x++) {
    for (int y = 0; y< original.height; y++) {
      corOriginal = original.get(x, y);
      r = red(corOriginal); 
      g = green(corOriginal); 
      b = blue(corOriginal);
      media = (r*0.3)+(g*0.59)+(b*0.11);
      corFinal = color(media, media, media);
      original.set(x, y, corFinal);
    }
  }

  return original;
}

PImage addVermelho(PImage original) {
  color corOriginal, corFinal;
  float r, g, b;

  for (int x = 0; x< original.width; x++) {
    for (int y = 0; y< original.height; y++) {
      corOriginal = original.get(x, y);
      r = red(corOriginal); 
      g = green(corOriginal); 
      b = blue(corOriginal);
      corFinal = color(r*0.8, g*0.4, b*0.4);
      original.set(x, y, corFinal);
    }
  }

  return original;
}

PImage addAmarelo(PImage original) {
  color corOriginal, corFinal;
  float r, g, b;

  for (int x = 0; x< original.width; x++) {
    for (int y = 0; y< original.height; y++) {
      corOriginal = original.get(x, y);
      r = red(corOriginal); 
      g = green(corOriginal); 
      b = blue(corOriginal);
      corFinal = color(r*0.8, g, b*0.4);
      original.set(x, y, corFinal);
    }
  }

  return original;
}
