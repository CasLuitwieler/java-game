float x,y,z;
void draw() {
  background(0,0,255);
  translate(x,y,z);
  rectMode(CENTER);
  rect(0,0,100,100);
  fill(255,0,0);

  beginCamera();
  camera(x, y, 120.0, x, y, 0.0, 
       0.0, 1.0, 0.0);
  translate((mouseX-x)/10,(mouseY-y)/10,0);
  endCamera();
}
void setup() {
  size(720, 400,P3D);
  x = width/2;
  y = height/2;
  z = 0;
}
