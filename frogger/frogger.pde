int x = 300;
int y = 600;

void setup(){
size(600,666); 
}
void draw(){
background(102,10,255);
fill(250, 102, 5);
ellipse(x, y, 50, 50);
Cars cars = new Cars(30,100);
Cars cars0 = new Cars(550, 200);
Cars cars1 = new Cars(30, 300);
Cars cars2 = new Cars(550,420);
Cars cars3 = new Cars(30,501);
Cars cars4 = new Cars(30,600);
cars.display();
cars0.display();
cars1.display();
cars2.display();
cars3.display();
cars4.display();
}

void keyPressed(){


      if(key == CODED){
            if(keyCode == UP)
            {
                  //Frog Y position goes up
        if(y>0){
            y -= 50;
        }
        }
            else if(keyCode == DOWN)
            {
                  //Frog Y position goes down 
           
          if(y<650){
           y += 50;
          }
        }
            else if(keyCode == RIGHT)
            {
                  //Frog X position goes right
          if(x<600){
            x += 50;  
          }  
        }
            else if(keyCode == LEFT)
            {
                  //Frog X position goes left
           if(x>0){
            x -= 50;  
           }  
        }
      }


}

class Cars{
int x;
int y;
  
 public Cars(int x, int y){
this.x = x;
this.y = y;
}
void drive(){

  x -= 10;
}
void display() {
   print(this.x+ " test ");   
      this.x -= 25;
    
  fill(0,255,0);
      rect(x , y, 60, 50);
     
}
}