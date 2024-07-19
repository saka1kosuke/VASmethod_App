class Button {
  float x, y, width, height;
  String label;

  Button(float x, float y, float width, float height, String label) {
    this.x = x;
    this.y = y;
    this.width = width;
    this.height = height;
    this.label = label;
  }

  void draw(float mouseX, float mouseY) {
    if (isHovered(mouseX, mouseY)) {
      fill(100);
    } else {
      fill(150);
    }
    rect(x, y, width, height);
    fill(0);
    textAlign(CENTER, CENTER);
    textSize(19);
    text(label, x + width / 2, y + height / 2);
  }

  boolean isHovered(float mouseX, float mouseY) {
    return mouseX > x && mouseX < x + width && mouseY > y && mouseY < y + height;
  }
}
