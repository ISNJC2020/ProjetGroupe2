PImage image_espace;

int nivX = 780;
int nivY = 580;
int nivL = 250;
int nivl = 100;

int optX = 170;
int optY = 580;
int optL = 230;
int optl = 100;

int retX = 90;
int retY = 695;
int retL = 130;
int retl = 50;

int hisX = 90;
int hisY = 150;
int hisL = 1010;
int hisl = 100;

int nX = 50;
int nY = 700;
int nL = 50;
int nl = 50;

boolean accueil = true;
boolean retourbouton = false;

boolean niveau = false;
boolean nivbouton = false;

boolean option = false;
boolean optbouton = false;

boolean histoire = false;
boolean hisbouton = false;

void setup() {
  size(1200, 800);
  image_espace = loadImage("espace.jpg");
}


void draw(){
  PFont style = createFont("Microsoft Yi Baiti",90);
  update( mouseX, mouseY);
  if (accueil){
    background(image_espace);
    fill(#ff0000);
    rect(nivX, nivY, nivL, nivl, 7);
    fill(#FFFFFF);
    textFont(style);
    text ( "Niveau" ,800, 650 );
    fill(#ff0000);
    rect(optX, optY, optL, optl, 7);
    fill(#FFFFFF);
    text ( "Option" ,180, 650 );
  }
  if (niveau){
    background(image_espace);
    fill(#FFFFFF);
    textSize(100);
    textFont(style);
    text ( "Niveau" ,500, 100 );
    fill(#ff0000);
    rect(retX, retY, retL, retl, 7);
    fill(#FFFFFF);
    textSize(50);
    text("Retour",100,730);
    fill(#000000);
    rect(hisX,hisY,hisL,hisl);
    fill(#FFFFFF);
    textSize(70);
    text("Histoire",500,210);
  }
  if (option){
    background(image_espace);
    textFont(style);
    textSize(100);
    text ( "Option" ,500, 100 );
    fill(#ff0000);
    rect(retX, retY, retL, retl, 7);
    fill(#FFFFFF);
    textSize(50);
    text("Retour",100,730);
  }
  if (histoire){
    background(image_espace);
    textFont(style);
    textSize(100);
    text("histoire",500,100);
    fill(#ff0000);
    rect(nX,nY, nL, nl, 7);
    fill(#FFFFFF);
    textSize(80);
    text("<",50,745);
  }
}
void mousePressed() {
  if (nivbouton) {
    niveau = true;
    accueil = false;
    option = false;
    histoire = false;
  }if (optbouton){
    option = true;
    niveau = false;
    accueil = false;
    histoire = false;
  }if (retourbouton){
    option =false;
    niveau = false;
    accueil = true;
    histoire = false;
  }if (hisbouton){
    option =false;
    niveau = false;
    accueil = false;
    histoire = true;
  }
}

void update(int x, int y) {
  if (accueil){
  if (boutonniv(nivX,nivY,nivL,nivl)){
    nivbouton = true;
    optbouton = false;
    retourbouton = false;
    hisbouton = false;
  }
 else if (boutonopt(optX,optY,optL,optl)){
    optbouton = true;
    nivbouton = false;
    retourbouton = false;
    hisbouton = false;
 }}
 else if(option){
   if (boutonret(retX,retY,retL,retl)){
    retourbouton = true;
    optbouton = false;
    nivbouton = false;
    hisbouton = false;
 }}
 else if (niveau){
   if (boutonhis(hisX,hisY,hisL,hisl)){
    hisbouton = true;
    retourbouton = false;
    optbouton = false;
    nivbouton = false;
  }
  else if (boutonret(retX,retY,retL,retl)){
    retourbouton = true;
    optbouton = false;
    nivbouton = false;
    hisbouton = false;
 }}
 else if (histoire){
   if (boutonniv(nX,nY,nL,nl)){
    retourbouton = false;
    optbouton = false;
    nivbouton = true;
    hisbouton = false;
 }}
   else {
     nivbouton = optbouton = retourbouton = hisbouton = false;
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
boolean boutonret (int x, int y, int L, int l)  {
  if (mouseX >= x && mouseX <= x+L && 
      mouseY >= y && mouseY <= y+l) {
    return true;
  } else {
    return false;
  }
}
boolean boutonhis (int x, int y, int L, int l)  {
  if (mouseX >= x && mouseX <= x+L && 
      mouseY >= y && mouseY <= y+l) {
    return true;
  } else {
    return false;
  }
}
