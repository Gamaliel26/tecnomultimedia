Juego juego;
Enemigo asteroide, asteroide2, asteroide3;

void setup() {
  size(800, 600);
  juego = new Juego(3);
  asteroide = new Enemigo();
  asteroide2 = new Enemigo();
  asteroide3 = new Enemigo();
}

void draw() {
  background(0);
  fill(255);
  juego.dibujar();
  asteroide.mover();
  asteroide.dibujar();
  asteroide2.mover();
  asteroide2.dibujar();
  asteroide3.mover();
  asteroide3.dibujar();
}
