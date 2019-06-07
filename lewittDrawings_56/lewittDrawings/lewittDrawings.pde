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
  stroke(0, 10);

  for (int i = 0; i < 10000; i++){
    pushMatrix();
    translate(0, 0);
    drawVertical();
    popMatrix();

    pushMatrix();
    translate(width/2, 0);

    drawVertical();
    drawHorizontal();
    popMatrix();


    pushMatrix();
    translate(0, height/2);
    drawVertical();
    drawHorizontal();
    drawDiagonalRight();
    popMatrix();

    pushMatrix();
    translate(width/2, height/2);
    drawVertical();
    drawHorizontal();
    drawDiagonalRight();
    drawDiagonalLeft();
    popMatrix();
  }


}


void drawVertical(){
  int x = int(random(width/2));
  line(x, 0, x, height/2);
}

void drawHorizontal(){
  int y = int(random(height/2));
  line(0, y, width/2, y);
}

void drawDiagonalLeft(){
  int x = int(random(width/2));
  if (random(1) > 0.5) {
      line(x, 0, height/2, (height/2)-x);
    }
  else{
      line(0, x, (width/2)-x, height/2);
    }
}

void drawDiagonalRight(){
  int y = int(random(height/2));
  if (random(1) > 0.5) {
      line(y, 0, 0, y);
    }
  else{
      line(width/2, y, y, width/2);
    }
}



void mousePressed(){
  save("testingOutput_" + frameCount + ".png");
}
