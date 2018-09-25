void mainMenu(){
  background(0);
  textSize(20);
  text("Click here to start",width/2,height/5,200,50);
  textSize(32);
  image(logo,width/2,height/5*2,200,200);
}
void inGame(){
  background(0);
  image(img,width/2,height/2,width,height);
  text(points,width/2,height/2);
  if(arr < enemy.length){
    enemy[arr] = new Enemy(); 
    arr++;
  }
  for(int i = 0; i < enemy.length -1;i++){
    if(enemy[i] != null){
      enemy[i].drawEnemy();
      enemy[i].updateEnemy();
      if(enemy[i].alive == false){
        enemy[i] = new Enemy();
      }
    }
  }
  updateMovement();
  for(int i = 0; i <= bullet.length -1; i++){
    if(bullet[i] != null){
      bullet[i].bulletUpdate();
    }
  }
  if(bulletT >= (15/deltaTime/gameSpeed)){
  fireBullet();
  }
  else bulletT++;
  updatePlayer();
}
