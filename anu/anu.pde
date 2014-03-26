PFont font;
int ypos;
int xpos;
float opa;
int inc;
color col;
boolean el;

void setup() {
  col=color(0, 0, 199);
  font=loadFont("AppleColorEmoji-48.vlw");
  size(851, 315);
  smooth();
  textSize(90);
  ypos=150;
  frameRate(120);
  el=false;
}

void draw() {
  background(255);
  if (el == true) {
    col=color(int(random(255)), int(random(255)), int(random(255)) );
    el = false;
  }
  inc++;
  xpos=inc/12;
  opa=mouseY*2.5;
  if (mousePressed) {
    inc=0;//reset
    el=true;
  }
  if(inc>800){ 
    inc = 615;
    stroke(255);//white stroke
    fill(col, opa);
  }
  else{
    fill(127, 80);
  }
  fill(col, opa);
  text("A", 2*xpos, ypos);
  text("N", 3*xpos, ypos);
  text("U", 4*xpos, ypos);
  text("P", 5*xpos, ypos);
  text("R", 6*xpos, ypos);
  text("I", 7*xpos, ypos);
  text("Y", 8*xpos, ypos);
  text("A", 9*xpos, ypos);
  strokeWeight(5);
  
  saveFrame("anu.png");
}

