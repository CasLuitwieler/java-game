class Player
{
  //------Character------
  private int size;
  private color playerColor;
  //------Movement------
  private PVector position;
  private PVector velocity;
  private float moveSpeed;
  private float maxSpeed;
  private float angle;
  private float rotationSpeed;
  //------Other-------
  private boolean isUp, isDown, isLeft, isRight, isSpace;
  Player()
  {
    position = new PVector(width/2, height/2);
    size = 50;
    rect(position.x,position.y,size,size);
    
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
