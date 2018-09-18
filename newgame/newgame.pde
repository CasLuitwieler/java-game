float x,y,r;
void setup() {
  fullScreen(); 
  smooth();
  x = width/2;
  y = height/2;
  r = 0;
}

void draw() {
  background(0);
  if(isRight){
    if(x < width-50){
      r+=0.05;
    }
  }
  if(isLeft){
    if(x > 0){
      r-=0.05;
    }
  }
  if(isUp){
    if(y >= 25){
      x += cos(r)*4;
      y += sin(r)*4;
    }
  }
  if(isDown){
    if(y <= height-25){
      x -= cos(r)*4;
      y -= sin(r)*4;
    }
  }
  pushMatrix();
  rectMode(CENTER);
  translate(x,y);
  rotate(r);
  rect(0,0,50,50);
  popMatrix();
}
