/* Randomness */

import java.util.Random;

int t = 0;

void setup() {
  size(500,500);
  background(0,0,0);
  frameRate(10);
}

void draw() {
  Random r = new Random();
  
  fill(r.nextInt(255),r.nextInt(255),r.nextInt(255));
  ellipseMode(CENTER);
  ellipse(r.nextInt(500),r.nextInt(500),50,50);
  fill(0,0,0);
  ellipse(r.nextInt(500),r.nextInt(500),50,50);
}
