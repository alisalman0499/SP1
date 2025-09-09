class Country {
  PImage photo;
  String name;
  String imgName;
  float x;
  float y;
  PFont myFont;
  Country(String countryName, float tempX, float tempY) {
    x = tempX;
    y = tempY;
    name = countryName;
    imgName = countryName + ".jpg";
    photo = loadImage(imgName);
  }
  void display(){
    image(photo, x - 1, y, 80, 40.5);
  }
  void displayText(){
    fill(46, 46, 69);
    myFont = createFont("Calibri Bold", 30);  // Lavet en font
    textAlign(LEFT, TOP);
    textFont(myFont); // Loader fonten
    text(name.toUpperCase(), x + 100, y + 10);
  }
}
