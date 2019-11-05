Particle[] dots = new Particle[501];
void setup()
{
	//your code here
	size(600,500);
	background(220);
	for(int i = 0; i<500; i++)
	{
		dots[i] = (new Particle(width/2 +(int)(Math.random()*30),height/2+ (int)(Math.random()*30)));
	}
		dots[500] =  new OddballParticle(width/2 +(int)(Math.random()*30),height/2+ (int)(Math.random()*30));
}
void draw()
{
	background(220);
	for(int k = 0; k<501; k++)
	{
		noStroke();
		dots[k].move();
		dots[k].show();
	}
}	

class OddballParticle extends Particle
{
	OddballParticle(int x, int y)
	{
		super(x,y);	
	}
	void move()
	{
		int run = (int)(Math.random()*4);
		if(run == 0){
			X = X+ 15;
		}else if(run == 1){
			X = X - 12;
		}else if(run==2){
			Y=Y+15;
		}else{
			Y= Y-12;
		}
	}
	void show()
	{
		ellipse((float)X, (float)Y, 50,50);
		fill(Color);
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
		Speed = (Math.random()*11)+2;
		Angle = Math.random()*360+1;
		Color = color((int)(Math.random()*255)+1,(int)(Math.random()*255)+1,(int)(Math.random()*255)+1);
	}
	void move()
	{
		X = X + Math.cos(Angle)*Speed;
		Y = Y + Math.sin(Angle)*Speed;
	}
	void show()
	{
		ellipse((float)X, (float)Y, 15,15);
		fill(Color);
	}
}

// class OddballParticle //inherits from Particle
// {
// 	//your code here
// }


