void setup() {
  size(600, 600);
  rectMode(CENTER);
  noFill();
}

void draw() {
  background(10);
  translate(width/2, height/2);

  int layers = 60;      //number of shapes
  float baseSize = 300; //starting size

  for (int i = 0; i < layers; i++) {
    pushMatrix();
    //create depth effect
    float scaleFactor = map(i, 0, layers, 1, 0.1);
    scale(scaleFactor);
    //rotation 
    rotate(radians(frameCount * 0.5 + i * 5));
    //color gradient
    stroke(100 + i * 2, 150, 255 - i * 3);
    //draw square
    rect(0, 0, baseSize, baseSize);
    popMatrix();
  }
}
