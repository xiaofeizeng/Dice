void setup()
{
  noLoop();
  size(500, 500);
  
}
void draw()
{
  background(0, 0, 51);
  Die bob;
  bob = new Die(50, 100);
  bob.show();
  bob.roll(); //not sure if I'm supposed to have this here and add system.printIn here
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  int mySize, myX, myY,diceNum;//variable declarations here
  Die(int x, int y) //constructor
  {
    mySize = 100;
    myX = x;
    myY = y;
    diceNum = (int)(Math.random()*6)+1;
    //variable initializations here
  }
  void roll()
  {
    diceNum = (int)(Math.random()*6)+1;
    //your code here
  }
  void show()
  {
    fill(204,255,255);
    stroke(3);
    rect(myX, myY, mySize, mySize, 100);//ADD "+myX" and "+myY" for each

    if (diceNum == 1)
    {
      fill(204,255,255);
      stroke(3);
      rect(myX, myY, mySize, mySize, 100);
      fill(0, 0, 0);
      ellipse(50, 55, 20, 20);
      
    }
    else if (diceNum == 2)
    {
          fill(204,255,255);
          stroke(3);
          rect(myX, myY, mySize, mySize, 100);
          fill(0, 0, 0);
          ellipse(22, 36, 20, 20);
          ellipse(83, 75, 20, 20);
        }
        else if (diceNum == 3)
        {
            fill(204,255,255);
            stroke(3);
            rect(myX, myY, mySize, mySize, 100);
            fill(0, 0, 0);
            ellipse(25, 29, 20, 20);
            ellipse(52, 57, 20, 20);
            ellipse(79, 85, 20, 20);
        }
        else if (diceNum == 4)
        {
            fill(204,255,255);
            stroke(3);
            rect(myX, myY, mySize, mySize, 100);
            fill(0, 0, 0);
            ellipse(24, 27, 20, 20);
            ellipse(24, 79, 20, 20);
            ellipse(78, 27, 20, 20);
            ellipse(78, 79, 20, 20);
        }
        else if (diceNum == 5)
        {
          fill(204,255,255);
          stroke(3);
          rect(myX, myY, mySize, mySize, 100);
          fill(0, 0, 0);
          ellipse(24, 29, 20, 20);
          ellipse(25, 82, 20, 20);
          ellipse(75, 29, 20, 20);
          ellipse(52, 55, 20, 20);
          ellipse(76, 82, 20, 20);
        }
        else if (diceNum == 6)
        {
          fill(204,255,255);
          stroke(3);
          rect(myX, myY, mySize, mySize, 100);
          fill(0, 0, 0);
          ellipse(27, 26, 20, 20);
            ellipse(27, 56, 20, 20);
            ellipse(27, 84, 20, 20);
            ellipse(76, 26, 20, 20);
            ellipse(76, 56, 20, 20);
            ellipse(76, 84, 20, 20);
        }

    {}//check out the worksheet
    



  }
}
