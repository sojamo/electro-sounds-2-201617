import controlP5.*;

float noiseStrength = 10, noiseScale = 300;
float overlayAlpha = 10;
ArrayList<Agent> agents;

ControlP5 cp5;

void setup() {
  size(960, 540, P2D);

  cp5 = new ControlP5(this);
  cp5.addSlider("noiseStrength").setRange(1, 100).setPosition(20, 20).setSize(200, 20);
  cp5.addSlider("noiseScale").setRange(1, 500).setPosition(20, 50).setSize(200, 20);
  cp5.addSlider("overlayAlpha").setRange(1, 128).setPosition(20, 80).setSize(200, 20);
  cp5.addBang("randomize").setPosition(300, 20).setSize(50, 50);
  
  background(0);
  agents = new ArrayList();

  for (int i=0; i<10000; i++) {
    agents.add(new Agent());
  }
}


void draw() {
  noStroke();
  fill(0, overlayAlpha);
  rect(0, 0, width, height);
  strokeWeight(1);

  for (Agent agent : agents) {
    agent.update();
  }

  // noiseStrength += (10 - noiseStrength)*0.1;
}

void randomize() {
  for (Agent agent : agents) {
    agent.randomize();
  }
}

class Agent {
  PVector current, previous;
  float speed;
  int col;

  Agent() {
    current = new PVector(random(width), random(height));
    previous = new PVector().set(current);
    speed = random(1, 4);
    col = color(255);//color(random(255), random(255), random(255));
  }

  void update() {
    float angle = noise(current.x/noiseScale, current.y/noiseScale) * noiseStrength;
    current.x += cos(angle) * speed;
    current.y += sin(angle) * speed;
    if (current.x<0 || current.x>width || current.y<0 || current.y>height) {
      randomize();
    }
    stroke(col, 200);

    line(previous.x, previous.y, current.x, current.y);
    previous.set(current);
  }

  void randomize() {
    current.x = random(width);
    current.y = random(height);
    previous.set(current);
  }
}