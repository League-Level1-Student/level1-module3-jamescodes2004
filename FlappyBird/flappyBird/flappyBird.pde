  int birdX=100;
  int birdY=500;
  int birdYVelocity = 30;
  double gravity = 1;
  
  int pipeX = 400;
  int upperPipeY = 0;
  int lowerPipeY = 700;
  
    int pipeWidth = 100;
  int upperPipeHeight = 600;
  int lowerPipeHeight = 1000;
   int stayPipeX=350;
void setup(){
size(1200,800);




}
void draw(){
  background(149, 211, 234);
fill(209, 44, 44);
stroke(209, 44, 44);

ellipse(birdX, birdY, 20, 20);
birdY++;
if (mousePressed){
   birdY-=10;
   gravity=1;
}
fill(42, 165,61);
rect(pipeX, upperPipeY,  pipeWidth, upperPipeHeight);
rect(pipeX, lowerPipeY,  pipeWidth, lowerPipeHeight);
pipeX-=5;
stayPipeX-=5;

if (mousePressed==false){
  gravity = gravity *1.05;
  birdY+=gravity;
  
}
if(pipeX==0){
 


 pipeX=1200;

 int stayUpperPipeHeight = upperPipeHeight;
 int staylowerPipeY = lowerPipeY;
upperPipeHeight = (int) random(100, 600);
lowerPipeY=100+upperPipeHeight;

  rect(stayPipeX, upperPipeY,  pipeWidth, stayUpperPipeHeight);
rect(stayPipeX, staylowerPipeY,  pipeWidth, lowerPipeHeight);}
}

  
