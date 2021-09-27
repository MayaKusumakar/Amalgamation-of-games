int person = 0;
boolean twoPlayer = false;
boolean onePlayer = false;

void setup() {
  background(0);
  size(1000, 900);

  stroke(255);
  fill(255);
  rect(width/2-380, height/2-80, 310, 120);

  textSize(50);
  fill(0);

  text("One Player", width/2-350, height/2);

  stroke(255);
  fill(255);
  rect(width/2+70, height/2-80, 310, 120);

  textSize(50);
  fill(0);
  text("Two Player", width/2+100, height/2);
}

void draw()
{
  
}

void mousePressed() {
  System.out.println("hi:");
  if (onePlayer==false && twoPlayer==false) {
    
    if (mouseY > height/2-80 && mouseY <height+40) {
      if (mouseX > width/2-350 && mouseX < width/2-230) {
        background(0);
        onePlayer = true;
      }
    }
  }
}

void keyPressed() {
  System.out.println("hi:");
}
