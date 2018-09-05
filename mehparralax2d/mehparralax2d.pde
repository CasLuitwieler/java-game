float x,y,z,xm;
float t1,t2;
PImage img;
PImage grass;
void setup() {
  size(1200,720, P2D);
  img = loadImage("181366.jpg");
  grass = loadImage("grass.jpg");
  x = width/2;
  y = height/2;
  z = 0;
  xm = 0;
}
void draw() {
  background(0);
  beginShape();
  texture(img);
  vertex(-200, -200, 0, 0);
  vertex(-200, height+200, 0, 2160);
  vertex(width+200, height+200, 3840,2160);
  vertex(width+200, -200, 3840, 0);
  translate((mouseX-x)/5,(mouseY-y)/5);
  endShape();
  
  
  beginShape();
  texture(grass);
  vertex(-500, height-100,0,0);
  vertex(-500, height+300,0,512);
  vertex(width+500, height+300,512,512);
  vertex(width+500, height-100,512,0);
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
