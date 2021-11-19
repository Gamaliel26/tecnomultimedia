// Alumno: Piga Gamaliel Ivan
// Profesor: Bedoian David
// Comisión Nro 3
// Legajo: 68318/6
// Enlace al video: 


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
