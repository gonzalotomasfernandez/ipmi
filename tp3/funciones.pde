void triangulosprincipales(float x, float y, float lado) {
  triangle(x, y, x+lado, y, x+lado/2, y+lado/2);
  triangle(x, y+lado, x+lado, y+lado, x+lado/2, y+lado/2);
}

void triangulosprincipales2(float x, float y, float lado) {
  triangle(x, y, x, y+lado, x+lado/2, y+lado/2);
  triangle(x+lado, y, x+lado, y+lado, x+lado/2, y+lado/2);
}

void triangulos(float x, float y, float lado) {
  triangle(x, y, x+lado, y, x+lado/2, height/2);  
}

void triangulos2(float x, float y, float lado) {
  triangle(x, y, x, y+lado, width/2+width/4, height/2);
}


void modulo(float cantidad, float tam, float tam2, float x, float y) {
  
  for (int i=0; i<=cantidad; i++) {
    noStroke();

    //mapeo triangulos

    float x1=map(i, 0, cantidad, x, x+width/2-width/4);
    float x2=map(i, 0, cantidad, width/2+width/6, width-width/4);
    float x3=map(i, 0, cantidad, width, width-width/4);

    

    float y1=map(i, 0, cantidad, y, height/2);
    float y2=map(i, 0, cantidad, height/3, height/2);
    float y3=map(i, 0, cantidad, height, height/2);

    float ancho=map(i, 0, cantidad, tam, cantidad);
    float ancho2=map(i, 0, cantidad, tam2, cantidad);


    if (impar(i)) {
      fill(255);
    } else {
      fill(0);
    }
    triangulosprincipales(x1, y1, ancho);



    if (impar(i)) {
      fill(0);
    } else {
      fill(255);
    }
    triangulosprincipales2(x1, y1, ancho);
    triangulos(x2, y1, ancho2);
    triangulos(x2, y3 ,ancho2);


    if (impar(i)) {
      fill(255);
    } else {
      fill(0);
    }
    triangulos2(x1, y2, ancho2);
    triangulos2(x3, y2, ancho2);
  }
  
}


boolean impar(int indice) {
  return indice%2==1;
}
