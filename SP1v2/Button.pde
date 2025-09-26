class Button {
  String name;
  float x, y, w, h;
  color c = color(211, 211, 211);
  PFont myFont;
  
  Button(float tempX, float tempY, float tempWidth, float tempHeight){
    x = tempX;
    y = tempY;
    w = tempWidth;
    h = tempHeight;
  }
  
  void drawButtonRect(String tempName){
    name = tempName;
    fill(c);
    rect(x, y, w, h);
    fill(0);
    myFont = createFont("Calibri", (mHeight * 2.5/50));  // Lavet en font, 30/500
    textAlign(CENTER, CENTER);
    textFont(myFont); // Loader fonten
    text(name.toUpperCase(), x, y, w, h);
  }
  
  boolean isHovering(){
    return (mouseX >= x && mouseX <= x + w && mouseY >= y && mouseY <= y + h);
  }
  
  void hoverEffect(){
    fill(255, 255, 255, 90);
    rect(x, y, w, h);
  }
}
