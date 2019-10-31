Particle[] dots = new Particle[100];
void setup()
{
	//your code here
	size(600,500);
	background(220);
	for(int i = 0; i<100; i++)
	{
		dots[i] = (new Particle(width/2,height/2));
	}
}
void draw()
{
	for(int k = 0; k<100; k++)
	{
		dots[k].move();
		dots[k].show();
	}
}	

class Particle
{
	double X,Y,Angle,Speed;
	int Color;

	Particle(int x, int y)
	{
		X = x;
		Y = y;
		Speed = 20;
		Angle = Math.random()*360+1;
		Color = color((int)(Math.random()*255)+1,(int)(Math.random()*255)+1,(int)(Math.random()*255)+1);
	}
	void move()
	{
		X = Math.cos(Angle)*Speed;
		Y = Math.sin(Angle)*Speed;
	}
	void show()
	{
		ellipse((float)X, (float)Y, 20,20);
		fill(Color);
	}
}

// class OddballParticle //inherits from Particle
// {
// 	//your code here
// }


