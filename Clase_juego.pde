class Juego {

  PImage [] nave = new PImage [7];

  PImage espacio;
  Juego(int vidas) {

    espacio = loadImage("espacio.jpg");
    for (int i=0; i<7; i++) {
      nave [i] = loadImage("nave_"+i+".png");
    }
  }
  void dibujar() {
    imageMode(CORNER);
    image(espacio, 0, 0 );
    imageMode(CENTER);
    image(nave[0], mouseX, mouseY);
  }
}
