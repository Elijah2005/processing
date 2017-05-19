
int x = 500;
int y = 500;
int pipeX = 600;
int pipeY =height-500;
int pipeX2 = 0;
int gap = 100;
int pipeY2;
int pipe1Length;
double birdYVelocity = 7;
double gravity = .5;

void setup() {
  size(1000, 1000);
  pipe1Length = (int)random(100,500);
}



void draw() {
  background(#05D3FA);
  y+=birdYVelocity;
  y+=gravity;
  fill(#F7F00C);
 ellipse(x,y,15,15);
  if (mousePressed) {
    mousePressed();
  }
  
  
  fill(#4DE34C);
  //bottom
  
  pipeY=height-pipe1Length;
  rect(pipeX,pipeY,70,pipe1Length);
 
 
 
 pipeY2=0;
  rect(pipeX,pipeY2,70,height-pipe1Length-gap);
  pipeX-=2;
  if(pipeX<=0) {
   pipeX=width;
   int random = (int) random(100, 400);
pipeY = random;


  }

  if(intersects(x,y,pipeX,pipeY,90)){
  exit();
}
//}
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