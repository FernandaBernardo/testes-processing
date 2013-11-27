class Esfera extends Objeto {
  int tamAux;
  
  Esfera (int tam) {
    this.tam = tam;
    this.tamAux = tam;
    this.x = 3*width/4;
    this.y = height/2;
  }

  void desenha() {
    translate(x, y, 0);
    stroke(mouseX/5, 0, 160);
    rotateX(rotX);
    rotateY(rotY);
    noFill();
    sphere(tam);
  }

  void reset () {
    this.tam = tamAux;
    this.x = 3*width/4;
    this.y = height/2;
    rotX = 0;
    rotY = 0;
    desenha();
  }
}

