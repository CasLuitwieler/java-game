//------Classes------
Menu menu;

//------Image stuff------
PImage map;

//------Font stuff------
PFont font;
//------Variables------
float lastTime,deltaTime;
boolean isMenu;

void setup()
{
  size(1280,720,P2D);
  rectMode(CENTER);
  imageMode(CENTER);
  ellipseMode(CENTER);
  extraSetup();
}

void draw()
{
  //------Time------
  deltaTime = (millis() - lastTime) / 1000; //Calculates the diffrence in time between frames
  lastTime = millis();
  
  //------Gamestate------
  if(isMenu)
  {
    menu.draw();
  }
  else
  {
  
  }
  
}
