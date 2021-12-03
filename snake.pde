public class snake {
  private color col;
  private PVector vec;
  private int dir;
  private boolean live;
  ArrayList<PVector> snakeList;
  private int size;
  boolean gain;

  public snake() {
    live= true;
    col = color(255, 255, 255);
    snakeList = new ArrayList<PVector>();
    snakeList.add(new PVector(0, 0));
    vec = new PVector(140, height/2-4);
    size = 25;
    dir =1; // 0 - up 1 - right 2 - down 3 - left
    gain = false;
  }

  public void disp() {
    //for (PVector spot: snakeList) {
      
    //}
    fill(col);
    circle(vec.x, vec.y, 25);
  }
  public float getLocX()
  {
    return vec.x;
  }  

  public float getLocY()
  {
    return vec.y;
  }
  
  public ArrayList<PVector> getList() {
    return snakeList;
  }

  public void setDir(int newDir) {
    dir = newDir;
  }

  public PVector move(int Dir) {
    PVector new_point = new PVector(-1, -1, 0);
    if (live) {
      if (Dir==0) { // Up
        new_point = snakeList.get(snakeList.size() - 1).copy();
        new_point.y -= 1;
        if (!snakeList.contains(new_point)) {
          snakeList.add(new_point);
        } else {
          exit();
        }
        if (!gain) {
          snakeList.remove(0);
        } else {
          gain = false;
        }
      }
      else if (Dir==2) { // Down
        new_point = snakeList.get(snakeList.size() - 1).copy();
        new_point.y += 1;
        if (!snakeList.contains(new_point)) {
          snakeList.add(new_point);
        } else {
          exit();
        }
        if (!gain) {
          snakeList.remove(0);
        } else {
          gain = false;
        }
      }
      else if (Dir==1) { // Right
        new_point = snakeList.get(snakeList.size() - 1).copy();
        new_point.x += 1;
        if (!snakeList.contains(new_point)) {
          snakeList.add(new_point);
        } else {
          exit();
        }
        if (!gain) {
          snakeList.remove(0);
        } else {
          gain = false;
        }
      }
      else if (Dir==3) { // Left
        new_point = snakeList.get(snakeList.size() - 1).copy();
        new_point.x -= 1;
        if (!snakeList.contains(new_point)) {
          snakeList.add(new_point);
        } else {
          exit();
        }
        if (!gain) {
          snakeList.remove(0);
        } else {
          gain = false;
        }
      }
      
      //if (Dir==2) {
      //  vec.y=vec.y+3;
      //  if (vec.y >= height) {
      //    live = false;
      //  }
      //} else if (Dir==1) {
      //  vec.x=vec.x+3;
      //  if (vec.x >= width) {
      //    live = false;
      //  }
      //} else if (Dir==0) {
      //  vec.y=vec.y-3;
      //  if (vec.y <= 0) {
      //    live = false;
      //  }
      //} else if (Dir==3) {
      //  vec.x=vec.x-3;
      //  if (vec.y <= 0) {
      //    live = false;
      //  }
      //}
    }
    return new_point;
    //if (live==false) {
    //  background(255, 0, 0);
    //}
  }


  public float getX() {
    return vec.x;
  }
  public float getY() {
    return vec.y;
  }
  public void setLive(boolean b) {
    live =b;
  }
  public int getDir()
  {
    return dir;
  }
}
