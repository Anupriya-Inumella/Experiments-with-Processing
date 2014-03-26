PImage r,s,a,k,g,su,ni,m;
int  n = 0;
void setup() {
  size(1200,800);
  background(255);
  frameRate(2);
  noStroke();
  fill(50, 200, 40);  
  
  r = loadImage("reddy.jpg");
  s = loadImage("shiv.jpg");
  a = loadImage("anu.jpg");
  k = loadImage("kavya.jpg");
  g = loadImage("gannu.jpg");
  su = loadImage("su.jpg");
  ni = loadImage("nishtha.jpg");
  m = loadImage("mehak.jpg");
}

void draw(){
  background(255);
  if(n%9==0){
    image(s, 250, 50);
  }
  if(n%9==1){
    image(r,0,0);
  }
  if(n%9==2){
    image(a,150,100);
  }
  if(n%9==3){
    image(k, 250, 50);
  }
  if(n%9==4){
    image(g,0,0);
  }
  if(n%9==6){
    image(su,25, 100);
  }
  if(n%9==7){
    image(ni,50,25);
  }
  if(n%9==8){
    image(m,35,50);
  }
  n = n + 1;
}
