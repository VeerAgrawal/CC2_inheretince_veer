class enieme
{
  //position
  PVector pos;
  //direction
  PVector dir;
  //color
  color c;


  enieme()
  {
//position
    pos = new PVector (300, 300);
    dir = new PVector(random(-2, 2), random(-2, 2));
   //color
    c = color(250, 0, 0);
  }

  void move()
  {
    pos.add(dir); 
    //if they hit the walls 
    if (pos.x > 600)
    {
      dir.x *= -1;
    }
    if (pos.x < 0)
    {
      dir.x *= -1;
    }
    if (pos.y > 600)
    {
      dir.y *= -1;
    }
    if (pos.y < 0 )
    {
      dir.y *= -1;
    }
    //collisons
  }
  void draw()
  {
    //drawing the circle
    fill(c);
    ellipse (pos.x, pos.y, 15, 15);
  }
}
