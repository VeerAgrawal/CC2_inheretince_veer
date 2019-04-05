class player
{
  //positon of player
PVector pos = new PVector (0, 0);
//defualt constructor 
  player()
  {
  }

  void move()
  {
    //positions
    pos.x = mouseX;
    pos.y = mouseY;
  }
  void draw()
  {
    //drawing the circle
    fill (0);
    ellipse (pos.x, pos.y, 10, 10);
  }
}
