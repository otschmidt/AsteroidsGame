class bullet extends Floater
{
  

  public bullet(){
    //ellipse(x,y,3,3);

  }
  
  public void move()
  {
    
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