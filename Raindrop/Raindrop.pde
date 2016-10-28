import ddf.minim.*;
 int y=25; 
 int x=50;
 int score;
 void checkCatch(int x){
if (x > mouseX && x < mouseX+100)
      score++;
   else if (score > 0)
     score--;
println("Your score is now: " + score); 
 }
Minim minim;
AudioSample sound;
void setup(){
  minim = new Minim (this);
  sound = minim.loadSample("Drop.wav", 128);
  size(500,500);
  
} 

void draw(){
  background(100,0,100);
  fill(0,0,255); 
fill(100,0,0);
textSize(16);
text("Score: " + score,20,20);
if( score>=25){
textSize(16);
text("You win", 250,250 );
}else{
   y+=8;
  ellipse(x,y,25,25);
  if(y>=500){
   checkCatch(x);
   x = (int) random(500);
   y=10;
   sound.trigger();
 }
}

rect(mouseX,400, 50,100);
}

