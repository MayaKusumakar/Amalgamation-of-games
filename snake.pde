public class snake{
  private color col;
   private PVector vec;
  private int dir;
  private boolean live;
  
  public snake(){
    live= true;
  col = color(100,100,0);
  vec = new PVector(width/2,height/2);

  dir =1; // 0 - up 1 - right 2 - down 3 - left
  }
  
  public void disp(){
    circle(vec.x,vec.y,30);
  }
  
  public void setDir(int newDir) {
    dir = newDir;
  }
  
  public void move(int Dir) {
    if(live){
    if(Dir==2){
      vec.y=vec.y+5;
      if(vec.y >= height){
        live = false;
        background(255,0,0);
      }
      }
    else if(Dir==1){
      vec.x=vec.x+5;
         if(vec.x >= width){
        live = false;
        background(255,0,0);
         }
      }
    else if(Dir==0){
      vec.y=vec.y-5;
            if(vec.y <= 0){
        live = false;
        background(255,0,0);
            }
      }
    else if(Dir==3){
      vec.x=vec.x-5;
            if(vec.y <= 0){
        live = false;
        background(255,0,0);
      }}
    
    }
    if(live==false){
      background(255,0,0);
      }
    
  }
    
    
    public float getX(){
    return vec.x;
  }
  public float getY(){
    return vec.y;
  }
public void setLive(boolean b){
  live =b;
}
public int getDir()
{
return dir;
}
  
}
