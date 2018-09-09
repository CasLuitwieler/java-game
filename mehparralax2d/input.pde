boolean isUp,isDown,isLeft,isRight;
void keyPressed() {
  setMove(keyCode, true);
}
 
void keyReleased() {
  setMove(keyCode, false);
}

void keyInput() {
  
}
boolean setMove(int k, boolean b) {
  switch (k) {
  case UP:
    //if(!b)jump = true;
    return isUp = b;
 
  case DOWN:
    return isDown = b;
 
  case LEFT:
    return isLeft = b;
 
  case RIGHT:
    return isRight = b;
 
  default:
    return b;
  }
}
