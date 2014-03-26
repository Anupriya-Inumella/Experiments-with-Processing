void setup(){
size(400,400);
i=0;
}
int i;
void draw(){
  background(160,218,255);
  //ellipse(200,i,200,200);
  //ellipse(i,200,200,200);
  ellipse(200,200,i,200);
  ellipse(200,200,200,i);
  i++;
}
