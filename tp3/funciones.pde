void dibujarcuadrados() {
  translate(400, 0);
  for (int i=width/2; i>20; i-=50) {
    rect(width/4, height/2, i, i);
  }
}



void dibujarlineas() {
  for (int x=0; x<=width/2; x+=width/6) {
    line(x, 0, width/4, height/2);
    line(x, width/2, width/4, height/2);

    for (int y=0; y<=height; y+=height/3) {
      line(0, y, width/4, height/2);
      line(width/2, y, width/4, height/2);
    }
  }
}
