void setup()
{
	size(500,500);
	noLoop();
}

void draw()
{
	background(0,0,0);
	int total = 0;
	for(int x = 5; x < 500; x = x + 50)
	{
	for(int y = 10; y < 450; y = y + 50)
	{
	Die one = new Die(x,y);
	one.show();
	one.roll();
	total = total + one.roll;
	}
	}
	fill(255,255,255);
	textSize(20);
	text("Your total roll: " + total, 200, 480);
}

void mousePressed()
{
	redraw();
}

class Die //models one single dice cube
{
	int myX, myY, roll;
	Die(int x, int y) //constructor
	{
		myX = x;
		myY = y;
	}
	void roll()
	{
		roll = (int)(Math.random()*6)+1;
		if (roll == 1)
		{
		fill((int)(Math.random()*254)+1,(int)(Math.random()*254)+1,(int)(Math.random()*254)+1);
		ellipse(myX + 20, myY + 20, 7, 7);
		}
		else if (roll == 2)
		{
		fill((int)(Math.random()*254)+1,(int)(Math.random()*254)+1,(int)(Math.random()*254)+1);
		ellipse(myX + 10, myY + 10, 7, 7);
		ellipse(myX + 30, myY + 30, 7, 7);
		}
		else if(roll == 3)
		{
		fill((int)(Math.random()*254)+1,(int)(Math.random()*254)+1,(int)(Math.random()*254)+1);
		ellipse(myX + 10, myY + 10, 7, 7);
		ellipse(myX + 30, myY + 30, 7, 7);
		ellipse(myX + 20, myY + 20, 7, 7);
		}
		else if(roll == 4)
		{
		fill((int)(Math.random()*254)+1,(int)(Math.random()*254)+1,(int)(Math.random()*254)+1);
		ellipse(myX + 10, myY + 10, 7, 7);
		ellipse(myX + 30, myY + 30, 7, 7);
		ellipse(myX + 30, myY + 10, 7, 7);
		ellipse(myX + 10, myY + 30, 7, 7);
		}
		else if(roll == 5)
		{
		fill((int)(Math.random()*254)+1,(int)(Math.random()*254)+1,(int)(Math.random()*254)+1);
		ellipse(myX + 8, myY + 8, 7, 7);
		ellipse(myX + 8, myY + 32, 7, 7);
		ellipse(myX + 20, myY + 20, 7, 7);
		ellipse(myX + 32, myY + 8, 7, 7);
		ellipse(myX + 32, myY + 32, 7, 7);
		}
		else if(roll == 6)
		{
		fill((int)(Math.random()*254)+1,(int)(Math.random()*254)+1,(int)(Math.random()*254)+1);
		ellipse(myX + 10, myY + 7, 7, 7);
		ellipse(myX + 30, myY + 7, 7, 7);
		ellipse(myX + 10, myY + 20, 7, 7);
		ellipse(myX + 30, myY + 20, 7, 7);
		ellipse(myX + 10, myY + 33, 7, 7);
		ellipse(myX + 30, myY + 33, 7, 7);
		}
	}
	void show()
	{
		fill(255,255,255);
		rect(myX, myY, 40, 40);	
	}
}
