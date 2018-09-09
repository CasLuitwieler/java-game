float midX,midY,px,py,pxv,pyv,pw,ph,hue;
Enemy[] enemy;
int arr, enemies,score,i;
int[] hitarr;
boolean jump = true, hit;
boolean[] hit2;
void setup() {
  fullScreen(2);
  midX = width/2;
  midY = height/2;
  playerSetup();
  enemy = new Enemy[enemies];
  hit2 = new boolean[enemies];
  hitarr = new int[enemies];
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
  /*  if(hit2[i]){
      hit = true;
      hitarr[i] = i;
      println(i);
    }
    if(!hit2[i] && hitarr[i] == i){hit = false;hitarr[i] = enemies+1;  println(i," ded");} */
  }
  if(isRight && px < width-pw/2 && !isLeft){if(pxv < 0)pxv=0;pxv += 0.5;px += pxv;}else{if(pxv > 0){pxv--;px += pxv;}if(px > width-pw/2)px = width-pw/2;}
  if(isLeft && px > 0+pw/2 && !isRight){if(pxv > 0)pxv=0;pxv -= 0.5; px += pxv;}else{if(pxv < 0){pxv++;px += pxv;} if(px < 0+pw/2)px = 0+pw/2;}
  if(isUp){if(jump){pyv = 20; py -= pyv;}else{if(py < height-ph){for(int i = 0; i <= enemy.length -1; i++){if (hit2[i]){hit = true;py -= pyv; pyv -= 0.5;i = enemy.length -1;}}}} if(pyv >= 20 || pyv < 0){jump = false;}}else{if(pyv == 0){jump = true;}else{jump=false;}if(py < height-ph){for(int i = 0; i <= enemy.length -1 ; i++){if (hit2[i]){py -= pyv; pyv -= 0.5;}}}else{pyv = 0;}} 
  println(py);
  textSize(50);
  fill(255);
  text(score,midX,midY);
  fill(hue,1,1);
  rectMode(CENTER);
  rect(px,py,pw,ph);


  }

}
