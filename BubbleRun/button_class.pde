ArrayList<Button> buttons = new ArrayList<Button>();

void draw_bttons() {
  for (int i = buttons.size() -1; i>= 0; i--) {
    Button button = buttons.get(i);
    button.button_display();
    button.button_mouseOn();
  }
}

class Button {
  float x, y;
  float size1, size2;
  String text;
  int object;

  public Button(float x, float y, float size1, float size2, String text, int object) {
    this.x = x;
    this.y = y;
    this.size1 = size1;
    this.size2 = size2;
    this.text = text;
    this.object = object;
    buttons.add(this);
  }
  void button_display() {
    fill(255, 255, 255);
    rect(this.x, this.y, this.size1, this.size2);
    textSize(20);
    fill(0, 0, 0);
    text(this.text, this.x-(this.size1/2.5), this.y+5);
  }
  void button_mouseOn() {
    if (mouseX > (this.x-this.size1/2) && (mouseX < (this.x+this.size1/2))) {
      if ((mouseY > (this.y-(this.size2/2))) && (mouseY < (this.y+ (this.size2/2)))) {
        //if (TUI.nappain_painettu('1')) {
        if (mousePressed == true) {

          if (this.object == 1) {
            gamemode = 2;
            buttons.remove(this);
          }
          if (this.object == 2) {
            
          }
          if (this.object == 3) {
            gamemode = 1;
            buttons.remove(this);
          }
        }
      }
    }
  }
}
