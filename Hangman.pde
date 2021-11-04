int person = 0;
boolean twoPlayer = false;
boolean onePlayer = false;
int numberIncorrect = 0;
void setup() {
  background(0);
  size(1000, 900);

  stroke(255);
  fill(255);
  //(X,Y,SIZE,SIZE)
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
  if (onePlayer == true) {
    if (numberIncorrect == 1) {
      line(250, 400, 750, 400);
      stroke(255);
    }
    if (numberIncorrect == 2) {
      line(400, 50, 400, 400);
      stroke(255);
    }
    if (numberIncorrect == 3) {
      line(400, 50, 700, 50);
      stroke(255);
    }
    if (numberIncorrect == 4) {
      line(700, 50, 700, 70);
      stroke(255);
    }
    if (numberIncorrect == 5) {
      ellipse(700, 125,100,100);
      stroke(255);
    }
    if (numberIncorrect == 6) {
      line(250, 400, 750, 400);
      stroke(255);
    }
    if (numberIncorrect == 7) {
      line(250, 400, 750, 400);
      stroke(255);
    }
    if (numberIncorrect == 8) {
      line(250, 400, 750, 400);
      stroke(255);
    }
    if (numberIncorrect == 9) {
      line(250, 400, 750, 400);
      stroke(255);
    }
    if (numberIncorrect == 1) {
      line(250, 400, 750, 400);
      stroke(255);
    }
    //} else if (twoPlayer == true){};
  }
}
void keyPressed(){
  if(key=='a')
  numberIncorrect++;
}
void mousePressed() {
  if (onePlayer==false && twoPlayer==false) {
    if (mouseY > height/2-80 && mouseY <height/2+40) {
      if (mouseX > width/2-380 && mouseX < width/2-70) {
        background(0);
        onePlayer = true;
      }
    }
    if (mouseY > height/2-80 && mouseY <height/2+40) {
      if (mouseX > width/2+70 && mouseX < width/2+380) {
        background(0);
        twoPlayer = true;
      }
    }
  }
}
