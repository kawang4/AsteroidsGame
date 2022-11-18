class Star //note that this class does NOT extend Floater
{
  private int myX, myY;
  public Star() {
    myX = (int)(Math.random()*400);
    myY = (int)(Math.random()*400);
 
  }
   public void show()  {
     
     ellipse(myX, myY, 5, 5);
     stroke(0);
     fill(255, 255, 255);
 
   }
}
