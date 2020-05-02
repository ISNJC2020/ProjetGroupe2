PImage image_espace;
PImage planete1;

int menunivX = 780;
int menunivY = 580;
int menunivL = 250;
int menunivl = 100;

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

int niv1X = 350;
int niv1Y = 315;
int niv1L = 75;


boolean accueil = true;
boolean retourbouton = false;

boolean niveau = false;
boolean nivbouton = false;

boolean option = false;
boolean optbouton = false;

boolean histoire = false;
boolean hisbouton = false;

boolean niveau1 = false;
boolean niv1bouton = false;

void setup() {
  size(1200, 800);
  image_espace = loadImage("espace.jpg");
  planete1 = loadImage("planete1.jpg");
}


void draw(){
  PFont style = createFont("Microsoft Yi Baiti",90);
  PFont titre = createFont("MV Boli",140);
  update( mouseX, mouseY);
  if (accueil){
    background(image_espace);
    fill(#FF6600,200);
    textFont(titre);
    text("WOODS' SPACE",80,225);
    text("ODYSSEY",295,375);
    fill(#ff0000);
    rect(menunivX, menunivY, menunivL, menunivl, 7);
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
    textFont(titre);
    textSize(80);
    text ("Niveau" ,480, 100 );
    fill(#ff0000);
    rect(retX, retY, retL, retl, 7);
    fill(#FFFFFF);
    textFont(style);
    textSize(50);
    text("Retour",100,730);
    fill(#000000);
    rect(hisX,hisY,hisL,hisl);
    fill(#FFFFFF);
    textSize(70);
    text("Histoire",500,210);
    fill(#6C6C6C,200);
    rect(90,300,1010,150,7);
    image(planete1,100,310);
    fill(#ffffff);
    textSize(35);
    text("Etape 1: EXUM",100,430);
    rect(niv1X,niv1Y,niv1L,niv1L);
    fill(#000000);
    textSize(120);
    text("1",350,385);
  }
  if (option){
    background(image_espace);
    textFont(titre);
    textSize(80);
    text ("Option" ,480, 100 );
    fill(#ff0000);
    rect(retX, retY, retL, retl, 7);
    fill(#FFFFFF);
    textFont(style);
    textSize(50);
    text("Retour",100,730);
  }
  if (histoire){
    
    background(image_espace);
    textFont(titre);
    textSize(80);
    fill(#FFFFFF);
    text("Histoire",480,100);
    fill(#ff0000);
    rect(nX,nY, nL, nl, 7);
    fill(#FFFFFF);
    textFont(style);
    textSize(80);
    text("<",50,745);
    fill(#000000,110); 
    rect(40,150,1100,525);
    fill(#FFFFFF);
    textSize(35);
    text("Sur Terre, la population existe toujours en 2204 malgré les centaines de millions \nde mort à cause d’une maladie. Le 1 janvier 2200 à minuit, une météorite s’écrasa \nsur la Terre, transportant une bactérie très contagieuse à l’intérieur. Ils l’appelèrent \nPAX-200 et a pour effet de détruire les globules rouges des malades, entraînant \nla mort du patient. Il est extrêmement virulent et même si des mesure ont été prise \nrapidement, il fait des ravage chaque année. Dans ce jeu vous incarnerez le \ncommandant Woods, qui viens de prendre connaissance de sa nouvelle mission pour \nsauver l’humanité : aller chercher des antidotes sur d’autres planètes, après la \ndécouverte des scientifiques de la provenance du virus. Vous devrez donc visiter \nune multitude de planète pour trouver ces antidotes. \nBon courage.",50,200);
  }
  if (niveau1){
    background(image_espace);
  }
}
void mousePressed() {
  if (nivbouton) {
    niveau = true;
    accueil = false;
    option = false;
    histoire = false;
    niveau1 = false;
  }if (optbouton){
    option = true;
    niveau = false;
    accueil = false;
    histoire = false;
    niveau1 = false;
  }if (retourbouton){
    option =false;
    niveau = false;
    accueil = true;
    histoire = false;
    niveau1 = false;
  }if (hisbouton){
    option =false;
    niveau = false;
    accueil = false;
    histoire = true;
    niveau1 = false;
  }if (niv1bouton){
    option =false;
    niveau = false;
    accueil = false;
    histoire = false;
    niveau1 = true;
  }
}

void update(int x, int y) {
  if (accueil){
  if (boutonniv(menunivX,menunivY,menunivL,menunivl)){
    nivbouton = true ;
    optbouton = false;
    retourbouton = false;
    hisbouton = false;
    niv1bouton = false;
  }
 else if (boutonopt(optX,optY,optL,optl)){
    optbouton = true;
    nivbouton = false;
    retourbouton = false;
    hisbouton = false;
    niv1bouton = false;
 }
    else {
     nivbouton = optbouton = false;
  }}
 else if(option){
   if (boutonret(retX,retY,retL,retl)){
    retourbouton = true;
    optbouton = false;
    nivbouton = false;
    hisbouton = false;
    niv1bouton = false;
 }
    else {
     retourbouton = false;
  }}
 else if (niveau){
   if (boutonhis(hisX,hisY,hisL,hisl)){
    hisbouton = true;
    retourbouton = false;
    optbouton = false;
    nivbouton = false;
    niv1bouton = false;
  }
   else if (boutonret(retX,retY,retL,retl)){
    retourbouton = true;
    optbouton = false;
    nivbouton = false;
    hisbouton = false;
    niv1bouton = false;
 }
 else if (boutonniv1(niv1X,niv1Y,niv1L,niv1L)){
   niv1bouton = true;
   retourbouton = false;
   optbouton = false;
   nivbouton = false;
   hisbouton = false;
    
 }
    else {
     retourbouton = hisbouton = niv1bouton = false;
  }}
 else if (histoire){
   if (boutonniv(nX,nY,nL,nl)){
    nivbouton = true;
    retourbouton = false;
    optbouton = false;  
    hisbouton = false;
    niv1bouton = false;
 }
    else {
     nivbouton = false;
  }}}
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
boolean boutonniv1 (int x, int y, int L, int l)  {
  if (mouseX >= x && mouseX <= x+L && 
      mouseY >= y && mouseY <= y+l) {
    return true;
  } else {
    return false;
  }
}
