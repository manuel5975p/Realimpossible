class Boks {
  float x = 900 + 25, y, fall;
  Boks(float xp,float yp) {
    y = linie - yp;
    if (counter >= 752) {
      fall = (height) - translatory;
    }
    x = xp + 25;
    if(level2)
    x -= 25;
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
    fill(8, 16, 16);
    stroke(255);
    rectMode(CENTER);
    rect(x, y + fall, 50, 50);
  }
}

