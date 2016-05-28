//1. Make a variable to hold the X co-ordinate of the dot, and set it to something.
int Dot=80;


void setup() {
  size(1920,1080);
}

void draw() {
  //3. make it a nice color
 fill(75,255,65);
  //4. if the mouse is pressed...
     if(mousePressed){
   Dot=Dot+5;
//5. ... change the X co-ordinate so that the dot moves to the right
     }
  //2. Draw an ellipse of height and width 100. Make sure to use your variable for the X position.
  ellipse(Dot,71,100,100);
//6. Make your dot move really fast so that it can win the race (you have to figure out what part of your code to change)
 if(Dot==1000){  
   playSound();
 }
 //7. Use this method to play a ding when your dot crosses the finish line. 
}


import ddf.minim.*;
void playSound(){
boolean soundPlayed = false;
  if (!soundPlayed) {// Copyright Wintriss Technical Schools 2013
    Minim minim = new Minim(this);        
    AudioSample sound = minim.loadSample("ding.wav");
    sound.trigger();
    soundPlayed = true;
  }
}

