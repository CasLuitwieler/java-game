void fireBullet(String lastPressed, float x, float y, float w, float h){
    int i = 0;
    switch(lastPressed) {
     case "Up":
       if(isSpace){
         print("ok");
         //bullet[i].bulletCreate(x,y-h,w/2,h/2);
         i++;
         bulletT=0;
       }
       break;
     case "Down":
       if(isSpace){
       //  bullet[i].bulletCreate(x,y+h,w/2,h/2);
         i++;
         bulletT=0;
       }
       break;
     case "Right":
       if(isSpace){
        // bullet[i].bulletCreate(x+w,y,w/2,h/2);
         i++;
         bulletT=0;
       }
       break;
     case "Left":
       if(isSpace){
        // bullet[i].bulletCreate(x-w,y,w/2,h/2);
         i++;
         bulletT=0;
       }
       break;
     }
}
class Bullet {
  float x, y, w, h;
  
  Bullet(){
    
  }
  void bulletUpdate(){
   // for(int i = 0; i <= bullet.length -1;i++){
     // bullet[i].bulletCreate();
   // }
  }

  void bulletCreate(float x, float y, float w, float h){
    println(x,y,w,h);
    
  }

}
