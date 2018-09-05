float x,y,z,xm;
float t1,t2;
PImage img;
void setup() {
  fullScreen(P2D);
  img = loadImage("181366.jpg");
  x = width/2;
  y = height/2;
  z = 0;
  xm = 0;
}
void draw() {
  background(0);
  beginShape();
  texture(img);
  vertex(0, 0, 0, 0);
  vertex(0, 2160/2, 0, 2160);
  vertex(3840/2, 2160/2, 3840,2160);
  vertex(3840/2, 0, 3840, 0);
  translate((mouseX-x)/5,(mouseY-y)/5);
  endShape();
  
  
  beginShape();
  vertex(0, 0);
  vertex(0, height/2);
  vertex(width/2, height/2);
  vertex(width/2, 0);
  translate((mouseX-x)/2.5,(mouseY-y)/2.5);
  endShape();
  
  
}






/*
void mouseWheel(MouseEvent event) {
  float e = event.getCount();
  if (e > 0) {
    z = lerp(z,z -= e*10,0.7);
    print(z, " ");
  }
  else {
    z = lerp(z,z -= e*10,0.7);
    print(z, " ");
  }
}
*/
