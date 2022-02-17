class Nave {

  Juego juego;

  float x, y, ancho, alto;
  float despX, despY;
  PImage img;

  Nave (Juego juego_, PImage img_, float x_, float y_, float ancho_, float alto_) {
    x = x_;
    y = y_;
    juego = juego_;
    ancho = ancho_;
    img = img_;
    alto = alto_;
  }
  void dibujar() { 
    pushStyle();
    pushMatrix();
    imageMode(CENTER);
    noCursor();
    image(img, mouseX, mouseY);
    popStyle();
    popMatrix();
  }
}
