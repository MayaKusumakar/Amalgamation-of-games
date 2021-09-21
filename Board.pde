boolean start = false;
boolean exist = false;
public void setup(){
  size(1000,900);
  background(0);
  
  
  
  stroke(255);
  fill(255);
  rect(width/2-150,height/2-100,300,140);
  
  textSize(100);
  fill(0);
  text("Start",width/2-110,height/2);
}

void mousePressed(){
    if(mouseY > height/2-100 && mouseY <height+40){
     if(mouseX > width/2-150 && mouseX < width/2+210);
        background(0);
        start = true;
  }
}


public void draw(){
  if(start == true){
    if(exist == false){
      Apple a = new Apple();
      a.display();
      exist = true;
    }
  }
}
