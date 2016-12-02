class Bullet extends Floater
{
  
  public Bullet(){
    corners = 4;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = 4;
    yCorners[0] = 4;
    xCorners[1] = 4;
    yCorners[1] = -4;
    xCorners[2] = -4;
    yCorners[2] = -4;
    xCorners[3] = -4;
    yCorners[3] = 4;
    myColor =((int)(Math.random()*20));
  }
    public void show()
  {
    super.show();
  }
  public void move()
  {
    myCenterX++; 
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