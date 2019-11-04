PImage img;

void setup() {
  size(800, 600, P3D);
  img = loadImage("minifig.jpg");
  imageMode(CENTER);
}

void draw() {
  background(200);
  fill(255);
  
  //mapping mouse coords to angles to allow us to rotate
  //the world around, so we can see 3d things at different
  //angles
  
  float angle = map(mouseX, 0, width, 0, TWO_PI);
  float angle2 = map(mouseY, 0, height, 0, TWO_PI);
  
  pushMatrix(); //begins a temporary transformations
  translate(width/2, height/2);
  rotateX(angle2);
  rotateY(angle);
  
  //Uncomment one or more of the following lines of code to 
  //see different things projected in 3d:

  //image(img, 0, 0, width/2, height/2);
  //grid();
  //box(100, 50, 200); //width, height, depth
  //sphere(100);

  popMatrix();  //ends the temporary transformations
  
}


void grid() {
  
   int i = -width;
   while (i < width) {
      line (-height, i, height, i); 
      i = i + 20;
   }
   
   int j = -height;
   while (j < height) {
      line (j, -width, j, width);
      j = j + 20;
   } 
}
