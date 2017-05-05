void setup(){
  size(1000,1000);
}
int x = 500;
int y = 500;
double birdYVelocity = 5;
double gravity = 0.5;
void draw(){
  background(#05D3FA);
  y+=birdYVelocity;
  y+=gravity;
  ellipse(x,y,60,60);
  fill(#F7F00C);
if(mousePressed){
  mousePressed();
  y-=birdYVelocity;
  y+=gravity;
}
  
}
void mousePressed(){
  
}