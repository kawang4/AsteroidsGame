//your variable declarations here
Spaceship rogueone;
Star[] dots;
 
public void setup()
{
  size(400, 400);
  rogueone = new Spaceship();
  dots = new Star[100];
  for (int i = 0; i < dots.length; i++) {
    dots[i] = new Star();
 
  }
 
}
public void draw()
{
  background(0); 
  
  for (int i = 0; i < dots.length; i++) {
    dots[i].show();
  }
  rogueone.show();
  rogueone.move();
}

public void keyPressed() {
  if (key == 'w') {
    rogueone.setYspeed(-2); 
    rogueone.move();
  }
  if (key == 'a') {
    rogueone.setXspeed(-2);
    rogueone.move();
  }
  if (key == 's') {
    rogueone.setXspeed(2);
    rogueone.move();
  }
  if (key == 'd') {
    rogueone.setYspeed(2); 
    rogueone.move();
  }
  if (key == '2') {
    rogueone.turn(20);
    
  }
  if (key == '3') {
    rogueone.turn(-20);
    
  }
  if (key == '4') {
    rogueone.accelerate(2);
    
  }
  if (key == '5') {
    rogueone.setXspeed(0);
    rogueone.setYspeed(0);
    rogueone.setCenterX(Math.random()*400);
    rogueone.setCenterY(Math.random()*400);
    rogueone.setPointDirection(Math.random()*360 - 180);
  }
}
