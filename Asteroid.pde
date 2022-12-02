class Asteroid extends Floater 
{
  private int rotSpeed;
  public Asteroid() {
    corners = 9;
    // clockwise from x axis
    xCorners = new int[] {12, 7, 4, 0, -6, -8, -6, 0, 4};
    yCorners = new int[] {2, -7, -6, -10, -5, 0, 5, 10, 6};
    myColor = color(255, 255, 255);
    myCenterX = Math.random() * 400;
    myCenterY = Math.random() * 400;
    myXspeed = 1;
    myYspeed = 1;
    myPointDirection = 0;
    rotSpeed = (int)(Math.random() * 8) - 3;
  }
  public void move() {
    turn(rotSpeed);
    super.move();
  }
  public double getmyCenterX() {
    return myCenterX;
  }
  public double getmyCenterY() {
    return myCenterY;
  }
}
