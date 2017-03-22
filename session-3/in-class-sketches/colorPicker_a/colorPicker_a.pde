PImage img;


void setup() {
  size(960, 540);
  /* load  reference image, once */
  img = loadImage("colors-3.jpg");
  noStroke();
}

void draw() {

  /* define x and y */
  int x = frameCount%img.width;
  int y = mouseY;

  /* use x and y to select a the rgb color of a pixel from img */
  int c1 = img.get(x, y);

  /* apply color to the background */
  background(c1);

  int c2 = img.get(img.width-x, y);

  fill(c2);
  rect(40, 40, width-80, height-80);

  if (mousePressed) {
    image(img, 0, 0);
    fill(255);
    ellipse(x, y, 4, 4);
    ellipse(img.width-x, y, 4, 4);
  }
}