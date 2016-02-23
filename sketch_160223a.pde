float a = 1.0;
void settings() {
size(400, 800, P2D);
}
void setup() {
  frameRate(10);
}
void draw() {

background(255, 200, 0);  
plant(15, 0.4, 0.8);
}
void leaf() {
beginShape();
vertex(100.0, -70.0);
bezierVertex(90.0, -60.0, 40.0, -100.0, 0.0, 0.0);
bezierVertex(0.0, 0.0, 100.0, 40.0, 100.0, -70.0);
endShape();
}
void plant(int numLeaves, float minLeafScale, float maxLeafScale) {
line(width/2, 0, width/2, height); // the plant's stem
int gap = height/numLeaves; // vertical spacing between leaves
float angle = 0;
for (int i=0; i<numLeaves; i++) {
float x = width/2;
float y = gap*i + (int)random(gap)+a;
if(y>height)
{y=y-height;}
float scale = random(minLeafScale, maxLeafScale);
pushMatrix();
translate(x,y);
scale(scale);
rotate(angle);
leaf();
// Complete the code!
popMatrix();
angle += PI; // alternate the side for each leaf
}
}