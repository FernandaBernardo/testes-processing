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
  
  if (mouseX > cubo.x - cubo.tam && mouseX < cubo.x + cubo.tam && mouseY > cubo.y - cubo.tam && mouseY < cubo.y + cubo.tam) cursor(WAIT);
  else if (mouseX > esfera.x - esfera.tam && mouseX < esfera.x + esfera.tam && mouseY > esfera.y - esfera.tam && mouseY < esfera.y + esfera.tam) cursor(MOVE);
  else cursor(ARROW);
  
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
    if (key == 's') cubo.desce();
    if (key == 'd') cubo.direita();
    if (key == 'a') cubo.esquerda();
  }
}

void mouseWheel(MouseEvent event) {
  if (event.getAmount() > 0) {
    cubo.diminui();
    esfera.diminui();
  }
  else {
    cubo.aumenta();
    esfera.aumenta();
  }
}

