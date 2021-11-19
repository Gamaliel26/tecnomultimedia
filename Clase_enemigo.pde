class Enemigo {
  Juego juego;
  // propiedades
  float x, y, ancho, alto, xInicial, yInicial;
  PImage img;

  boolean colision(float x_, float y_, float ancho_, float alto_) {
    if (x-ancho/2 < x_+ancho_/2 
      && x+ancho/2 > x_-ancho_/2
      && y-alto/2 < y_+alto_/2 
      && y+alto/2 > y_-alto_/2) {

      return true;
    } else {
      return false;
    }
  }

  // constructor
  Enemigo(Juego juego_, PImage img_, float x_, float y_, float ancho_, float alto_) {
    x = x_;
    y = y_;
    juego = juego_;
    img = img_;
    ancho = ancho_;
    alto = alto_;
    x = xInicial;
    y = yInicial;
  }

  // funcionalidad
  void dibujar() { 
    image(img, x, y);
  }

  void mover() {
    x-=5;
    if (x<0) {
      x= random(50, width-50)+width;
      y = random(50, height-50);
    }
  }
  void reiniciar() {
    x=xInicial;
    y=yInicial;
  }
}
