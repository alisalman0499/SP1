Group groupA;
void setup(){
  size(900, 500);
}
void draw(){
  // Baggrundsfarve
  background(49, 15, 153);
  // Tegn linjer der splitter grupperne
  stroke(255);
  // Vandret linje
  line(width/2, 0, width/2, height);
  //Lodret linje
  line(0, height/2, width, height/2);
  
}
