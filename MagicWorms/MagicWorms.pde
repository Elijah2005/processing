float x;
float y;
void setup(){
  
  size(800,800);
  background(#00D2F5);
}
void draw(){
 // x+=10;
 // y+=10;
 for(int i=0; i<300;i++){
 x= getWormX(i);
 y= getWormY(i);
  ellipse(x,y,10,10);
 }
}
float frequency = .001;
float noiseInterval = PI; 

void makeMagical() {
  fill( 0, 0, 0, 10 );rect(0, 0, width, height);noStroke();
}

float getWormX(int i) {
  return map(noise(i*noiseInterval + frameCount * frequency), 0, 1, 0, width);
}

float getWormY(int i) {
  return map(noise(i*noiseInterval+1 + frameCount * frequency), 0, 1, 0, height);
}

