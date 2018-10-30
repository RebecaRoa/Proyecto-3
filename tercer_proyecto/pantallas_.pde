class Pantalla{
  int p;
  
  void inicio(){
    background (0);
    textSize(100);
    fill(255);
    textFont(titulo,60);
    text("What\n Lie \nIs True?", 290,100);
    fill(255);
    textFont(continuar,19);
    text("Presiona 'f' para continuar", 100,400);
  }
  
  void intrucciones(){
    background(40);
    textSize (20);
    fill (255);
    textFont(eleccion,30);
    text("INSTRUCCIONES:",80,90);
    textSize (40);
    textFont(eleccion,28);
    text("-Selecciona tu personaje presionando las letras indicadas debajo de cada uno.",50,190);
    text("-No se podra seleccionar al mismo personaje dos veces.", 50, 230);
    text("presiona 'w' para seleccionar a los personajes.", 100,400);
  }
  
  void seleccion(){
    background(50);
    pushMatrix();
    translate(90,40);
    scale(1.2,1.2);
    image(p1,0,0);
    popMatrix();
    
    pushMatrix();
    translate(320,40);
    scale(1.2,1.2);
    image(p2,0,0);
    popMatrix();
    
     pushMatrix();
    translate(580,40);
    scale(1.2,1.2);
    image(p3,0,0);
    popMatrix();
    
     pushMatrix();
    translate(480,260);
    scale(1.2,1.2);
    image(p4,0,0);
    popMatrix();
    
     pushMatrix();
    translate(180,260);
    scale(1.2,1.2);
    image(p5,0,0);
    popMatrix();
    fill(255);
    textFont(eleccion,20);
    text("E", 135,250);
    text("Dana", 135,26);
    text("R", 370,250);
    text("Dereck", 360, 20);
    text("G", 650, 250);
    text("Alex", 630, 20);
    text("H",550,460);
    text("Hibari", 530, 250);
    text("P", 250, 460);
    text("Chrom", 220, 265);
  }
  
  void pelea(){
   
    noStroke();
    fill(72,76,84);
    rect(-t*80,0,t*600,t*100);
    dt+=0.01;
    for (int i=0; i<800; i+=3){
      for(int j=0; j<230; j+=3){
        fill(noise(i*0.01+dt, j*0.03, dt)*255, noise(i*0.01+dt, j*0.03, dt)*6);
        rect(i,j,10,10);
      }
    }
    
    image(fondo,x,y);
    
     if (selecc1==1){
      pushMatrix();
      translate(210,330);
      image(p1,0,0);
      popMatrix();
    }
     if (selecc1==2){
      pushMatrix();
      translate(210,330);
      image(p2,0,0);
      popMatrix();
    }
    
    if (selecc1==3){
      pushMatrix();
      translate(210,330);
      image(p3,0,0);
      popMatrix();
    }
    
    if (selecc1==4){
      pushMatrix();
      translate(210,330);
      image(p4,0,0);
      popMatrix();
    }
    
    if (selecc1==5){
      pushMatrix();
      translate(210,320);
      image(p5,0,0);
      popMatrix();
    }
    
    
    if (selecc2==1){
      pushMatrix();
      translate(600,330);
      scale(-1,1);
      image(p1,0,0);
      popMatrix();
    }
    
     if (selecc2==2){
      pushMatrix();
      translate(600,330);
      scale(-1,1);
      image(p2,0,0);
      popMatrix();
    }
    
     if (selecc2==3){
      pushMatrix();
      translate(600,330);
      scale(-1,1);
      image(p3,0,0);
      popMatrix();
    }
    
     if (selecc2==4){
      pushMatrix();
      translate(600,330);
      scale(-1,1);
      image(p4,0,0);
      popMatrix();
    }
    
     if (selecc2==5){
      pushMatrix();
      translate(600,330);
      scale(-1,1);
      image(p5,0,0);
      popMatrix();
    }
   
    fill(180);
    stroke(0);
    rect(30,100,da1*1,20);
    rect(550,100,da2*1,20);
    
    if (da2<=0){
      p = 4;
    }
    if (da1<=0){
      p = 5;
    }
    if(da1<=0 || da2<=0){
      da1=200;
      da2=200;
    }
    
   
    
  }
  
  void winner1(){
    x = 0;
    y = 0;
    fill (50,30);
    rect(x,y, 800,500);
    
    fill(random(255), random(255),random(255));
    textFont(eleccion, 50);
    text("GANADOR",150,50);
    fill(255);
    text("jugador 1", 180,200);
    textFont(eleccion,30);
    text("Presiona 'w' para regresar a la pantalla de seleccion", 160, 300);
    text("Presiona 'q' para regresar a la pantalla de inicio", 160, 350);
    turno = 0;
  }
  void winner2(){
     x = 0;
    y = 0;
    fill (50,30);
    rect(x,y, 800,500);
    
    fill(random(255), random(255),random(255));
    textFont(eleccion, 50);
    text("GANADOR",150,50);
    fill(255);
    text("jugador 2", 180,200);
    textFont(eleccion,30);
    text("Presiona 'w' para regresar a la pantalla de seleccion", 160, 300);
    text("Presiona 'q' para regresar a la pantalla de inicio", 160, 350);
    turno = 0;
  }
  
  void display(){
    switch(this.p){
      case 0:
      inicio();
      break;
      case 1:
      intrucciones();
      break;
      case 2:
      seleccion();
      break;
      case 3:
      pelea();
      break;
      case 4:
      winner1();
      break;
      case 5:
      winner2();
      break;
    }
  }
  
  void teclado(){
    if (key == 'q'){
      p =0;
    }
    if (key == 'f'){
      p =1;
    }
    if (key == 'w'){
      p = 2;
    }
    
    if (key == 'e'){
      if (turno==0){
        selecc1 = 1;
        turno=1;
      }
      else{
        if (turno==1 && selecc1!=1){
          selecc2 = 1;
          p=3;
        }
      }
    }
    if (key == 'r'){
      if (turno==0){
        selecc1 = 2;
        turno = 1;
      }
      else{
        if (turno ==1 && selecc1!=2){
          selecc2 = 2;
          p=3;
        }
      }
    }
    if (key == 'g'){
      if (turno==0){
        selecc1 = 3;
        turno=1;
      }
      else{
        if (turno==1 && selecc1!=3){
          selecc2 = 3;
          p =3;
        }
      }
    }
    if (key == 'h'){
      if (turno ==0){
        selecc1 = 4;
        turno = 1;
      }
      else {
        if (turno == 1 && selecc1!=4){
          selecc2 = 4;
          p = 3;
        }
      }
    }
    if (key == 'p'){
      if (turno ==0){
        selecc1 = 5;
        turno =1;
      }
      else{
        if (turno ==1 && selecc1!=5){
          selecc2 =5;
          p=3;
        }
      }
    }
    if (key == 'z'){
      da2-=1;
      turno=0;
    }
    if (key == 'x'){
      da2-=5;
    }
    if (key == 'l'){
       da1-=1;
      turno=0;
    }
    if (key == 'ñ'){
       da1-=5;
      turno=0;
    }
  }
  
}
