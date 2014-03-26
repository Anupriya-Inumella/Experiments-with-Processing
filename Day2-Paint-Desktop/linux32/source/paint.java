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

public class paint extends PApplet {

public void setup(){
  size(600,400);
  background(255);
}

public void draw(){
  if(mousePressed == true){
    point(mouseX,mouseY);
    strokeWeight(4);  
    //strokeJoin(ROUND);
    //strokeCap(SQUARE);
  }
  save("image.jpg");
}

  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "--full-screen", "--bgcolor=#666666", "--stop-color=#cccccc", "paint" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
