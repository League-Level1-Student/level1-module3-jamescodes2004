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
boolean alive = true;
int score = 0;
void setup() {
  size(1200, 800);
}
void draw() {
  if (intersectsPipes() || birdY>700) {
    alive=false;
    textSize(100);
  }

  if (alive==true) {
    background(149, 211, 234);
    fill(209, 44, 44);
    stroke(209, 44, 44);

    fill(44, 255, 18);
    rect(0, 700, 1200, 100);

    fill(255, 0, 0);
    ellipse(birdX, birdY, 20, 20);
    birdY++;
    if (mousePressed) {
      birdY-=10;
      gravity=1;
    }
    if (birdX==pipeX)
    score = score + 1;
    fill(0,0,0);
    textSize(15);
    text("Your score is " + score,  1000, 50);
    fill(42, 165, 61);
    rect(pipeX, upperPipeY, pipeWidth, upperPipeHeight);
    rect(pipeX, lowerPipeY, pipeWidth, lowerPipeHeight);
    pipeX-=5;
    stayPipeX-=5;

    if (mousePressed==false) {
      gravity = gravity *1.05;
      birdY+=gravity;
    }
    if (pipeX==0) {



      pipeX=1200;

      int stayUpperPipeHeight = upperPipeHeight;
      int staylowerPipeY = lowerPipeY;
      upperPipeHeight = (int) random(100, 600);
      lowerPipeY=100+upperPipeHeight;
      fill(42, 165, 61);
      rect(stayPipeX, upperPipeY, pipeWidth, stayUpperPipeHeight);
      rect(stayPipeX, staylowerPipeY, pipeWidth, lowerPipeHeight);
      
    }
  }else {
      background(0, 0, 0);
      fill(255, 0, 0);
      textSize(50);
      text("Game Over", 500, 400);
      textSize(30);
      text("Your score was " + score, 500, 500);
    }
  }



boolean intersectsPipes() { 
  if (birdY < upperPipeHeight && birdX > pipeX && birdX < (pipeX+pipeWidth)) {
    return true;
  } else if (birdY>lowerPipeY && birdX > pipeX && birdX < (pipeX+pipeWidth)) {
    return true;
  } else { 
    return false;
  }
}
