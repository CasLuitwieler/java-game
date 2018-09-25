class Player
{
  //------Character------
  private int size;
  private color playerColor;
  //------Movement------
  private PVector position;
  private PVector velocity;
  private float moveSpeed;
  private float jumpSpeed;
  private float maxSpeed;
  //------Other-------
  private boolean isUp, isDown, isLeft, isRight, isSpace, isTouching,lastDirection,jumpAble;
  Player(int size)
  {
    this.size = size;
    playerColor = color(255);
    
    position = new PVector(width/2, height/2);
    velocity = new PVector(0,0);
    moveSpeed = 300f;
    jumpSpeed = 0;
    maxSpeed = 800f;
  }
  
  void Update()
  {
    velocity = new PVector(1,1); 
    velocity.normalize();
    println(moveSpeed);
    HandleInput();
    isTouching = collisionCheck();
  }
  
  void HandleInput()
  {
    if(isTouching && isUp)jumpSpeed = 500f;
    if(jumpAble && isUp)jumpSpeed = 500f;
    if (isUp && !isDown)
    {
      if(!isLeft || !isRight && moveSpeed > 0)moveSpeed = 0;
      velocity.y = velocity.y*(jumpSpeed * deltaTime);
      position.add(0,-velocity.y);
      jumpSpeed-=10;
    }
    else
    {
      velocity.y = velocity.y*(jumpSpeed * deltaTime);
      position.add(0,-velocity.y);
      jumpSpeed-=10;
    }
    if (isDown && !isUp)
    {
      velocity.mult(jumpSpeed * deltaTime);
      position.add(0,velocity.y);
    }

    if (isLeft && !isRight)
    {
      if(!lastDirection)moveSpeed = 300f;
      moveSpeed = constrain(moveSpeed,300f, maxSpeed);
      velocity.mult(moveSpeed * deltaTime);
      position.add(-velocity.x,0);
      moveSpeed+=5;
      lastDirection = true;
    }
    else
    {
      if(!isRight && lastDirection){
        if(isTouching && moveSpeed > 300f){
          velocity.mult(moveSpeed * deltaTime);
          position.add(-velocity.x,0);
          moveSpeed-=20;          
        }
        else
        {
          if(moveSpeed > 0 && !isTouching)
          {
            velocity.mult(moveSpeed * deltaTime);
            position.add(-velocity.x,0);
            moveSpeed-=4; 
          }
        }
      }
    }
    
    if (isRight && !isLeft)
    {
      if(lastDirection)moveSpeed = 300f;
      moveSpeed = constrain(moveSpeed,300f, maxSpeed);
      velocity.mult(moveSpeed * deltaTime);
      position.add(velocity.x,0);
      moveSpeed+=5; 
      lastDirection = false;
    }
    else
    {
      if(!isLeft && !lastDirection){
        if(isTouching && moveSpeed > 300f){
          velocity.mult(moveSpeed * deltaTime);
          position.add(velocity.x,0);
          moveSpeed-=20;          
        }
        else
        {
          if(moveSpeed > 0 && !isTouching)
          {
            velocity.mult(moveSpeed * deltaTime);
            position.add(velocity.x,0);
            moveSpeed-=4; 
          }
        }
      }
    }
  }  
  
boolean collisionCheck(){
  isTouching = false;
  if(position.x<=0+size/2)
  {
    position.x = 0+size/2;
    moveSpeed = 300f;
    jumpAble = true;
  }
  else
  {
   if(!(position.x>=width-size/2))jumpAble = false;
  }
  if(position.x>=width-size/2)
  {
    position.x = width-size/2;
    moveSpeed = 300f;
    jumpAble = true;
  }
  else
  {
   if(!(position.x<=0+size/2))jumpAble = false;
  }
  if(position.y<=0+size/2){position.y = 0+size/2;}
  if(position.y>=height-size/2){position.y = height-size/2;isTouching = true;}else isTouching = false;
  return isTouching;
}

  void Draw()
  {
    pushMatrix();
    translate(position.x, position.y);
    fill(playerColor);
    rect(0, 0, size, size);
    image(img,0,0,size,size);
    popMatrix();
  }
  
  boolean SetMove(int k, boolean b)
  {
    switch(k)
    {
    case 'W':
    case UP:
      return isUp = b;
    case 'S':
    case DOWN:
      return isDown = b;
    case 'A':
    case LEFT:
      return isLeft = b;
    case 'D':
    case RIGHT:
      return isRight = b;
    case 32:
      return isSpace = b;
    default:
      return b;
    }
  }
  
}
