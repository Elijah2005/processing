void setup() {
  size(1000, 1000);
}
int x = 500;
int y = 500;
int pipeX = 600;
int pipeY =600;
int pipeX2 = 400;
int pipeY2 = 0;
double birdYVelocity = 7;
double gravity = 0.5;
void draw() {
  background(#05D3FA);
  y+=birdYVelocity;
  y+=gravity;
  fill(#F7F00C);
  ellipse(x,y,60,60);
  if (mousePressed) {
    mousePressed();
  }
  fill(#4DE34C);
  rect(pipeX,pipeY,90,700);
  pipeX-=2;
  if(pipeX<=0) {
   pipeX=width;
   int random = (int) random(100, 400);
pipeY = random;
  }
rect(pipeX2,pipeY2,90,1000-pipeY);
  if(intersects(x,y,pipeX,pipeY,90)){
   exit(); 
}
}
boolean intersects(int birdX, int birdY, int paddleX, int paddleY, int paddleLength) {
if (birdY > paddleY - 4 && birdX > paddleX && birdX < paddleX + paddleLength)
return true;
else 
return false;
}




void mousePressed() {
  y-=birdYVelocity;
  double gravity = 10;
  y-=gravity;
}