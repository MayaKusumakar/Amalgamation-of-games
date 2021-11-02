

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

snake Snake = new snake();
Apple apple = new Apple();
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
 
 Snake.move(Snake.getDir()); 
 if(Snake.getLocX()==apple.getLocX())
   if(Snake.getLocY()==apple.getLocY())
   {
     
 }
 background(0);
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
  Snake.disp();
  apple.display();
  if(Snake.getX()>= width||Snake.getX()<=0){
      background(244,244,0);
    Snake.setLive(false);    
    text("You Die!",width/2-180,height/2);
  }
    if(Snake.getY()>=height||Snake.getY()<=0){
      background(244,244,0);
    Snake.setLive(false);  
    text("You Die!",width/2-180,height/2);

}
    
  }
}

void keyPressed(){
  if(key == 'd'){
    Snake.setDir(1);
    
  }
  
    else if (key== 's'){
          Snake.setDir(2);

    }
    else if (key== 'w'){
      Snake.setDir(0);

    }

  else if (key== 'a'){
      Snake.setDir(3);
}
}
