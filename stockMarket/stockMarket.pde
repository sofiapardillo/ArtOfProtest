import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

Minim minim;
AudioPlayer flatline;

  float w, h;
  int[] values = { 250, 250, 500, 150, 350, 450, 250 };
  boolean keyHold;
  
  void setup(){
    frameRate(2);
    size(1200,750);
    w = width;
    h = height;
    stroke(255);
    strokeWeight(6);
    smooth();
    keyHold = false;
    minim = new Minim(this);
    flatline = minim.loadFile("heart.mp3", 2048);
}

void draw(){
background(0);
 if (keyHold == false){
   fill(255);
   text("2.4%", random(w), random(h));
   text("29.63%", random(w), random(h));
   text("100%", random(w), random(h));
   text("0%", random(w), random(h));
   text(".0035%", random(w), random(h));
   text("67.9%", random(w), random(h));
   text("3.14%", random(w), random(h));
   fill(255);
  float lineWidth = (float) width/(values.length-1);
   for (int i=0; i<values.length-1; i++) {
    line(i*lineWidth, values[i], (i+1)*lineWidth, values[i+1]);
  }
  for (int i=0; i<values.length; i++) {
    values[i] = (int) (250 + random(-200, 200));
  }
 } 
}

void keyPressed(){
  //colorMode(HSB, 100);
  keyHold = true;
  background(0);
  stroke(255,0,0);
 line(0,h/2,150,h-50);
 line(150,h-50,w,h-50);
 flatline.play();
  }
  
  void keyReleased() {
   keyHold = false;
   stroke(255);
   flatline.pause();
   flatline.rewind();
  }