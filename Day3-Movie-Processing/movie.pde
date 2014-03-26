import processing.video.*;

import ddf.minim.spi.*;
import ddf.minim.signals.*;
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.ugens.*;
import ddf.minim.effects.*;

Minim minim;
AudioSample gun;
AudioSample metal;
AudioSample happy;

PImage one,two,three,four,five,six,seven;
void setup(){
  size(600, 400);
  background(255);
  one = loadImage("1.jpg");
  two = loadImage("2.jpg");
  three = loadImage("3.jpg");
  four = loadImage("4.jpg");
  five = loadImage("5.jpg");
  six = loadImage("6.jpg");
  seven = loadImage("7.jpg");
  minim = new Minim(this);
  gun = minim.loadSample("gun.wav",2048);
  //metal = minim2.loadSample("metal.wav",2048);
  //happy = minim3.loadSample("happy.wav",2048);
}

/*void stop() {
  gun.close();
  minim.stop();
  super.stop();
}*/


void scene1(){
  image(one,0,0);
}

void scene2(){
  image(two,0,0);
}

void scene3(){
  image(three,0,0);
}

void scene4(){
  //metal.trigger();
  image(four,0,0);
}

void scene5(){
  image(five,0,0);
}

void scene6(){
  //happy.trigger();
  image(six,0,0);
}
-
void scene7(){
  image(seven,0,0);
}


void draw(){
  int m = millis();
  if(m < 2000) {
    scene1();
  } else if (m < 3000) {
    scene2();
  } else if (m < 4500) {
    scene3();
  } else if (m < 7000){
    gun.trigger();
    scene4();
  } else if (m < 10000) {
    scene5();
  } else if (m < 12500 ) {
    scene6();
  } else if (m < 13500) {
    scene7();
  } else {
    noLoop();
  }
}
