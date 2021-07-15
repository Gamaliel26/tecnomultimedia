// Comisión 3: 
// Profesor: David bedoian
// Alumno: Piga Gamaliel Ivan
// Legajo: 68318/6
// Link del video: https://youtu.be/so0lvBclI50

int c, d, cont;
boolean e, f, g;

void setup() {
  size(600, 600);
  surface.setResizable(true);
  c=0;
  d=0;
}

void draw() {
  background(255);
  strokeWeight(10);
  stroke(0, 150, 0);
  pushMatrix();
  translate(300, 300);
  fill(0);
  // text((mouseX-300)+","+(mouseY-300), mouseX-300, mouseY-300);
  rotate(radians(45));

  // verticales

  for (int a=-200; a<=200; a+=400) {

    line(a-c, -100, a-c, 100);



    if (e==true) {
      c++;

      if (c >=50) {
        e=false;
      }
    } else {
      c--;

      if (c<=-50) {
        e=true;
      }
    }
  }
cont++;
  // líneas horizontales
  
if (cont > 7){
  for (int a=-200; a<=200; a+=400) {
    line(-100, a-d, 100, a-d);

    if (f==true) {
      d++;

      if (d >=50) {
        f=false;
      }
    } else {
      d--;

      if (d<=-50) {
        f=true;
      }
    }
  }
}

  popMatrix();
}


// Cuadrados psicodélicos
void keyPressed() {
  if (key == 'b' || key == 'B') {
    translate(300, 300);
    rotate(radians(45));
    fill(0);
    noStroke();
    rect(-250, -250, 155, 155);
    rect(100, -250, 155, 155);
    rect(-250, 100, 155, 155);
    rect(100, 100, 155, 155);
    g=true;
  }

  if (key == 'a' || key == 'B') {
    translate(300, 300);
    rotate(radians(45));
    fill(random(255), random(255), random(255));
    noStroke();
    rect(-250, -250, 155, 155);
    rect(100, -250, 155, 155);
    rect(-250, 100, 155, 155);
    rect(100, 100, 155, 155);
    g=true;
  }
}
