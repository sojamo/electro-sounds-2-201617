ArrayList<Spaceship> spaceships;

void setup() {
  size(960, 540, P3D);
  noStroke();
  smooth(8);
  spaceships = new ArrayList();
  for (int i=0; i<1000; i++) {
    spaceships.add(new Spaceship());
  }
}

void draw() {
  background(0);
  fill(255);
  pushMatrix();
  translate(width/2, height/2);
  // rotate(frameCount*0.01);
  for (Spaceship s : spaceships) {
    s.render();
    s.update();
  }
  popMatrix();

}


class Spaceship {
  PVector pos;
  float speed;

  Spaceship() {
    reset();
  }

  void render() { 
    pushMatrix();
    translate(pos.x, pos.y, pos.z);
    box(1,1,100);
    popMatrix();
  }


  void update() {
    pos.z = pos.z + speed * map(mouseX, 0, width, 1, 100);
    if (pos.z>500) {
      reset();
    }
  }

  void reset() {
    speed = random(1, 4);
    pos = new PVector(random(-200, 200), random(-200, 200), -2000);
  }
}