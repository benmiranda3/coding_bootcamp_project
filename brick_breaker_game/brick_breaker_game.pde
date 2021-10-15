Paddle paddle; // creating paddle object from paddle class
Brick brick[];// creating 2d array for the bricks
Ball ball; // creating the moving ball

int x = 0; //x axis for the bricks
int y = 0; //y axis for the bricks

void setup() {
  size(600, 600);
  paddle = new Paddle();
  ball = new Ball();
  brick = new Brick[5];
  brick[x] = new Brick();
}

void draw() {
  background(#E8CF9D);
  paddle.draw();
  ball.draw();
  ball_collision();
  game_over();
  draw_bricks();
  //brick_collision();
}

void keyPressed() {
  paddle.move();
}

void ball_collision()
{
  if (ball.posX > paddle.posX && ball.posX < (paddle.posX + 150) && ball.posY  + 20 > paddle.posY) {
    ball.directionY = ball.directionY * -1;
    ball.directionX = ball.directionX * -1;
  }
}


void draw_bricks()
{
  for (float row=0; row<5; row = row+1)
  {
    for (float col=0; col<3; col = col+1)
    {
      brick[x].posX = 50 + row*100;
      brick[x].posY = 30 + col*80;
      brick[x].draw();
    }
  }
}


void game_over()
{
  if (ball.posX + 20 > 0 && ball.posX + 20 < 600 && ball.posY + 20 > 600) {
    println("game over");
    textSize(64);
    fill(255, 0, 255);
    textAlign(CENTER);
    text("Game Over!", width/2, height/2);
    fill(255);
    stop();
  }
}

void brick_collision() {
  if (ball.posX + 20 > brick[x].posX && ball.posX + 20 > brick[x].posX && ball.posY + 20 > brick[x].posY) {
    ball.directionY = ball.directionY * -1;
    ball.directionX = ball.directionX * -1;
    println("hit");
  } else if (ball.posX + 20 > brick[x].posX && ball.posX + 20 > brick[x].posX && ball.posY + 20 > brick[x].posY + 40) {
    ball.directionY = ball.directionY * -1;
    ball.directionX = ball.directionX * -1;
    println("hit");
  }
}
