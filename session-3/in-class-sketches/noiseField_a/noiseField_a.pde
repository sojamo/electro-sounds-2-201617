

float noiseScale = 0.2;

void setup() {
  size(960,540);
  background(0);
}


void draw() {
  
  fill(0,20);
  rect(0,0,width,height);
  
  ArrayList<PVector> noiseList = new ArrayList();
  for (int x=0; x < 20; x++) {
    for (int y=0; y < 20; y++) {
      float noiseVal = noise((mouseX+x)*noiseScale, (mouseY+y)*noiseScale);
      noiseList.add(new PVector(x,y,map(noiseVal, 0,1,-PI,PI)));
    }
  }
  
  stroke(255);
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