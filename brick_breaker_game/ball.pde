class Ball
{
  float posX; //x co-ord of the ball
  float posY; //y co-ord of the ball

  float radius; // radius of the ball
  color colour; // colour of the ball

  float speedX = 10; //speed of x-axis
  float speedY = 10; //speed of y-axis

  float directionX = 1; //direction of ball on x-axis
  float directionY = 1; //direction of ball on y-axis


  Ball() //constructor to assign values to variables
  {
    ellipseMode(RADIUS);
    radius = 20;
    posX = width/2;
    posY = height/2;
    directionX = 1;
    directionY = 1;
    speedX = 3.5;
    speedY = 2.9;
    colour = color(255, 255, 25);
  }

  void draw()
  {
    posX = posX + ( speedX * directionX );
    posY = posY + ( speedY * directionY );

    if (posX > width-radius || posX < radius) {
      directionX = directionX * -1;
    }
    if (posY > height-radius || posY < radius) {
      directionY = directionY * -1;
    }

    circle(posX, posY, radius);
  }
}
