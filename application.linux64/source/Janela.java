import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class Janela extends PApplet {

Cubo cubo;
Esfera esfera;

public void setup() {
  size(1000, 700, P3D);
  cubo = new Cubo(100);
  esfera = new Esfera(100);
}

public void draw() {
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

public void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP) esfera.sobe();
    if (keyCode == DOWN) esfera.desce();
    if (keyCode == RIGHT) esfera.direita();
    if (keyCode == LEFT && !colisao()) esfera.esquerda();
  }

  if (keyPressed) {
    if (key == 'w') cubo.sobe();
    if (key == 's') cubo.desce();
    if (key == 'd' && !colisao()) cubo.direita();
    if (key == 'a') cubo.esquerda();

    if (key == 'r') cubo.rotacionaX();
    if (key == 't') esfera.rotacionaX();
    if (key == 'f') cubo.rotacionaY();
    if (key == 'g') esfera.rotacionaY();
  }
}

public void mouseWheel(MouseEvent event) {
  if (event.getAmount() > 0) {
    cubo.diminui();
    esfera.diminui();
  }
  else if (!colisao()) {
    cubo.aumenta();
    esfera.aumenta();
  }
}

public boolean colisao() {
  if (cubo.x + cubo.tam <= esfera.x - esfera.tam) return false;
  return true;
}

class Cubo extends Objeto {
  Cubo (int tam) {
    this.tam = tam;
    this.x = width/4;
    this.y = height/2;
  }

  public void desenha() {
    translate(x, y, 0);
    stroke(255, 0, 0);
    rotateX(rotX);
    rotateY(rotY);
    noFill();
    box(tam);
  }
}

class Esfera extends Objeto{
  Esfera (int tam) {
    this.tam = tam;
    this.x = 3*width/4;
    this.y = height/2;
  }

  public void desenha() {
    translate(x, y, 0);
    stroke(mouseX/5, 0, 160);
    rotateX(rotX);
    rotateY(rotY);
    noFill();
    sphere(tam);
  }
}

abstract class Objeto {
  int x, y, tam;
  int rotX = 0;
  int rotY = 0;

  public abstract void desenha();

  public void aumenta() {
    tam += 10;
  }

  public void diminui() {
    if (tam > 10) tam -= 10;
  }

  public void direita() {
    if (x < width-tam-5) x += 5;
  }

  public void esquerda() {
    if (x > 5 + tam) x -= 5;
  }

  public void sobe() {
    if (y > 5) y -= 5;
  }

  public void desce() {
    if (y < height - tam - 5) y += 5;
  }
  
  public void rotacionaX () {
     rotX += 20;
  }
  
  public void rotacionaY() {
    rotY += 20;
  }
}

  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "Janela" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
