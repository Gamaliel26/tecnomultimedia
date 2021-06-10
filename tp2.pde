int A;
PImage Fondo;
PFont Tokyo;

void setup () {
  size (600, 400);
  A = 0;
  Fondo = loadImage ("kaneki.jpg");
  Tokyo = createFont("DOWNCOME.TTF", 35);
}
void draw() {
  A = A + 1;
  image (Fondo, 0, 0);
  Fondo.resize(600, 400);
  textFont(Tokyo, 80);
  textAlign(CENTER);
  fill(255, mouseX, mouseY);
  text("TOKYO GHOUL: RE", 300, 300);
  textSize(35);
  text("CALL TO EXIST", 300, 350);
  

  // Pantalla 2
  if (A > 180) {
    textSize(40);
    background(0);
    text("PROTAGONISTAS:", 300, 100); 
    textSize(25);
    textAlign(CENTER, LEFT);
    text("KEN KANEKI \n RIZE KAMISHIRO \n TOUKA KIRISHIMA \n SHU TSUKIYAMA", 400, 180); 
    textAlign(CENTER, RIGHT);
    text("NATSUKI HANAE \n SORA AMAMIYA \n KANA HANAZAWA \n MAMORU MIYANO", 200, 180);
  }

  // Pantalla 3
  if (A > 360) {
    textSize(40);
    background(0);
    text("SECUNDARIOS", 300, 100); 
    textSize(25);
    textAlign(CENTER, LEFT);
    text("KAZUICHI BANJOU \n NICO \n TAKATSUKI 'ETO' SEN \n SEIDOU TAKIZAWA", 400, 180); 
    textAlign(CENTER, RIGHT);
    text("KENTARO ITO \n KENJIRO TSUDA \n MAAYA SAKAMOTO \n SHINNOSUKE TACHIBANA", 200, 180);
  }

  // Pantalla 4
  if (A > 540) {
    textSize(40);
    background(0);
    text("MUSICA:", 300, 100); 
    textSize(25);
    textAlign(CENTER);
    text("'UNRAVEL' \n RIN TOSITE SIGURE \n 'MUNOU' \n OSTERREICH \n 'ASPHYXIA' \n CO SHU NIE ", 300, 150);
  }

  // Pantalla 5
  if (A > 720) {
    textSize(40);
    background(0);
    text("DIRECCION", 300, 100); 
    text("PRODUCCION", 300, 250);
    textSize(30);
    textAlign(CENTER);
    text("SUI ISHIDA", 300, 150);
    text("NAMCO BANDAI GAMES", 300, 300);
  }
}
