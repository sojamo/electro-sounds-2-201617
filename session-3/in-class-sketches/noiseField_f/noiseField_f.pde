import controlP5.*;

float noiseStrength = 10, noiseScale = 300;
float overlayAlpha = 10, speedScale = 0.1;
ArrayList<Agent> agents;
float flowX = 0.1, flowY = 0;
ControlP5 cp5;

void setup() {
  size(960, 540, P2D);
  smooth(8);
  cp5 = new ControlP5(this);
  cp5.addSlider("noiseStrength").setRange(1, 100).setPosition(20, 20).setSize(200, 20);
  cp5.addSlider("noiseScale").setRange(1, 500).setPosition(20, 50).setSize(200, 20);
  cp5.addSlider("overlayAlpha").setRange(1, 128).setPosition(20, 80).setSize(200, 20);
  cp5.addSlider("speedScale").setRange(0.01, 4).setPosition(20, 110).setSize(200, 20);
  cp5.addBang("randomize").setPosition(300, 20).setSize(50, 50);
  background(0);
  agents = new ArrayList();

  for (int i=0; i<50000; i++) {
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
  
  flowX += 0.01;
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
  float lifespan = 50;
  float age;
  float ageing = 1;
  Agent() {
    current = new PVector(random(width), random(height));
    previous = new PVector().set(current);
    
    col = color(255);//color(random(255), random(255), random(255));
    randomize();
  }

  void update() {
    int margin = 40;
    float angle = noise(flowX + current.x/noiseScale, flowY + current.y/noiseScale) * noiseStrength;
    current.x += cos(angle) * speed * speedScale;
    current.y += sin(angle) * speed * speedScale;
    if (current.x<-margin || current.x>width+margin || current.y<-margin || current.y>height+margin) {
      randomize();
    }
    if((age+=ageing)>lifespan) {
      randomize();
    }
    render();
    previous.set(current);
  }
  
  void render() {
    stroke(col,130);
    line(previous.x, previous.y, current.x, current.y);  
  }

  void randomize() {
    age = 0;
    lifespan = random(50,100);
    // col = random(0,1)>0.5 ? color(255):color(0);
    speed = random(1, 4);
    current.x = random(width);
    current.y = random(height);
    previous.set(current);
  }
}