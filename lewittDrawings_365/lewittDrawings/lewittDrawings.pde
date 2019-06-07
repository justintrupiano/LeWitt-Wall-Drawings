//https://massmoca.org/event/walldrawing56/

// A square is divided horizontally and vertically into four equal parts,
// each with lines in four directions superimposed progressively.

// 4 kinds of lines:
// Vertical
// Horizontal
// Diagonal Left
// Diagonal Right
// int[] nums = new int[4];



void setup(){
  size(3840, 3840);
  // size(1000, 1000);
  background(245);





}

void draw(){
  for(int i = 0; i < 100; i++){
    stroke(0, random(5));

    pushMatrix();
    translate(0, 0);
    drawPoints();
    popMatrix();

    pushMatrix();
    translate(width/2, 0);
    drawPoints();
    drawPoints();
    popMatrix();


    pushMatrix();
    translate(0, height/2);
    drawPoints();
    drawPoints();
    drawPoints();
    popMatrix();

    pushMatrix();
    translate(width/2, height/2);
    drawPoints();
    drawPoints();
    drawPoints();
    drawPoints();
    popMatrix();
  }
  save("testingOutput_" + frameCount + ".png");


}

void drawPoints(){
  for (int i = 0; i < 1000; i++){
    point(random(width/2), random(height/2));
  }
}

void mousePressed(){
  save("testingOutput_" + frameCount + ".png");
}
