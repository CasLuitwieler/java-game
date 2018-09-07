class Enemy {
 color c;
 float xpos;
 float ypos;

 Enemy() {
   c = color(255,0,0);
   xpos = random(0,width);
   ypos = random(0,height);
   rectMode(CENTER);
   fill(c);
   rect(xpos,ypos,20,10);
 }
 void display() {

 }
  
  
}
