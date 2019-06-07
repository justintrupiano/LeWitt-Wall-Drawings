//https://massmoca.org/event/walldrawing11/

// A wall divided horizontally and vertically into four equal parts.
// Within each part, three of the four kinds of lines are superimposed.

// 4 kinds of lines:
// Vertical
// Horizontal
// Diagonal Left
// Diagonal Right
// int[] nums = new int[4];

int[] nums = new int[4];

int[] q1 = new int[3];
int[] q2 = new int[3];
int[] q3 = new int[3];
int[] q4 = new int[3];

void setup(){
  size(3840, 3840);
  background(245);
  stroke(0, 10);

  for (int i = 0; i < 4; i++){
    nums[i] = i;
  }
  q1 = threeRandom(nums);
  q2 = threeRandom(nums);
  q3 = threeRandom(nums);
  q4 = threeRandom(nums);
}


int[] threeRandom(int[] arr){
  int[] returnArr = new int[3];
  for (int i = 0; i < arr.length; i++){
    int randInd = int(random(arr.length-1));
    int temp = arr[i];
    arr[i] = arr[randInd];
    arr[randInd] = temp;
  }

  for (int i = 0; i < 3; i++){
    returnArr[i] = arr[i];
  }
  return returnArr;

}


void draw(){
  for (int i = 0; i < 50; i++){
    pushMatrix();
    translate(0, 0);
    drawLine(q1);
    popMatrix();

    pushMatrix();
    translate(0, height/2);
    drawLine(q2);
    popMatrix();


    pushMatrix();
    translate(width/2, 0);
    drawLine(q3);
    popMatrix();

    pushMatrix();
    translate(width/2, height/2);
    drawLine(q4);
    popMatrix();
  }


  // save("./frames/" + str(frameCount) + ".png");

}



void drawLine(int[] lineArray){

    int lineType = lineArray[round(random(lineArray.length-1))];
    int x = round(random(width/2));
    int y = round(random(height/2));
    if (lineType == 0){
      line(0, y, width/2, y);                       // Horizontal
    }
    else if (lineType == 1){
      line(x, 0, x, height/2);                      // Vertical
    }
    if (lineType == 2){       // Diagonal Right
      if (random(1) > 0.5) {
          line(y, 0, 0, y);
        }
      else{
          line(width/2, y, y, width/2);
        }
    }
    else if (lineType == 3){       // Diagonal Right
      if (random(1) > 0.5) {
          line(x, 0, height/2, (height/2)-x);
        }
      else{
          line(0, x, (width/2)-x, height/2);
        }
    }
}


void mousePressed(){
  save("testingOutput_" + frameCount + ".png");
}
