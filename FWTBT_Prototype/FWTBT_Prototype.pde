Player player;
PImage img;

float lastTime,deltaTime,gameTime; //Global time variables

void setup()
{
  size(1280, 720);
  background(0,0,0);
  rectMode(CENTER);
  imageMode(CENTER);
  img = loadImage("BiskitGames.png");
  
  //-------Initializing Objects------
  player = new Player(50);
  
  
  
}

void draw()
{
  
  //------Time------
  deltaTime = (millis() - lastTime) / 1000; //Calculates the diffrence in time between frames
  lastTime = millis();
  
  player.Update();
  
  player.Draw();
  
}

void keyPressed()
{
  player.SetMove(keyCode, true);
}

void keyReleased()
{
  player.SetMove(keyCode, false);
}
