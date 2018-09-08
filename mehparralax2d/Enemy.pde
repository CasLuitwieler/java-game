class Enemy {
 color c;
 float hue, xpos, ypos;
 int count;
 boolean hit;
 Enemy() {
   colorMode(HSB,255,1,1);
   hue = 0;
   c = color(hue,1,1);
   xpos = random(0,width);
   ypos = random(0,height);
   
   println(xpos, " ",ypos);
 }
 void display() {
   c = color(hue,1,1);
   hue ++;
   if(hue == 255)hue=0;
   rectMode(CENTER);
   fill(c);
 }
 void update(float tempX,float tempY){
   if(xpos-10 <= px+25 && xpos+10 >= px-25 && ypos+10 >= py-25 && ypos-10 <= py+25){hit = true;score++;background(10);}
   else{rect(xpos,ypos,20,20);}
   if(count == 500 || hit){
     xpos = tempX;
     ypos = tempY;
     count = 0;
     hit = false;
     }
   else{count++;}
 }
  
  
}
