Player player;
PImage img;
PImage map;

float lastTime,deltaTime,gameTime; //Global time variables

void setup()
{
  size(1280, 720,P2D);
  background(0,0,0);
  rectMode(CENTER);
  imageMode(CENTER);
  ellipseMode(CENTER);
  img = loadImage("BiskitGames.png");
  map = loadImage("level.png");
  //-------Initializing Objects------
  player = new Player(50);

}

void draw()
{
  image(map,width/2,height/2);
  //background(0);

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
