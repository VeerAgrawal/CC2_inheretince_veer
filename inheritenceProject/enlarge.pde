class enlarge extends enieme
{
  //size
  float size;
  //change in size
  float sizeDelta;
  //max and min size
  float maxSize;
  float minSize;
  //defualt constructor
  enlarge()
  {
    //sizes
    size = 10;
    sizeDelta = 0.5;
    maxSize = 50;
    minSize = 10;
  }

  void move()
  {
    //calling the things from the original class
    super.move();
    //moaking it grow biger
    size +=sizeDelta;
    //making it grow smaller
    if (size > maxSize|| size< minSize)
    {
      sizeDelta *= -1;
    }
  }
  void draw()
  {
    //drawing circle
    fill(0, 255, 0);
    ellipse(pos.x, pos.y, size, size);
  }
}
