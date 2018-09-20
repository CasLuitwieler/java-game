void updatePlayer(){
  pushMatrix();
  fill(255);
  translate(x,y);
  rotate(r);
  rect(0,0,w,h);
  rect(30,0,10,10);
  popMatrix(); 
}
void updateMovement() {
  if(isRight){
      r+=(0.05*gameSpeed);
  }
  if(isLeft){
      r-=(0.05*gameSpeed);
  }
  if(isUp){
    //if(y >= 25){
      if(!movement)moveSpeed =4;
      x += cos(r)*(moveSpeed*gameSpeed);
      y += sin(r)*(moveSpeed*gameSpeed);
      moveSpeed+=0.05*gameSpeed;
      movement = true;
    //}
  }
  else {
  if(moveSpeed > 4 && !isDown && movement){
    x += cos(r)*(moveSpeed*gameSpeed);
    y += sin(r)*(moveSpeed*gameSpeed);
    moveSpeed-=0.5*gameSpeed;
  }}
  if(isDown){
    //if(y <= height-25){
      if(movement)moveSpeed =4;
      x -= cos(r)*(moveSpeed*gameSpeed);
      y -= sin(r)*(moveSpeed*gameSpeed);
      moveSpeed+=0.05*gameSpeed;
      movement = false;
    //}
  }
  else{
    if(moveSpeed > 4 && !isUp && !movement){
      x -= cos(r)*(moveSpeed*gameSpeed);
      y -= sin(r)*(moveSpeed*gameSpeed);
      moveSpeed-=0.5*gameSpeed;
    }
  }
  
  if(enter){
      gameSpeed = 0.25;
  }
  else{ gameSpeed = 1;}

  if(x<=0+w/2){x = 0+w/2;moveSpeed = 4;}
  if(x>=width-w/2){x = width-w/2;moveSpeed = 4;}
  if(y<=0+h/2){y = 0+w/2;moveSpeed = 4;}
  if(y>=height-h/2){y = height-w/2;moveSpeed = 4;}

}
