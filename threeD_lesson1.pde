void setup() {
  size(800, 600, P3D);
}

void draw() {
  background(200);

  

  noFill();
  pushMatrix();
  translate(width/2 , mouseX);
  float angle = map(mouseY, 0, height, 0, TWO_PI);
  rotateX(angle);
  //box(50);  
  drawGrid();
  popMatrix();
}

void drawGrid() {
  for (int x = -width; x < width; x = x + 20) {
    line(x, -height, x, height);
  }

  for (int y = -height; y < height; y = y + 20) {
    line (-width, y, width, y);
  }
}
