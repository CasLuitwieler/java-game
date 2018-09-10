float midX,midY,px,py,pxv,pyv,pw,ph,hue;
Enemy[] enemy;
int arr, enemies,score,i,hitarr;
boolean jump = true, hit;
boolean[] hit2;
void setup() {
  fullScreen(2);
  midX = width/2;
  midY = height/2;
  playerSetup();
  enemy = new Enemy[enemies];
  hit2 = new boolean[enemies];
  colorMode(HSB,255,1,1);
}
void draw() {
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
    hit2[i] = enemy[i].update(random(0,width),random(0,height), i);
  }
  for(int i = 0; i < enemy.length;i++){
    if(!hit2[i]){
      if(hitarr == enemy.length-1){
         println("Not hitting anything");
         hit = false;
         hitarr = 0;
      }
      println("Added hitarr");
      hitarr++;
    }
    else {hitarr = 0;hit = true;pyv = 0;}
  }
  playerInput(); 

  textSize(50);
  fill(255);
  text(score,midX,midY);
  fill(hue,1,1);
  rectMode(CENTER);
  rect(px,py,pw,ph);


  }

}
