void setup() {
  size(600, 600);
  noLoop(); 
}
void draw() {
background(#FEFFD6);

//larger hearts
for (int y = 25; y<=1200; y+=100) {
  for (int x = 75; x<=1200; x+=173){
    fill(#E3FCF8);
    scale(x/2, y/2, (y+125)/2, (x-75)/2, (y-25)/2, (x+75)/2, (y-25+50)/2);
  }
}

//smaller hearts
for (int y = 100; y<=2400; y+=200) {
  for (int x = 150; x<=2400; x+=346){
    fill(#D3FFEA);
    scale(x/4, y/4, (y+125)/4, (x-75)/4, (y-25)/4, (x+75)/4, (y-25+50)/4);
    }
  }
}


void scale(int centerX, int centerY, int bottomY, int leftX, int yOne, int rightX, int yTwo) {

//heart left half
beginShape();
curveVertex(centerX,centerY);
curveVertex(centerX,centerY);
curveVertex(leftX,yOne);
curveVertex(leftX,yTwo);
curveVertex(centerX,bottomY);
curveVertex(centerX,bottomY);
endShape();

//heart right half
beginShape();
curveVertex(centerX,centerY);
curveVertex(centerX,centerY);
curveVertex(rightX,yOne);
curveVertex(rightX,yTwo);
curveVertex(centerX,bottomY);
curveVertex(centerX,bottomY);
endShape();
}
