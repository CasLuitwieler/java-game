float midX,midY,px,py,pxv,pyv,pw,ph,hue;
Enemy[] enemy;
int arr, enemies,score;
boolean[] hitarr;
boolean jump = true, hit = false, hit2 = false;
void setup() {
  fullScreen(2);
  midX = width/2;
  midY = height/2;
  playerSetup();
  enemy = new Enemy[enemies];
  hitarr = new boolean[enemies];
  colorMode(HSB,255,1,1);
}
void draw() {
  hue ++;
  if(hue == 255)hue=0;
  if(isRight && px < width-pw/2 && !isLeft){if(pxv < 0)pxv=0;pxv += 0.5;px += pxv;}else{if(pxv > 0){pxv--;px += pxv;}if(px > width-pw/2)px = width-pw/2;}
  if(isLeft && px > 0+pw/2 && !isRight){if(pxv > 0)pxv=0;pxv -= 0.5; px += pxv;}else{if(pxv < 0){pxv++;px += pxv;} if(px < 0+pw/2)px = 0+pw/2;}
  if(isUp){if(jump){pyv = 20; py -= pyv;}else{if(py < height-ph && !hit){py -= pyv; pyv -= 0.5;}} if(pyv >= 20 || pyv < 0){jump = false;}}else{if(pyv == 0){jump = true;}else{jump=false;}if(py < height-ph && !hit){py -= pyv; pyv -= 0.5;}else{pyv = 0;}}
  background(0);
  textSize(50);
  fill(255);
  text(score,midX,midY);
  fill(hue,1,1);
  rectMode(CENTER);
  rect(px,py,pw,ph);

  if (arr < enemies){
    enemy[arr] = new Enemy();
    arr++;
  }
  else {
  for(int i = 0; i <= enemy.length -1 ; i++){
    enemy[i].display();
    hit2 = enemy[i].update(random(0,width),random(0,height), i);
    if(hit2){
      hit = true;
      hitarr[i] = true;
      //println(hitarr[i], " ",i);
    }
    if(hitarr[i] == true && hit == true && !hit2){hit = false;hitarr[i] = false;}

  }
  }

}
