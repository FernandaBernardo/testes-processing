Cubo cubo;
Esfera esfera;

void setup() {
  size(1000, 700, P3D);
  cubo = new Cubo(100);
  esfera = new Esfera(100);
}

void draw() {
  background(0);
  pushMatrix();
  cubo.desenha();
  popMatrix();
  pushMatrix();
  esfera.desenha();
  popMatrix();
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP) cubo.aumenta();
    if (keyCode == DOWN) cubo.diminui(); 
  }
  
  if(keyPressed) {
    if (key == 'w') esfera.aumenta();
    if (key == 's') esfera.diminui();
  }
}

