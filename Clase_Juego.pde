class Juego {

  int cantAsteroides = 5, cantGusanos = 5;
  int cantImgNave = 7, cantImg = 4, cantFondo = 22, cantFuente = 2;
  int vida = 100, distancia = 0;
  int pantalla = 0;
  int x, z, cantX, cantY;
  float modX, modY;

  Enemigo [] asteroide = new Enemigo [cantAsteroides];
  Enemigo [] gusano = new Enemigo [cantGusanos];
  Nave nave;

  //Boton boton = new Boton();

  Boton botonIniciar, botonContinuar, botonReset, botonCred;

  PImage [] img = new PImage [cantImg];

  PImage [] fondo = new PImage [cantFondo];

  PFont [] fuente = new PFont [cantFuente];



  Juego() {

    for (int i=0; i<22; i++) {
      fondo[i] = loadImage("fondo "+i+".jpg");
    }

    for (int i=0; i<cantFuente; i++) {
      fuente [i] = createFont("fuente_"+i+".ttf", 20);
    }

    for (int i=0; i<cantImg; i++) {
      img [i] = loadImage("img_"+i+".png");
    }

    for (int i=0; i<3; i++) {
      asteroide [i] = new Enemigo(this, img[0], random (width)+width, random (50, height-50), 50, 50);
    }

    for (int i=0; i<3; i++) {
      gusano [i] = new Enemigo(this, img[2], random (width)+width, random (50, height-50), 50, 50);
      {

        nave = new Nave (this, img[3], mouseX, mouseY, 50, 50);

        botonIniciar = new Boton(this, "Empezar", fuente[1], width/2, height/2, 300, 60);
        botonContinuar = new Boton(this, "Continuar", fuente[1], width/2, height/2, 300, 45);
        botonReset = new Boton(this, "Reiniciar", fuente[1], width/2, height/2, 300, 60);
        botonCred = new Boton(this, "Créditos", fuente[0], width/2+width/3, 50, 150, 20);
      }
    }
  }
  void dibujar() {

    if (pantalla == 0) {
      pushMatrix();
      image(fondo[0], 0, 0);
      textFont(fuente[1]);
      fill(0, 100, 150);
      textAlign(LEFT);
      text("Hace mucho tiempo, en una galaxia\nmuy, muy lejana...", width/6, height/3);
      popMatrix();
      x++;
      distancia=0;
      cursor();
      if (x>100) {
        pushMatrix();
        textSize(18);
        textAlign(CENTER);
        fill(0, 100, x);
        text("Presiona una tecla para continuar", width/2, height/2+250);
        botonCred.dibujar();
        popMatrix();
      }
    } else if (pantalla == 1) {
      image(fondo[1], 0, 0);
      textFont(fuente[1]);
      rectMode(CENTER);
      strokeWeight(3);
      line (200, 210, 400, 210);
      textFont(fuente[1]);
      noFill();
      stroke(255);
      rect(width/2, 180, 300, 80);
      rect(width/2, height/2, 500, 500);
      rect(width/2, 390, 450, 280);
      rect(width/2, 500, 425, 45);
      textAlign(CENTER);
      textSize(25);
      text("Introduce tu nombre", width/2, height/5);
      text("Kylo Ren", width/2, height/3);
      text("ACEPTAR", width/2, 515);
    } else if (pantalla == 2) {
      image(fondo[2], 0, 0);
      fill(255);
    } else if (pantalla == 3) {
      image(fondo[3], 0, 0);
      textFont(fuente[1]);
      fill(255);
      text("Sith", 150, 450);
      text("Jedi", 450, 450);
    } else if (pantalla == 4) {
      image(fondo[4], 0, 0);
      textos("Bienvenido al lado Oscuro, acólito Sith.\n Aquí te enseñaremos el arte de los Antiguos Lords. Prepárate, deja salir tu pasión y recuerda: \n La paz es una mentira, solo hay pasión.", 300, 425, 500, 200 );
      boton("Continuar", 300, 560, 200, 35, 255, 5);
    } else if (pantalla == 5) {
      image(fondo[5], 0, 0);
      fill(30);
      text("Bienvenido al lado Luminoso, joven Padawan. Aquí te enseñaremos el arte de los Antiguos Maestros. Prepárate, abre tu corazón y recuerda: \n Que la fuerza esté contigo.", 302, 427, 500, 200 );
      textos("Bienvenido al lado Luminoso, joven Padawan. Aquí te enseñaremos el arte de los Antiguos Maestros. Prepárate, abre tu corazón y recuerda: \n Que la fuerza esté contigo.", 300, 425, 500, 200 );
      boton("Continuar", 300, 560, 200, 35, 255, 5);
    } else if (pantalla == 6) {
      image(fondo[6], 0, 0);
      textos("Naciste en el planeta Tatooine.\n Como todos los jóvenes de tu edad\n deseas cuanto antes dejar el nido \n Sin embargo, apenas tienes dinero para comer \n las cosas no van muy bien en tu familia. ", 300, 425, 500, 200);
      boton("Continuar", 300, 560, 200, 35, 255, 5);
    } else if (pantalla == 7) {
      image(fondo[7], 0, 0);
      textos("Un día, mientras te encargabas de la granja de agua de tus abuelos\n escuchaste el sonido de un blaster a lo lejos\n pero decidiste no darle mucha importancia. Al volver a casa, encontraste todo en ruinas y a tus familiares asesinados... ", 300, 425, 500, 225);
      boton("Continuar", 300, 560, 200, 35, 255, 5);
    } else if (pantalla == 8) {
      image(fondo[8], 0, 0);
      fill(30);
      text("De pronto, un guerrero Tusken aparece ante ti.\n Está decidido a terminar el trabajo. \n Luchas contra él y logras abatirlo. \n Notas como ruega por su vida, a pesar de haber asesinado a tus abuelos.  ", 302, 377, 500, 200);
      text("¿Qué harás?", 302, 482);
      textos("De pronto, un guerrero Tusken aparece ante ti.\n Está decidido a terminar el trabajo. \n Luchas contra él y logras abatirlo. \n Notas como ruega por su vida, a pesar de haber asesinado a tus abuelos.  ", 300, 375, 500, 200);
      text("¿Qué harás?", 300, 480);
      boton("Asesinarlo", 150, 560, 200, 35, 255, 5);
      boton("Perdonarlo", 450, 560, 200, 35, 255, 5);
    } else if (pantalla == 9) {
      image(fondo[9], 0, 0);
      fill(30);
      text("Asesinas rápidamente al Tusken. Lleno de ira y con un poder nuevo en tu interior decides abandonar el planeta que supo ser tu hogar.", 302, 427, 500, 225);
      textos("Asesinas rápidamente al Tusken. Lleno de ira y con un poder nuevo en tu interior decides abandonar el planeta que supo ser tu hogar.", 300, 425, 500, 225);
      boton("Viajar a Korriban", 150, 560, 200, 35, 255, 5);
      boton("Viajar a Dagobah", 450, 560, 200, 35, 255, 5);
    } else if (pantalla == 10) {
      image(fondo[10], 0, 0);
      cursor();
      fill(30);
      text("Una voz en tu interior te dice que hagas lo correcto. Decides golpear con fuerza al guerrero Tusken y perdonarle la vida. Aún con el rencor en tu corazón, sabes que es lo correcto. Más pronto que tarde decides abandonar este planeta.", 302, 427, 500, 225);
      textos("Una voz en tu interior te dice que hagas lo correcto. Decides golpear con fuerza al guerrero Tusken y perdonarle la vida. Aún con el rencor en tu corazón, sabes que es lo correcto. Más pronto que tarde decides abandonar este planeta.", 300, 425, 500, 225);
      boton("Viajar a Tython", 150, 560, 200, 35, 255, 5);
      boton("Viajar a Dagobah", 450, 560, 200, 35, 255, 5);
    } else if (pantalla == 11) {
      image(fondo[11], 0, 0);
      fill(30);
      text("Viajas a Tython. \nAllí encuentras los restos de un templo jedi \n y, aunque no sabes mucho de este sitio, \n logras notar una roca enorme en el centro. Nuevamente la voz te susurra al oído.", 302, 427, 500, 200);
      textos("Viajas a Tython. \nAllí encuentras los restos de un templo jedi \n y, aunque no sabes mucho de este sitio, \n logras notar una roca enorme en el centro. Nuevamente la voz te susurra al oído.", 300, 425, 500, 200);
      boton("Continuar", 300, 560, 200, 35, 255, 5);
    } else if (pantalla == 12) {
      image(fondo[12], 0, 0);
      fill(30);
      text("Haz llegado a Dagobah, el planeta pantano. Aquí la Fuerza es muy intensa. Podría decirse que reclama tu presencia. Logras encontrar una cabaña dentro de un árbol.", 302, 452, 500, 200);
      textos("Haz llegado a Dagobah, el planeta pantano. Aquí la Fuerza es muy intensa. Podría decirse que reclama tu presencia. Logras encontrar una cabaña dentro de un árbol.", 300, 450, 500, 200);
      boton("Continuar", 300, 560, 200, 35, 255, 5);
    } else if (pantalla == 13) {
      image(fondo[13], 0, 0);
      fill(30);
      text("Este lugar está desolado y desértico.\nPuedes notar un silencio perturbador e inquietante en el ambiente. Sin embargo, decides adentrarte en el templo.", 302, 452, 500, 200);
      textos("Este lugar está desolado y desértico.\nPuedes notar un silencio perturbador e inquietante en el ambiente. Sin embargo, decides adentrarte en el templo.", 300, 450, 500, 200);
      boton("Continuar", 300, 560, 200, 35, 255, 5);
    } else if (pantalla == 18) {
      image(fondo[14], 0, 0);
      cursor();
      fill(30);
      text("Ser un Jedi no solo es sobre el poder, o de sables de luz, o incluso de habilidad con la Fuerza. Es sobre la conexión. Ser parte de algo más grande. Yo soy más grande como parte de la Orden Jedi de lo que jamás podría ser solo. \n Nuestro código:", 302, 202, 500, 250);
      text("No hay emoción, hay paz. No hay ignorancia, hay conocimiento. No hay pasión, hay serenidad. No hay caos, hay armonía.\n No hay muerte, existe la Fuerza.", 302, 427, 500, 225);
      textos("Ser un Jedi no solo es sobre el poder, o de sables de luz, o incluso de habilidad con la Fuerza. Es sobre la conexión. Ser parte de algo más grande. Yo soy más grande como parte de la Orden Jedi de lo que jamás podría ser solo. \n Nuestro código:", 300, 200, 500, 250);
      textos("No hay emoción, hay paz. No hay ignorancia, hay conocimiento. No hay pasión, hay serenidad. No hay caos, hay armonía.\n No hay muerte, existe la Fuerza.", 300, 425, 500, 225);
      boton("Continuar", 300, 560, 200, 35, 255, 5);
    } else if (pantalla == 19) {
      image(fondo[15], 0, 0);
      textos("Una criatura pequeña sale de la cabaña y te mira con curiosidad. ¡Es el Maestro Yoda! El maestro te examina cuidadosamente y te cuenta un poco sobre la Fuerza..", 300, 450, 500, 200);
      boton("Continuar", 300, 560, 200, 35, 255, 5);
    } else if (pantalla == 20) {
      image(fondo[16], 0, 0);
      fill(30);
      text("Somos una antigua orden de portadores de la Fuerza, dedicados al lado oscuro. Emergiendo como una facción divergente de la Orden Jedi, los Sith nos convirtimos en sus enemigos de los Jedi y luchamos contra ellos en numerosas guerras. \n Nuestro código:", 302, 202, 500, 250);
      text("La paz es una mentira, solo hay pasión. Con la pasión, obtengo fuerza. Con la fuerza, obtengo poder. Con el poder, obtengo victoria. Con la victoria, mis cadenas se rompen. \n La Fuerza me liberará.", 302, 427, 500, 225);
      textos("Somos una antigua orden de portadores de la Fuerza, dedicados al lado oscuro. Emergiendo como una facción divergente de la Orden Jedi, los Sith nos convirtimos en sus enemigos de los Jedi y luchamos contra ellos en numerosas guerras. \n Nuestro código:", 300, 200, 500, 250);
      textos("La paz es una mentira, solo hay pasión. Con la pasión, obtengo fuerza. Con la fuerza, obtengo poder. Con el poder, obtengo victoria. Con la victoria, mis cadenas se rompen. \n La Fuerza me liberará.", 300, 425, 500, 225);
      boton("Continuar", 300, 560, 200, 35, 255, 5);
    } else if (pantalla == 21) {
      image(fondo[17], 0, 0);
      fill(30);
      text("Yoda: Si la fuerza aprender tu quieres, eliminar la venganza tu debes.", 302, 452, 500, 250);
      textos("Yoda: Si la fuerza aprender tu quieres, eliminar la venganza tu debes.", 300, 450, 500, 250);
      boton("Aceptar la luz", 150, 560, 200, 35, 255, 5);
      boton("Atacar a Yoda", 450, 560, 200, 35, 255, 5);
    } else if (pantalla == 22) {
      image(fondo[18], 0, 0);
      textos("Dejas atrás todo el rencor y aceptas al lado luminoso de la fuerza. Yoda te acepta a pesar de tu edad y decide entrenarte bajo su tutela. Te encuentras con los demonios de tu interior dentro de un gran árbol y logras vencerlos.", 300, 425, 500, 250);
      boton("Continuar", 300, 560, 200, 35, 255, 5);
    } else if (pantalla == 23) {
      image(fondo[19], 0, 0);
      textos("¡Abandonar tu sed de venganza es innaceptable!\n ¡Yoda no quiere ayudarte, solo quiere quitarte tu poder!\n ¡No lo permitirás y decides atacarlo con toda tu fuerza!", 300, 425, 500, 250);
      boton("Continuar", 300, 560, 200, 35, 255, 5);
    } else if (pantalla == 24) {
      image(fondo[20], 0, 0);
      text("Pasado algún tiempo, el Maestro te obsequia un sable de luz y te nombra como nuevo Caballero Jedi. Tu deber a partir de ahora, será transmitir tu conocimiento a nuevas generaciones", 302, 427, 500, 250);
      textos("Pasado algún tiempo, el Maestro te obsequia un sable de luz y te nombra como nuevo Caballero Jedi. Tu deber a partir de ahora, será transmitir tu conocimiento a nuevas generaciones", 300, 425, 500, 250);
      boton("Continuar", 300, 560, 200, 35, 255, 5);
    } else if (pantalla == 25) {
      image(fondo[21], 0, 0);
      textos("Yoda te sobrepasa en fuerza por mucho. Pierdes deshonrosamente ante un verdadero maestro, quizás no fue buena idea atacarlo. Tu vida se desvanece y ves la decepción en cara del Maestro mientras te otorga el final.", 300, 425, 500, 250);
      boton("Continuar", 300, 560, 200, 35, 255, 5);
    } else if (pantalla == 26) {
      image(fondo[0], 0, 0);
      textAlign(CENTER);
      textFont(fuente[1]);
      fill(0, 100, 150);
      textSize(25);
      text("¡Gracias por jugar!\n Alumno: Piga Gamaliel Ivan\n Comisión: 3 \n Profesor: David Bedoian", width/2, height/3, 500, 200);
      boton("Volver al Inicio", 300, 560, 200, 35, 255, 5);
    }

    // Minijuego 

    else if (pantalla == 14) {
      image(img[1], 0, 0);
      //  titulo("mini wars", fuente[0], width/2, height/2, 50);
      botonIniciar.dibujar();
    } else if (pantalla == 15) {
      pushStyle();
      imageMode(CORNER);
      image(img[1], 0, 0 );
      popStyle();

      nave.dibujar();
      titulo("Integridad: "+vida+"%", fuente[1], 100, 50, 15);
      titulo("Distancia: "+distancia+" millones de km", fuente[1], 150, 75, 15);
      distancia++;

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
      if (vida<=0) {
        pantalla=17;
      }
      if (vida>=1 & distancia>=500) {
        pantalla=16;
      }
    } else if (pantalla == 16) {
      image(img[1], 0, 0);
      titulo("victoria", fuente[0], width/2, height/3, 50);
      botonContinuar.dibujar();
    } else if (pantalla == 17) {
      image(img[1], 0, 0);
      cursor();
      titulo("game over", fuente[0], width/2, height/3, 50);
      botonReset.dibujar();
    }
  }

  // funciones

  void boton(String label_, float posX_, float posY_, float tamX_, float tamY_, int colorFont, int redon) {

    pushStyle();
    pushMatrix();
    translate(posX_, posY_);
    rectMode(CENTER);
    noFill();
    stroke(colorFont);
    rect(0, 0, tamX_, tamY_, redon);
    fill(255);
    textAlign (CENTER, CENTER);
    text(label_, 0, 0);
    popMatrix();
    popStyle();
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

  void tecla() {
    if (keyPressed & pantalla == 0) {
      pantalla = 1;
    }
  }

  void textos(String Relato, float posX, float posY, float tamX, float tamY) {
    fill(255);
    textSize(25);
    textAlign(CENTER, CENTER);
    textFont(fuente[1]);
    text(Relato, posX, posY, tamX, tamY);
  }


  void pantallaPasar() {
    if (mouseX >100 && mouseX < 500 && mouseY > 465 && mouseY < 525 && pantalla==1) {
      pantalla = 3;
    } else if (mouseX >105 && mouseX < 190 && mouseY > 425 && mouseY < 450 && pantalla==3) {
      pantalla = 4;
    } else if (mouseX >415 && mouseX < 495 && mouseY > 420 && mouseY < 450 && pantalla==3) {
      pantalla = 5;
    } else if (mouseX >200 && mouseX < 400 && mouseY > 543 && mouseY <  577 && pantalla==4) {
      pantalla = 6;
    } else if (mouseX >200 && mouseX < 400 && mouseY > 543 && mouseY <  577 && pantalla==5) {
      pantalla = 6;
    } else if (mouseX >200 && mouseX < 400 && mouseY > 543 && mouseY <  577 && pantalla==6) {
      pantalla = 7;
    } else if (mouseX >200 && mouseX < 400 && mouseY > 543 && mouseY <  577 && pantalla==7) {
      pantalla = 8;
    } else if (mouseX >50 && mouseX < 250 && mouseY > 543 && mouseY < 577 && pantalla==8) {
      pantalla = 9;
    } else if (mouseX >350 && mouseX < 550 && mouseY > 543 && mouseY <  577 && pantalla==8) {
      pantalla = 10;
    } else if (mouseX >50 && mouseX < 350 && mouseY > 543 && mouseY < 577 && pantalla==9) {
      pantalla = 14;
    } else if (mouseX >350 && mouseX < 550 && mouseY > 543 && mouseY < 577 && pantalla==9) {
      pantalla = 14;
    } else if (mouseX >50 && mouseX < 250 && mouseY > 543 && mouseY < 577 && pantalla==10) {
      pantalla = 18;
    } else if (mouseX >350 && mouseX < 550 && mouseY > 543 && mouseY < 577 && pantalla==10) {
      pantalla = 18;
    } else if (mouseX >200 && mouseX < 400 && mouseY > 543 && mouseY < 577 && pantalla==11) {
      pantalla = 18;
    } else if (mouseX >200 && mouseX < 400 && mouseY > 543 && mouseY < 577 && pantalla==12) {
      pantalla = 18;
    } else if (mouseX >200 && mouseX < 400 && mouseY > 543 && mouseY < 577 && pantalla==13) {
      pantalla = 18;
    } else if (mouseX >200 && mouseX < 400 && mouseY > 543 && mouseY < 577 && pantalla==18) {
      pantalla = 19;
    } else if (mouseX >200 && mouseX < 400 && mouseY > 543 && mouseY < 577 && pantalla==19) {
      pantalla = 20;
    } else if (mouseX >150 && mouseX < 350 && mouseY > 150 && mouseY < 350 && pantalla==17) {
      pantalla = 0;
    } else if (mouseX >150 && mouseX < 350 && mouseY > 150 && mouseY < 350 && pantalla==16) {
      pantalla = 10;
    } else if (mouseX >50 && mouseX < 250 && mouseY > 543 && mouseY < 577 && pantalla==20) {
      pantalla = 21;
    } else if (mouseX >350 && mouseX < 550 && mouseY > 543 && mouseY < 577 && pantalla==21) {
      pantalla = 22;
    } else if (mouseX >200 && mouseX < 400 && mouseY > 543 && mouseY < 577 && pantalla==22) {
      pantalla = 23;
    } else if (mouseX >200 && mouseX < 400 && mouseY > 543 && mouseY < 577 && pantalla==23) {
      pantalla = 24;
    } else if (mouseX >200 && mouseX < 400 && mouseY > 543 && mouseY < 577 && pantalla==24) {
      pantalla = 25;
    } else if (mouseX >200 && mouseX < 400 && mouseY > 543 && mouseY < 577 && pantalla==25) {
      pantalla = 26;
    } else if (mouseX >200 && mouseX < 400 && mouseY > 543 && mouseY < 577 && pantalla==26) {
      pantalla = 0;
    } else if (mouseX >475 && mouseX < 575 && mouseY > 33 && mouseY < 67 && pantalla==0) {
      pantalla = 26;
    }
  }
}
