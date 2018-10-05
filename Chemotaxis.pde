bacteria[] bob;

void setup() {
  size(300, 300);

  bob = new bacteria[1000]; 
  for (int i=0; i<bob.length; i++)
  {
    bob[i] = new bacteria(150, 150);
  }
}

void draw () {
  background(0);
  for (int i=0; i<bob.length; i++) {

    bob[i].show();
    bob[i].move();
  }
}

class bacteria {

  int myX, myY, bacteriaColor;

  bacteria(int x, int y) {
    myX = x; 
    myY = y;
    bacteriaColor = color (255,0,0);
  }

  void move() {
    myX = myX + (int) (Math.random()*7)-3;
    myY = myY + (int) (Math.random()*7)-3;
  }

  void show() {
    fill(bacteriaColor);
    ellipse(myX, myY, 50, 50);
  }
}
