public void setup()
{
	size(600, 600);
	background(0);
	noFill();
	sierpinski(width / 2, height / 2, width);
}
public void draw()
{
	
}
public void mouseDragged()//optional
{

}

//takes coords of bottom left vertex, base, and height and draws a triangle
public void hexagon(double x, double y, double b, double h)
{
	triangle((int)x, (int)y, (int)(x + b), (int)y, (int)(x + (b / 2)), (int)(y - h));
}

public void sierpinski(double x, double y, double len) 
{
	double width = len;
	double height = len * 0.86602540378;
	stroke(69, 255, 20);
	strokeWeight(4);
	polygon((float)x, (float)y, (float)len, 6);
	if (len > 1)
	{
		sierpinski(x, y, len / 1.2); //center
	}
}

public void polygon(float x, float y, float radius, int npoints) {
  float angle = TWO_PI / npoints;
  beginShape();
  for (float a = 0; a < TWO_PI; a += angle) {
    float sx = x + cos(a) * radius;
    float sy = y + sin(a) * radius;
    vertex(sx, sy);
  }
  endShape(CLOSE);
}