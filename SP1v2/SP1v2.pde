Group [] groups = new Group[4];
Country[] countries = new Country[16];
String[] names = { "russia", "saudiarabia", "egypt", "uruguay", 
"portugal", "spain", "morocco", "iran", 
"france", "australia", "peru", "denmark",
"argentina", "iceland", "croatia", "nigeria"};


void setup(){
  size(900, 500); //max værdi for min bærbar på bredde er 1400, brug 777 som højde
  for (int i = 0; i < names.length; i++) {
    countries[i] = new Country(names[i], 0, 0); 
  }
  //Input ("Group Name", startX, startY)
  groups[0] = new Group("GROUP A", 0, 0, 0);
  groups[1] = new Group("GROUP B", 0, height/2, 4);
  groups[2] = new Group("GROUP C", width/2, 0, 8);
  groups[3] = new Group("GROUP D", width/2, height/2, 12);
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
