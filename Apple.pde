public class Apple{
  //PImage img;
  private color c;
  private PVector loc;
  private float radius;
  public Apple(color col, PVector xy){
    c = col;
    loc = xy;
  }
  
  public Apple(){
    c = color(255,0,0);
    radius = 50;
    
    int x = (int)random(0,width/30);
    int y = (int)random(0,height/30);
    loc = new PVector((x*30)+15,(y*30)+15);
    
    //img = imag;
  }
  
  public void display(){
    
    //image(img,loc.x,loc.y);
    //img.resize(30,30);
    //image(img,loc.x,loc.y);
    
  
    fill(0,255,0);
    rect(loc.x + 1/2*radius-4, loc.y-20,10,10);
    fill(c);
    circle(loc.x,loc.y,radius/2);
    //fill(0,255,0);
    //rect(loc.x + 1/2*radius-4, loc.y-15,10,10);
    
  }
    public float getLocX()
{
  return loc.x;
}
public float getLocY()
{
  return loc.y;
}
 public void relocate(){
   
    int x = (int)random(0,width/30);
    int y = (int)random(0,height/30);
    loc = new PVector((x*30)+15,(y*30)+15);
 }
}
