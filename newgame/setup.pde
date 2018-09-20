void playerSetup(){
  rectMode(CENTER);
  x = width/2;
  y = height/2;
  w = 50;
  h = 50;
  r = 0;
  menu = true;
  turnSpeed = 0.05;
  moveSpeed = 4;
  arr = 0;
  bulletT = 50;
  gameSpeed = 1;
  maxBullets = 100;
  maxEnemies = 40;
  textSize(32);
  imageMode(CENTER);
  points = 0;
  bullet = new Bullet[maxBullets];
  enemy = new Enemy[maxEnemies];
  img = loadImage("maxresdefault.jpg");
  logo = loadImage("BiskitGames.png");
}
