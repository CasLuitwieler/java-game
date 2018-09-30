class Menu
{
  //------Menu------
  private int menuState;
  //------Images-------
  private PImage buttonUp;
  private PImage buttonDown;
  
  
  Menu()
  {
    menuState = 0;
    buttonUp = loadImage("grey_button_up.png");
    buttonDown = loadImage("grey_button_down.png");
  }
  
  void update()
  {
    
    
  }
  
  void draw()
  {
    mainMenu();
    
  }
  void mainMenu()
  {
    fill(89, 89, 89);
    image(buttonUp,width/2,height/2-75);
    text("Play",width/2,height/2-75);
    image(buttonUp,width/2,height/2);
    image(buttonUp,width/2,height/2+75);
  }
}
