class Esfera {
  int raio;

  Esfera (int raio) {
    this.raio = raio;
  }

  void desenha() {
    translate(3*width/4, height/2, 0);
    stroke(255);
    noFill();
    sphere(raio);
  }
  
  void aumenta () {
    raio += 10;
  }
  
  void diminui () {
    if(raio > 10) raio -= 10;
  }
}

