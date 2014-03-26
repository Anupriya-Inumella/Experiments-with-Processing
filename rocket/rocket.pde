PImage bg,s;
float y=300;
float x=731;
int flag = 1;
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
  image(s,x,y);
  /////////////////////////////////////////
  // Controlling the height og sailing boat
  if ( y >= 345 ){ flag = 0; }
  if ( y <= 295 ){ flag = 1; }
  if( flag == 1 ){
    y = y + 0.35;
  } else {
    y = y - 0.35;
  }
  //////////////////////////////////////////
  // Controlling the x og sailing boat
  if(x>=20){
    x = x - 0.65;
  }
  //////////////////////////////////////////
}
