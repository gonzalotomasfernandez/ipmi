//Gonzalo Fernandez, comision 1
//Legajo: 122693/0

PImage obra;
void setup() {
  size(800, 400);
  obra = loadImage("obra.jpg");
}

void draw() {
  background(255);
  image (obra, 0, 0, 400, 400);
  noFill();
  stroke(0);
  rectMode(CENTER);



  dibujarcuadrados();

  dibujarlineas();
}
