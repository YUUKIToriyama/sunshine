void setup() {
  size(250,250);
  background(0);
  fill(255);
  textSize(100);
}

void draw() {

}

String str = "";
void keyPressed() {
  if (key == DELETE) {
    str = "";
    setup();
  } else if (key != ENTER) {
    str = str + key;
  } else {
    text(str, width/2, height/2);
  }
}
