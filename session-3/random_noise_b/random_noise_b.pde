ArrayList<Line> lines;
float noiseScale = 0.002;
int NUM = 100;
void setup() {
  size(960, 540, P3D);
  smooth(8);
  pixelDensity(displayDensity());
  
  lines = new ArrayList();
  for (int x=0; x<NUM; x++) {
    for (int y=0; y<NUM; y++) {
      lines.add(new Line(x,y));
    }
  }
  
  strokeWeight(2);
}


void draw() {
  background(0);
  randomSeed(100);
  noiseScale += 0.00001;
  
  for (int x=0; x < NUM; x++) {
    for (int y=0; y < NUM; y++) {
      float value = 0;
      if (mousePressed) {
        value = (random(0, 255));
      } else {
        value = noise((mouseX+x)*noiseScale, (mouseY+y)*noiseScale,  0.02 ) * 255;
      }
      lines.get(x*NUM + y).setRadius(value);
    }
  }
  
  for(Line line:lines) {
    line.render();
  }
}


class Line {

  float x, y;
  float radius;
  Line(float theX, float theY) {
    x = theX;
    y = theY;
  }
  
  void setRadius(float theValue) {
    radius = map(theValue,0,255,-PI,PI);
  }
  void render() {
    float x0 = map(x, 0,NUM, 100, width-100);
    float y0 = map(y, 0,NUM, 100, height-100);
    pushMatrix();
    translate(x0,y0);
    rotate(radius);
    stroke(255, 18);
    line(0,0,200,0);
    popMatrix();
  }
}