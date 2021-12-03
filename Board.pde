

//void setup(){
//  size(631,541);
//  background(0);
//}
//snake Snake = new snake();

//public void draw(){
//  background(0);
//  Snake.move(Snake.getDir());

//  Snake.disp();
//  if(Snake.getX()== width||Snake.getX()==0){
//      background(244,244,0);
//    Snake.setLive(false);    
//  }
//    if(Snake.getY()==height||Snake.getY()==0){
//      background(244,244,0);
//    Snake.setLive(false);  
//}
//}

//void keyPressed(){
//  if(key == 'd'){
//    Snake.setDir(1);

//  }

//    else if (key== 's'){
//          Snake.setDir(2);

//    }
//    else if (key== 'w'){
//      Snake.setDir(0);

//    }

//  else if (key== 'a'){
//    background(0);
//      Snake.setDir(3);
//}
//}


//add score and you die with score!

snake Snake = new snake();
Apple apple = new Apple();

int toSet = 1;
int appscore = 0;
int startTime = millis();
boolean start = false;
boolean exist = false;
boolean grid = false;
int size = 30;
int cols = 20;
int rows = 20;
int[][] gridi = new int[30][30];
PImage img;
public void setup() {
  size(600, 600);
  background(125);

  spawnApple();
  ArrayList<Integer> ar = new ArrayList<Integer>();
  ar.add(1);
  ar.add(2);
  ar.add(3);
  println(ar.toString());

  img = loadImage("apple2.png");
  stroke(255);
  fill(255);
  rect(width/2-150, height/2-100, 300, 140);

  textSize(100);
  fill(0);
  text("Start", width/2-110, height/2);
}


void mousePressed() {
  if (start==false) {
    if (mouseY > height/2-100 && mouseY <height+40) {
      if (mouseX > width/2-150 && mouseX < width/2+210);
      background(125);
      start = true;
    }
  }
}



public void draw() {
  if (start == true) {
    //if (grid==false) {
    //  for (int i = 0; i < cols; i++) {
    //    // Begin loop for rows
    //    for (int j = 0; j < rows; j++) {

    //      // Scaling up to draw a rectangle at (x,y)
    //      int x = i*30;
    //      int y = j*30;
    //      fill(0);
    //      stroke(255);
    //      // For every column and row, a rectangle is drawn at an (x,y) location scaled and sized by videoScale.
    //      rect(x, y, 30, 30);
    //      grid  = true;
    //    }
    //  }
    //}
    if (millis() >= startTime + 150) {
      Snake.setDir(toSet);
      PVector new_loc = Snake.move(Snake.getDir()); 
      if (new_loc.x < 0 || new_loc.y < 0 || new_loc.x >= rows || new_loc.y >= cols) {
        exit();
      } else {
          if (gridi[(int)new_loc.x][(int)new_loc.y] == 1 && Snake.getList().contains(new PVector(new_loc.x, new_loc.y, 0))) {
            gridi[(int)new_loc.x][(int)new_loc.y] = 0;
            Snake.gain = true;
            spawnApple();
            appscore++;
          }
      }
      startTime = millis();
      // print(millis());
    }
    if (abs(Snake.getLocX()-apple.getLocX())<30)
      if (abs(Snake.getLocY()-apple.getLocY())<30)
      {
        apple.relocate();
      }
    background(0);
    
    ArrayList<PVector> list = Snake.getList();
    //try {
    //  println(list.get(0).toString() + list.get(1).toString());
    //} catch(Exception e) {
    //  ;
    //}
    for(int x = 0; x < gridi.length; x++) {
      for (int y = 0; y < gridi[x].length; y++) {
        // noStroke();
        // println(list.toString());
        fill(0, 0, 0);
        rect(x * size, y * size, x * size + size, y * size + size);
        if (list.contains(new PVector(x, y, 0))) {
          fill(0, 75, 255);
          circle(x * size + size/2, y * size + size/2, size);
        } else if (gridi[x][y] == 1) {
          //fill(0,255,0);
          //rect(x , y-20,10,10);
          fill(255, 0, 0);
          circle(x * size + size/2, y * size + size/2, size);
        }
      }
    }
    
    //for (int i = 0; i < cols; i++) {
    //  // Begin loop for rows
    //  for (int j = 0; j < rows; j++) {

    //    // Scaling up to draw a rectangle at (x,y)
    //    int x = i*30;
    //    int y = j*30;
    //    fill(0);
    //    stroke(255);
    //    // For every column and row, a rectangle is drawn at an (x,y) location scaled and sized by videoScale.
    //    rect(x, y, 30, 30);
    //    grid  = true;
    //  }
    //}
    //fill(0);
    //// Snake.disp();
    //apple.display();
    //if (Snake.getX()>= width||Snake.getX()<=0) {
    //  background(244, 244, 0);
    //  Snake.setLive(false);    
    //  text("You Die!", width/2-180, height/2);
    //}
    //if (Snake.getY()>=height||Snake.getY()<=0) {
    //  background(244, 244, 0);
    //  Snake.setLive(false);  
    //  text("You Die!", width/2-180, height/2);
    //}
  }
}

void spawnApple() {
  while (true) {
    PVector new_apple_loc = new PVector((int)random(0, rows), (int)random(0, cols), 0);
    if (!Snake.getList().contains(new_apple_loc)) {
      println(new_apple_loc);
      gridi[(int)new_apple_loc.x][(int)new_apple_loc.y] = 1;
      break;
    }
  }
}

void keyPressed() {
  if ((key == 'd'|| key == 'D') && Snake.getDir() != 3) {
    toSet = 1;
  } else if ((key== 's'|| key == 'S') && Snake.getDir() != 0) {
    toSet = 2;
  } else if ((key== 'w'|| key == 'W') && Snake.getDir() != 2) {
    toSet = 0;
  } else if ((key== 'a' || key == 'A') && Snake.getDir() != 1) {
    toSet = 3;
  }
}
