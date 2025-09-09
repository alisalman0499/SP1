class Group {
  // Initialiser variabler
  
  int border = 10; // Border/Ramme værdien
  int w = width / 2 - border * 2; // Bredde for de hvide rektangler
  int h = 40; // Højde for rektanglerne
  float y_offset = 42.5; /* Offset for y så man tegner de hvide rektangler 
  længere inde */
  
  String groupName; // Gruppenavn bruges senere
  color c; //Bruges til at farve grupperne
  int firstX;
  int firstY;
  float rectX; //Hvide rektangler tegnes ud fra denne værdi
  float rectY;
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
    myFont = createFont("Calibri Bold", 22.5);  // Lavet en font
    textFont(myFont); // Loader fonten
    text(groupName, firstX, firstY, width / 2, h); // Viser tekst og sætter koordinater
    
    for (int i = 0; i < 4; i++){ //For loop til at tegne rektangler
      fill(255); //Skifter farve for rektangler til hvid
      int margin = i * (h + border); // tilføjer "mellemrum" mellem rektanglerne
      rect(rectX, rectY + margin, w, h);
      // Tegner lille rektangel for enden til at indikere gruppe
      fill(c);
      rect(rectX + w - 15, rectY + margin, 15, h);
      countries[i + countingIndex] = new Country(names[i + countingIndex], rectX, rectY + margin);
      countries[i + countingIndex].display();
    }
  }
}
