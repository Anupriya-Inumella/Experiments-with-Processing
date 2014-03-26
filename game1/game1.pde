void setup() {
  size(600, 400);
}

float ballx = 200;
float bally = 100;
float speedx = 10;
float speedy = 0;
int hit = 0;
int miss = 0;

void draw() {
  if (mousePressed) { 
    hit = 0; 
    miss = 0;
  }

  float paddle = 1000/(hit+10);
  if (ballx < 0 || ballx>width) speedx = -speedx;
  if (bally>height) { 
    speedy = -speedy;
    float distance = abs(mouseX-ballx);
    if (distance < paddle) hit+=1;
    else miss+=1;
  } 
  else speedy += 1;

  ballx += speedx;
  bally += speedy;

  background(100, 200, 50);
  fill(200, 100, 50);
  ellipse(ballx, bally, 50, 50);
  fill(50, 100, 200);
  rect(mouseX-paddle, height-10, 170, 10);

  text("hit: "+hit, 10, 20);
  text("miss: "+miss, 10, 40);
}

