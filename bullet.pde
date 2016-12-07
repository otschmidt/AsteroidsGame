class Bullet extends Floater
{
  private double dRadians;
  public Bullet(){
    myCenterX = bob.getX();
    myCenterY = bob.getY();
    //double dRadians =myPointDirection*(Math.PI/180);
    dRadians = bob.getPointDirection()*(Math.PI/180);
    myDirectionX = (int)(5 * Math.cos(dRadians) + bob.getDirectionY());
    myDirectionY = (int)(5 * Math.sin(dRadians) + bob.getDirectionY());
  }
  public void show()
  {
    fill(0,250,0);
    ellipse((float)myCenterX,(float)myCenterY,7,7);
  }
  public void move(){
    myCenterX+= myDirectionX;
    myCenterY+= myDirectionY;     
  }
  public void setX(int x) { myCenterX = x;}  
  public int getX(){return (int)myCenterX;}   
  public void setY(int y) { myCenterY = y; }   
  public int getY() { return (int)myCenterY;}
  public void setDirectionX(double x) {myDirectionX = x;}
  public double getDirectionX() { return myDirectionX;}   
  public void setDirectionY(double y){myDirectionY = y; }   
  public double getDirectionY() {return myDirectionY;}   
  public void setPointDirection(int degrees){myPointDirection = degrees;}   
  public double getPointDirection() { return myPointDirection;}
  public void setmyColor(int c){myColor = c;}
  public int getmyColor(){return(int)myColor;}
  
}