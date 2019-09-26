float altura = 300;
float m = altura/14;

void setup() {
  size(601, 401);
  bandeiraBrasil(m);
}

void bandeiraBrasil(float m) {
  noStroke();
  
  fill(0, 156, 59);
  quad((width/2)-(m*10), (height/2)-(m*7), (width/2)+(m*10), (height/2)-(m*7), (width/2)+(m*10), (height/2)+(m*7), (width/2)-(m*10), (height/2)+(m*7));
  //rectMode(CENTER);
  //rect(width/2, height/2, m*20, m*14);
  
  fill(255, 223, 0);
  beginShape();
  vertex((width/2)-(m*8.3), height/2); 
  vertex((width/2), height/2-(m*5.3)); 
  vertex((width/2)+(m*8.3), height/2); 
  vertex((width/2), height/2+(m*5.3)); 
  endShape(CLOSE);

  fill(0, 39, 118);
  ellipseMode(RADIUS);
  ellipse(width/2, height/2, 3.5*m, 3.5*m);
}
