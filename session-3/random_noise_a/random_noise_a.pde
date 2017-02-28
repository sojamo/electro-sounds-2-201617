float noiseScale = 0.002;

void draw() {
  background(0);
  
  randomSeed(100);
  noiseScale += 0.001;
  for (int x=0; x < width; x++) {
    for (int y=0; y < height; y++) {
      
      if(mousePressed) {
        stroke(random(0,255));
      } else {
        
      float noiseVal = noise((mouseX+x)*noiseScale, (mouseY+y)*noiseScale);
      stroke(noiseVal*255);
      }
      point(x, y);
    }
  }
}

void keyPressed() {
  noiseScale = 0.002;
}