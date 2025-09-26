
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
    image(photo, x, y, 
    (width * 8/90) + (width * 1/900), (mHeight * (0.081 + 0.25/500))); 
    /* x - (width * 1/900) er der i stedet for bare x 
        for at sørge for der ikke er nogle hvide streger
        mellem billedet og det hvide rektangel
       Det samme gælder for y + (height * 0.25/500)
    */
  }
  void displayText(){
    fill(46, 46, 69);
    myFont = createFont("Calibri Bold", (mHeight * 3/50));  // Lavet en font, 30/500
    textAlign(LEFT, TOP);
    textFont(myFont); // Loader fonten
    text(name.toUpperCase(), x + (width * 1/9), y + (mHeight * 0.02)); //(0.02 = 10/500) 
    //(0.1111 = 100/900)
  }
}
