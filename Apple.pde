public class Apple{
  PImage img;
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
    loc = new PVector(x*30,y*30);
    
    img = loadImage("apple2.png");
  }
  
  public void display(){
    
    //image(img,loc.x,loc.y);
    img.resize(30,30);
    image(img,loc.x,loc.y);
    
  
    /*
    fill(c);
    circle(loc.x,loc.y,radius);
    fill(0,255,0);
    rect(loc.x + 1/2*radius-4, loc.y-35,10,10);
    */
  }
  
 
}
