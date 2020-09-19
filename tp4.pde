import ddf.minim.*;

Minim minim;
AudioPlayer music_fondo;
int delay;
String estado;
PFont tipog1;
PImage[] fuego= new PImage [3];
String [] todostexto=new String [34];
PImage[]misimag =new PImage [34];
PImage [] fuegoO=new PImage[3];
boolean[] salvado= new boolean [3]; 
color amarillo=color (220, 214, 41);
PImage nube;
int[] texX=new int[8];
void setup(){
  minim= new Minim(this);
music_fondo= minim.loadFile("television-simpsons.mp3");
  size(800,600);
  music_fondo.play();
  colorMode(RGB);
  background(100,100,255);
    tipog1=loadFont("ComicSansMS-48.vlw");

  frameRate(10);
  for ( int i = 0 ; i <3 ; i++){
    fuego [i]=loadImage("Fueg_"+i+".png");
  }
  for (int i =0; i <3 ;i++){
    fuegoO [i]=loadImage("fue_"+i+".png");
  }
  //------------------------------------------------------
  todostexto[0]="La casa Simpsons se esta incendiando, los bomberos no llegaran a tiempo. Homero debera salvar a los tres personajes que se encuentran atrapados en la casa...";
  todostexto[1]="[Precione enter para comenzar]";
  todostexto[2]="Homero tendra que tener mucho cuidado! es muy peligroso...";
  todostexto[3]="[presiona Backspace para ingresar]";
  todostexto[4]="Debe buscar rapido, antes de que el fuego se propague por toda la casa.";
  todostexto[5]="[presione con mouse una de las flechas]";
  todostexto[6]="[¡busque personajes! ,si encuentras has click en el o ellos]";
  todostexto[7]="volver";
  todostexto[8]="¡hay caramba! gracias viejo...";
  todostexto[9]="Se quemo!";
  todostexto[10]="¿volver a empezar?";
  todostexto[11]="si";
  todostexto[12]="no";
  todostexto[13]="¡Homero tendra que revisarlas una por una y con cuidado!";
  todostexto[14]="[has click en las flecha para ingresar a la habitacion]";
  todostexto[15]="¡@ah ahia@!...";
  todostexto[16]="¡Hijo!    pense que se olvidarian de mi...";
  todostexto[17]="[presiona enter para finalizar]";
  todostexto[18]="Al dia siguente Lisa Simpsons les brindo un homenaje a sus seres queridos por el trajico desenlace del incendio, devido a que homero se quemo al intentar rescatar a sus familiares.";
  todostexto[19]="[presiona Backspace para finalizar]";
  todostexto[20]= "¡Homero logro salvar a su familia!" ;
  todostexto[21]="El grandioso acto de Homero se difundio por todo Springfiel, lo que genero que homero sea considerado un heroe para la ciudad ,pero principalmente para su familia.";
  todostexto[22]="¡La aventura a finalizado!";
  todostexto[23]="Facultad de Arte UNLP";
  todostexto[24]="Tecno Multimedia_1";
  todostexto[25]="Prof: Matias Jauregui";
  todostexto[26]="Alumna: Castro Denise";
  todostexto[27]="Comision 2";
  todostexto[28]="¡GRACIAS!";
  todostexto[29]= "[presiona barra espaciadora para reiniciar]" ;             
  //------------------------------------------------------------------------------
  misimag [0]=loadImage("homero corre.png");
  misimag [1]=loadImage("nombre.png");
  misimag [2]=loadImage("casa-simpson.jpg");
  misimag [3]=loadImage("grita.png");
  misimag [4]=loadImage("CasaD.jpg");
  misimag [5]=loadImage("flecha1.png");
  misimag [6]=loadImage("flechaD.png");
  misimag [7]=loadImage("flechaH.png");
  misimag [8]=loadImage("flama2.png");
  misimag [9]=loadImage("comedor.jpg");
  misimag [10]=loadImage("fuego.png");
  misimag [11]=loadImage("bart1.png");
  misimag [13]=loadImage("BartS.png");
  misimag [14]=loadImage("sofa.jpg");
  misimag [15]=loadImage("ff2.png");
  misimag [16]=loadImage("homer2.png");
  misimag [17]=loadImage("habita10.jpg");
  misimag [18]=loadImage("th(1).png");
  misimag [19]=loadImage("th(2).png");
  misimag [20]=loadImage("flechaab.png");
  misimag [21]=loadImage("th.jpg");
  misimag [22]=loadImage("HabitBart.jpg");
  misimag [23]=loadImage("mojo1.png");
  misimag [24]=loadImage("Mojo.png");
  misimag [25]=loadImage("habitLisa.jpg");
  misimag [26]=loadImage("abuelo.png");
  misimag [27]=loadImage("Abraham_Simpson_2.png");
  misimag [28]=loadImage("habit hm.jpg");
  misimag [29]=loadImage("periodico.png");
  misimag [30]=loadImage("Lisatriste.png");
  misimag [31]=loadImage("todos.png");
  misimag [32]=loadImage("15.png");
  misimag [33]=loadImage("fue_0.png");
  //-------------------------------------------------------------------------------
  nube=loadImage("nube1.png");
salvado[0]=false;
salvado[1]=false;
salvado[2]=false;
//---------------------------------------------------------------------------------
texX[0]=700;
texX[1]=0;
texX[2]=750;
texX[3]=780;
texX[4]=810;
texX[5]=840;
texX[6]=870;
texX[7]=900;
  estado="presentacion";
    delay=0;
}
void draw(){
     println(estado);
     println(salvado[1]);
  if(salvado[0]==true && salvado[1]==true && salvado[2]==true){
  estado="final2";
  }
  //(1)-------------------------------------------------
   if(estado.equals("presentacion")){
     background(100,100,255);
     image(fuego[frameCount %3],0,400,400,200);
     image(misimag [0],550,0,245,531);
     image(misimag [1],0,0);
     textos(25,255,todostexto[0],200,200,300,400);
     textosC(20, 0,todostexto[1],400,550);
   }
   //(2)------------------------------------------------
     else if(estado.equals("casainsendiada")){
      delay=delay+1;
     background(100,100,255);
     image(misimag [2],0,0);
     image(fuego[frameCount %3],0,50,200,100);
     image(fuego[frameCount %3],300,300,200,100);
     image(fuego[frameCount %3],50,280,200,100);
     image(fuego[frameCount %3],500,10,200,100);
     image(fuegoO[frameCount %3],500,170);
     textos(25,255,todostexto[2],20,450,300,550);
     textosC(20, 0,todostexto[3],0,570);
     image(misimag [3],350,235);
       }
  //(3)---------------------------------------------------------------------------------
    else if(estado.equals("direcciones")){
      delay=delay+1;
      background(100,100,255);
      image(misimag [4],0,0);
      image(fuego[frameCount %3],0,390,200,100);
      image(fuego[frameCount %3],530,100,100,50);
      image(misimag [33],205,220);
      image(misimag [8],0,250);
      image(misimag [5],500,200);
      image(misimag [6],600,370);
      image(misimag [7],100,370);
      textos(25,255,todostexto[4],200,390,400,600);
      textosC(20, 0,todostexto[5],0,560);
       fill(0);
       ellipse(415,550,65,65);
      image(misimag [5],390,520,50,61);
    }
        //(4)------------------------------------------------------------------------------------  
      else if(estado.equals("comedor")){
      delay=delay+1;
      background(100,100,255);   
      image(misimag [9],0,0);
      image(misimag [1],600,0,200,50);
      image(misimag [8],-50,170);
      image(misimag [10],300,100);
      image(misimag [11],0,200);
      image(misimag [6],600,500,80,50);
      image(fuego[frameCount %3],400,320,300,150);
      image(fuego[frameCount %3],450,320,300,150);
      textosC(20, 0,todostexto[6],0,500);
      textosC(20, 0,todostexto[7],600,560);  
      salvar(misimag [13],salvado[0],todostexto[8],100,50 ,190,135,150,90,150,200);
      }
       //(5)-----------------------------------------------------------------------------------------
  else if(estado.equals("sala")){
     background(100,100,255);
     image(misimag [14],0,0);
     image(misimag [15],0,0,800,480);
     image(misimag [16],150,440);
      textosC(25,255,todostexto[9],300,500);
      textosC(50, 0,todostexto[10],200,300); 
      textosC(40, 0,todostexto[11],430,340);
      textosC(40, 0,todostexto[12],360,340); 
  }
   //(6)-----------------------------------------------------------------------------------------
   else if(estado.equals("escaleras")){
     delay=delay+1;
     background(100,100,255);
     image(misimag [17],0,0);
     image(misimag [18],410,300);
     image(misimag [19],255,300);
     image(misimag [19],210,360);
     image(misimag [20],335,30);
     image(misimag [20],705,115,130,130);
     image(misimag [8],450,300);
     image(misimag [8],190,300,100,90);
     textosC(25,255,todostexto[13],100,500);  
     textosC(20, 0,todostexto[14],100,550);
     textosC(20, 0,todostexto[7],740,250); 
     fill(0);
     ellipse(640,550,80,80); 
     image(misimag [18],600,525,80,50);
     image(fuego[frameCount %3],275,190,200,100);
   }
    //(7)------------------------------------------------------------------------------------
    else if(estado.equals("baño")){
      delay=delay+1;
      background(100,100,255);
      image(misimag [21],0,0);
      image(misimag [15],0,0,800,480);
      image(misimag [16],150,440);
      textosC(25,255,todostexto[9],300,500);
      textosC(50, 0,todostexto[10],200,300); 
      textosC(40, 0,todostexto[11],430,340);
      textosC(40, 0,todostexto[12],360,340);
    }
    //(8)----------------------------------------------------------------------------------------
    else if(estado.equals("habit1")){
      delay=delay+1;
      background(100,100,255);
      image(misimag [22],0,0);
      image(misimag [1],600,0,200,50);
      image(misimag [8],450,200);
      image(misimag [8],405,195,100,90);
      image(misimag [23],150,260);
      image(misimag [6],600,500,80,50);
      image(fuego[frameCount %3],370,325,300,150);
      image(fuego[frameCount %3],450,325,300,150);
      image(fuego[frameCount %3],500,325,300,150);
      textosC(20, 0,todostexto[6],0,500);
      textosC(20, 0,todostexto[7],600,560);
      salvar(misimag [24],salvado[1],todostexto[15],200,100,290,180,250,150,300,200);
    }
     //(9)-------------------------------------------------------------------------------------
    else if(estado.equals("habit2")){
      delay=delay+1;
      background(100,100,255);
      image(misimag [25],0,0);
      image(misimag [10],130,250,500,250);
      image(misimag [26],200,150);
      image(misimag [7],10,500,80,50);
      textosC(20, 0,todostexto[6],0,500);
      textosC(20, 0,todostexto[7],35,560); 
      salvar(misimag [27],salvado[2],todostexto[16],300,0,390,70,330,30,200,100);
    }
       //(10)------------------------------------------------------------------------------------
    else if(estado.equals("habit3")){
     delay=delay+1;
     background(100,100,255);
     image(misimag [28],0,0);
     fill(100,100,255);
     rect(0,500,800,600);
     textosC(20, 0,todostexto[6],0,520);
     textosC(20, 0,todostexto[7],600,560); 
     image(misimag [6],600,500,80,50);
     image(misimag [8],590,330);
     image(misimag [10],270,105,500,250);
     image(misimag [1],600,0,200,50);
     }
      //(11)----------------------------------------------------------------------------------
    else if(estado.equals("final1")){
      delay=delay+1;
      background(100,100,255);
      image(misimag [29],0,0);
      image(misimag [30],540,350);
      image(misimag [1],600,0,200,50);
      textosC(20, 0,todostexto[17],500,590);
      textos(25,255,todostexto[18],20,400,600,600);
    }
      //(12)-------------------------------------------------------------------------------------
    else if(estado.equals("final2")){
      delay=delay+1;
       background(100,100,255);
       image(misimag [31],100,150);
       textosC(20, 0,todostexto[19],450,590);
       textos(30,amarillo,todostexto[20],100,50,600,200);
       textos(25,255,todostexto[21],20,100,500,400);
    }
     //(13)---------------------------------------------------------------------------------------------
  else if(estado.equals("creditos")){
    delay=delay+1;
      background(100,100,255);
      image(misimag [32],20,300);
      image(misimag [1],0,0);
   textos(35,amarillo,todostexto[22], 370,texX[0],520,texX[1]);
   textos(20,255,todostexto[23],450,texX[2],550,texX[1]);
   textos(20,255,todostexto[24],450,texX[3],550,texX[1]);
   textos(20,255,todostexto[25],450,texX[4],550,texX[1]);
   textos(20,255,todostexto[26],450,texX[5],550,texX[1]);
   textos(20,255,todostexto[27],450,texX[6],550,texX[1]);
   textos(25,255,todostexto[28],450,texX[7],550,texX[1]);
   textosC(20,0,todostexto[29],0,590);
    for (int i =0 ;i <8 ;i++){
    texX[i]=texX[i]-4;
    }
}
}
  void keyPressed(){
  //cambio de : (presentacion) >> (casaincendiada)------------------------------
   if(keyCode==ENTER && estado.equals("presentacion")){
  estado = "casainsendiada";
   }
  //cambio de : (casaincendiada) >> (direcciones)-------------------------------
  if(keyCode==BACKSPACE && estado.equals("casainsendiada")&& delay>5){
    estado="direcciones"; 
}
 //cambio de :(final1) >> (creditos)--------------------------------------------
   if(keyCode==ENTER && estado.equals("final1")){
     estado="creditos";
     salvado[0]=false;
     salvado[1]=false;
     salvado[2]=false;
     delay=0;
  }
  //cambio de :(final2) >> (creditos)--------------------------------------------
   if(keyCode==BACKSPACE && estado.equals("final2")){
     estado="creditos";
     salvado[0]=false;
     salvado[1]=false;
     salvado[2]=false;
     delay=0;
  } 
 //REINICIO ---cambio de :(creditos) >> (presentacion)--------------------------
   if(key==' '&& estado.equals("creditos")&& delay>5){
     estado= "presentacion";
     salvado[0]=false;
     salvado[1]=false;
     salvado[2]=false;
 } 
}
void mouseClicked(){
  //----------------------------------------boton en (direcciones)-----------------------------------------------------------------
   if(estado.equals("direcciones")){
  //CUANDO :hace click en flecha derecha
  click1("comedor" ,370,370,600,600,81,100);
   //CUANDO: hace click en flech izquierda 
  click1("sala" ,370,370,100,100,81,100);
   //CUANDO: hace click en flecha arriba
   click1("escaleras" ,200,200,500,500,124,100);
}
//----------------------------------------boton en comedor----------------------------------
  if(estado.equals("comedor")){
  click1("direcciones" ,500,500,600,600,50,80);
  if(mouseY>200 && mouseY< 200+223 && mouseX>0 && mouseX <0+150&& delay>5){
      salvado[0]=true;}
  }
   //------------------------------------------------botones en sala------------------------
   if(estado.equals("sala")){
     if(mouseY>320 && mouseY<320+40 && mouseX>410 && mouseX<410+40){
       estado="presentacion";
     salvado[0]=false;
     salvado[1]=false;
     salvado[2]=false; 
     }
       else if(mouseY>320 && mouseY<320+40 && mouseX>340 && mouseX<340+40){
   estado="final1"; 
   delay=0;
  }
}
//------------------------------------------------botones de escalera------------------------------
if(estado.equals("escaleras")){
 click1("direcciones",115,115,705,705,130,130);
 click1("habit1",300,300,255,255,100,100);
 click1("habit2",300,300,410,410,100,100);
 click1("habit3",360,360,210,210,100,100);
 click1("baño",30,30,335,335,100,100);
}   
//-------------------------------------------boton de baño----------------
 if(estado.equals("baño")){
  click1("presentacion",320,320,410,410,40,40);
     salvado[0]=false;
     salvado[1]=false;
     salvado[2]=false;
 click1("final1",320,320,340,340,40,40);
}
//-------------------------------------------boton de habit1---------------
if(estado.equals("habit1")){
   click1("escaleras",500,500,600,600,50,80);
    if(mouseY>260 && mouseY< 260+185 && mouseX>150 && mouseX <150+185 &&  delay>5){
      salvado[1]=true;}
}
//-------------------------------------------boton de habit2---------------
if(estado.equals("habit2")){
  click1("escaleras",500,500,10,10,50,80);
 if(mouseY>150 && mouseY<150+162 && mouseX>200 && mouseX <200+150&& delay>5){
      salvado[2]=true;}
}
//----------------------------------------boton en habit3-----------------------------
 if(estado.equals("habit3")){ 
   click1("escaleras",500,500,600,600,50,80);
}
}
  void textos(int tam,int c,String todostexto,int x,int y,int diam,int diam1){
   pushStyle();
    textFont(tipog1);
   textSize(tam);
   fill(c);
   text(todostexto,x,y,diam,diam1);
    popStyle();
      }
  void textosC(int tam,int c,String todostexto,int x,int y){
  pushStyle();
    textFont(tipog1);
   textSize(tam);
   fill(c);
   text(todostexto,x,y);
    popStyle();
  }
  void salvar(PImage misimag,boolean salvado,String todostexto,int pi1, int pi2 ,int pi3,int pi4, int x ,int y, int diam ,int diam1){
  pushStyle();
    if(salvado==true){
         image(nube,pi1,pi2);
          textFont(tipog1);
          fill(0);
          textSize(20);
          text(todostexto,x,y,diam,diam1);
      image(misimag,pi3,pi4);
      popStyle();  
    }
   }
   
 void click1(String b ,int y1, int y2 , int x1, int x2, int M ,int M1){
  pushStyle();
   if(mouseY>y1 && mouseY<y2+M && mouseX>x1 && mouseX<x2+M1 && delay>5){
    estado = b;
    delay=0; 
   popStyle();
 }
 }
 
