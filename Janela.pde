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

  if (mouseX > cubo.x - cubo.tam/2 && mouseX < cubo.x + cubo.tam/2 && mouseY > cubo.y - cubo.tam/2 && mouseY < cubo.y + cubo.tam/2) cursor(WAIT);
  else if (mouseX > esfera.x - esfera.tam && mouseX < esfera.x + esfera.tam && mouseY > esfera.y - esfera.tam && mouseY < esfera.y + esfera.tam) cursor(MOVE);
  else cursor(ARROW);
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP) esfera.sobe();
    else if (keyCode == DOWN) esfera.desce();
    else if (keyCode == RIGHT) esfera.direita();
    else if (keyCode == LEFT && !colisao()) esfera.esquerda();
  }

  if (keyPressed) {
    if (key == 'w') cubo.sobe();
    else if (key == 's') cubo.desce();
    else if (key == 'd' && !colisao()) cubo.direita();
    else if (key == 'a') cubo.esquerda();
    else if (key == 'r') cubo.rotacionaX();
    else if (key == 't') esfera.rotacionaX();
    else if (key == 'f') cubo.rotacionaY();
    else if (key == 'g') esfera.rotacionaY();
    else if (key == 'i') {
      esfera.reset();
      cubo.reset();
    }
  }
}

void mouseWheel(MouseEvent event) {
  if (event.getAmount() > 0) {
    cubo.diminui();
    esfera.diminui();
  }
  else if (!colisao()) {
    cubo.aumenta();
    esfera.aumenta();
  }
}

boolean colisao() {
  if (cubo.x + cubo.tam <= esfera.x - esfera.tam) return false;
  return true;
}

