PFont titulo, continuar, eleccion, cosas;
PImage fondo, p1, p2, p3, p4, p5;
int turno = 0;
int cua = 0;
int da1 = 200; 
int da2 = 200;
int selecc1 = 0; 
int selecc2 = 0;
int t =7;
float dt = 5;
float x,y;
Personajes per1;
Personajes per2;
Pantalla pantallas;
void setup(){
  size (800,500);
  fondo = loadImage("fondop.png");
  p1 = loadImage("p1.png");
  p2 = loadImage("p2.png");
  p3 = loadImage("p3.png");
  p4 = loadImage("p4.png");
  p5 = loadImage("p5.png");
  titulo = loadFont("TrueLies-48.vlw");
  continuar = loadFont("ElementaryGothicBookhand-Regular-48.vlw");
  eleccion = loadFont ("Rosemary-Roman-48.vlw");
  cosas = loadFont ("Lobster1.4-48.vlw");
  pantallas = new Pantalla();
}

void draw(){
  pantallas.display();
}
void keyPressed(){
  pantallas.teclado();
  
}
