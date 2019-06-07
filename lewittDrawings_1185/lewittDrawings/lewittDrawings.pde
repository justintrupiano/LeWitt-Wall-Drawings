//https://massmoca.org/event/walldrawing1185/

// Scribbles: Inverted curve (horizontal).


void setup(){
  // size(3840, 3840);
  size(1000, 1000);
  background(245);
  noFill();
  stroke(0, 10);
  // stroke(0);


  // scribble(width/2, height/2);
}

void draw(){
  for (int i = 0; i < 1000; i++){
    scribble(random(-100, width+100), randomGaussian()*height*0.20);
    scribble(random(-100, width+100), height-(randomGaussian()*height*0.20));
  }


}

void scribble(float x, float y){
  PVector dir;
  PVector thisPoint;

  thisPoint = new PVector(x, y);
  dir = new PVector(random(-1, 1), random(-1, 1));

  beginShape();
  for (int i = 0; i < 20; i++){
    dir.add(new PVector(random(-1, 1), random(-1, 1)));
    thisPoint.add(dir);
    vertex(thisPoint.x, thisPoint.y);
  }
  endShape();
}

void mousePressed(){
  // save("testingOutput_" + frameCount + ".png");
  background(245);
  scribble(width/2, height/2);
}
