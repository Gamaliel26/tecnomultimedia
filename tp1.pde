// Comision 3
// Piga Gamaliel Ivan
// Legajo 38618/6



void setup (){

size(600,600);
}

void draw(){
background(0);
stroke(1);
noFill();

// Elipses y sus respectivos colores

ellipse(300,300,600,600);
fill(0,100,200);
text("AZUL",350,350);
triangle(300,300,0,300,40,150);
fill(0,0,255);
triangle(300,300,40,150,150,40);
fill(100,0,200);
triangle(300,300,150,40,300,0);
fill(255,0,100);
triangle(300,300,300,0,450,40);
fill(255,0,50);
triangle(300,300,450,40,560,150);
fill(255,0,0);
triangle(300,300,560,150,600,300);
fill(255,100,0);
triangle(300,300,600,300,560,450);
fill(255,255,0);
triangle(300,300,560,450,450,560);
fill(200,255,0);
triangle(300,300,450,560,300,600);
fill(0,255,0);
triangle(300,300,300,600,150,560);
fill(0,255,50);
triangle(300,300,150,560,40,440);
fill(0,255,200);
triangle(300,300,40,440,0,300);
fill(255);

// Nombres de los colores
textSize(25);
text("CIAN",50,360);
text("CERULEO",50,270);
text("AZUL",110,150);
fill(0);
text("VIOLETA",185,70);
text("MAGENTA",305,70);
text("FUCSIA",420,150);
text("ROJO",470,270);
text("NARANJA",440,360);
text("AMARILLO",400,460);
text("LIMA",330,560);
text("VERDE",200,560);
text("VERDE CIAN",60,460);




}
