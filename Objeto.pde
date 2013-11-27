abstract class Objeto {
  int x, y, tam;
  int rotX = 0;
  int rotY = 0;

  abstract void desenha();
  abstract void reset();

  void aumenta() {
    tam += 10;
  }

  void diminui() {
    if (tam > 10) tam -= 10;
  }

  void direita() {
    if (x < width-tam-5) x += 5;
  }

  void esquerda() {
    if (x > 5 + tam) x -= 5;
  }

  void sobe() {
    if (y > tam + 5) y -= 5;
  }

  void desce() {
    if (y < height - tam - 5) y += 5;
  }
  
  void rotacionaX () {
     rotX += 20;
  }
  
  void rotacionaY() {
    rotY += 20;
  }
}

