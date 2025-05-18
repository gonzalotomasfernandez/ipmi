//Gonzalo Fernandez, comision 4
//Legajo: 122693/0

PImage img1, img2, img3, img4, logo;
PFont letra;
int segundos, posX, posY, posX2, posY2, posY4, posXboton, posYboton, anchoboton, altoboton;
float alpha, alphaT, posY3, escala;
String txt;

void setup() {
  
size (640, 480);
letra = loadFont ("letra.vlw");
textFont(letra, 40);
img1 = loadImage ("ironman.png");
img2 = loadImage ("cap.png");
img3 = loadImage ("inicio.png");
img4 = loadImage ("final.png");
logo = loadImage ("logo.png");
posX = 50;
posY = 490;
posX2 = 210;
posY2 = 50;
posXboton = 490;
posYboton = 385;
anchoboton = 130;
altoboton = 50;
alpha = 255;
alphaT = 0;
posY3 = 480;
txt = "Scarlett Johansson - Black Widow\n\n\n\nChris Hemsworth - Thor\n\n\n\nMark Ruffalo - Bruce Banner\n\n\n\nBrie Larson - Carol Danvers\n\n\n\nPaul Rudd - Ant Man\n\n\n\nTom Holland - Spider Man";
escala = 1;
posY4 = 500;
}

void draw () {
background (0);

//modulo tiempo  
if (frameCount % 60==0){
  segundos++;}
  
//imagen 1  
if (segundos<9){
tint(255, alphaT);
alphaT = map(segundos, 0, 5, 0, 127);
image(img1, 0, 0);}
//texto 1
if (segundos>3 && segundos<9){
fill(255,alpha);
textSize (40);
text("IRON MAN", posX, posY--);
alpha = map(posY, 490, 200, 255, 0);
textSize (20);
text("Robert Downey Jr.", posX+5, posY-25);}



//imagen 2
if (segundos>=9 && segundos<17){
image(img2, 0, 0);
//texto 2
fill(255,50,50, alpha);
textSize (40);
text("CAPITAN AMERICA", posX2, posY2++);
alpha = map(posY2, 0, height/2, 0, 255);
textSize (20);
text("Chris Evans", posX2+5, posY2-25);}


//imagen 3
if (segundos>=17 && segundos<28){
tint(50,50,100,190);
image(img3, 0, 0);
//texto 3
fill(255);
textSize(20);
text(txt, 125, posY3--, 500, 640);}

//imagen 4
if (segundos>=28){
tint(100, 100, 180, 255);
image(img4, 0 , 0);
textSize(escala);
escala = map(segundos, 28, 35, 1, 30);
text("Directed by\n\nAnthony Russo and Joe Russo", 70, 225);}
if (segundos>=35){
escala = 30;
noTint();
image(logo, 205, posY4--);}
if (segundos>=42){
posY4 = 60;}


//boton
if (segundos>=42){
fill(50,50,200); 
rect (posXboton, posYboton, anchoboton, altoboton);
textSize(20);
fill (255);
text("REINICIAR",497,415);}



}




void mousePressed(){  
  if (mouseX>posXboton && mouseX<posXboton+anchoboton && mouseY>posYboton && mouseY<posYboton+altoboton) {
segundos = 0;
posX = 50;
posY = 490;
posX2 = 210;
posY2 = 50;
posXboton = 490;
posYboton = 385;
anchoboton = 130;
altoboton = 50;
alpha = 255;
alphaT = 0;
posY3 = 480;
escala = 0;
posY4 = 500;}
}












 














 
  



  
