class Group {
  // Initialiser variabler
  
  float border = width * 10/900; // Border/Ramme værdien
  float w = width / 2 - border * 2; // Bredde for de hvide rektangler
  float h = height * 0.08; // Højde for rektanglerne 40/500 = 0.08
  float y_offset = height * 0.085; /* Offset for y så man tegner de hvide rektangler 
  længere inde (42.5 / 500) = 0.085*/
  
  String groupName; // Gruppenavn bruges senere
  color c; //Bruges til at farve grupperne
  int firstX, firstY;
  float rectX, rectY; //Hvide rektangler tegnes ud fra denne værdi
  PFont myFont;
  int countingIndex;
  
  
  //Gruppe constructur
  Group(String tempName,int tempX, int tempY, int counNum) {
    groupName = tempName;
    firstX = tempX;
    firstY = tempY;
    rectX = firstX + border;
    rectY = firstY + y_offset;
    countingIndex = counNum;
  }
  // Tegner/Viser rektanglerne
  void display() {
    if (firstY < height / 2) { // If betingelse til at farve grupperne
      c = color(0, 255, 255); // Gemmer farven så vi kan bruge den senere
    } else {
      c = color(255, 255, 0);
    }
    fill(c);
    textAlign(CENTER, CENTER); // Sætter teksten i centrum vertikalt og horisontalt
    // Lavet en font, 22.5/500 = 0.045
    myFont = createFont("Calibri Bold", (height * 0.045));
    textFont(myFont); // Loader fonten
    text(groupName, firstX, firstY, width / 2, h); // Viser tekst og sætter koordinater
 
    
    for (int i = 0; i < 4; i++){ //For loop til at tegne rektangler
      fill(255); //Skifter farve for rektangler til hvid
      float margin = i * (h + border); // tilføjer "mellemrum" mellem rektanglerne
      rect(rectX, rectY + margin, w, h);
      
      // Tegner lille rektangel for enden til at indikere gruppe
      fill(c);
      float smallOffset = (width * 15/900);
      rect(rectX + w - smallOffset, rectY + margin, smallOffset, h);
      
      int j = i + countingIndex; /* j-værdi til at kører igennem lande listen
      baseret på hvilken gruppe vi er i */
      // Opdaterer X og Y for landene så de passer med rektanglerne
      countries[j] = new Country(names[j], rectX, rectY + margin);
      countries[j].display();
      countries[j].displayText();
    }
  }
}
