//spawing many balls: aray lists.
ArrayList<enieme> Nball = new ArrayList<enieme>();
ArrayList<enlarge> Eball = new ArrayList<enlarge>();
ArrayList<invisible> Iball = new ArrayList<invisible>();
ArrayList<speed> Fball = new ArrayList<speed>();
//classes 
player player1 = new player();
enieme enieme1 = new enieme();
invisible nosee = new invisible();
enlarge big = new enlarge();
speed quick = new speed();
//collisons 
boolean hit = false;
//scenes
int screen = 1;
//identifying which ball killed the player
//normal bball
boolean nball = false;
//enlarge ball
boolean eball = false;
//invisible ball
boolean iball = false;
//speed ball
boolean sball = false;
//score or timer

float score;

void setup()
{
  //size
  size (600, 600);
  //hiding the cursor
  noCursor();
  //for loops for spawing multiple balls
  for (int i=0; i < 30; i++)
  {
    //there will be 30 normal balls, 3 enlarge balls, 3 invisible balls, 3 speed balls
    Nball.add(new enieme());
  }
  for (int i=0; i < 3; i++)
  {
    Eball.add(new enlarge());
  }
  for (int i=0; i < 3; i++)
  {
    Iball.add(new invisible());
  }
  for (int i=0; i < 3; i++)
  {
    Fball.add(new speed());
  }
}

void draw()
{
  //screen 1 (game screen)
  if (screen == 1)
  {
    //background
    background(255, 255, 255);
    //calling the classes
    player1.move();
    player1.draw();
    enieme1.move();
    enieme1.draw();
    //timer/ score
    score = (millis()/1000) - 2;
    textSize(30);
    text(score, 140, 50);
    text ("score:", 50, 50);
   //spawing the normal balls
    for (int i = 0; i < Nball.size(); i++)
    {
      Nball.get(i).move();
      Nball.get(i).draw();
      //collisions
      if (dist (Nball.get(i).pos.x, Nball.get(i).pos.y, player1.pos.x, player1.pos.y) < 12.5)
      {
        hit = true;
        nball = true;
      }
    }
    //spawinging the big balls 
    for (int i = 0; i < Eball.size(); i++)
    {
      Eball.get(i).move();
      Eball.get(i).draw();
      //collisions
      if (dist (Eball.get(i).pos.x, Eball.get(i).pos.y, player1.pos.x, player1.pos.y) < 30)
      {
        hit = true;
        eball = true;
      }
    }
    //spawing the invisible balls
    for (int i = 0; i < Iball.size(); i++)
    {
      Iball.get(i).move();
      Iball.get(i).draw();
      //collisions
      if (dist (Iball.get(i).pos.x, Iball.get(i).pos.y, player1.pos.x, player1.pos.y) < 12.5)
      {
        hit = true;
        iball = true;
      }
    }
    //spawing the speed balls
    for (int i = 0; i < Fball.size(); i++)
    {
      Fball.get(i).move();
      Fball.get(i).draw();
      //collisions
      if (dist (Fball.get(i).pos.x, Fball.get(i).pos.y, player1.pos.x, player1.pos.y) < 12.5)
      {
        hit = true;
        sball = true;
      }
    }
    //GAME OVER SCREEN
    if (hit == true)
    {
      screen = 2;
    }
  }
  //screen 2 
  if (screen == 2)
  {
    //background
    background(0);
   //gameover and score text
    textSize(60);
    text ("gameover", 150, 100);
    text(("score : ") + (score), 50, 540);
    // //text to tell thhe player which ball killed them
    if (nball == true)
    {
      textSize(50);
      text("The normal ball", 50, 180);
      text("killed you (red)", 50, 250);
    }
    if (eball == true)
    {
      textSize(50);
       text("The growing ball", 50, 180);
      text("killed you (green)", 50, 250);
    }
    if (sball == true)
    {
      textSize(50);
      text("The quick ball", 50, 180);
      text("killed you (yellow)", 50, 250);
    }
    if (iball == true)
    {
      textSize(50);
       text("The invisible ball", 50, 180);
      text("killed you (blue)", 50, 250);
    }
  }
}
