void updatePlayer(){
  pushMatrix();
  fill(255);
  translate(x,y);
  rotate(r);
  rect(0,0,w,h);
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
      moveSpeed+=0.05;
      println(moveSpeed);
      movement = true;
    //}
  }
  else {
  if(moveSpeed > 4 && !isDown && movement){
    x += cos(r)*(moveSpeed*gameSpeed);
    y += sin(r)*(moveSpeed*gameSpeed);
    moveSpeed-=0.5;
  }}
  if(isDown){
    //if(y <= height-25){
      if(movement)moveSpeed =4;
      x -= cos(r)*(moveSpeed*gameSpeed);
      y -= sin(r)*(moveSpeed*gameSpeed);
      moveSpeed+=0.05;
      movement = false;
    //}
  }
  else{
    if(moveSpeed > 4 && !isUp && !movement){
      x -= cos(r)*(moveSpeed*gameSpeed);
      y -= sin(r)*(moveSpeed*gameSpeed);
      moveSpeed-=0.5;
    }
  }
  
  if(enter){
      gameSpeed = 0.25;
  }
  else{ gameSpeed = 1;}

}
