//https://massmoca.org/event/walldrawing130/

// Grid and arcs from four corners. (ACG 103)


void setup(){
  // size(3840, 3840);
  size(1000, 1000);
  background(245);
  noFill();
  stroke(0, 127);
  drawCircles(0, height);
  drawCircles(width, 0);
  drawCircles(width, height);
  drawCircles(0, 0);
  drawCircles(width/2, height/2);

}

float spacing = (dist(0,0,width/2, height/2))/5;

void drawCircles(int x, int y){
  for (int i = 0; i < width/2; i++){
    ellipse(x, y, i*spacing, i*spacing);
  }
}

void mousePressed(){
  save("testingOutput_" + frameCount + ".png");
}
