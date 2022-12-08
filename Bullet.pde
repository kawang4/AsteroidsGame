class Bullet extends Floater 
{
  public Bullet(Spaceship fifa) {
    myCenterX = fifa.getmyCenterX();
    myCenterY = fifa.getmyCenterY();
    myXspeed = fifa.getXspeed();
    myYspeed = fifa.getYspeed();
    myPointDirection = fifa.getPointDirection();
    accelerate(0.6);
  }
  public void show() {
    fill(255, 0, 0);
    ellipse((float)myCenterX, (float)myCenterY, 5, 5);
  }
  public double getmyCenterX() {
    return myCenterX;
  }
  public double getmyCenterY() {
    return myCenterY;
  }
}
