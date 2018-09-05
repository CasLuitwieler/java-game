float x,y,z,xm;
float t1,t2;
PImage img;
PImage grass;
void setup() {
  fullScreen(P2D, 2);
  img = loadImage("181366.jpg");
  grass = loadImage("grass.jpg");
  x = width/2;
  y = height/2;
  z = 0;
  xm = 0;
}
void draw() {
  if (keyPressed) {
    if (keyCode == RIGHT) {
      xm -= 10;
    }
    if (keyCode == LEFT) {
      xm += 10;
    }
  }
  background(0);
  beginShape();
  texture(img);
  vertex(-200, -200, 0, 0);
  vertex(-200, height+200, 0, 2160);
  vertex(width+200, height+200, 3840,2160);
  vertex(width+200, -200, 3840, 0);
  translate(xm/10,(mouseY-y)/5);
  endShape();
  
  
  beginShape();
  texture(grass);
  vertex(-width*2, height-100,0,0);
  vertex(-width*2, height*1.3,0,512);
  vertex(width*2, height*1.3,1024,512);
  vertex(width*2, height-100,1024,0);
  translate(xm,(mouseY-y)/2.5);
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
