class Enemigo {

  // propiedades: Todo lo que hace al estado de la clase
  float x, y, ancho, alto;
  float despX, despY;
  PImage asteroid;
  // constructor: Es como el setup, lo declara
  Enemigo() {
    x = random (800, width-50);
    y = random (50, height-50);
    asteroid = loadImage("asteroid.png");
    ancho = 40;
    alto = 40;
    despX=-10;
    despY=0;
  }
  // funcionalidad: Lo que yo quiero que haga
  void dibujar() { 
    fill(255);
    image(asteroid, x, y);
  }

  void mover() {
    x--;
    if (x<0) {
      x=800;
    }
  }
}
