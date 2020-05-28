PImage image_espace;

boolean deplacementGauche = false, deplacementDroite = false, enSaut = false, enChute = false;
int xpers = 200, ypers = 500, yDebutSaut = -50, sauvegardeY = 0;
float t = 0.00, g = 15.2, v = -65;

void setup() {
  size(1200, 800);
  image_espace = loadImage("espace.jpg");
  background(image_espace);
  frameRate(60);
}


void draw(){
  background(  #002382  );
  fill( #8d2600 );
  rect(0, 600, 1200, 200);
  affichagePersonnage();
}

void keyPressed(){
  if(keyCode == RIGHT) deplacementDroite = true;
  if(keyCode == LEFT) deplacementGauche = true;
  if(keyCode == UP && !enChute) enSaut = true;
}

void keyReleased(){
  if(keyCode == RIGHT) deplacementDroite = false;
  if(keyCode == LEFT) deplacementGauche = false;
}

void affichagePersonnage(){
  if(deplacementDroite) xpers += 3;
  if(deplacementGauche) xpers -= 3;
  
  if(enSaut) {
    if(yDebutSaut == -50) {yDebutSaut = ypers; t = 0;}
    sauvegardeY = ypers;
    ypers = int(g/2 * (t*t) + v*t + yDebutSaut);
    t += 0.08;
    
    if(sauvegardeY < ypers) {
      yDebutSaut = sauvegardeY; 
      ypers = sauvegardeY;
      enSaut = false;
      enChute = true;
      t = 0;
    }
    }
  
  
  if(enChute){
    sauvegardeY = ypers;
    ypers = int(g/2 * (t*t) + yDebutSaut);
    t += 0.08;
    
    if(xpers < 0 + 1200 && xpers + 100 > 0 && ypers < 600 + 200 && 100 + ypers > 600){
      ypers = sauvegardeY;
      yDebutSaut = -50;
      enChute = false;
    }
  }
  fill( #f0ff00 );
  rect(xpers, ypers, 100, 100);
}
