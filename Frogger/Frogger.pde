  
int x=200;
int y=350;
void draw(){
   background(200,162,200);
  fill(0,180,0);
  ellipse(x,y,50,50);
  Outside();
}
  
  void setup(){
size(400,400);  
}
void keyPressed()
{
  if(key == CODED){
      if(keyCode == UP)
      {
      //Frog Y position goes up
      y-=35;
      }
      else if(keyCode == DOWN)
      {
        //Frog Y position goes down 
        y+=35;
      }
      else if(keyCode == RIGHT)
      {
       //Frog X position goes right
       x+=35;
      }
      else if(keyCode == LEFT)
      {
        //Frog X position goes left
        x-=35;
        
      }
   }
   
}
void Outside(){
  if(x<0){
    x=25;
  }
  if(y>375){
    y=375;
  }
    if(x>375){
      x=375;
    }
    if(y<0){
      y=25;
    }
    
  

}
class car{
 int size;
int speed;
int x;
int y;
car(int x,)
  

}

  
 
  
  

  
