class Juego {

  int cantAsteroides = 5, cantGusanos = 5;
  int pantalla = 0;
  int cantImgNave = 7, cantImg = 4, cantFuente = 2;
  int vida = 100;

  Enemigo [] asteroide = new Enemigo [cantAsteroides];
  Enemigo [] gusano = new Enemigo [cantGusanos];
  Nave nave;

  Boton botonIniciar, botonInicio, botonReset;

  PImage [] img = new PImage [cantImg];

  PFont [] fuente = new PFont [cantFuente];

  Juego() {

    for (int i=0; i<cantFuente; i++) {
      fuente [i] = createFont("fuente_"+i+".ttf", 10);
    }

    for (int i=0; i<cantImg; i++) {
      img [i] = loadImage("img_"+i+".png");
    }

    for (int i=0; i<3; i++) {
      asteroide [i] = new Enemigo(this, img[0], random (width)+width, random (50, height-50), 50, 50);
    }

    for (int i=0; i<3; i++) {
      gusano [i] = new Enemigo(this, img[2], random (width)+width, random (50, height-50), 50, 50);
    }

    nave = new Nave (this, img[3], mouseX, mouseY, 50, 50);

    botonIniciar = new Boton(this, "Empezar", fuente[1], width/2, height/2+height/4, 300, 60);
    botonInicio = new Boton(this, "Reintentar", fuente[1], width/2, height/2+height/4, 300, 60);
    botonReset = new Boton(this, "Reintentar", fuente[1], width/2, height/2+height/4, 300, 60);
  }
  void dibujar() {
    if (pantalla == 0) {
      image(img[1], 0, 0);
      titulo("mini wars", fuente[0], width/2, height/2, 100);
      botonIniciar.dibujar();
    } else if (pantalla == 1) {
      pushStyle();
      imageMode(CORNER);
      image(img[1], 0, 0 );
      popStyle();
      nave.dibujar();
      titulo("Integridad: "+vida+"%", fuente[1], 100, 50, 15);

      for (int i = 0; i < 3; i++) {
        asteroide[i].dibujar();
        asteroide[i].mover();

        if (asteroide[i].colision(mouseX, mouseY, nave.ancho, nave.alto)) {
          vida--;
        }
      }
      for (int i = 0; i < 3; i++) {
        gusano[i].dibujar();
        gusano[i].mover();
        if (gusano[i].colision(mouseX, mouseY, nave.ancho, nave.alto)) {
          vida--;
        }
      }
    } else if (pantalla == 2) {
      image(img[1], 0, 0);
      titulo("victoria", fuente[0], width/2, height/2, 100);
      botonInicio.dibujar();
    } else if (pantalla == 3) {
      image(img[1], 0, 0);
      titulo("game over", fuente[0], width/2, height/2, 100);
      botonInicio.dibujar();
    }
    if (vida<=0) {
      pantalla=3;
    }
  }

  void titulo(String titulo, PFont fuente, int x, int y, int tam) {
    pushStyle();

    textFont(fuente, tam);
    textLeading(100);
    textAlign(CENTER);
    fill(255);
    text(titulo, x, y);
    popStyle();
  }

  void reiniciarVida() {
    vida=100;
  }
  void reiniciarBichos() {
    for (int i = 0; i < 3; i++) {
      asteroide[i].reiniciar();
    }
    for (int i = 0; i < 3; i++) {
      gusano[i].reiniciar();
    }
  }
}
