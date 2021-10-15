class Paddle
{
  float posX; //x co-ord of paddle
  float posY; //y co-ord of paddle
  float rect_h; // height of the paddle
  float rect_w; // width of the paddle
  color colour; // colour of the paddle

  Paddle() // constructor for paddle
  {
    posX = width/2;
    posY = height/2 +200 ;
    rect_w = 150;
    rect_h = 30;
    colour = color(94, 14, 201);
  }

  void draw()
  {
    fill(colour);
    rect(posX, posY, rect_w, rect_h);
  }

  void move() // method to move the paddle with 'a' and 'd'
  {
    if (key == 'a'|| key =='A')
    {
      if (posX == 0) { //if the paddle hits the left side
      } else {
        posX = posX - 15; //move to the left when 'a' is pressed
      }
    } else if (key == 'd'|| key =='D')
    {
      if (posX == width - 150) { //if the paddle hits the right side
      } else {
        posX = posX + 15; //move to the right when 'd' is pressed
      }
    }
  }
}
