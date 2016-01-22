class Particle {
  PVector location;
  PVector velocity;
  PVector acceleration;
  PVector gravity;
  int mouseyX;
  int mouseyY;
  int op;
  Particle() {
    mouseyX = mouseX;
    mouseyY = mouseY;
    location = new PVector(mouseyX, mouseyY);
    velocity = new PVector(0, 0);
    acceleration = new PVector(random(-.3, .3), 0);
    gravity = new PVector(0.0, 0.01);
    op = 255;
  }
  
  void update() {
    acceleration.add(gravity);
    velocity.add(acceleration);
    location.add(velocity);
    op = op - 2;
  }
  
  void display() {
    pushMatrix();
    translate(location.x, location.y);
    noStroke();
    fill(3,250,219,op);
    ellipse(0,0,4,4);
    popMatrix();
  }
  float getX(){
    return location.x;
  }
  float getY(){
    return location.y;
  }
}