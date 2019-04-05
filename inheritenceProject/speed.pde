class speed extends enieme
{
  //positions
  float x;
  float y;
  //default constructor
  speed()
  {
    //positons
    x = random(-10, 10);
    y = random(-10, 10);
    dir.x = x;
    dir.y = y;
  }

  void draw()
  {
    //drawing the circle
    fill(255, 200, 0);
    ellipse (pos.x, pos.y, 15, 15);
  }
}
