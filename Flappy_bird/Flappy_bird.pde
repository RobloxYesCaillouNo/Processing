int lowerY;
int pipeGap = 170;
int upperPipeHight = (int) random(50, 750);
int x = 200;
int y = 500;
int pipeX = 1400;
int birdYVelocity = 100;
int gravity = 8;
int pipeWidth = 80;
int lowerPipeTop;
int score = 0;
void setup(){
  size(1500,850);
}
void mousePressed(){
  for(int i = 0; i < birdYVelocity; i+=10){
y -= 13;
  }
}
void draw(){
background(50, 192, 255);
fill(102, 229, 21);
stroke(20, 205, 56);
ellipse(x, y, 60, 60);
if(intersectsPipes() || y<0 || y>850){
textSize(45);
fill(234, 21, 55);
  text("Game Over!!", 300, 500);
  textSize(50);
  fill(194, 182, 12);
  text("Your score: " +score, 420, 800);
}

else{
  fill(10, 204, 45);
rect(pipeX, 0, pipeWidth, upperPipeHight);
y += gravity;
pipeX -= 10;
teleportPipes();
fill(10, 204, 45);
lowerPipeTop = 0 + upperPipeHight + pipeGap;
rect(pipeX, lowerPipeTop, 85, 1000);
if (x == pipeX + 90){
score += 1;
}
}
}
boolean intersectsPipes() { 
     if (y < upperPipeHight && x > pipeX && x < (pipeX+pipeWidth)){
          return true; }
     else if (y>lowerPipeTop && x > pipeX && x < (pipeX+pipeWidth)) {
          return true; }
     else { return false; }
}
void teleportPipes(){
if(pipeX == 0){
pipeX = 1300;
upperPipeHight = (int) random(50, 750);
}
}