class Country {
  PImage photo;
  String name;
  String imgName;
  float x;
  float y;
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
}
