class Cubo {
  int size;

  Cubo (int size) {
    this.size = size;
  }

  void desenha() {
    translate(width/4, height/2, 0);
    stroke(255,0,0);
    noFill();
    box(size);
  }
  
  void aumenta() {
    size += 10;  
  }
  
  void diminui() {
    if(size > 10) size -= 10; 
  }
}

