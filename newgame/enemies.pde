int rand;
int arr = 0;
PShape square;
void createEnemy() {
  rand = int(random(4));
  switch(rand){
    case 0:
      x2[arr] = random(0,width);
      y2[arr] = height-50;
      break;
    case 1:
      x2[arr] = random(0,width);
      y2[arr] = 0;
      break;
    case 2:
      x2[arr] = width-50;
      y2[arr] = random(0,height);
      break;
    case 3:
      x2[arr] = 0;
      y2[arr] = random(0,height);
      break;
  }
  square = createShape(RECT, x2[arr], y2[arr], 50, 50);
  square.setFill(color(255));
}
