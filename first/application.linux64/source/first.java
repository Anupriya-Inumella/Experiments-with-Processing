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

public class first extends PApplet {

public void setup(){
size(400,400);
i=0;
}
int i;
public void draw(){
  background(160,218,255);
  //ellipse(200,i,200,200);
  //ellipse(i,200,200,200);
  ellipse(200,200,i,200);
  ellipse(200,200,200,i);
  i++;
}
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "first" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
