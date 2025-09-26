public int mHeight; //Hovedprogrammet får en mainHeight værdi istedet
/* bruger main Height som så hovedprogrammet ikke bliver ødelagt når
footeren bliver tilføjet */
Group [] groups = new Group[4];
Country[] countries = new Country[16];
String[] names = { "russia", "saudiarabia", "egypt", "uruguay", 
"portugal", "spain", "morocco", "iran", 
"france", "australia", "peru", "denmark",
"argentina", "iceland", "croatia", "nigeria"};

/* As of Processing 3.0, to use variables as the parameters to size() function, 
place the size() function within the settings() function (instead of setup()). 
There is more information about this on the settings() reference page.
- https://processing.org/reference/size_.html */

void settings(){
  size(1300, 800); /* max værdi for min bærbar på bredde er 1400,
  brug 777 som højde*/
  mHeight = height * 500/575;
}

void setup(){
  
  for (int i = 0; i < names.length; i++) {
    countries[i] = new Country(names[i], 0, 0); 
  }
  //Input ("Group Name", startX, startY)
  groups[0] = new Group("GROUP A", 0, 0, 0);
  groups[1] = new Group("GROUP B", 0, mHeight/2, 4);
  groups[2] = new Group("GROUP C", width/2, 0, 8);
  groups[3] = new Group("GROUP D", width/2, mHeight/2, 12);
}

void draw(){
  // Baggrundsfarve
  background(46, 46, 69);
  // Tegn linjer der splitter grupperne
  stroke(255);
  drawLines();
  for (int i = 0; i < groups.length; i++){
    groups[i].display();
  }
  
  
}

public void drawLines(){
  // Lodret linje i midten
  line(width/2, 0, width/2, mHeight);
    //vandret linje
  line(0, mHeight/2, width, mHeight/2);
    //Tegner vandret linje i bunden af hovedprogrammet
  line(0, mHeight, width, mHeight);
}
