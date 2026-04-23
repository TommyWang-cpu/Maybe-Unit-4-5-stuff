float t = 0;

void setup() {
  size(800, 600);
  noFill();
  strokeWeight(2);
}

void draw() {
  background(20, 30, 50);
  
  float spacing = 40;   // distance between waves
  float amplitude = 15; // wave height
  
  // nested loops to create repeating pattern
  for (int y = 0; y < height + spacing; y += spacing) {
    
    beginShape();
    
    for (int x = 0; x < width; x += 5) {
      
      // sine wave for smooth curves
      float offset = sin(radians(x * 2 + t + y)) * amplitude;
      
      // slight color variation based on row
      stroke(100 + y * 0.3, 150 + offset * 5, 255);
      
      vertex(x, y + offset);
    }
    
    endShape();
  }
  
  t += 2; // controls animation speed
}
