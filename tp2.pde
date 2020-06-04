PFont texto;
int posY;
int posX;
int px, py;
int tam, tam2;
PImage fondo, f222, personajes, huella;
float cambioColor, cambioColor2;
float distan, distanM;
int tam3;

void setup() {

  noCursor();
  size(600, 400);

  //IMAGEN

  fondo = loadImage("fondo.png");
  f222 = loadImage("f222.png");
  personajes = loadImage("pink_panther.png");
  huella = loadImage("huella.png");
  //TEXTO

  texto = loadFont("Cambria.vlw");
  textFont(texto, 30);
  //
  frameCount = 5;
  noLoop();
  //parametros de posiciones
  posX=310;
  posY = 450;
  //parametros de tamaño
  tam = width;
  tam2 = height;
  tam3 = 10;
}
void draw() {

  credits();
  titulo();
  image(huella, mouseX, mouseY, tam3*3, tam3*3);
  //persj
  image(personajes, posX, (posY+700)-frameCount);
}
void titulo() {

  image(f222, px+40, py, tam-80, tam2);
  py--;
}
void credits() {
  background(fondo);

  // by
  fill(217, 82, 138);
  textFont(texto, 35);
  textAlign(CENTER, TOP);
  text("by \n Henry Mancini", posX, (posY+100)-frameCount);
  noFill();


  //direction
  fill(255);
  textFont(texto, 35);
  textAlign(CENTER, TOP);
  text("Direction:", posX, (posY+300)-frameCount);
  noFill();
  fill(217, 82, 138);
  textFont(texto, 30);
  textLeading(40);
  text("Hawley Pratt \n Gerry Chiniquy \n Robert McKimson \n George Singer", posX, (posY+350)-frameCount);

  //musica
  textFont(texto, 35);
  textAlign(CENTER, TOP);
  fill(255);
  text("Music:", posX, (posY+560)-frameCount);
  noFill();
  fill(217, 82, 138);
  textFont(texto, 30);
  textLeading(40);
  text("Doug Goodwin \n Walter Greene \n William Lava", posX, (posY+600)-frameCount);


  
  //Stories
  textFont(texto, 35);
  textAlign(CENTER, TOP);
  fill(255);
  text("Stories:", posX, (posY+800)-frameCount);
  noFill();
  fill(217, 82, 138);
  textFont(texto, 30);
  textLeading(40);
  text("John W.Dunn \n TonyBenedict \n Don Jurwich \n Bob Kurtz \n Jack Miller \n Michael O'Connor \n Jim Ryan", posX, (posY+840)-frameCount);


  //end
  float cambioColor = random(40, 217);
  float cambioColor2 = random (82, 255);
  textFont(texto, 100);
  textAlign(CENTER, TOP);
  fill(cambioColor, cambioColor2, 138);
  text("END", posX, (posY+1200)-frameCount);

  println ("mouseX"+mouseX);
  println ("mouseY"+mouseY);
  println ("posX"+posX);
  println("py"+py);
  println("posY"+posY);
}
void mousePressed() {
  loop();
}
