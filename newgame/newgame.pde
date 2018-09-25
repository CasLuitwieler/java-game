float x,y,w,h,r,turnSpeed,moveSpeed,gameSpeed;
int bulletArr,maxBullets,maxEnemies,bulletT,arr,points;
boolean movement,menu;

float deltaTime,lastTime;

Bullet[] bullet;
Enemy[] enemy;

PImage img,logo;


void setup() {
  size(1280,720,P2D); 
  smooth();
  frameRate(60);
  playerSetup();
}

void draw() {
  //------Time------
  deltaTime = (millis() - lastTime)/25; //Calculates the diffrence in time between frames
  lastTime = millis();
  println(frameRate);
  if(menu)mainMenu();
  else inGame(); //<>//
}
