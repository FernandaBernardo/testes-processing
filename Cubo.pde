class Cubo extends Objeto {
  Cubo (int tam) {
    this.tam = tam;
  }

  void desenha() {
    translate(width/4, height/2, 0);
    stroke(255, 0, 0);
    noFill();
    box(tam);
  }
}

