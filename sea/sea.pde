PImage b,s;
float time = 0;
float y = 0;
float[] x1 = new float[50];
float[] y1 = new float[50];
float[] speed = new float[50];

void setup() {
  size(400, 400);
  b = loadImage("boat3.png");
  s = loadImage("stars.jpg");
  int i = 0;
  while(i < 50) {  
    x1[i] = random(0, width);
    y1[i] = random(0, height/2);
    speed[i] = random(1, 5);
    i = i + 1;
  }
}

void draw() {
    background(0);
    stroke(0);
  
    float x = 0;
    
    int i = 0;
  while(i < 50) {
    strokeWeight(5);
    stroke(255);
    
    point(x1[i], y1[i]);
  
    x1[i] = x1[i] - speed[i];
    if(x1[i] < 0) {
      x1[i] = width;
    }
    i = i + 1;
  }
  
    fill(245,255,250);
    ellipse(10,10,100,100);
    fill(105);
    noStroke();
    ellipse(350,0,200,100);
    ellipse(250,10,150,45);
    //image(s,0,0);
    while (x < width) {
    //image(b,x,150 + 50 * noise(x / 100, time));
    image(b, y, 130 + 60 * noise(y / 100, time));
    stroke(43,187,255);
    line(x, 200 + 50 * noise(x / 100, time), x, height);
    x = x + 1;
    }
  
//  int i = 0;
//  while(i < 100) {
//    strokeWeight(5);
//    //noStroke();
//    //fill(0);
//    point(x1[i], y1[i]);
//  
//    x1[i] = x1[i] - speed[i];
//    if(x1[i] < 0) {
//      x1[i] = width;
//    }
//    i = i + 1;
//  }
  
    y = y + 1;
  
    time = time + 0.02;
}





