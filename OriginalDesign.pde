class dna {
  int myx;
  int myy1;
  int myy2;
  int myyDir;
  int myr1;
  int myg1;
  int myb1;
  int myr2;
  int myg2;
  int myb2;
  int mymin;
  int mymax;
  
  dna(int x, int y1, int y2, int yDir, int r1, int g1, int b1, int r2, int g2, int b2, int min, int max) {
    myx = x;
    myy1 = y1;
    myy2 = y2;
    myyDir = yDir;
    myr1 = r1;
    myg1 = g1;
    myb1 = b1;
    myr2 = r2;
    myg2 = g2;
    myb2 = b2;
    mymin = min;
    mymax = max;
  }

  void move() {
    if (myy1 > mymax || myy1 < mymin) {
     myyDir = -(myyDir); 
    }
    stroke(myr1, myg1, myb1);
    line(myx, myy1, myx, 250);
    stroke(myr2, myg2, myb2);
    line(myx, 250, myx, myy2);
    strokeWeight(5);
    noStroke();
    ellipse(myx, myy1, 20, 20);
    ellipse(myx, myy2, 20, 20);
    myy1 = myy1 + myyDir;
    myy2 = myy2 - myyDir;
  }
}

dna purpleBlue, purpleBlue1, purpleBlue2, pinkYellow, pinkYellow1, bluePurple, bluePurple1, yellowPink, yellowPink1;
void setup() {
   size(520, 500);  
   frameRate(80);
   purpleBlue = new dna(100, 200, 300, 1, 194, 130, 237, 167, 231, 255, 200, 300);
   pinkYellow = new dna(140, 200, 300, 1, 253, 178, 255, 252, 239, 164, 200, 300);
   bluePurple = new dna(180, 200, 300, 1, 167, 231, 255, 194, 130, 237, 200, 300);
   yellowPink = new dna(220, 200, 300, 1, 252, 239, 164, 253, 178, 255, 200, 300);
   purpleBlue1 = new dna(260, 200, 300, 1, 194, 130, 237, 167, 231, 255, 200, 300);
   pinkYellow1 = new dna(300, 200, 300, 1, 253, 178, 255, 252, 239, 164, 200, 300);
   bluePurple1 = new dna(340, 200, 300, 1, 167, 231, 255, 194, 130, 237, 200, 300);
   yellowPink1 = new dna(380, 200, 300, 1, 252, 239, 164, 253, 178, 255, 200, 300);
   purpleBlue2 = new dna(420, 200, 300, 1, 194, 130, 237, 167, 231, 255, 200, 300);

     
}
  
void draw() {
  background(100);
  purpleBlue.move();
  if (frameCount > 25)
    pinkYellow.move();
  if (frameCount > 50)  
    bluePurple.move();
  if (frameCount > 75)
    yellowPink.move();
  if (frameCount > 100)
    purpleBlue1.move();
  if (frameCount > 125)
    pinkYellow1.move();
  if (frameCount > 150)
    bluePurple1.move();
  if (frameCount > 175)
    yellowPink1.move();
  if (frameCount > 200)
    purpleBlue2.move();
}


