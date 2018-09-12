boolean isUp,isDown,isLeft,isRight,isSpace;
String lastPressed = "Up";

void playerInput() {
  if(isRight && px < width-pw/2 && !isLeft){
    if(pxv < 0)pxv=0;
    pxv += 0.5;
    px += pxv;
  }
  else {
    if(pxv > 0) {
      pxv--;
      px += pxv;
    }
    if(px > width-pw/2)px = width-pw/2;
  }
  //-------------------------------------
  if(isLeft && px > 0+pw/2 && !isRight ){
    if(pxv > 0)pxv=0;
    pxv -= 0.5;
    px += pxv;
  }
  else {
    if(pxv < 0){
      pxv++;
      px += pxv;
    } 
    if(px < 0+pw/2)px = 0+pw/2;
  }
  //-------------------------------------
  if(isUp) {
    if(jump){
      pyv = 20;
      py -= pyv;
    }
    else {
      if(py < height-ph && !hit){
        py -= pyv;
        pyv -= 0.5;
        i = enemy.length -1;
      }
    } 
    if(pyv >= 20 || pyv < 0){
      jump = false;
    }
  }
  else {
    if(pyv == 0){
      jump = true;
    }
    else {
      jump=false;
    }
    if(py < height-ph && !hit){
      py -= pyv;
      pyv -= 0.5;
    }
    else {
      pyv = 0;
    }
  }
  if(isSpace){
    
  }
}
void keyPressed() {
  setMove(keyCode, true);
}
 
void keyReleased() {
  setMove(keyCode, false);
}

boolean setMove(int k, boolean b) {
  switch (k) {
  case UP:
    //if(!b)jump = true;
    lastPressed = "Up";
    return isUp = b;
 
  case DOWN:
    lastPressed = "Down";
    return isDown = b;
 
  case LEFT:
    lastPressed = "Left";
    return isLeft = b;
 
  case RIGHT:
    lastPressed = "Right";
    return isRight = b;
  case 32:
    return isSpace = b;
  default:
    return b;
  }
}
