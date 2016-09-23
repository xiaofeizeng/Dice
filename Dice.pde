int sum = 0;
void setup()
{
  noLoop();
  size(470, 500);
  
}

void draw()
{
  background(0, 0, 51);
  Die bob;
  bob = new Die(30, 30);
  bob.show();
  bob.roll();
  for (int i = 30; i <= 400; i = i+ 100)
  {
      for (int j = 30; j <= 300; j = j + 100)
      {
          bob = new Die(i, j);
          bob.show();
          bob.roll();
          sum = sum + bob.diceNum;
          
         
      }
    }//not sure if I'm supposed to have this here and add system.printIn here
      textSize(70);
      textAlign(CENTER);
      text("Sum:" + sum, 250, 400);
      
}



void mousePressed()
{
  redraw();
  sum = 0;
 
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
      ellipse(myX + 50, myY + 55, 20, 20);
      
    }
    else if (diceNum == 2)
    {
          fill(204,255,255);
          stroke(3);
          rect(myX, myY, mySize, mySize, 100);
          fill(0, 0, 0);
          ellipse(myX + 22, myY + 36, 20, 20);
          ellipse(myX + 83, myY + 75, 20, 20);
        }
        else if (diceNum == 3)
        {
            fill(204,255,255);
            stroke(3);
            rect(myX, myY, mySize, mySize, 100);
            fill(0, 0, 0);
            ellipse(myX + 25, myY + 29, 20, 20);
            ellipse(myX + 52, myY + 57, 20, 20);
            ellipse(myX + 79, myY + 85, 20, 20);
        }
        else if (diceNum == 4)
        {
            fill(204,255,255);
            stroke(3);
            rect(myX, myY, mySize, mySize, 100);
            fill(0, 0, 0);
            ellipse(myX + 24, myY + 27, 20, 20);
            ellipse(myX + 24, myY + 79, 20, 20);
            ellipse(myX + 78, myY + 27, 20, 20);
            ellipse(myX + 78, myY + 79, 20, 20);
        }
        else if (diceNum == 5)
        {
          fill(204,255,255);
          stroke(3);
          rect(myX, myY, mySize, mySize, 100);
          fill(0, 0, 0);
          ellipse(myX + 24, myY + 29, 20, 20);
          ellipse(myX + 25, myY + 82, 20, 20);
          ellipse(myX + 75, myY + 29, 20, 20);
          ellipse(myX + 52, myY + 55, 20, 20);
          ellipse(myX + 76, myY + 82, 20, 20);
        }
        else if (diceNum == 6)
        {
          fill(204,255,255);
          stroke(3);
          rect(myX, myY, mySize, mySize, 100);
          fill(0, 0, 0);
            ellipse(myX + 27, myY + 26, 20, 20);
            ellipse(myX + 27, myY + 56, 20, 20);
            ellipse(myX + 27, myY + 84, 20, 20);
            ellipse(myX + 76, myY + 26, 20, 20);
            ellipse(myX + 76, myY + 56, 20, 20);
            ellipse(myX + 76, myY + 84, 20, 20);
        }

    {}//check out the worksheet
    


  }
}
