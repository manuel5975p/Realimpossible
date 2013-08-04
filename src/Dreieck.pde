class Trian {
  float x = 900 + 25, y = 0, fall;
  Trian(float xp,float yp) {
    y = linie - yp;
    if (counter >= 752) {
      fall = height - translatory;
    }
    x = xp;
  }
  void tick() {
    x -= tickspeed;
    if (x < 75 && counter >= 383 && counter <= 752) {
      fall += 5;
    }
    if (counter >= 752 && fall >= 0) {
      fall -= 13;
    }
    fall = constrain(fall, 0, 5000);
  }
  void render() {
    stroke(0);
    fill(12, 36, 45);
    triangle(x, y - 25 + fall, x + 25, y + 25 + fall, x - 25, y + 25 + fall);
  }
}

