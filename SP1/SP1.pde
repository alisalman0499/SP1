Group groupA;
void setup(){
  size(900, 500);
}
int w;
int h;
void draw(){
  // Baggrundsfarve
  background(49, 15, 153);
  // Tegn linjer der splitter grupperne
  stroke(255);
  // Vandret linje
  line(width/2, 0, width/2, height);
  //Lodret linje
  line(0, height/2, width, height/2);
  fill(255);
  w = 430;
  h = 45;
  rect(10, 35, w, h);
  rect(10, 85, w, h);
  rect(10, 140, w, h);
  rect(10, 195, w, h);
  
}
