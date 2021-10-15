class Brick
{
  float posX; //x co-ord of brick
  float posY; //y co-ord of brick
  int rect_h; // height of brick
  int rect_w; // width of brick
  color colour; // colour of brick

  Brick() // constructor for brick
  {
    posX = 0;
    posY = 0 ;
    rect_w = 100;
    rect_h = 50;
    colour = color(245, 144, 67);
  }

  void draw() {
    fill(colour);
    rect(posX, posY, rect_w, rect_h);
  }
}
