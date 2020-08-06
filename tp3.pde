String estado;
PImage fondo;
PImage fondo2;
PImage cafefuera;
PImage barfuera;
PImage cafedentro;
PImage bardentro;
PImage casanoche;

PFont fuentecom;
PFont fuente2;
PFont fuente3;
PFont fuente4;
PFont fuente5;

void setup() {
  size(800, 600);
  fondo=loadImage ("inicio.jpg");
  barfuera=loadImage("bar.fuera.jpg");
  cafefuera=loadImage("cafe.fuera.jpg");
  cafedentro=loadImage("cafedentro.jpg");
  bardentro=loadImage("bar.dentro.1.jpg");
  casanoche=loadImage ("noche.jpg");
  
  
  fuentecom=loadFont("CourierNewPSMT-50.vlw");
  
  fuente2=loadFont("Monospaced.bold-50.vlw");
  
  fuente3=loadFont("Microsoft_Himalaya-50.vlw");
  
  fuente4=loadFont("Monospaced.bold-50.vlw");
  
  fuente5=loadFont("MVBoli-40.vlw");


  estado = "inicio";

  rectMode(CENTER);
}


void draw() {
  
  println(estado);


  if ( estado.equals("inicio") ) {
    background(0);
    image(fondo, 0, 0, 800, 600);
    tint( 255 );
    fill( 255, 120 );
    noStroke();
    rect( 400, 493, 300, 80,100 );
    fill( 0 );
    textFont(fuentecom);
    textAlign(CENTER);
    textSize(40);
    text( "Comenzar", width/2, 500, 500);
  }


  if (estado.equals("Elegir")) {
    background(255);
    image(cafefuera, 50, 120, 300, 300);
    image(barfuera, 450, 100, 300, 300);
    textSize(30);
    fill(0);
    textFont(fuente5);
    text("Elige un lugar para comer hoy", width/2, 515, 300);
    text("Cafe", 200, 100, 50);
    text("Bar", 600, 100, 50);
    fill(100, 200, 5);
    textSize(20);
    text("Presiona 'C' para seleccionar", 200, 450, 50);
    text("Presione 'B' para seleccionar", 600, 450, 50);
  }
  
  else if (estado.equals("Bar")) {
    textFont(fuentecom);
    background(0);
    image(bardentro, 0, 0, 800, 600);
    textSize(30);
    fill(255);
    text("Mirás dentro del bar pero una mala sensacion invade tu cuerpo.", 400, 400, 715, 400);
    fill(255);
    text("¿Decidís quedarte?", 400, 500, 715, 400);
    fill( 255 );
    textAlign(CENTER);
    textSize(30);
    text( "Presione 's'", 150, 450, 400);
    fill( 255 );
    textAlign(CENTER);
    textSize(30);
    text( "Si", 150, 500, 400);
    fill( 255 );
    textAlign(CENTER);
    textSize(30);
    text( "Presiona 'n'", 650, 450, 400);
    fill( 255 );
    textAlign(CENTER);
    textSize(30);
    text( "No", 650, 500, 400);
    
  }
  
  
  
  else if ( estado.equals("Cafedentro")) {
    background(0);
    image(cafedentro, 0, 0, 800, 600);
   fill(255,255,255,200);
    rect(400,310,615,200,20); 
    textSize(20);
    fill(0);
    text("Miras dentro y una sensacion positiva te invita a entrar,", 400, 400, 615, 300);
    text("decides sentarte en un rincon de la cafeteria.", 400, 450, 615, 300);
    text("Levantas la mano y pides una taza de cafe.", 400, 500, 615, 300);
    fill( 255 );
    textAlign(CENTER);
    fill(0,0,0,150);
  rect(width/2, 540,600,60,20);
    textSize(30);
    fill(255);
    text( "Presiona espacio para continuar", width/2, 550);
 }
 
  else if ( estado.equals("cafe2")) {
    background(0);
    image(cafedentro, 0, 0, 800, 600);
   fill(255,255,255,200);
    rect(400,300,535,180,20); 
    textSize(20);
    fill(0);
    text("Una hermosa moza atiende tu pedido.", 400, 400, 615, 300);
    text("Mientras esperás, mirás a tu alrededor.", 400, 450, 615, 300);
    text("La moza vuelve con el cafe y te pregunta si querés algo mas.", 400, 500, 615, 300);
    fill( 255 );
    textAlign(CENTER);
    fill(0,0,0,150);
  rect(width/2, 440,400,60,20);
    rect(width/2, 540,400,60,20);
    textSize(30);
    fill(255);
    text( "Presiona 's' para decirle que si", width/2, 450);
    text( "o presiona 'n' para decirle que no", width/2, 550);
 }
 
   else if ( estado.equals("cafeno1")) {
    background(0);
    image(cafedentro, 0, 0, 800, 600);
   fill(255,255,255,200);
    rect(400,320,615,200,20); 
    textSize(30);
    fill(0);
    text("Tomas tu cafe en silencio. Al terminar, pagas y te vas.", 400, 400, 615, 300);
    text("Solo piensas en esa chica.", 400, 500, 615, 300);
    fill( 255 );
    textAlign(CENTER);
    fill(0,0,0,150);
  rect(width/2, 540,600,60,20);
    textSize(30);
    fill(255);
    text( "Persiona espacio para continuar", width/2, 550);
 }
 
 
    else if ( estado.equals("cafeno2")) {
    background(0);
    image(casanoche, 0, 0, 800, 600);
   fill(255,255,255,200);
   // rect(500,360,815,280,20); 
    textSize(30);
    fill(255);
    text("Al llegar a casa te intentas distraer pero vuelves a pensar en esa chica.", 400, 400, 615, 300);
    text("Te duermes deseando volver a esa cafeteria.", 400, 500, 615, 300);
    text("FIN", 400,750, 615, 300);
    fill( 255 );
    textAlign(CENTER);
    fill(0,0,0,150);
  rect(width/2, 640,700,60,20);
    textSize(30);
    fill(255,0,0);
    text( "Presiona 'i' para ir a inicio", width/2, 450);
 }
 
   else if ( estado.equals("cafesi1")) {
    background(0);
    image(cafedentro, 0, 0, 800, 600);
   fill(255,255,255,200);
    rect(400,300,515,200,20); 
    textSize(30);
    fill(0);
    text("Le pedís si se puede quedar a hablar.", 400, 400, 615, 300);
    text("Ella mira alrededor y al estar solos accede alegremente.", 400, 450, 615, 300);
    fill( 255 );
    textAlign(CENTER);
    fill(0,0,0,150);
  rect(width/2, 440,300,60,20);
    textSize(20);
    fill(255);
    text( "Presiona espacio para continuar", width/2, 450);
 }
 
 
    else if ( estado.equals("cafesi2")) {
    background(0);
    image(cafedentro, 0, 0, 800, 600);
   fill(255,255,255,200);
    rect(400,360,815,200,20); 
    textSize(30);
    fill(0);
    text("Pero empiza a llegar gente a la cafeteria, cuando ella decide seguir con la charla mañana.", 400, 450, 615, 300);
    text("FIN", 400, 550, 615, 300);
    fill( 255 );
    textAlign(CENTER);
    fill(0,0,0,150);
  rect(width/2, 640,700,60,20);
    textSize(30);
    fill(255);
    text( "Presiona 'i' para volver a inicio", width/2, 500);
 }
 

    else if (estado.equals("barsi")) {
    background(0);
    image(bardentro, 0, 0, 800, 600);
    textSize(30);
    fill(255);
    text("Pedís una cerveza y pasás toda la noche con tus pensamientos.", 400, 340, 615, 300);
    fill( 255 );
    textAlign(CENTER);
    textSize(30);
    fill(255);
    text( "Presiona 'i' para volver a inicio", width/2, 450);
  }
}

//----------------------------------------------------------------------------------------------


void mousePressed() { 
  if ( estado.equals("inicio")) {
    if (mouseX > 300-200 && mouseX < 500+200 && mouseY > 500-45 && mouseY < 500+45) {
      estado ="Elegir";
    } else if ( estado.equals("Elegir"));
    background (255);
  }
    if (estado.equals("Cafe" )){
    if (mouseX > 250 && mouseX < 750 && mouseY > 650 && mouseY < 690){
      estado="Cafe2";
    }}
  
}

void keyPressed() {
  if ( estado.equals("Elegir") ) {
    if ( key == 'c' ) {
      estado = "Cafedentro";
    }
  }
  if ( estado.equals("Elegir") ) {
    if ( key == 'b' ) {
      estado = "Bar";
    }
  
  }
  if (estado.equals("Ëlegir")) {
    if (key == 'n');
  }
  if ( estado.equals("Continuar")) {
    if ( key == ' ');
  }

  if ( estado.equals("Bar") ) {
    if ( key == 's' ) {
      estado = "barsi";
    } }
    
    
    
    
    
    
    
    
    
    
    
    
      if ( estado.equals("Bar") ) {
    if ( key == 'n' ) {
      estado = "Elegir";
    } }
    
        if ( estado.equals("Cafedentro") ) {
    if ( key == ' ' ) {
      estado = "cafe2";
    } }
    
           if ( estado.equals("cafe2") ) {
    if ( key == 'n' ) {
      estado = "cafeno1";
    } }
    
    
               if ( estado.equals("cafeno1") ) {
    if ( key == ' ' ) {
      estado = "cafeno2";
    } }
    
    
              if ( estado.equals("cafe2") ) {
    if ( key == 's' ) {
      estado = "cafesi1";
    } }
    
                  if ( estado.equals("cafesi1") ) {
    if ( key == ' ' ) {
      estado = "cafesi2";
    } }
    
    
                      if ( estado.equals("cafesi2") ) {
    if ( key == 'i' ) {
      estado = "inicio";
    } }
    
    
                          if ( estado.equals("cafeno2") ) {
    if ( key == 'i' ) {
      estado = "inicio";
    } }
    
    
    
                              if ( estado.equals("Bar") ) {
    if ( key == 's' ) {
      estado = "barsi";
    } }
    
    
                             if ( estado.equals("barsi") ) {
    if ( key == 'i' ) {
      estado = "inicio";
    } }
}
