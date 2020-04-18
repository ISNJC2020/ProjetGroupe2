PImage image_espace;

int nivX = 780;
int nivY = 580;
int nivL = 250;
int nivl = 100;

int optX = 170;
int optY = 580;
int optL = 230;
int optl = 100;

boolean accueil = true;

boolean niveau = false;
boolean nivbouton = false;

boolean option = false;
boolean optbouton = false;


void setup() {
  size(1200, 800);
  image_espace = loadImage("espace.jpg");
  

}


void draw(){
  PFont font = createFont("Microsoft Yi Baiti",90);
  update( mouseX, mouseY);
  if (accueil){
    background(image_espace);
    fill(#ff0000);
    rect(nivX, nivY, nivL, nivl, 7);
    fill(#FFFFFF);
    textFont(font);
    text ( "Niveau" ,800, 650 );
    fill(#ff0000);
    rect(optX, optY, optL, optl, 7);
    fill(#FFFFFF);
    textFont(font);
    text ( "Option" ,180, 650 );
  }
  if (niveau){
    background(image_espace);
    textFont(font);
    text ( "Niveau" ,500, 100 );
  }
  if (option){
    background(image_espace);
    textFont(font);
    text ( "Option" ,500, 100 );
    
  }
  println(nivbouton);
  println(optbouton);
}
void mousePressed() {
  if (nivbouton) {
    niveau = true;
    accueil = false;
    option = false;
    
  }if (optbouton){
    option = true;
    niveau = false;
    accueil = false;
    
  }
 
}

void update(int x, int y) {
  if (boutonniv(nivX,nivY,nivL,nivl)){
    nivbouton = true;
    optbouton = false;
  }
 else if (boutonopt(optX,optY,optL,optl)){
    optbouton = true;
    nivbouton = false;
    
  }
   else {
    nivbouton = optbouton = false;
  }
}
boolean boutonniv (int x, int y, int L, int l)  {
  if (mouseX >= x && mouseX <= x+L && 
      mouseY >= y && mouseY <= y+l) {
    return true;
  } else {
    return false;
  }
}
boolean boutonopt (int x, int y, int L, int l)  {
  if (mouseX >= x && mouseX <= x+L && 
      mouseY >= y && mouseY <= y+l) {
    return true;
  } else {
    return false;
  }
}
