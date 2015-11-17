//declare variables
float diam;
PVector[] loc = new PVector [30];
PVector[] vel = new PVector [30];

void setup() {
  //set size of canvas
  size(800, 600);
  for (int i=0; i<30; i++){
    //initialize variables
    loc[i] = new PVector(width/2,height/2);
    diam = 50;
    vel[i] = PVector.random2D();
    vel[i].mult(10);
  }
}

void draw() {
  //draw background to cover previous frame
  background(0);

  for (int i=0; i<30; i++) {
    //add aesthetic
    strokeWeight(10);
    
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