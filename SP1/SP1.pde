Group groupA;
Group groupB;
Group groupC;
Group groupD;

void setup(){
  size(900, 500);
  //Input ("Group Name", startX, startY)
  groupA = new Group("GROUP A", 0, 0);
  groupB = new Group("GROUP B", 0, height/2);
  groupC = new Group("GROUP C", width/2, 0);
  groupD = new Group("GROUP D", width/2, height/2);
}

void draw(){
  // Baggrundsfarve
  background(46, 46, 69);
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
