//Title: Solstice Lissajous
//Coder: Thomas Wesley 
//Last Edit September 23rd, 2019
//Video of an abstract shape moving across a hexed background, optimized for IG

// Sketch Variable Declarations
float delay = -1;
static int LINE_C = 360;
static int LINE_O = 360;
float size=10;
//Sketch Setup - Sizing and background parameters
void setup() {
  size(1080, 1080);
  background(255);
}
//Sketch Draw - Logic for the drawing
void draw() {
  delay=delay+0.005;
  background(0);
  fill(255,0,128,255);
  stroke(80,230,130,255);
  strokeWeight(0.8);
  translate(size-1.5,0);
  for(float j = 0; j < height*1.5; j = j +size*1.8){
    for(float i = 0; i < width; i = i +size*1.8){
      pushMatrix();
      if((i+j)%5==0){
        polygon(i, j*.8, size, 2);   
      }
      else{
        polygon(i, j*.8, size*0.8, 6);
      }
      popMatrix();
    }
  }
  translate(-size+1.5,0);
  translate(width/2,height/2);   
  for(float i=0;i<LINE_C;i=i+1){
    noStroke();
    fill(255,242,209,25-abs(lissajous_y(i)*.05)); 
    ellipse(lissajous_x(i,delay),lissajous_y(i),1+abs(lissajous_y(i))*.21,1+abs(lissajous_y(i))*.21);
    fill(255,242,209,24-abs(lissajous_y(i)*.05)); 
    ellipse(lissajous_x(i,delay),lissajous_y(i),1+abs(lissajous_y(i))*.22,1+abs(lissajous_y(i))*.22);
    fill(255,242,209,23-abs(lissajous_y(i)*.05)); 
    ellipse(lissajous_x(i,delay),lissajous_y(i),1+abs(lissajous_y(i))*.23,1+abs(lissajous_y(i))*.23);
    fill(255,242,209,22-abs(lissajous_y(i)*.05)); 
    ellipse(lissajous_x(i,delay),lissajous_y(i),1+abs(lissajous_y(i))*.25,1+abs(lissajous_y(i))*.25);
    fill(255,242,209,21-abs(lissajous_y(i)*.05)); 
    ellipse(lissajous_x(i,delay),lissajous_y(i),1+abs(lissajous_y(i))*.27,1+abs(lissajous_y(i))*.27);
    fill(255,242,209,20-abs(lissajous_y(i)*.05)); 
    ellipse(lissajous_x(i,delay),lissajous_y(i),1+abs(lissajous_y(i))*.3,1+abs(lissajous_y(i))*.3);
     fill(255,242,209,19-abs(lissajous_y(i)*.05)); 
    ellipse(lissajous_x(i,delay),lissajous_y(i),1+abs(lissajous_y(i))*.33,1+abs(lissajous_y(i))*.33);
    stroke(80,50,140,255);
   
    fill(255,242,209,255);
    ellipse(lissajous_x(i,delay),lissajous_y(i),1+abs(lissajous_y(i))*.2,1+abs(lissajous_y(i))*.2);
 
}
  translate(-width/2,-height/2);
  if(delay<=1){
    saveFrame("output/Solstice_Lissajous_#########.png");

  
  }
}
//The functions for the epicycloid
float lissajous_x(float t, float u) {
 return 220*sin(radians(3*u*t)+(PI/2));
}  
float lissajous_y(float t) {
 return 400*sin(radians(t));
}  
void polygon(float x, float y, float radius, int npoints) {
  float angle = TWO_PI / npoints;
  beginShape();
  for (float a = 0; a < TWO_PI; a += angle) {
    float sx = x + cos(a) * radius;
    float sy = y + sin(a) * radius;
    vertex(sx, sy);
  }
  endShape(CLOSE);
}
