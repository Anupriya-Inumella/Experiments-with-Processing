import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class boat_mouse extends PApplet {

PImage bg,s;

IntList x = new IntList();
IntList y = new IntList();
int i=0;

public void setup()
{
  size(1440,508);
  noStroke();
  bg = loadImage("move(this).jpg");
  s = loadImage("boat.jpg");
}
public void draw()
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
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "--full-screen", "--bgcolor=#666666", "--stop-color=#cccccc", "boat_mouse" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
