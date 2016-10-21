
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
void setup(){
  size(500,500);
  
} 

void draw(){
  background(100,0,100);
  fill(0,0,255); 
 y++;
y++;
y++;
y++;
y++;
y++;
y++;
fill(100,0,0);
textSize(16);
text("Score: " + score,20,20);
if( score>=30){
textSize(16);
text("You win", 250,250 );
}else{
  ellipse(x,y,25,25);
}

rect(mouseX,400, 50,50);
 if(y>=500){
   checkCatch(x);
   x = (int) random(500);
   y=10;
 }
}

