float x,y,w,h,r,turnSpeed,moveSpeed,gameSpeed;
int bulletArr,maxBullets,maxEnemies,bulletT,arr,points;
boolean movement,menu;

Bullet[] bullet;
Enemy[] enemy;

PImage img,logo;


void setup() {
  fullScreen(P2D,2); 
  smooth();
  playerSetup();
}

void draw() {
  if(menu)mainMenu();
  else inGame(); //<>//
}
