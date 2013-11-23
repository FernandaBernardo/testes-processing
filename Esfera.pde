class Esfera extends Objeto{
  Esfera (int tam) {
    this.tam = tam;
    this.x = 3*width/4;
    this.y = height/2;
  }

  void desenha() {
    translate(x, y, 0);
    stroke(255);
    noFill();
    sphere(tam);
  }
}

