void playerSetup(){
  rectMode(CENTER);
  x = width/2;
  y = height/2;
  w = 50;
  h = 50;
  r = 0;
  turnSpeed = 0.05;
  moveSpeed = 4;
  bulletT = 50;
  gameSpeed = 1;
  maxBullets = 100;
  bullet = new Bullet[maxBullets];
  img = loadImage("maxresdefault.jpg");
  file = new SoundFile(this, "glock.mp3");
  file.amp(0.2);
}
