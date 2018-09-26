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
  private boolean isUp, isDown, isLeft, isRight, isSpace,lastDirection,jumpAble,jumpAble2,jumped;
  private boolean isTouching,isTouching2,isTouchingL,isTouchingR;
  private int jumps;
  Player(int size)
  {
    this.size = size;
    playerColor = color(255);
    
    position = new PVector(width/2, height/2);
    velocity = new PVector(0,0);
    moveSpeed = 300f;
    jumpSpeed = 0;
    jumps =0;
    maxSpeed = 1000f;
  }
  
  void Update()
  {
    velocity = new PVector(1,1); 
    velocity.normalize();
    HandleInput();
    collisionCheck();
  }
  
  void HandleInput()
  {

    if((isTouching || isTouching2) && isUp)jumpSpeed = 500f;
    if((jumpAble || jumpAble2) && isUp && !jumped)
    {
      jumpSpeed = 500f;
      moveSpeed = moveSpeed*0.8;
      if(lastDirection)isLeft = false;
      else isRight = false;
      lastDirection = !lastDirection;
      jumpAble = false;
      jumpAble2 = false;
      isUp = false;
      jumped = true;
    }
    if (isUp && !isDown)
    {
      if(!isLeft && !isRight && moveSpeed <= 300)moveSpeed = 0;
      velocity.y = velocity.y*(jumpSpeed * deltaTime);
      position.add(0,-velocity.y);
      jumpSpeed-=10;
    }
    else
    {
      if((!isTouching || !isTouching2))
      {
        velocity.y = velocity.y*(jumpSpeed * deltaTime);
        position.add(0,-velocity.y);
        jumpSpeed-=10;
      }
    }
    if (isDown && !isUp)
    {
      
    }

    if (isLeft && !isRight && !isTouchingL)
    {
      if(!lastDirection)moveSpeed = 300f;
      moveSpeed = constrain(moveSpeed,300f, maxSpeed);
      velocity.x = velocity.x*(moveSpeed * deltaTime);
      position.add(-velocity.x,0);
      moveSpeed+=5;
      lastDirection = true;
    }
    else
    {
      if(!isRight && lastDirection){
        if(isTouching && moveSpeed > 300f){
          velocity.x = velocity.x*(moveSpeed * deltaTime);
          position.add(-velocity.x,0);
          moveSpeed-=20;          
        }
        else
        {
          if(moveSpeed > 0 && !isTouching && !isTouching2)
          {
            velocity.x = velocity.x*(moveSpeed * deltaTime);
            position.add(-velocity.x,0);
            moveSpeed-=4; 
          }
        }
      }
    }
    
    if (isRight && !isLeft && !isTouchingR)
    {
      if(lastDirection)moveSpeed = 300f;
      moveSpeed = constrain(moveSpeed,300f, maxSpeed);
      velocity.x = velocity.x*(moveSpeed * deltaTime);
      position.add(velocity.x,0);
      moveSpeed+=5; 
      lastDirection = false;
    }
    else
    {
      if(!isLeft && !lastDirection && !isTouchingL){
        if(isTouching && moveSpeed > 300f){
          velocity.x = velocity.x*(moveSpeed * deltaTime);
          position.add(velocity.x,0);
          moveSpeed-=20;          
        }
        else
        {
          if(moveSpeed > 0 && !isTouching  && !isTouching2)
          {
            velocity.x = velocity.x*(moveSpeed * deltaTime);
            position.add(velocity.x,0);
            moveSpeed-=4; 
          }
        }
      }
    }
  }  
  
  void collisionCheck(){
    isTouching = false;
    
    //-------Boundrary check------
    
    if(position.x<=0+size/2)
    {
      position.x = 0+size/2;
      jumpAble = true;
    }
    
    else if(!(position.x>=width-size/2) && !(isTouchingR || isTouchingL)){print("ok");jumpAble = false;}
    
    if(position.x>=width-size/2)
    {
      position.x = width-size/2;
      jumpAble = true;
    }
    else if(!(position.x<=0+size/2))jumpAble = false;
    
    if(position.y<=0+size/2){position.y = 0+size/2;}
    if(position.y>=height-size/2){position.y = height-size/2;isTouching = true;jumped = false;}else isTouching = false;
    
    //------Color check------
    int x =(int) position.x;
    int y =(int) position.y;
    isTouching2 = false;
    jumpAble2 = false;
    for(int i = 0; i < size/2;i++)
    {
      if(map.get(x + size/2,y+(i-size/4)) == color(0)){isTouchingR = true;position.x -= 0.1;moveSpeed =0;jumpAble2 = true;}else {isTouchingR = false;}
      if(map.get(x - size/2,y+(i-size/4)) == color(0)){isTouchingL = true;position.x += 0.1;moveSpeed =0;jumpAble2 = true;}else {isTouchingL = false;}
    }
    for(int i = 0; i < size/2;i++)
    {  
    if(map.get(x+(i-size/4), y + size/2) == color(0)){isTouching2 = true;jumpSpeed = 0;}
    }
    
    if(map.get(x, y - size/2) == color(0)){jumpSpeed = 0;position.y++;}
    color c = map.get(x, y + size/2);
    println(c);
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
