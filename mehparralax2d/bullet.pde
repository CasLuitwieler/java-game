
void fireBullet(String lastPressed, float x, float y, float w, float h){
    if(bulletArr == maxBullets)bulletArr = 0;
    switch(lastPressed) {
     case "Up":
       if(isSpace){
         bullet[bulletArr] = new Bullet(x,y-h,w/2,h/2,lastPressed);
         bulletArr++;
         bulletT=0;

       }
       break;
     case "Down":
       if(isSpace){
         bullet[bulletArr] = new Bullet(x,y+h,w/2,h/2,lastPressed);
         bulletArr++;
         bulletT=0;
       }
       break;
     case "Right":
       if(isSpace){
         bullet[bulletArr] = new Bullet(x+w,y,w/2,h/2,lastPressed);
         bulletArr++;
         bulletT=0;
       }
       break;
     case "Left":
       if(isSpace){
         bullet[bulletArr] = new Bullet(x-w,y,w/2,h/2,lastPressed);
         bulletArr++;
         bulletT=0;
       }
       break;
     }
}
class Bullet {
  float x, y, w, h;
  String direction;
  Bullet(float startX, float startY, float startW, float startH, String aim){
    x = startX;
    y = startY;
    w = startW;
    h = startH;
    direction = aim;

  }


  void bulletUpdate(){
    if(x<width || x>0 || y<height || y>0){
      fill(0,1,1);
      switch(direction){
       case "Up":
         rect(x,y-=4,w,h);
         break;
       case "Down":
         rect(x,y+=4,w,h);
         break;
       case "Right":
         rect(x+=4,y,w,h);
         break;
       case"Left":
         rect(x-=4,y,w,h);
         break;
      }
    }
    
  }

  

}
