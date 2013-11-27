class Cubo extends Objeto {
  int tamAux;
  
  Cubo (int tam) {
    this.tam = tam;
    this.tamAux = tam;
    this.x = width/4;
    this.y = height/2;
  }
;
  void desenha() {
    translate(x, y, 0);
    stroke(255, 0, 0);
    rotateX(rotX);
    rotateY(rotY);
    noFill();
    box(tam);
  }
  
  void reset () {
    this.tam = tamAux;
    this.x = width/4;
    this.y = height/2;
    rotX = 0;
    rotY = 0;  
  }
}

