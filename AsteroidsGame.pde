//your variable declarations here
Spaceship bob = new Spaceship();
Flame supa = new Flame();
Star[] jerry = new Star[200];
Asteroid[] joe = new Asteroid[20];
boolean qIsPressed = false;
boolean rIsPressed = false;
//boolean qFix = false;
//boolean rFix = false;
int rSize = 0;
int qSize = 50;
int a = 1;
int b = 1;
boolean sFlame = false;

public void setup() 
{
  size(500,500);
  for ( int i = 0; i<jerry.length; i++)
  {
    jerry[i] = new Star();
  }
   for(int j = 0; j<joe.length; j++)
  {
    joe[j] = new Asteroid();
  }
  bob.setX(250);
  bob.setY(250);
  supa.setX(250);
  supa.setY(250);
  //supa.setmyColor(255);
}
public void draw() 
{
  //your code here
  background(150);
  for(int i = 0; i<jerry.length;i++)
  {
    jerry[i].show();
  }
  for(int j = 0; j<joe.length; j++)
  {
    joe[j].show();
    joe[j].move();
  }
  bob.show();
  bob.move();
  supa.setDirectionX(bob.getDirectionX());
  supa.setDirectionY(bob.getDirectionY());
  supa.setPointDirection((int)bob.getPointDirection());

  supa.move();
  if(qIsPressed == true){ 
    ellipse(bob.getX(),bob.getY(),qSize,qSize);
      /*
      qSize = 50;
    if(qSize > 0)//qFix == true
    { 
      fill(0,255,0);
      ellipse(bob.getX(),bob.getY(),qSize,qSize);
      qSize = qSize - a;
    }
    else{
      qSize = 0;
      
    }
    */
   
  }
  //Resests hyperspace
  if(rIsPressed == true)
  {
    qIsPressed = false;
    /*
    if( rSize < 50 )//&& rFix == true
    {
      fill(255,0,0);
      
      ellipse(bob.getX(),bob.getY(),rSize,rSize);
      //rSize = rSize + b;
    }
    
    else{
      b = 0;
      
     }
     */
  
  }
  if(sFlame == true)
  {
    //rotate((float)bob.getPointDirection());
    fill(255,0,0);
    supa.show();
    //ellipse(bob.getX()-15,bob.getY(),20,5);

  }
  

}

public void keyPressed(){
  //Arrow keys used to move
  if(keyCode== 38)
  {
    sFlame = true;
    bob.accelerate(0.1);
  }
  if(keyCode==40)
  {
    sFlame = false;
    bob.accelerate(-0.2);
  }
  if(keyCode==37) 
  {
    bob.rotate(-15);
  }

  if(keyCode==39) 
  {
    bob.rotate(15);
  }
  //HyperSpace q for Quantum leap
  if(keyCode==81)
  {

    qIsPressed = true;
    bob.setDirectionX(0);
    bob.setDirectionY(0);
    bob.setX((int)(Math.random()*500));
    bob.setY((int)(Math.random()*500));
    bob.setPointDirection((int)(Math.random()*360));
    supa.setDirectionX(0);
    supa.setDirectionY(0);
    supa.setX(bob.getX());
    supa.setY(bob.getY());
    supa.setPointDirection((int)bob.getPointDirection());
    sFlame = false;
  }
  //Recharge Hyperspace?
  if(keyCode==82)
  {
    qIsPressed = false;
    rIsPressed = true;
  } 
}
public void keyReleased()
{
  if(key==38){
    sFlame = false;
  }
  if(key==81)
  {
    qIsPressed = false;
  }
  if (key == 82)
  {
    rIsPressed = false;
  }
}
class Star
{
  private int myX, myY;
  public Star()
  {
    myX = (int)(Math.random()*500);
    myY = (int)(Math.random()*500);
  }
  public void show()
  {
    fill(255);
    rect(myX, myY,3,3);

  }
}

class Asteroid extends Floater
{
  int rotSpeed;
  public Asteroid(){
    corners = 5;
    rotSpeed = ((int)(Math.random()*PI*2));
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
    xCorners[4] = 1;
    yCorners[4] = 3;

  }
  public void show()
  {
    super.show();
  }
  public void move()
  {
    super.move();
    rotate(rotSpeed);
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

class Flame extends Floater
{
  public Flame(){
    corners = 12;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = -6;
    yCorners[0] = -0;
    xCorners[1] = -10;
    yCorners[1] = 4;
    xCorners[2] = -13;
    yCorners[2] = 5;
    xCorners[3] = -15;
    yCorners[3] = 3;
    xCorners[4] = -18;
    yCorners[4] = 2;
    xCorners[5] = -15;
    yCorners[5] = 1;
    xCorners[6] = -18;
    yCorners[6] = 0;
    xCorners[7] = -15;
    yCorners[7] = -1;
    xCorners[8] = -18;
    yCorners[8] = -2;
    xCorners[9] = -15;
    yCorners[9] = -3;
    xCorners[10] = -13;
    yCorners[10] = -5;
    xCorners[11] = -10;
    yCorners[11] = -4;
    myColor = color(255,255, 0);

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
class Spaceship extends Floater  
{   

  public Spaceship(){
    corners = 10;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = 16;
    yCorners[0] = 0;
    xCorners[1] = 0;
    yCorners[1] = 10;
    xCorners[2] = -15;
    yCorners[2] = 10;
    xCorners[3] = -10;
    yCorners[3] = 5;
    xCorners[4] = -5;
    yCorners[4] = 5;
    xCorners[5] = -2;
    yCorners[5] = 0;
    xCorners[6] = -5;
    yCorners[6] = -5;
    xCorners[7] = -10;
    yCorners[7] = -5;
    xCorners[8] = -15;
    yCorners[8] = -10;
    xCorners[9] = 0;
    yCorners[9] = -10;
  
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
 
}
abstract class Floater //Do NOT modify the Floater class! Make changes in the SpaceShip class 
{   
  protected int corners;  //the number of corners, a triangular floater has 3   
  protected int[] xCorners;   
  protected int[] yCorners;   
  protected int myColor;   
  protected double myCenterX, myCenterY; //holds center coordinates   
  protected double myDirectionX, myDirectionY; //holds x and y coordinates of the vector for direction of travel   
  protected double myPointDirection; //holds current direction the ship is pointing in degrees    
  abstract public void setX(int x);  
  abstract public int getX();   
  abstract public void setY(int y);   
  abstract public int getY();   
  abstract public void setDirectionX(double x);   
  abstract public double getDirectionX();   
  abstract public void setDirectionY(double y);   
  abstract public double getDirectionY();   
  abstract public void setPointDirection(int degrees);   
  abstract public double getPointDirection(); 

  //Accelerates the floater in the direction it is pointing (myPointDirection)   
  public void accelerate (double dAmount)   
  {          
    //convert the current direction the floater is pointing to radians    
    double dRadians =myPointDirection*(Math.PI/180);     
    //change coordinates of direction of travel    
    myDirectionX += ((dAmount) * Math.cos(dRadians));    
    myDirectionY += ((dAmount) * Math.sin(dRadians));       
  }   
  public void rotate (int nDegreesOfRotation)   
  {     
    //rotates the floater by a given number of degrees    
    myPointDirection+=nDegreesOfRotation;   
  }   
  public void move ()   //move the floater in the current direction of travel
  {      
    //change the x and y coordinates by myDirectionX and myDirectionY       
    myCenterX += myDirectionX;    
    myCenterY += myDirectionY;     

    //wrap around screen    
    if(myCenterX >width)
    {     
      myCenterX = 0;    
    }    
    else if (myCenterX<0)
    {     
      myCenterX = width;    
    }    
    if(myCenterY >height)
    {    
      myCenterY = 0;    
    }   
    else if (myCenterY < 0)
    {     
      myCenterY = height;    
    }   
  }   
  public void show ()  //Draws the floater at the current position  
  {             
    fill(myColor);   
    stroke(myColor);    
    //convert degrees to radians for sin and cos         
    double dRadians = myPointDirection*(Math.PI/180);                 
    int xRotatedTranslated, yRotatedTranslated;    
    beginShape();         
    for(int nI = 0; nI < corners; nI++)    
    {     
      //rotate and translate the coordinates of the floater using current direction 
      xRotatedTranslated = (int)((xCorners[nI]* Math.cos(dRadians)) - (yCorners[nI] * Math.sin(dRadians))+myCenterX);     
      yRotatedTranslated = (int)((xCorners[nI]* Math.sin(dRadians)) + (yCorners[nI] * Math.cos(dRadians))+myCenterY);      
      vertex(xRotatedTranslated,yRotatedTranslated);    
    }   
    endShape(CLOSE);  
  }   
} 
