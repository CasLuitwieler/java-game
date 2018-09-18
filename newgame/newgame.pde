import processing.sound.*;

float x,y,w,h,r,turnSpeed,moveSpeed,gameSpeed;
int bulletArr,maxBullets,bulletT;

Bullet[] bullet;
PImage img;

SoundFile file;

void setup() {
  playerSetup();
}

void draw() {
  background(0);
  image(img,0,0,width,height);
  updateMovement();
  for(int i = 0; i <= bullet.length -1; i++){
    if(bullet[i] != null){
      bullet[i].bulletUpdate();
    }
  }
  if(bulletT >= (5/gameSpeed)){
  fireBullet();
  }
  else bulletT++;
  updatePlayer();
}
