Group groupA;
Group groupB;
Group groupC;
Group groupD;

void setup(){
  size(900, 500);
  //Input ("Group Name", startX, startY, color)
  groupA = new Group("Group A", 0, 0, 255);
  groupB = new Group("Group B", width/2, 0, 255);
  groupC = new Group("Group C", 0, height/2, 255);
  groupD = new Group("Group D", width/2, height/2, 255);
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
  groupA.display();
  groupB.display();
  groupC.display();
  groupD.display();
  
  
  
  
}
