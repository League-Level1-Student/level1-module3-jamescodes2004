public class Car{
  int carX;int carY;int carSpeed;
  int r = (int)random(10)+1;
  Car(int carX, int carY, int carSpeed){
  this.carX=carX;
  this.carY=carY;
  this.carSpeed=carSpeed;
}
void carSpeedClass(){
 this.carX=carX+carSpeed;
}
void display(){
  fill(0,255,0);
  rect(carX, carY, 30, 20);
  ellipse(carX+10, carY+25, 10, 10);
  ellipse(carX+20, carY+25, 10, 10);
  if (carX>900){
   carX=-50;
   this.carSpeed= (int)random(5)+5;
  }
}
int getX(){
  return carX;
}
int getY(){
  return carY;
}
int getSize(){
  return carX;
}
}
