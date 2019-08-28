int frogDistance = 50;
int frogX = 400;
int frogY = 550;
 Car a = new Car(0,0, 5);
  Car b = new Car(0,100, 4);
   Car c = new Car(0,200, 6);
    Car d = new Car(0,300, 3);
     Car e = new Car(0,400, 2);
      Car f = new Car(0,500, 7);
void setup(){
  size(800,600);

}
void draw(){
 background(50,50,50);
 fill(50,100,50);
 ellipse(frogX, frogY, 50, 20);
   intersects(a);

 a.display();
 a.carSpeedClass();
  b.display();
 b.carSpeedClass();
  c.display();
 c.carSpeedClass();
  d.display();
 d.carSpeedClass();
  e.display();
 e.carSpeedClass();
  f.display();
 f.carSpeedClass();
}
void keyPressed()
{
    if(key == CODED){
        if(keyCode == UP)
        {
          if (frogY>10)
          frogY-=20;

            //Frog Y position goes up
        }
        else if(keyCode == DOWN)
        {
           if (frogY<590)
          frogY+=20;

          //Frog Y position goes down 
        }
        else if(keyCode == RIGHT)
        {
          if (frogX<771)
          frogX+=20;
            //Frog X position goes right
        }
        else if(keyCode == LEFT)
        {
                    if (frogX>29)
          frogX-=20;

          
            //Frog X position goes left
        }
    }
}

boolean intersects(Car a) {
 if ((frogY > a.getY() && frogY < a.getY()+30) &&
                (frogX > a.getX() && frogX < a.getX()+30)) {
      println("You've been hit!");
                  return true;

  }
 else  {
  return false;
 }
}
