//declare variables
float diam;
PVector[] loc = new PVector [40];
PVector[] vel = new PVector [40];

void setup() {
  //set size of canvas
  size(600, 600);
  for (int i=0; i<40; i++){
    //initialize variables
    loc[i] = new PVector(width/2,height/2);
    diam = 50;
    vel[i] = PVector.random2D();
    vel[i].mult(10);
  }
}

void draw() {
  //draw background to cover previous frame
  background(236,219,188);

  for (int i=0; i<40; i++) {
    //add aesthetic
    strokeWeight(15);
    noFill();
    if (i<8) {
      stroke(255,230,234,400);
    }
    else if (i<16) {
      stroke(240,240,240,400);
    }
    else if (i<24) {
      stroke(223,247,246,400);
    }
    else if (i<32) {
      stroke(161,227,224,400);
    }
    else if (i<40) {
      stroke(120,191,188,400);
    }
    
    //draw ball
    ellipse(loc[i].x, loc[i].y, diam, diam);
  
    //add vel[i]oc[i]ity to position
    loc[i].add(vel[i]);
  
    //wrap the ball's position
    if (loc[i].x + diam/2 >= width) {
      vel[i].x = -abs(vel[i].x);     
    } else if (loc[i].x - diam/2 <= 0) {
      vel[i].x = abs(vel[i].x);
    }
    if (loc[i].y + diam/2 >= height) {
      vel[i].y = -abs(vel[i].y);
    } else if (loc[i].y - diam/2 <= 0) {
      vel[i].y = abs(vel[i].y);
    }
  }
}