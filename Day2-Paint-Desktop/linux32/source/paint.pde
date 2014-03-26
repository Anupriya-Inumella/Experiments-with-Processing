void setup(){
  size(600,400);
  background(255);
}

void draw(){
  if(mousePressed == true){
    point(mouseX,mouseY);
    strokeWeight(4);  
    //strokeJoin(ROUND);
    //strokeCap(SQUARE);
  }
  save("image.jpg");
}

