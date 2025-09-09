class Group {
  // Initialiser variabler
  int startX; // X-startværdi for gruppen
  float startY; // Y-startværdi for gruppen
  int w; // Bredde for de hvide rektangler
  int h; // Højde for rektanglerne
  int border; // Border/Ramme værdien
  float y_offset; // Offset for y så man tegner de hvide rektangler længere inde
  String groupName; // Gruppenavn bruges senere
  color c; //Lige nu farver den selve rektanglerne men skal bruges til at vise
           // gruppefarve
  int firstX;
  int firstY;
  PFont myFont;
  
  //Gruppe constructur
  Group(String tempName,int tempX, int tempY) {
    groupName = tempName;
    border = 10;
    startX = tempX + border;
    y_offset = 42.5;
    startY = tempY + y_offset;
    w = 430;
    h = 40;
    firstX = tempX;
    firstY = tempY;
  }
  // Tegner/Viser rektanglerne
  void display() {
    // If betingelse til at farve grupperne
    if (firstY < height / 2) {
      c = color(0, 255, 255);
      fill(c);
    } else {
      c = color(255, 255, 0);
      fill(c);
    }
    // Sætter teksten i centrum vertikalt og horisontalt
    textAlign(CENTER, CENTER);
    // Lavet en font
    myFont = createFont("Calibri Bold", 22.5);  
    // Loader fonten
    textFont(myFont);
    // Displayer teksten og sætter koordinater
    text(groupName, firstX, firstY, width / 2, h);
    //For loop til at tegne rektangler
    for (int i = 0; i < 4; i++){
      //Skifter farve for rektangler til hvid
      fill(255);
      // i * (h + border), tilføjer margin mellem rektanglerne
      rect(startX, startY + i * (h + border), w, h);
      // Tegner lille rektangel for enden til at indikere gruppe
      fill(c);
      rect(startX + w - 20, startY + i * (h + border), 20, h);
    }
  }
}
