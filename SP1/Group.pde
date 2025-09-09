class Group {
  // Initialiser variabler
  int startX; //X-startværdi for gruppen
  float startY; //Y-startværdi for gruppen
  int w; //Bredde for de hvide rektangler
  int h; //Højde for rektanglerne
  int border; //Border værdien
  float y_offset; //Offset for y så man tegner de hvide rektangler længere inde
  String groupName;
  color c;
  
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
  void display() {
    rect(startX, startY, w, h);
    rect(startX, startY + h + 10, w, h);
    rect(startX, startY + h * 2 + 20, w, h);
    rect(startX, startY + h * 3 + 30, w, h);
  }
}
