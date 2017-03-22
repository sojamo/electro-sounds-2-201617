

float noiseScale = 0.2;

void setup() {
  size(960,540);
  background(0);
}


void draw() {
  
  fill(0,10);
  rect(0,0,width,height);
  float vx = mousePressed ? mouseX*0.1:sin(frameCount*0.01)*5;
  float vy = mousePressed ? mouseY*0.1:sin(frameCount*0.01)*5;
  ArrayList<PVector> noiseList = new ArrayList();
  for (int x=0; x < 20; x++) {
    for (int y=0; y < 20; y++) {
      float noiseVal = noise((vx+x)*noiseScale, (vy+y)*noiseScale);
      noiseList.add(new PVector(x,y,map(noiseVal, 0,1,0,TWO_PI)));
    }
  }
  
  stroke(255,100);
  for(PVector v:noiseList) {
    pushMatrix();
    translate(v.x*40,v.y*40);
    rotate(v.z);
    line(0,0,20,1);
    popMatrix();
  }
  
}

void keyPressed() {
  noiseScale = 0.002;
}