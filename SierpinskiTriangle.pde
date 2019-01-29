public void setup()
{
	size(800, 800);
	background(199, 210, 226);
}
public void draw()
{
	sierpinski(0, 800, 800);
}
public void sierpinski(int x, int y, int len) 
{
	if (len < 7)
	{
		fill((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
		triangle(x, y, x+len, y, x+(len/2), y-len);

	}
	else
	{
		fill((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
		sierpinski(x, y, len/2);
		fill((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
		sierpinski(x+len/2,y,len/2);
		fill((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
		sierpinski(x+len/3, y-len/2,len/2);
	}
}