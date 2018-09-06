float x,y,z,xm,j,j2;
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
  j = height/2;
  j2 = 0;
}
void draw() {
  if(isRight)xm -= 10;
  if(isLeft)xm += 10;
  if(isUp){j -= 30;}
  if(j != height-150) {
    j +=10;
  }
  background(0);
  beginShape();
  texture(img);
  vertex(-200, -200, 0, 0);
  vertex(-200, height+200, 0, 2160);
  vertex(width+200, height+200, 3840,2160);
  vertex(width+200, -200, 3840, 0);
  translate(xm/10+(mouseX-x)/10,0);
  endShape();
  
  beginShape();
  texture(grass);
  vertex(-width*2, height-100,0,0);
  vertex(-width*2, height*1.3,0,512);
  vertex(width*2, height*1.3,1024,512);
  vertex(width*2, height-100,1024,0);
  translate(xm+(mouseX-x)/5,0);
  endShape();
  
  beginShape();
  rect(-xm*1.1,j,50,50);
  endShape();
  print(j, " ");
}





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
