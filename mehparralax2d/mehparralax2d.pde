float midX,midY,px,py,pw,ph;
Enemy[] enemy;
int arr;
boolean jump = true;
void setup() {
  fullScreen(2);
  midX = width/2;
  midY = height/2;
  playerSetup();
  enemy = new Enemy[50];
}
void draw() {
  if(isRight)px += 10;
  if(isLeft)px -= 10;
  if(isUp && jump){
    jump = false;
  }

  background(0);
  rect(px,py,pw,ph);
  enemy[arr] = new Enemy();
  arr++;
}
