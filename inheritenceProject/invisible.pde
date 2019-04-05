class invisible extends enieme
{
  int lastTime;
  boolean isVisible;
  invisible()
  {
    lastTime = 0;
    isVisible = true;
  }
  void draw()
  {
    //if its vissible then color it
    if (isVisible == true)
    {
      fill (0, 0, 250);
      ellipse (pos.x, pos.y, 15, 15);
    }
    //if notvisible then hide it
    if (millis() - lastTime > 2500)
    {
      lastTime = millis();
      isVisible = !isVisible;
    }
  }
}
