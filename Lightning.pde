int startX = 0;
int startY = 150;
int endX = 0;
int endY = 150;
int o = 0;
int r = 255;
int g = 255;
int b = 100;

void setup() {
  size(300, 300);
  background(0);
  frameRate(120);
}

void draw() {
  if(startX >= 303)
    o = 15;
  else
    o = 0;
  fill(0, 0, 0, o);
  noStroke();
  rect(0, 0, 300, 300);
  strokeWeight(3);
  stroke(r, g, b);  
  endX = startX + (int)(Math.random() * 9);
  endY = startY + (int)(Math.random() * 18) - 9;
  line(startX, startY, endX, endY);
  startX = endX;
  startY = endY;
}

void mousePressed() {
  if(o != 0){
    r = r + (int)(Math.random() * 11) - 5;
    g = g + (int)(Math.random() * 11) - 5;
    b = b + (int)(Math.random() * 11) - 5;
    startX = 0;
    startY = (int)(Math.random() * 301);
    endX = 0;
    endY = 150;
    o = 0;
    redraw();
  }
}
