
class Country {
  PImage photo;
  String name, imgName;
  float x, y;
  PFont myFont;
  Country(String countryName, float tempX, float tempY) {
    x = tempX;
    y = tempY;
    name = countryName;
    imgName = countryName + ".jpg";
    photo = loadImage(imgName);
  }
  void display(){
    //skaleringsværdier er sat i parentes så det er lidt mere overskueligt
    image(photo, x - 1, y, (width * 8/90), (height * 0.081)); 
  }
  void displayText(){
    fill(46, 46, 69);
    myFont = createFont("Calibri Bold", (height * 3/50));  // Lavet en font, 30/500
    textAlign(LEFT, TOP);
    textFont(myFont); // Loader fonten
    text(name.toUpperCase(), x + (width * 1/9), y + (height * 0.02)); //(0.02 = 10/500) 
    //(0.1111 = 100/900)
  }
}
