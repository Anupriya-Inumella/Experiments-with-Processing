PImage b,s;
float time = 0;
float y = 0;
void setup() {
  size(400, 400);
  b = loadImage("boat3.png");
  s = loadImage("stars.jpg");
}

void draw() {
  background(255);
  stroke(0);
  
  float x = 0;
  
 // fill(255,200,50);
 // ellipse(45,35,50,50);
    fill(245,255,250);
    ellipse(10,10,100,100);
    fill(105);
    noStroke();
    ellipse(350,0,200,100);
    ellipse(250,10,150,45);
//  fill(0);
//  line(175,65,215,105);
//  line(215,105,255,65);

//  image(b,x, 150 + 50 * noise(x / 100, time));
    image(s,0,0);
  while (x < width) {
//  image(b,x,150 + 50 * noise(x / 100, time));
    image(b, y, 130 + 60 * noise(y / 100, time));
    stroke(43,187,255);
    line(x, 200 + 50 * noise(x / 100, time), x, height);
    x = x + 1;
  }
  
  y = y + 1;
  
  time = time + 0.02;
}





