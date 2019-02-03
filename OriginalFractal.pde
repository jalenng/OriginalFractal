public void setup()
{
	size(600, 600);
	background(0);
	noFill();
	fractal(width / 2, height / 2, 255);
}
public void draw()
{

}
public void mouseDragged()//optional
{

}

public void fractal(double x, double y, double len) 
{
	double width = len;
	double height = len * 0.86602540378;
    strokeWeight(1);
    stroke(69, 255, 20, (int)(15.9687194 * sqrt((float)len)));
	polygon((float)x, (float)y, (float)len, 6);
	if (len > 1)
	{
		fractal(x + (width / 4), y - (height / 2), len / 2); //top right
        fractal(x - (width / 4), y + (height / 2), len / 2); //bottom left
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