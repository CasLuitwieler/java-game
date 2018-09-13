float midX,midY,px,py,pxv,pyv,pw,ph,hue,rad;
Enemy[] enemy;
Bullet[]  bullet;
String[] bulletpos;
int arr, enemies,score,i,hitarr,maxBullets,bulletT,bulletArr;
boolean jump = true, hit;
boolean[] hit2;
void setup() {
  fullScreen(2);
  midX = width/2;
  midY = height/2;
  playerSetup();
  enemy = new Enemy[enemies];
  hit2 = new boolean[enemies];
  bullet = new Bullet[maxBullets];
  bulletpos = new String[maxBullets];
  colorMode(HSB,255,1,1);
}
void draw() {
  //bullet[i].bulletCreate(midX,midY,10,10);
  background(0);
  hue ++;
  if(hue == 255)hue=0;
  if (arr < enemies){
    enemy[arr] = new Enemy();
    arr++;
  }
  else {
  for(int i = 0; i <= enemy.length -1 ; i++){
    enemy[i].display();
    hit2[i] = enemy[i].update(random(0,width),random(0,height));
  }

  for(int i = 0; i < enemy.length;i++){
    if(!hit2[i]){
      if(hitarr == enemy.length-1){
         hit = false;
         hitarr = 0;
      }
      hitarr++;
    }
    else {hitarr = 0;hit = true;pyv = 0;}
  }
  playerInput(); 
  if(bulletT == 10){
  fireBullet(lastPressed,px,py,pw,ph);
  }
  else bulletT++;
  textSize(50);
  fill(255);
  text(score,midX,midY);
  fill(hue,1,1);
  rectMode(CENTER);
  rect(px,py,pw,ph);
  }

}
