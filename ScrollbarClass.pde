class Scrollbar {
  float x, y, length;
  float position;

  Scrollbar(float x, float y, float length) {
    this.x = x;
    this.y = y;
    this.length = length;
    this.position = 0.5;
  }

  void draw() {
    float scrollbarX = x + position * length;
    stroke(120);
    fill(120);
    triangle(scrollbarX, y + 5, scrollbarX + 40, y + 30, scrollbarX - 40, y + 30);
    rect(scrollbarX - 20, y + 30, 40, 60);
  }

  void mouseDragged(float mouseX, float mouseY) {
    if (mouseX > x && mouseX < x + length && mouseY > y - 30 && mouseY < y + 100) {
      position = constrain((mouseX - x) / length, 0, 1);
      position = round(position * 100) / 100.0;
    }
  }

  float getPosition() {
    return x + position * length;
  }

  void reset() {
    position = 0.5;
  }
}
