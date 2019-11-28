String[] nomes = {"img01.png", "img02.png", "img03.png", "img04.png", 
  "img05.png", "img06.png", "img07.png"};
PImage[] imagens = new PImage[nomes.length];
PImage result;
int c=0;
void setup() {  
  size(824, 548);
  for (int i=0; i < nomes.length; i++) {
    String nm = nomes[i];
    imagens[i] = loadImage(nm);
  }
  result = createImage(824, 548, RGB);
  int[] cores = new int[7];
  for (int x=0; x< 824; x++) {
    for (int y=0; y< 548; y++) {
      for (int i=0; i < 7; i++) {
        color cor = imagens[i].get(x, y);
        cores[i] = cor2Int(cor);
      }
      int med = moda(cores);
      if (med == 0)
        med = mediana(cores);
      result.set(x, y, int2Cor(med));
    }
  }
}
void draw() {
  image(result, 0, 0);
}

int cor2Int (color cor) {
  float b = blue(cor) * 65536 ;
  float g = green(cor) * 256 ;
  float r =  red(cor);
  return int(b + g + r);
}

color int2Cor(int cor) {
  int b = cor/65536;
  int g = (cor - b * 65536)/ 256;
  int r = cor - (b * 65536) - (g * 256);
  return color(r, g, b);
}

int mediana(int[] cores) {
  cores = sort(cores);
  int mediana = cores[7/2];
  return mediana;
}

int moda(int[] elementos) {
  int qtdModa = 0;
  int numModa=0;
  int contador = 0;
  elementos = sort(elementos);
  for (int i = 0; i < (elementos.length - 1); i++) {
    if (elementos[i] == elementos[i+1])
      contador++;
    else
      contador = 0;
    if (contador > qtdModa) {
      qtdModa = contador;
      numModa = elementos[i];
    }
  }
  return numModa;
}
