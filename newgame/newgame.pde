float x,y,r;
void setup() {
  fullScreen(P2D); 
  x = width/2;
  y = height/2;
}

void draw() {
  background(0);
  if(isRight){
    if(x < width-50){
      r+=10;
    }
  }
  if(isLeft){
    if(x > 0){
      r-=10;
    }
  }
  if(isUp){
    if(y >= 25){
      y-=10;
    }
  }
  if(isDown){
    if(y <= height-25){
      y+=10;
    }
  }
  pushMatrix();
  rectMode(CENTER);
  translate(x,y);
  rotate(radians(r));
  rect(0,0,50,50);
  popMatrix();
}
