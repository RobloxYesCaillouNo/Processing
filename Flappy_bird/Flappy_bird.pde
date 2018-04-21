int lowerY;
int pipeGap = 170;
void setup(){
  size(1500,850);
}
int upperPipeHight = (int) random(50, 750);
int x = 200;
int y = 500;
void draw(){
background(50, 192, 255);
fill(102, 229, 21);
stroke(20, 205, 56);
y += 8;
ellipse(x, y, 80, 80);
int birdYVelocity = 30;
int gravity = 1;
if (mousePressed){
y -= 30;
}
fill(10, 204, 45);
rect(pipeX, 0, 85, upperPipeHight);
pipeX -= 10;
teleportPipes();
fill(10, 204, 45);
lowerY = 0 + upperPipeHight + pipeGap;
rect(pipeX, lowerY, 85, 1000);
}
int pipeX = 1400; 
void teleportPipes(){
if(pipeX == 0){
pipeX = 1300;
upperPipeHight = (int) random(50, 750);
}

}
/*void mouseClicked(){
for(int temp = 0; temp< 5; temp++){
  y-=15;
}
}*/