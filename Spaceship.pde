class Spaceship extends Floater  
{  
  public Spaceship() {
    corners = 8;
    // clockwise from x axis
    xCorners = new int[] {7, -7, -10, -6, -2, -6, -10, -7};
    yCorners = new int[] {0, -10, -6, -8, 0, 8, 6, 10};
    myColor = color(255, 255, 255);
    myCenterX = 200;
    myCenterY  = 200;
    myXspeed = 0;
    myYspeed = 0;
    myPointDirection = 0;
  
  }
  public void setCenterX(double n) {
    myCenterX = n;
  }
  public void setCenterY(double n) {
    myCenterY = n;
  }
  public void setXspeed(double n) {
    myXspeed = n;
  }
  public void setYspeed(double n) {
    myYspeed = n;
  }
  public void setPointDirection(double n) {
    myPointDirection = n;
  }
  public double getmyCenterX() {
    return myCenterX;
  }
  public double getmyCenterY() {
    return myCenterY;
  }
   public double getXspeed() {
    return myXspeed;
  }
  public double getYspeed() {
    return myYspeed;
  }
  public double getPointDirection() {
    return myPointDirection;
  }
}
