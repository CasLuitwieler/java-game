class Enemy {
 color c;
 float hue, xpos, ypos, enemyW,enemyH;
 int count,hitSide;

 Enemy() {
   colorMode(HSB,255,1,1);
   hue = 0;
   c = color(hue,1,1);
   xpos = random(0,width);
   ypos = random(0,height);
   enemyW = 100;
   enemyH = 40;
 }
 void display() {
   c = color(hue,1,1);
   hue ++;
   if(hue == 255)hue=0;
   rectMode(CENTER);
   fill(c);
 }
 boolean update(float tempX,float tempY){
   if(xpos-enemyW/2 <= px+25 && xpos+enemyW/2 >= px-25 && ypos+enemyH/2 >= py-25 && ypos-enemyH/2 <= py+25){hit = true;rect(xpos,ypos,enemyW,enemyH); py = ypos-enemyH;}
   else{rect(xpos,ypos,enemyW,enemyH);hit = false;}
   //println(hit," ",i);
   if(count == 100){
     xpos = tempX;
     ypos = tempY;
     count = 0;
     hit = false;
     }
   else{count++;}
   return hit;
 }
  
}
