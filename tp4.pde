// Alumno: Gamaliel Ivan Piga
// Comisión: Nro 3
// Profesor: David Bedoian
// Legajo: 68318/6
// Link del Video: https://youtu.be/pebJhzL2BgU


int pantalla = 0, x, z, cantX, cantY;
PImage [] img;
PFont font, ladofont, relatfont;
float modX, modY;

void setup() {
  size(600, 600);
  img = new PImage [22];
  for (int i=0; i<22; i++) {

    img[i] = loadImage("fondo "+i+".jpg");
  }
  font = loadFont("Arial-BoldMT-20.vlw");
  ladofont = createFont("Starjout.ttf", 40);
  relatfont = createFont("Welbut__.ttf", 20);
  cantX=13;
  cantY=13;
  //surface.setResizable(true);
}

void draw() {
  x++;

  if (pantalla == 0) {
    image(img[0], 0, 0);
    textFont(font);
    fill(0, 100, 150);
    textAlign(LEFT);
    textSize(25);
    text("Hace mucho tiempo, en una galaxia\nmuy, muy lejana...", width/6, height/3);

    if (x>100) {
      textSize(18);
      textAlign(CENTER);
      fill(0, 100, x);
      text("Presiona una tecla para continuar", width/2, height/2+250);
      boton("Créditos", 525, 50, 100, 35, 255, 10);
    }
  } else if (pantalla == 1) {
    image(img[1], 0, 0);
    textFont(font);
    rectMode(CENTER);
    strokeWeight(3);
    line (200, 210, 400, 210);
    textFont(relatfont);
    noFill();
    stroke(255);
    rect(width/2, 180, 300, 80);
    rect(width/2, height/2, 500, 500);
    rect(width/2, 390, 450, 280);
    boton("BORRAR", 150, 495, 140, 60, 255, 0);
    boton("ESPACIO", 300, 495, 140, 60, 255, 0);
    boton("ACEPTAR", 450, 495, 140, 60, 255, 0);
    textAlign(CENTER);
    textSize(25);
    text("Introduce tu nombre", width/2, height/5);

    // Botones ABC
    modX = (float) width/cantX;
    modY = (float) height/cantY;
    for ( int i=1; i<10; i++) {
      for ( int j=1; j<5; j++) {
        pushMatrix();
        translate(45, 220);
        float centroX = i*modX+modX/2;
        float centroY = j*modY+modY/2;
        rect(centroX, centroY, modX, modY);
        popMatrix();
      }
    }
  } else if (pantalla == 2) {
    image(img[2], 0, 0);
    fill(255);
  } else if (pantalla == 3) {
    image(img[3], 0, 0);
    textFont(ladofont);
    fill(255);
    text("Sith", 150, 450);
    text("Jedi", 450, 450);
  } else if (pantalla == 4) {
    image(img[4], 0, 0);
    textos("Bienvenido al lado Oscuro, acólito Sith.\n Aquí te enseñaremos el arte de los Antiguos Lords. Prepárate, deja salir tu pasión y recuerda: \n La paz es una mentira, solo hay pasión.", 300, 425, 500, 200 );
    boton("Continuar", 300, 560, 200, 35, 255, 5);
  } else if (pantalla == 5) {
    image(img[5], 0, 0);
    fill(30);
    text("Bienvenido al lado Luminoso, joven Padawan. Aquí te enseñaremos el arte de los Antiguos Maestros. Prepárate, abre tu corazón y recuerda: \n Que la fuerza esté contigo.", 302, 427, 500, 200 );
    textos("Bienvenido al lado Luminoso, joven Padawan. Aquí te enseñaremos el arte de los Antiguos Maestros. Prepárate, abre tu corazón y recuerda: \n Que la fuerza esté contigo.", 300, 425, 500, 200 );
    boton("Continuar", 300, 560, 200, 35, 255, 5);
  } else if (pantalla == 6) {
    image(img[6], 0, 0);
    textos("Naciste en el planeta Tatooine.\n Como todos los jóvenes de tu edad\n deseas cuanto antes dejar el nido \n Sin embargo, apenas tienes dinero para comer \n las cosas no van muy bien en tu familia. ", 300, 425, 500, 200);
    boton("Continuar", 300, 560, 200, 35, 255, 5);
  } else if (pantalla == 7) {
    image(img[7], 0, 0);
    textos("Un día, mientras te encargabas de la granja de agua de tus abuelos\n escuchaste el sonido de un blaster a lo lejos\n pero decidiste no darle mucha importancia. Al volver a casa, encontraste todo en ruinas y a tus familiares asesinados... ", 300, 425, 500, 225);
    boton("Continuar", 300, 560, 200, 35, 255, 5);
  } else if (pantalla == 8) {
    image(img[8], 0, 0);
    fill(30);
    text("De pronto, un guerrero Tusken aparece ante ti.\n Está decidido a terminar el trabajo. \n Luchas contra él y logras abatirlo. \n Notas como ruega por su vida, a pesar de haber asesinado a tus abuelos.  ", 302, 377, 500, 200);
    text("¿Qué harás?", 302, 482);
    textos("De pronto, un guerrero Tusken aparece ante ti.\n Está decidido a terminar el trabajo. \n Luchas contra él y logras abatirlo. \n Notas como ruega por su vida, a pesar de haber asesinado a tus abuelos.  ", 300, 375, 500, 200);
    text("¿Qué harás?", 300, 480);
    boton("Asesinarlo", 150, 560, 200, 35, 255, 5);
    boton("Perdonarlo", 450, 560, 200, 35, 255, 5);
  } else if (pantalla == 9) {
    image(img[9], 0, 0);
    fill(30);
    text("Asesinas rápidamente al Tusken. Lleno de ira y con un poder nuevo en tu interior decides abandonar el planeta que supo ser tu hogar.", 302, 427, 500, 225);
    textos("Asesinas rápidamente al Tusken. Lleno de ira y con un poder nuevo en tu interior decides abandonar el planeta que supo ser tu hogar.", 300, 425, 500, 225);
    boton("Viajar a Korriban", 150, 560, 200, 35, 255, 5);
    boton("Viajar a Dagobah", 450, 560, 200, 35, 255, 5);
  } else if (pantalla == 10) {
    image(img[10], 0, 0);
    fill(30);
    text("Una voz en tu interior te dice que hagas lo correcto. Decides golpear con fuerza al guerrero Tusken y perdonarle la vida. Aún con el rencor en tu corazón, sabes que es lo correcto. Más pronto que tarde decides abandonar este planeta.", 302, 427, 500, 225);
    textos("Una voz en tu interior te dice que hagas lo correcto. Decides golpear con fuerza al guerrero Tusken y perdonarle la vida. Aún con el rencor en tu corazón, sabes que es lo correcto. Más pronto que tarde decides abandonar este planeta.", 300, 425, 500, 225);
    boton("Viajar a Tython", 150, 560, 200, 35, 255, 5);
    boton("Viajar a Dagobah", 450, 560, 200, 35, 255, 5);
  } else if (pantalla == 11) {
    image(img[11], 0, 0);
    fill(30);
    text("Viajas a Tython. \nAllí encuentras los restos de un templo jedi \n y, aunque no sabes mucho de este sitio, \n logras notar una roca enorme en el centro. Nuevamente la voz te susurra al oído.", 302, 427, 500, 200);
    textos("Viajas a Tython. \nAllí encuentras los restos de un templo jedi \n y, aunque no sabes mucho de este sitio, \n logras notar una roca enorme en el centro. Nuevamente la voz te susurra al oído.", 300, 425, 500, 200);
    boton("Continuar", 300, 560, 200, 35, 255, 5);
  } else if (pantalla == 12) {
    image(img[12], 0, 0);
    fill(30);
    text("Haz llegado a Dagobah, el planeta pantano. Aquí la Fuerza es muy intensa. Podría decirse que reclama tu presencia. Logras encontrar una cabaña dentro de un árbol.", 302, 452, 500, 200);
    textos("Haz llegado a Dagobah, el planeta pantano. Aquí la Fuerza es muy intensa. Podría decirse que reclama tu presencia. Logras encontrar una cabaña dentro de un árbol.", 300, 450, 500, 200);
    boton("Continuar", 300, 560, 200, 35, 255, 5);
  } else if (pantalla == 13) {
    image(img[13], 0, 0);
    fill(30);
    text("Este lugar está desolado y desértico.\nPuedes notar un silencio perturbador e inquietante en el ambiente. Sin embargo, decides adentrarte en el templo.", 302, 452, 500, 200);
    textos("Este lugar está desolado y desértico.\nPuedes notar un silencio perturbador e inquietante en el ambiente. Sin embargo, decides adentrarte en el templo.", 300, 450, 500, 200);
    boton("Continuar", 300, 560, 200, 35, 255, 5);
  } else if (pantalla == 14) {
    image(img[14], 0, 0);
    fill(30);
    text("Ser un Jedi no solo es sobre el poder, o de sables de luz, o incluso de habilidad con la Fuerza. Es sobre la conexión. Ser parte de algo más grande. Yo soy más grande como parte de la Orden Jedi de lo que jamás podría ser solo. \n Nuestro código:", 302, 202, 500, 250);
    text("No hay emoción, hay paz. No hay ignorancia, hay conocimiento. No hay pasión, hay serenidad. No hay caos, hay armonía.\n No hay muerte, existe la Fuerza.", 302, 427, 500, 225);
    textos("Ser un Jedi no solo es sobre el poder, o de sables de luz, o incluso de habilidad con la Fuerza. Es sobre la conexión. Ser parte de algo más grande. Yo soy más grande como parte de la Orden Jedi de lo que jamás podría ser solo. \n Nuestro código:", 300, 200, 500, 250);
    textos("No hay emoción, hay paz. No hay ignorancia, hay conocimiento. No hay pasión, hay serenidad. No hay caos, hay armonía.\n No hay muerte, existe la Fuerza.", 300, 425, 500, 225);
    boton("Continuar", 300, 560, 200, 35, 255, 5);
  } else if (pantalla == 15) {
    image(img[15], 0, 0);
    textos("Una criatura pequeña sale de la cabaña y te mira con curiosidad. ¡Es el Maestro Yoda! El maestro te examina cuidadosamente y te cuenta un poco sobre la Fuerza..", 300, 450, 500, 200);
    boton("Continuar", 300, 560, 200, 35, 255, 5);
  } else if (pantalla == 16) {
    image(img[16], 0, 0);
    fill(30);
    text("Somos una antigua orden de portadores de la Fuerza, dedicados al lado oscuro. Emergiendo como una facción divergente de la Orden Jedi, los Sith nos convirtimos en sus enemigos de los Jedi y luchamos contra ellos en numerosas guerras. \n Nuestro código:", 302, 202, 500, 250);
    text("La paz es una mentira, solo hay pasión. Con la pasión, obtengo fuerza. Con la fuerza, obtengo poder. Con el poder, obtengo victoria. Con la victoria, mis cadenas se rompen. \n La Fuerza me liberará.", 302, 427, 500, 225);
    textos("Somos una antigua orden de portadores de la Fuerza, dedicados al lado oscuro. Emergiendo como una facción divergente de la Orden Jedi, los Sith nos convirtimos en sus enemigos de los Jedi y luchamos contra ellos en numerosas guerras. \n Nuestro código:", 300, 200, 500, 250);
    textos("La paz es una mentira, solo hay pasión. Con la pasión, obtengo fuerza. Con la fuerza, obtengo poder. Con el poder, obtengo victoria. Con la victoria, mis cadenas se rompen. \n La Fuerza me liberará.", 300, 425, 500, 225);
    boton("Continuar", 300, 560, 200, 35, 255, 5);
  } else if (pantalla == 17) {
    image(img[17], 0, 0);
    fill(30);
    text("Yoda: Si la fuerza aprender tu quieres, eliminar la venganza tu debes.", 302, 452, 500, 250);
    textos("Yoda: Si la fuerza aprender tu quieres, eliminar la venganza tu debes.", 300, 450, 500, 250);
    boton("Aceptar la luz", 150, 560, 200, 35, 255, 5);
    boton("Atacar a Yoda", 450, 560, 200, 35, 255, 5);
  } else if (pantalla == 18) {
    image(img[18], 0, 0);
    textos("Dejas atrás todo el rencor y aceptas al lado luminoso de la fuerza. Yoda te acepta a pesar de tu edad y decide entrenarte bajo su tutela. Te encuentras con los demonios de tu interior dentro de un gran árbol y logras vencerlos.", 300, 425, 500, 250);
    boton("Continuar", 300, 560, 200, 35, 255, 5);
  } else if (pantalla == 19) {
    image(img[19], 0, 0);
    textos("¡Abandonar tu sed de venganza es innaceptable!\n ¡Yoda no quiere ayudarte, solo quiere quitarte tu poder!\n ¡No lo permitirás y decides atacarlo con toda tu fuerza!", 300, 425, 500, 250);
    boton("Continuar", 300, 560, 200, 35, 255, 5);
  } else if (pantalla == 20) {
    image(img[20], 0, 0);
    text("Pasado algún tiempo, el Maestro te obsequia un sable de luz y te nombra como nuevo Caballero Jedi. Tu deber a partir de ahora, será transmitir tu conocimiento a nuevas generaciones", 302, 427, 500, 250);
    textos("Pasado algún tiempo, el Maestro te obsequia un sable de luz y te nombra como nuevo Caballero Jedi. Tu deber a partir de ahora, será transmitir tu conocimiento a nuevas generaciones", 300, 425, 500, 250);
    boton("Continuar", 300, 560, 200, 35, 255, 5);
  } else if (pantalla == 21) {
    image(img[21], 0, 0);
    textos("Yoda te sobrepasa en fuerza por mucho. Pierdes deshonrosamente ante un verdadero maestro, quizás no fue buena idea atacarlo. Tu vida se desvanece y ves la decepción en cara del Maestro mientras te otorga el final.", 300, 425, 500, 250);
    boton("Continuar", 300, 560, 200, 35, 255, 5);
  } else if (pantalla == 22) {
    image(img[0], 0, 0);
    textFont(font);
    fill(0, 100, 150);
    textSize(25);
    text("¡Gracias por jugar!\n Alumno: Piga Gamaliel Ivan\n Comisión: 3 \n Profesor: David Bedoian", width/2, height/3, 500, 200);
    boton("Volver al Inicio", 300, 560, 200, 35, 255, 5);
  }
}


void keyPressed() {
  if (keyPressed) {
    pantalla = 1;
  }
}

void mousePressed() {
  if ((mouseX >380) && (mouseX < 520) && (mouseY > 465) && (mouseY < 525)&& pantalla==1) {
    pantalla = 3;
  } else if ((mouseX >105) && (mouseX < 190) && (mouseY > 425) && (mouseY < 450)&& pantalla==3) {
    pantalla = 4;
  } else if ((mouseX >415) && (mouseX < 495) && (mouseY > 420) && (mouseY < 450)&& pantalla==3) {
    pantalla = 5;
  } else if ((mouseX >200) && (mouseX < 400) && (mouseY > 543) && (mouseY <  577)&& pantalla==4) {
    pantalla = 6;
  } else if ((mouseX >200) && (mouseX < 400) && (mouseY > 543) && (mouseY <  577)&& pantalla==5) {
    pantalla = 6;
  } else if ((mouseX >200) && (mouseX < 400) && (mouseY > 543) && (mouseY <  577)&& pantalla==6) {
    pantalla = 7;
  } else if ((mouseX >200) && (mouseX < 400) && (mouseY > 543) && (mouseY <  577)&& pantalla==7) {
    pantalla = 8;
  } else if ((mouseX >50) && (mouseX < 250) && (mouseY > 543) && (mouseY < 577)&& pantalla==8) {
    pantalla = 9;
  } else if ((mouseX >350) && (mouseX < 550) && (mouseY > 543) && (mouseY <  577)&& pantalla==8) {
    pantalla = 10;
  } else if ((mouseX >50) && (mouseX < 350) && (mouseY > 543) && (mouseY < 577)&& pantalla==9) {
    pantalla = 13;
  } else if ((mouseX >350) && (mouseX < 550) && (mouseY > 543) && (mouseY < 577)&& pantalla==9) {
    pantalla = 12;
  } else if ((mouseX >50) && (mouseX < 250) && (mouseY > 543) && (mouseY < 577)&& pantalla==10) {
    pantalla = 11;
  } else if ((mouseX >350) && (mouseX < 550) && (mouseY > 543) && (mouseY < 577)&& pantalla==10) {
    pantalla = 12;
  } else if ((mouseX >200) && (mouseX < 400) && (mouseY > 543) && (mouseY < 577)&& pantalla==11) {
    pantalla = 14;
  } else if ((mouseX >200) && (mouseX < 400) && (mouseY > 543) && (mouseY < 577)&& pantalla==12) {
    pantalla = 15;
  } else if ((mouseX >200) && (mouseX < 400) && (mouseY > 543) && (mouseY < 577)&& pantalla==13) {
    pantalla = 16;
  } else if ((mouseX >200) && (mouseX < 400) && (mouseY > 543) && (mouseY < 577)&& pantalla==14) {
    pantalla = 12;
  } else if ((mouseX >200) && (mouseX < 400) && (mouseY > 543) && (mouseY < 577)&& pantalla==15) {
    pantalla = 17;
  } else if ((mouseX >200) && (mouseX < 400) && (mouseY > 543) && (mouseY < 577)&& pantalla==16) {
    pantalla = 12;
  } else if ((mouseX >50) && (mouseX < 250) && (mouseY > 543) && (mouseY < 577)&& pantalla==17) {
    pantalla = 18;
  } else if ((mouseX >350) && (mouseX < 550) && (mouseY > 543) && (mouseY < 577)&& pantalla==17) {
    pantalla = 19;
  } else if ((mouseX >200) && (mouseX < 400) && (mouseY > 543) && (mouseY < 577)&& pantalla==18) {
    pantalla = 20;
  } else if ((mouseX >200) && (mouseX < 400) && (mouseY > 543) && (mouseY < 577)&& pantalla==19) {
    pantalla = 21;
  } else if ((mouseX >200) && (mouseX < 400) && (mouseY > 543) && (mouseY < 577)&& pantalla==20) {
    pantalla = 22;
  } else if ((mouseX >200) && (mouseX < 400) && (mouseY > 543) && (mouseY < 577)&& pantalla==21) {
    pantalla = 22;
  } else if ((mouseX >200) && (mouseX < 400) && (mouseY > 543) && (mouseY < 577)&& pantalla==22) {
    pantalla = 0;
  } else if ((mouseX >475) && (mouseX < 575) && (mouseY > 33) && (mouseY < 67)&& pantalla==0) {
    pantalla = 22;
  }
}
