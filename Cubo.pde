class Cubo extends Objeto {
  Cubo (int tam) {
    this.tam = tam;
    this.x = width/4;
    this.y = height/2;
  }

  void desenha() {
    translate(x, y, 0);
    stroke(255, 0, 0);
    rotateX(rotX);
    rotateY(rotY);
    noFill();
    box(tam);
  }
}

