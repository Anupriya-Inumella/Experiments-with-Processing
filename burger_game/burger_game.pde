PImage monster;
float monsterX = 60;
float speedX = 1.75;

PImage burger;
float bY = 0;
float bX = 0;
float[] b = new float[20];
float[] bY1 = new float[20];
int count1 = 0;

void setup()
{
  size(600,400);
  burger = loadImage("burger.jpg");
  monster = loadImage("monsterman.png");
  smooth();
}

void draw()
{
  bY = bY + 0.75;
  bX = bX + speedX;
  if(monsterX < 50 || monsterX > random(390,width-50)) speedX = - speedX;
  monsterX = monsterX + speedX;
  background(255,255,255);
  //if(bY > 465) Kill it 
  
  //blue rectangle
  noStroke();
  fill(135,206,250);
  rect(0,0,600,40);
  
  //black rectangle
  fill(0,0,0);
  rect(0,40,600,10);
  
  //grey wall
  fill(67,67,67);
  rect(0,50,600,395);
  
  //lines full width
  for(int i=90; i<350; i=i+40){
    stroke(0);
    line(0,i,600,i);
  }
  //short vertical lines
  int count=-100;
  for(int i=50; i<350; i=i+40){
    for(int j=count; j<600; j=j+70){
      stroke(0);
      line(j,i,j,i+40);
    }
    count = count + 25;
  }
  
  //green rectangle
  fill(34,139,34);
  rect(0,365,600,35);
  
  //rectanlge pad naresh
  fill(218,165,32);
  rect(mouseX,355,100,10);
  
  image(monster,monsterX,0,width/16,40);
  //b[count1] = monsterX;
  count1 = count1 + 1;
  //if(count1 ==2) count1 = 0;
  //if(count1%5 ==0 ){
    for(int i=0; i<2; ++i){
      if (b[i] == 0) {
        b[i] = monsterX + random(-10, 10);
      } else { 
        b[i] = b[i] + random(-10, 10);
      }
      if (bY1[i] == 0) {
        bY1[i] = bY + random(0, 3);
      } else {
        bY1[i] = bY1[i] + random(0,3);
      }
    }
  
    for(int i=0; i<2; ++i){
      if(b[i]!=0){
        image(burger,b[i],bY1[i],width/16,height/16);
      }
    }
 // }
  
}
