 Car name = new Car(150,2,200,200);
 Car nam = new Car(200,5,0,10);
Car na = new Car(225,-5,0,80);
int x=200;
int y=350;
void draw(){
   background(200,162,200);
  fill(0,180,0);
  ellipse(x,y,50,50);
  Outside();
  name.display();
  name.move();
  nam.display();
  nam.move();
  na.display();
  na.move();
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
class Car{
 int size;
int speed;
int x;
int y;
Car(int size,int speed,int x,int y){
  this.size=size; this.speed=speed; this.x=x; this.y=y;
 
 

}

void display(){
fill(0,255,0);
rect(x,y,size,50);
}
void move(){
  x-=speed;
  if(x<=0){
    x=399;
  }
  if(x>=400){
    x=0;
  }
}
int getX(){
  return x;
}
}

  
 
  
  

  
