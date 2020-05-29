// Project 2B: Animation
// BitLeigh Vu
// Version 1.0

// object instancing: windows (composed of 7 boxes), flowers (composed of cyclinder and sphere), 
// and balloons (composed of cylinder and sphere);

// rotating object: balloons on the house
// translating object: the house

float time = 0; 
float balloonTime = 0;
float houseVel = 0;
int balloon = 0;
float eyeX = 0;
float eyeY = 0;
float eyeZ = 0;
int turn = 0;

void setup() {
  size(800, 800, P3D); 
  noStroke();         
}

void draw() {
  
  resetMatrix(); 

  background(255, 255, 255);  // clear the screen to white

  // set up for perspective projection
  perspective(PI * 0.333, 1.0, 0.01, 1000.0);

  // place the camera in the scene
  camera(-50.0 - eyeX, 3.0 - eyeY, 0.0 - eyeZ, 0.0, 0.0, -1.0, 0.0, 1.0, 0.0);

  // light sources
  ambientLight (200, 200, 200);
  directionalLight(255,250, 205, 100, -100, -400);
  
  landscape();
  skyscrapers();
  
  // translate house upwards after balloons 
  if (balloon == 1) {
    if (houseVel > 100) {
      houseVel = 100;
    }

    pushMatrix();
    scale(0.5, 0.5, 0.5);
    translate(0, 15 - houseVel, 0);
    house();
    popMatrix();
    houseVel += 0.07;
  } else {
    pushMatrix();
    scale(0.5, 0.5, 0.5);
    translate(0, 15, 0);
    house();
    popMatrix();
  }
  
  // step forward the time
  time += 0.01;
  
  if (eyeX < 30) {
    eyeX += 0.03;
  }
  
  // set balloons appearing & house begins floating 
  if (time > 1.5 && eyeY < 100) {
    balloon = 1;
    eyeY += 0.1;
  }
  
  // balloon rotation
  if (balloonTime < 5 && turn == 0) {
    balloonTime += 0.09;
  } else if (balloonTime < -5) {
    turn = 0;
  } else {
    balloonTime -= 0.09;
    turn = 1;
  }
 
  
}

void landscape() {
  // grass
  pushMatrix();
  fill(152,251,152);
  translate(0, 20, 0);
  box(40, 2, 40);
  popMatrix();
  
  // concrete
  pushMatrix();
  fill(255, 255, 255);
  translate(0, 35, 0);
  box(1000, 30, 1000);
  popMatrix();
 
}

void skyscrapers() {
  pushMatrix();
  translate(-5, -8, 30);
  skyscraper();
  popMatrix();
  
  pushMatrix();
  scale(1, 1.3, 1);
  translate(-3, -8, 50);
  skyscraper();
  popMatrix();
  
  pushMatrix();
  scale(1, 1.1, 1);
  translate(-8, -8, 70);
  skyscraper();
  popMatrix();
  
  pushMatrix();
  scale(1, 1.3, 1);
  translate(25, -8, 30);
  skyscraper();
  popMatrix();
  
  pushMatrix();
  scale(1, 1.5, 1);
  translate(25, -8, 50);
  skyscraper();
  popMatrix();
  
  pushMatrix();
  scale(1, 1.2, 1);
  translate(25, -8, 70);
  skyscraper();
  popMatrix();
    
  pushMatrix();
  translate(-5, -8, -30);
  scale(1, 1.4, 1);
  skyscraper();
  popMatrix();
  
  pushMatrix();
  scale(1, 1.1, 1);
  translate(-3, -8, -50);
  skyscraper();
  popMatrix();
  
  pushMatrix();
  scale(1, 1.3, 1);
  translate(-8, -8, -70);
  skyscraper();
  popMatrix();
  
  pushMatrix();
  scale(1, 1.3, 1);
  translate(25, -8, -30);
  skyscraper();
  popMatrix();
  
  pushMatrix();
  scale(1, 1.5, 1);
  translate(25, -8, -50);
  skyscraper();
  popMatrix();
  
  pushMatrix();
  scale(1, 1.2, 1);
  translate(25, -8, -70);
  skyscraper();
  popMatrix();

  pushMatrix();
  scale(1, 1.3, 1);
  translate(25, -8, -30);
  skyscraper();
  popMatrix();
  
  pushMatrix();
  scale(1, 1.5, 1);
  translate(50, -8, 70);
  skyscraper();
  popMatrix();
  
  pushMatrix();
  translate(50, -8, 50);
  skyscraper();
  popMatrix();
  
  pushMatrix();
  scale(1, 1.2, 1);
  translate(50, -8, 30);
  skyscraper();
  popMatrix();
  
  pushMatrix();
  scale(1, 1.5, 1);
  translate(50, -8, 10);
  skyscraper();
  popMatrix();
  
  pushMatrix();
  scale(1, 1.1, 1);
  translate(50, -8, -10);
  skyscraper();
  popMatrix();
  
  pushMatrix();
  scale(1, 1.5, 1);
  translate(50, -8, -30);
  skyscraper();
  popMatrix();
  
  pushMatrix();
  scale(1, 1, 1);
  translate(50, -8, -50);
  skyscraper();
  popMatrix();
  
  pushMatrix();
  scale(1, 1.2, 1);
  translate(50, -8, -70);
  skyscraper();
  popMatrix();
  
  ////
  
  pushMatrix();
  scale(1, 1.2, 1);
  translate(50, -8, 70);
  skyscraper();
  popMatrix();
  
  pushMatrix();
  translate(50, -8, 50);
  skyscraper();
  popMatrix();
  
  pushMatrix();
  scale(1, 1.5, 1);
  translate(50, -8, 30);
  skyscraper();
  popMatrix();
  
  pushMatrix();
  scale(1, 1.1, 1);
  translate(50, -8, 10);
  skyscraper();
  popMatrix();
  
  pushMatrix();
  scale(1, 1.3, 1);
  translate(50, -8, -10);
  skyscraper();
  popMatrix();
  
  pushMatrix();
  scale(1, 1.7, 1);
  translate(50, -8, -30);
  skyscraper();
  popMatrix();
  
  pushMatrix();
  scale(1, 1.2, 1);
  translate(50, -8, -50);
  skyscraper();
  popMatrix();
  
  pushMatrix();
  scale(1, 1.3, 1);
  translate(50, -8, -70);
  skyscraper();
  popMatrix();
  
  
  ////////
  
  pushMatrix();
  scale(1, 1.1, 1);
  translate(70, -8, 70);
  skyscraper();
  popMatrix();
  
  pushMatrix();
  translate(70, -8, 50);
  skyscraper();
  popMatrix();
  
  pushMatrix();
  scale(1, 1.8, 1);
  translate(70, -8, 30);
  skyscraper();
  popMatrix();
  
  pushMatrix();
  scale(1, 1.3, 1);
  translate(70, -8, 10);
  skyscraper();
  popMatrix();
  
  pushMatrix();
  scale(1, 1.2, 1);
  translate(70, -8, -10);
  skyscraper();
  popMatrix();
  
  pushMatrix();
  scale(1, 1.4, 1);
  translate(70, -8, -30);
  skyscraper();
  popMatrix();
  
  pushMatrix();
  scale(1, 1.1, 1);
  translate(70, -8, -50);
  skyscraper();
  popMatrix();
  
  pushMatrix();
  scale(1, 1.5, 1);
  translate(70, -8, -70);
  skyscraper();
  popMatrix();
 
}

void house() {
  
  // foundation of house 
  pushMatrix();
  fill(210, 180, 140);
  translate(0, 20, 0);
  box(60, 2, 60);
  popMatrix();
 
  // brick portion of house 
  pushMatrix();
  fill(250, 128, 114);
  translate(0, 5, 0);
  box(50, 30, 50);
  popMatrix();
  
  // door
  pushMatrix();
  fill (139, 69, 19);
  translate(-25, 12, 0);
  box(2, 14, 8);
  popMatrix();
  
  //  door knob
  pushMatrix();
  fill (255,215,0);
  translate(-26.5, 12, 3);
  scale(0.5);
  sphere(1);
  popMatrix();
  
  // window 
  pushMatrix();
  translate(-25, 6, -14);
  windowFB();
  popMatrix();
  
  // window
  pushMatrix();
  translate(-25, 6, 14);
  windowFB();
  popMatrix();
  
  // window
  pushMatrix();
  translate(25, 6, -14);
  windowFB();
  popMatrix();
  
  // window
  pushMatrix();
  translate(25, 6, 14);
  windowFB();
  popMatrix();
  
  // window
  pushMatrix();
  translate(11, 6, 25);
  windowLR();
  popMatrix();
  
  // window
  pushMatrix();
  translate(-11, 6, 25);
  windowLR();
  popMatrix();
  
  // window
  pushMatrix();
  translate(11, 6, -25);
  windowLR();
  popMatrix();

  // window
  pushMatrix();
  translate(-11, 6, -25);
  windowLR();
  popMatrix();
  
  // roof 
  pushMatrix();
  fill (112,128,144);
  translate(0, -12, 0);
  box(55, 4, 55);
  popMatrix();
  
  // chimney
  pushMatrix();
  fill(250, 128, 114);
  translate(-12, -17, 10);
  scale(10, 10, 10);
  box(1);
  popMatrix();
  
  pushMatrix();
  fill(112,128,144);
  translate(-12, -22, 10);
  box(13, 2, 13);
  popMatrix();
  
  // translated flower pot (left)
  pushMatrix();
  translate(-26, 17, -14);
  flowerpot();
  popMatrix();
  
  // grass in flower pot (left) 
  pushMatrix();
  fill(128, 128, 0);
  translate(-25, 15, -14);
  box(4, 1, 10);
  popMatrix();
  
  // scaled flowers
  pushMatrix();
  translate(-26.5, 11, -10);
  scale(.8, .8, .8);
  flower(236, 3, 252);
  popMatrix();

  pushMatrix();
  translate(-26.5, 10, -12);
  scale(1.3, 1.3, 1.3);
  flower(232, 252, 3);
  popMatrix();

  pushMatrix();
  translate(-26.5, 12, -14);
  scale(.9, .9, .9);
  flower(3, 53, 252);
  popMatrix();

  pushMatrix();
  translate(-26.5, 11, -16);
  scale(1.2, 1.2, 1.2);
  flower(252, 90, 3);
  popMatrix();

  pushMatrix();
  translate(-26.5, 12, -18);
  scale(1.4, 1.4, 1.4);
  flower(147, 121, 156);
  popMatrix();
  
  // translated flower pot (right)
  pushMatrix();
  translate(-26, 17, 14);
  flowerpot();
  popMatrix();
  
  // grass in flower pot (right)
  pushMatrix();
  fill(128,128,0);
  translate(-25, 15, 14);
  box(4, 1, 10);
  popMatrix();
  
  // scaled flowers
  pushMatrix();
  translate(-26.5, 11, 10);
  flower(255, 255, 51);
  scale(.9, .9, .9);
  popMatrix();

  pushMatrix();
  translate(-26.5, 10, 12);
  scale(1.1, 1.1, 1.1);
  flower(238, 10, 125);
  popMatrix();

  pushMatrix();
  translate(-26.5, 12, 14);
  scale(1.4, 1.4, 1.4);
  flower(220, 20, 60);
  popMatrix();

  pushMatrix();
  translate(-26.5, 11, 16);
  scale(1.1, 1.1, 1.1);
  flower(134, 22, 199);
  popMatrix();

  pushMatrix();
  translate(-26.5, 12, 18);
  scale(1.3, 1.3, 1.3);
  flower(24, 268, 236);
  popMatrix();
  
  // rotated vines
  vines();
  
  if (balloon == 1) {
    // balloons
    pushMatrix();
    rotateX(radians(balloonTime));
    rotateZ(radians(balloonTime));
    balloons();
    popMatrix();
  }
 
}

void balloons() {
  pushMatrix();
  translate(-6, -46, 10); // -12, -45, 10 // SUBTRACT 6 FROM X
  rotateZ(radians(15));
  balloon(237, 41, 57, 4);
  popMatrix();
  
  pushMatrix();
  translate(-18, -46, 10);
  rotateZ(radians(-15));
  balloon(176, 224, 230, 4);
  popMatrix();
  
  pushMatrix();
  translate(-12, -53, 10);
  balloon(138, 43, 226, 4);
  popMatrix();
  
  pushMatrix();
  translate(-12, -46, 16);
  rotateX(radians(-15));
  balloon(204, 255, 205, 4);
  popMatrix();
  
  pushMatrix();
  translate(-12, -46, 4);
  rotateX(radians(15));
  balloon(219, 112, 147, 4);
  popMatrix();
  
}

// windows for front aand back of house
void windowFB() {
  // glass portion of windown
  pushMatrix();
  fill (135,206,250);
  shininess (5.0);
  box(1, 12, 8);
  popMatrix();
  
  // bottom window railing
  pushMatrix();
  fill (255, 255, 255);
  translate(-1, 5.5, 0);
  box(1, 1, 8);
  popMatrix();
  
  // top window railing
  pushMatrix();
  fill (255, 255, 255);
  translate(-1, -6, 0);
  box(1, 1, 8);
  popMatrix();
  
  // center left-to-right window railing
  pushMatrix();
  fill (255, 255, 255);
  translate(-1, 0, 0);
  box(1, 1, 8);
  popMatrix();
  
  // left window railing
  pushMatrix();
  fill (255, 255, 255);
  translate(-1, 0, -3.5);
  box(1, 12, 1);
  popMatrix();
  
  // right window railing
  pushMatrix();
  fill (255, 255, 255);
  translate(-1, 0, 3.5);
  box(1, 12, 1);
  popMatrix();
  
  // center up & down window railing
  pushMatrix();
  fill (255, 255, 255);
  translate(-1, 0, 0);
  box(1, 12, 1);
  popMatrix();
}

void balloon(int r, int g, int b, int size) {
  // balloon part 
  pushMatrix();
  fill (r, g, b);
  sphere(size);
  popMatrix();
  
  // string part 
  pushMatrix();
  fill (169, 169, 169);
  cylinder(.2, 32, 32);
  popMatrix();
}

// windows for left aand right side of house
void windowLR() {
  
  // glass part of window 
  pushMatrix();
  fill (135,206,250);
  shininess (5.0);
  box(8, 12, 1);
  popMatrix();
  
  // bottom window railing
  pushMatrix();
  fill (255, 255, 255);
  translate(0, 5.5, 0);
  box(8, 1, 1);
  popMatrix();
  
  // top window railing
  pushMatrix();
  fill (255, 255, 255);
  translate(0, -6, 0);
  box(8, 1, 1);
  popMatrix();
  
  // center left-to-right window railing
  pushMatrix();
  fill (255, 255, 255);
  box(8, 1 ,1);
  popMatrix();
  
  // left window railing
  pushMatrix();
  fill (255, 255, 255);
  translate(3.5, 0, 0);
  box(1, 12, 1);
  popMatrix();
  
  // right window railing
  pushMatrix();
  fill (255, 255, 255);
  translate(-3.5, 0, 0);
  box(1, 12, 1);
  popMatrix();
  
  // center up & down window railing
  pushMatrix();
  fill (255, 255, 255);
  box(1, 12, 1);
  popMatrix();
}

void flower(int r, int g, int b) {
  // flower 1
  pushMatrix();
  fill (128,128,0);
  cylinder(0.3, 6, 32);
  popMatrix();
  
  pushMatrix();
  fill(r, g, b);
  sphere(0.75);
  popMatrix();
}

void flowerpot() {
  fill(255, 250, 205);
  box(3, 4, 12);
}

void vines() {
  pushMatrix();
  fill(128, 128, 0);
  translate(18, -6, 25);
  rotateZ(40);
  box(.5, 18, 1);
  popMatrix();
  
  pushMatrix();
  fill(128,128,0);
  translate(16, -4, 25);
  rotateZ(40);
  box(.5, 22.5, 1);
  popMatrix();
  
  pushMatrix();
  fill(128,128,0);
  translate(14, -3, 25);
  rotateZ(40);
  box(.5, 28, 1);
  popMatrix();
  
  pushMatrix();
  fill(128,128,0);
  translate(20, -2, 25);
  rotateZ(-40);
  box(.5, 12, 1);
  popMatrix();
  
  pushMatrix();
  fill(128,128,0);
  translate(18, -6, 25);
  rotateZ(-40);
  box(.5, 16, 1);
  popMatrix();
  
  pushMatrix();
  fill(128,128,0);
  translate(14, -6, 25);
  rotateZ(-40);
  box(.5, 14, 1);
  popMatrix();
  
  pushMatrix();
  fill(128,128,0);
  translate(20, 0, 25);
  rotateZ(-40);
  box(.5, 13, 1);
  popMatrix();
 
  pushMatrix();
  fill(128,128,0);
  translate(14, -8, 25);
  rotateZ(-40);
  box(.5, 14, 1);
  popMatrix();
}

void skyscraper() {
  pushMatrix();
  fill(105, 105, 105);
  box(15, 60, 15);
  popMatrix();
  
  pushMatrix();
  fill(255, 255, 102);
  translate(-8, 0, 0);
  box(1, 2, 2);
  popMatrix();
  
  pushMatrix();
  fill(255, 255, 102);
  translate(-8, -24, -4);
  box(1, 2, 2);
  popMatrix();
  
  pushMatrix();
  fill(255, 255, 102);
  translate(-8, -21, -4);
  box(1, 2, 2);
  popMatrix();
  
  pushMatrix();
  fill(255, 255, 102);
  translate(-8, -24, -1);
  box(1, 2, 2);
  popMatrix();
  
  pushMatrix();
  fill(255, 255, 102);
  translate(-8, -15, -2);
  box(1, 2, 2);
  popMatrix();
  
  pushMatrix();
  fill(255, 255, 102);
  translate(-8, -11, -3);
  box(1, 2, 2);
  popMatrix();
  
  pushMatrix();
  fill(255, 255, 102);
  translate(-8, 5, 3);
  box(1, 2, 2);
  popMatrix();
  
  pushMatrix();
  fill(255, 255, 102);
  translate(-8, 16, -2);
  box(1, 2, 2);
  popMatrix();
  
  pushMatrix();
  fill(255, 255, 102);
  translate(-8, 12, 2);
  box(1, 2, 2);
  popMatrix();
  
  pushMatrix();
  fill(255, 255, 102);
  translate(-8, -4, -3);
  box(1, 2, 2);
  popMatrix();
  
  pushMatrix();
  fill(255, 255, 102);
  translate(-8, -17, 3);
  box(1, 2, 2);
  popMatrix();
  
  pushMatrix();
  fill(255, 255, 102);
  translate(-8, 18, 4);
  box(1, 2, 2);
  popMatrix();
  
  pushMatrix();
  fill(255, 255, 102);
  translate(-8, -9, 3);
  box(1, 2, 2);
  popMatrix();
  
  pushMatrix();
  fill(255, 255, 102);
  translate(-8, 9, -4);
  box(1, 2, 2);
  popMatrix();
}

// Draw a cylinder of a given radius, height and number of sides.
// The base is on the y=0 plane, and it extends vertically in the y direction.
void cylinder(float radius, float height, int sides) {
  int i,ii;
  float []c = new float[sides];
  float []s = new float[sides];

  for (i = 0; i < sides; i++) {
    float theta = TWO_PI * i / (float) sides;
    c[i] = cos(theta);
    s[i] = sin(theta);
  }
  
  // bottom end cap
  
  normal (0.0, -1.0, 0.0);
  for (i = 0; i < sides; i++) {
    ii = (i+1) % sides;
    beginShape(TRIANGLES);
    vertex (c[ii] * radius, 0.0, s[ii] * radius);
    vertex (c[i] * radius, 0.0, s[i] * radius);
    vertex (0.0, 0.0, 0.0);
    endShape();
  }
  
  // top end cap

  normal (0.0, 1.0, 0.0);
  for (i = 0; i < sides; i++) {
    ii = (i+1) % sides;
    beginShape(TRIANGLES);
    vertex (c[ii] * radius, height, s[ii] * radius);
    vertex (c[i] * radius, height, s[i] * radius);
    vertex (0.0, height, 0.0);
    endShape();
  }
  
  // main body of cylinder
  for (i = 0; i < sides; i++) {
    ii = (i+1) % sides;
    beginShape();
    normal (c[i], 0.0, s[i]);
    vertex (c[i] * radius, 0.0, s[i] * radius);
    vertex (c[i] * radius, height, s[i] * radius);
    normal (c[ii], 0.0, s[ii]);
    vertex (c[ii] * radius, height, s[ii] * radius);
    vertex (c[ii] * radius, 0.0, s[ii] * radius);
    endShape(CLOSE);
  }
}
