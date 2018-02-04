class Circle{
  
PVector location;
PVector amplitude;
PVector angle;
PVector velocity;
color filler;

  
 Circle(float _locx, float _locy, float _speedx, float _speedy, float _ampx, float _ampy){
   location = new PVector(_locx, _locy);
   velocity = new PVector(_speedx, _speedy);
   amplitude = new PVector(_ampx, _ampy);
   angle = new PVector();
   filler = color(int(random(0,255)),int(random(0,255)),int(random(0,255)), 100);
 
 }
 
  void rotation(){
  float y = amplitude.y * sin(angle.y);
  float x = amplitude.x * cos(angle.x);
  
  angle.add(velocity);
  
  pushMatrix();
  translate(location.x,location.y);
  stroke(255,255);
  line(0,0,x,y);
  //stroke(0,50);
  fill(255,100);
  ellipse(x,y,20,20);
  popMatrix();
  
  //angle +=0.01;
}

  
}