boolean start = false;
boolean exist = false;
boolean grid = false;
  int cols = 1000/30;
  int rows = 900/30;
public void setup(){
  size(631,541);
  background(125);
  

  
  stroke(255);
  fill(255);
  rect(width/2-150,height/2-100,300,140);
  
  textSize(100);
  fill(0);
  text("Start",width/2-110,height/2);
}

void mousePressed(){
  if(start==false){
    if(mouseY > height/2-100 && mouseY <height+40){
     if(mouseX > width/2-150 && mouseX < width/2+210);
        background(125);
        start = true;
  }
  }
}


public void draw(){
  if(start == true){
    if(grid==false){
  for (int i = 0; i < cols; i++) {
    // Begin loop for rows
    for (int j = 0; j < rows; j++) {

      // Scaling up to draw a rectangle at (x,y)
      int x = i*30;
      int y = j*30;
      fill(0);
      stroke(255);
      // For every column and row, a rectangle is drawn at an (x,y) location scaled and sized by videoScale.
      rect(x, y, 30, 30);
      grid  = true;
    }
  }
  }
  
    if(exist == false){
      Apple a = new Apple();
      a.display();
      exist = true;
    }
  }
}
