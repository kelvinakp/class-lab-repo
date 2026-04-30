PImage original;
PImage filtered;
String label = "NORMAL";

void setup() {
  original = loadImage("CS_logo.png");
  size(original.width, original.height);
  filtered = original.copy();
}

void draw() {
  image(filtered, 0, 0);
  fill(255);
  stroke(0);
  textSize(16);
  textAlign(LEFT, TOP);
  text(label, 10, 10);
}

void keyPressed() {
  filtered = original.copy();

  switch (key) {
    case '0':
      label = "NORMAL";
      break;
    case '1':
      filtered.filter(GRAY);
      label = "GRAY";
      break;
    case '2':
      filtered.filter(INVERT);
      label = "INVERT";
      break;
    case '3':
      filtered.filter(THRESHOLD, 0.7);
      label = "THRESHOLD (0.7)";
      break;
    case '4':
      filtered.filter(POSTERIZE, 10);
      label = "POSTERIZE (10)";
      break;
    case '5':
      filtered.filter(BLUR, 5);
      label = "BLUR (5)";
      break;
    case '6':
      filtered.filter(ERODE);
      label = "ERODE";
      break;
    case '7':
      filtered.filter(DILATE);
      label = "DILATE";
      break;
  }
}
