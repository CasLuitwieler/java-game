float x,y;
float[] x2,y2;
void setup() {
  fullScreen(P2D); 
  x = width/2;
  y = height/2;
  arr = 0;
  x2 = new float[50];
  y2 = new float[50];
}

void draw() {
  background(0);
  if(isRight){
    if(x < width-50){
      x+=10;
    }
  }
  if(isLeft){
    if(x > 0){
      x-=10;
    }
  }
  if(isUp){
    if(y > 0){
      y-=10;
    }
  }
  if(isDown){
    if(y < height-50){
      y+=10;
    }
  }
  rect(x,y,50,50);
  createEnemy();
  shape(square, 0,0);
  if(arr < 49){
    arr++;
  }
  else {
    arr = 0; 
  }
}
