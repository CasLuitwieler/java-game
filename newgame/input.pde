boolean isUp,isDown,isLeft,isRight,isSpace,isEnter,enter;
void keyPressed() {
  setMove(keyCode, true);
}
 
void keyReleased() {
  setMove(keyCode, false);
}

void mouseClicked(){
  if(mouseX >= width/2-100 && mouseX <= width/2+100 && mouseY >= height/5-25 && mouseY <= height/5+25){
    menu = false;
  }
}
 
boolean setMove(int k, boolean b) {
  switch (k) {
  case UP:
    return isUp = b;
 
  case DOWN:
    return isDown = b;
 
  case LEFT:
    return isLeft = b;
 
  case RIGHT:
    return isRight = b;
    
  case 32:
    return isSpace = b;
    
  case ENTER:
    if(b){enter=!enter;}
    return isEnter = b;
    
  default:
    return b;
  }
}
