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
  
  Group(String tempName,int tempX, int tempY, color tempC) {
    groupName = tempName;
    border = 10;
    startX = tempX + border;
    y_offset = 42.5;
    startY = tempY + y_offset;
    w = 430;
    h = 40;
    c = tempC;
  }
  // Tegner/Viser rektanglerne
  void display() {
    //For loop til at tegne rektangler
    for (int i = 0; i < 4; i++){
      // i * (h + border), tilføjer margin mellem rektanglerne
      rect(startX, startY + i * (h + border), w, h);
    }
  }
}
