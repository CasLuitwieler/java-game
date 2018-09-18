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
    if(x < width-50){
      r+=(0.05*gameSpeed);
    }
  }
  if(isLeft){
    if(x > 0){
      r-=(0.05*gameSpeed);
    }
  }
  if(isUp){
    if(y >= 25){
      x += cos(r)*(4*gameSpeed);
      y += sin(r)*(4*gameSpeed);
    }
  }
  if(isDown){
    if(y <= height-25){
      x -= cos(r)*moveSpeed;
      y -= sin(r)*moveSpeed;
    }
  }
  if(enter){
      gameSpeed = 0.25;
  }
  else{ gameSpeed = 1;}

}
