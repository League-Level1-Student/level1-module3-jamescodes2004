int frogDistance = 50;
int frogX = 400;
int frogY = 550;
void setup(){
  size(800,600);
}
void draw(){
 background(50,50,50);
 fill(50,100,50);
 ellipse(frogX, frogY, 50, 20);
}
void keyPressed()
{
    if(key == CODED){
        if(keyCode == UP)
        {
            //Frog Y position goes up
        }
        else if(keyCode == DOWN)
        {
            //Frog Y position goes down 
        }
        else if(keyCode == RIGHT)
        {
            //Frog X position goes right
        }
        else if(keyCode == LEFT)
        {
            //Frog X position goes left
        }
    }
}
