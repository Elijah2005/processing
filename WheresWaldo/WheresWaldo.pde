// 1. Find a really hard Where’s Waldo puzzle, save it, and drop it onto this sketch.
  
void setup() {
  PImage LOL = loadImage("LOL.jpg"); // 2. Change this to match your file name.
  size(LOL.width, LOL.height);
  image(LOL, 0, 0);
}

void draw() {
  // 3. Use this print statement to find out the coordinates of Waldo
   println("X:807 " + mouseX + " Y:233 " + mouseY); 

  // 4. If the mouse is on Waldo, print “Waldo found!”
if(mouseX>800 && mouseX<820 && mouseY>220 && mouseY<245){
  System.out.println("Waldo is found");
}
  // 5. If Waldo is found, also use the method below to play “Woohoo”
if(mousePressed){
  if(mouseX>800 && mouseX<820 && mouseY>220 && mouseY<245){
    playWoohoo();
  }
  else{
    playDoh();
  }
}
  // 6. If the mouse is pressed and they’re not on Waldo, play “Doh”

}

void playWoohoo() {
  woohoo.stop();
  woohoo.trigger();
}

void playDoh() {
  doh.stop();
  doh.trigger();
}


import ddf.minim.*;
Minim minim = new Minim(this);   
AudioSample doh = minim.loadSample("/Users/League/Google Drive/league-sounds/homer-doh.wav");
AudioSample woohoo = minim.loadSample("/Users/League/Google Drive/league-sounds/homer-woohoo.wav");


