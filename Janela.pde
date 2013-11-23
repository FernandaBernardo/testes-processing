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
    if (keyCode == UP) esfera.sobe();
    if (keyCode == DOWN) esfera.desce();
    if (keyCode == RIGHT) esfera.direita();
    if (keyCode == LEFT) esfera.esquerda();
  }

  if (keyPressed) {
    if (key == 'w') cubo.sobe();
    if (key == 's') cubo.sobe();
    if (key == 'd') cubo.direita();
    if (key == 'a') cubo.esquerda();
  }
}

