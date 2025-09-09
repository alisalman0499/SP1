Group [] groups = new Group[4];

void setup(){
  size(900, 500);
  //Input ("Group Name", startX, startY)
  groups[0] = new Group("GROUP A", 0, 0);
  groups[1] = new Group("GROUP B", 0, height/2);
  groups[2] = new Group("GROUP C", width/2, 0);
  groups[3] = new Group("GROUP D", width/2, height/2);
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
  for (int i = 0; i < groups.length; i++){
    groups[i].display();
  }
  
  
  
}
