Player player;

void setup()
{
  size(1280, 720);
  background(0,0,0);
  rectMode(CENTER);
  
  //-------Initializing Objects------
  player = new Player();
  
  
  
}

void draw()
{
  
  
}

void keyPressed()
{
  player.SetMove(keyCode, true);
}

void keyReleased()
{
  player.SetMove(keyCode, false);
}
