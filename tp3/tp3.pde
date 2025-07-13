//Gonzalo Fernandez, comision 1
//Legajo: 122693/0
//https://youtu.be/-16G1YpbRck?si=arguv4QB63hJhCm4

PImage obra;
float franjas=8;


void setup() {
  size(800, 400);
  obra = loadImage("obra.jpg");
}

void draw() {

  image (obra, 0, 0, 400, 400);


  modulo(franjas, width/2, width/6, width/2, height/height);
}

void keyPressed() {
  if (key == ' ') {
    franjas=8;
  }
}

void mousePressed () {
  if (franjas<20) {
    franjas++;
  }
}
