//your variable declarations here
Spaceship rogueone;
Star[] dots; 
ArrayList <Asteroid> rocks;
  
public void setup()
{
  size(400, 400);
  rogueone = new Spaceship();
  dots = new Star[100];
  for (int i = 0; i < dots.length; i++) {
    dots[i] = new Star();
  }
  rocks = new ArrayList <Asteroid> ();
  for (int j = 0; j < 30; j++) {
    rocks.add(new Asteroid());
}
}

public void draw()
{
  background(0); 
  
  for (int i = 0; i < dots.length; i++) {
    dots[i].show();
  }
  for (int j = 0; j < rocks.size(); j++) {
    rocks.get(j).show();
    rocks.get(j).move();
    if (dist((float)rocks.get(j).getmyCenterX(), (float)rocks.get(j).getmyCenterY(), (float)rogueone.getmyCenterX(), (float)rogueone.getmyCenterY()) < 20) {
      rocks.remove(j);
    }
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
