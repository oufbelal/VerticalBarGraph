size(400,400);
background(#CEC6B7);

//variables
float x2 = width;
float y2 = height;
float distanciax = x2 / 12;
float distanciay = y2 / 12;

stroke(0);

float distanciaz=distanciax;
float acumi=0, acumj=0;
float i,j;

strokeWeight(1);

for(float x = 0; x <= x2; x = x + distanciax){
  for(float y = 0; y <= y2; y = y + distanciay){
    rect(x,y, distanciax, distanciay);
  }
}

for(i = 1; i < 6; i++){
      fill(50*i,30*i,100*i);
      rect(distanciaz,height-distanciay,distanciax,-distanciay*i);
      distanciaz=distanciaz+distanciax;
      acumi = acumi +(distanciay*i);
  }

for(j = 6; j > 1; j--){
      fill(50*j,30*j,100*j);
      rect(distanciaz,height-distanciay,distanciax,-distanciay*j);
      distanciaz=distanciaz+distanciax;
      acumj = acumj +(distanciay*j);
  }
  
  stroke(#FF0011);
  strokeWeight(3);
  acumj = (acumi + acumj) / 10;
  line(distanciax, height-acumj, width-distanciax,height-acumj);
  
  stroke(0);
  line(distanciax, height-distanciay,distanciax, distanciay*3); // linea eje x
  line(distanciax,height-distanciay, width-distanciax,height-distanciay); //linea eje y
