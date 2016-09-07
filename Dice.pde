void setup()
{
	noLoop();
	size(500, 500);
	textAllign(CENTER);
}
void draw()
{
	background(0, 0, 51);
	Die bob;
	bob = new Die(250, 250);
	die.show();
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	//variable declarations here
	Die(int x, int y) //constructor
	{
		mySize = 0;
		myX = x;
		myY = y;
		//variable initializations here
	}
	void roll()
	{
		//your code here
	}
	void show()
	{
		//your code here
	}
}
