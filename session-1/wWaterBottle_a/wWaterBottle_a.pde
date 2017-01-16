
/* 16.01.2017
 * In class demonstation of variables, functions, 
 * conditionals and loops based on the example of 
 * drinking from a water bottle.
 */


int waterValue = 80;

void setup() {
  size(400, 400);
}

void draw() {
  noStroke();
  background(200);
  fill(150);
  rect(100, 100, 40, 100);
  fill(0, 255, 0);
  rect(105, 200, 30, -waterValue);


  if (waterValue==0) {
    fill(255, 0, 0);
  } else if (waterValue<40) {
    fill(255, 128, 0);
  } else if (waterValue==100) {
    fill(0, 128, 255);
  }
  if (waterValue==100 || waterValue<40) {
    for (int i=0; 
      i<20; 
      i = i + 1) {
      float n = i/20.0;
      ellipse(250 + sin(n * TWO_PI)*50, 
              100 + cos(n * TWO_PI)*50, 
              frameCount%20, 
              frameCount%20);
    }
  }
}

void drinkWater(int theValue) {
  waterValue = waterValue - theValue;
  if (waterValue<=0) {
    waterValue = 0;
  }
}

void addWater(int theValue) {
  waterValue = waterValue + theValue;
  if (waterValue>=100) {
    waterValue = 100;
  }
}

void mousePressed() {
  drinkWater(20);
}

void keyPressed() {
  addWater(20);
}