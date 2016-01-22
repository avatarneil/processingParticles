ArrayList<Particle> particles;
int x;
 
void setup() {
  particles = new ArrayList<Particle>();
  size(600, 600);
}
 
void draw() {
  background(0);
  particles.add(new Particle());
  int i = 0;
  while (i < particles.size()) {
    if (mousePressed){
      particles.get(i).update();
    }
      particles.get(i).display();

    /*if (particles.get(i).getX() > width ||particles.get(i).getY() < 0 ||particles.get(i).getX() < 0||particles.get(i).getY() > height){
      particles.remove(i);
    }*/
    i++;
  }
  if (keyPressed == true){
    while (x < particles.size()){
      particles.remove(x);
      x++;
    }
  x=0;
  }
}