PImage bg,s;

IntList x = new IntList();
IntList y = new IntList();
int i=0;

void setup()
{
  size(1440,508);
  noStroke();
  bg = loadImage("move(this).jpg");
  s = loadImage("boat.jpg");
}
void draw()
{
  background(bg);
  image(s,mouseX,mouseY);
   
  x.append(mouseX);
  y.append(mouseY);
  
  if(mouseX>=1370){
    i=i+1;
    image(s,x.get(i),y.get(i));
    if(i==x.size()){
      x.clear();
      y.clear();
      i=0;
    } 
   //image(s,x.get(i),y.get(i));   
  }
  
}
