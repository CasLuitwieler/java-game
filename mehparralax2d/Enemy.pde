class Enemy {
 color c;
 float hue, xpos, ypos;
 int count;

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
 boolean update(float tempX,float tempY, int i){
   if(xpos-20 <= px+25 && xpos+20 >= px-25 && ypos+20 >= py-25 && ypos-20 <= py+25){hit = true;rect(xpos,ypos,40,40);}
   else{rect(xpos,ypos,40,40);hit = false;}
   //println(hit," ",i);
   if(count == 500){
     xpos = tempX;
     ypos = tempY;
     count = 0;
     hit = false;
     }
   else{count++;}
   return hit;
 }
  
  
}
