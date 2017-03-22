float noiseStrength = 10, noiseScale = 300;
ArrayList<Agent> agents;

void setup() {
  size(960,540, P2D);
  background(0);
  agents = new ArrayList();
  
  for(int i=0;i<1000;i++) {
    agents.add(new Agent());
  }
  
}


void draw() {
  noStroke();
  fill(0,4);
  rect(0,0,width,height);
  strokeWeight(1);
  
  for(Agent agent:agents) {
    agent.update();
  }
  
  noiseStrength += (10 - noiseStrength)*0.1;
}

void keyPressed() {
noiseStrength = 1000;
}


class Agent {
  PVector current, previous;
  float speed;
  int col;
  
  Agent() {
    current = new PVector(random(width), random(height));
    previous = new PVector().set(current);
    speed = random(1,4);
    col = color(random(255), random(255), random(255));
  }
  
  void update() {
    float angle = noise(current.x/noiseScale, current.y/noiseScale) * noiseStrength;
    current.x += cos(angle) * speed;
    current.y += sin(angle) * speed;
    if(current.x<0 || current.x>width || current.y<0 || current.y>height) {
      current.x = random(width);
      current.y = random(height);
      previous.set(current);
    }
    stroke(col,200);
    
    line(previous.x, previous.y, current.x, current.y);
    previous.set(current);
  }
}