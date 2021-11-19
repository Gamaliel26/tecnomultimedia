Juego juego;


void setup() {
  size(800, 600);
  juego = new Juego();
}

void draw() {
  fill(255);
  juego.dibujar();

}

void mouseReleased() {
  juego.botonIniciar.pasarPantalla();
}
