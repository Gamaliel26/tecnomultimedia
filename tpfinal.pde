// Alumno: Piga Gamaliel Ivan
// Profesor: Bedoian David
// Comisión Nro 3
// Legajo: 68318/6

Juego juego;

int pantalla = 0;

void setup() {
  size(600, 600);
  juego = new Juego();
}

void draw() {
  background(255);
  juego.dibujar();
  juego.tecla(); 
}

void mouseReleased() {
  juego.botonIniciar.pasarPantalla();
}

void mousePressed(){
juego.pantallaPasar();
}
