float x,y,w,h,r,turnSpeed,moveSpeed,gameSpeed;
int bulletArr,maxBullets,maxEnemies,bulletT,arr,points;
boolean movement;

Bullet[] bullet;
Enemy[] enemy;

PImage img;


void setup() {
  fullScreen(P2D,2); 
  smooth();
  playerSetup();
}

void draw() {
  background(0);
  image(img,0,0,width,height);
  text(points,width/2,height/2);
  if(arr < enemy.length){
    enemy[arr] = new Enemy(); 
    arr++;
  }
  for(int i = 0; i < enemy.length -1;i++){
    if(enemy[i] != null){
      enemy[i].drawEnemy();
      enemy[i].updateEnemy();
      if(enemy[i].alive == false){
        enemy[i] = new Enemy();
      }
    }
  }
  updateMovement(); //<>//
  for(int i = 0; i <= bullet.length -1; i++){
    if(bullet[i] != null){
      bullet[i].bulletUpdate();
    }
  }
  if(bulletT >= (15/gameSpeed)){
  fireBullet();
  }
  else bulletT++;
  updatePlayer();
}
