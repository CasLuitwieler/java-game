void fireBullet(){
  if(isSpace){
    if(bulletArr < maxBullets){
     bullet[bulletArr] = new Bullet(x,y,w/2,h/2,r);
     bulletArr++;
     bulletT = 0;
     file.rate(gameSpeed);
     file.play();
    }
    else bulletArr = 0;
  } 
}

class Bullet {
  float bx, by, bw, bh,direction;
  int hue,speed;
  Bullet(float startX, float startY, float startW, float startH, float aim){
    bx = startX;
    by = startY;
    bw = startW;
    bh = startH;
    hue = (int) random(0,255);
    direction = aim;
    colorMode(HSB,255,1,1);
    pushMatrix();
    rectMode(CENTER);
    translate(x,y);
    rotate(r);
    rect(0,0,w,h);
    popMatrix(); 
  }
  
  void bulletUpdate(){
      bx -= cos(direction)*(5*gameSpeed);
      by -= sin(direction)*(5*gameSpeed);
      pushMatrix();
     //fill(0,1,1);
      hue ++;
      if(hue == 255)hue=0;
      fill(hue,1,1);
      translate(bx,by);
      rotate(direction);
      rect(0,0,bw,bh);
      popMatrix(); 
  }
}
