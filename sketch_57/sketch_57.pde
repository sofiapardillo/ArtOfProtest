float w, h;
boolean released;

Circle[] c = new Circle[57];

void setup(){
  //frameRate(10);
  size (1280,720);
  //noLoop();
  w = width;
  h = height;
  background(0);
  released = false;
  
  for (int i = 0; i < c.length; i++){
    c[i] = new Circle(w/2, h/2, 
                      random(-0.05,0.05), random(-0.05,0.05),
                      random(100,400), random(100,400));
                       //Location Velocity Amplitude
    //println(c[i]);
  }
}
void keyReleased(){
  released = true;
}

void draw(){
  
  fill(255,100);
  ellipse(w/2,h/2,20,20);
  fill(0,20);
  rect(-1,-1,width + 1,height + 1);
  
  if (keyPressed || released){
  for(int i=0; i<c.length; i++){
    c[i].rotation();
  }
  }

}