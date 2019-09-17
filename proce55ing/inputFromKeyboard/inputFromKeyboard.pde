void setup() {
  size(250,250);
  background(0);
  fill(255);
}

void draw() {

}

//
void keyPressed() {
  textSize(100);
  fill(random(255));
  text(key,random(250),random(255));
}
