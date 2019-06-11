//Title: Solstice_GIF1
//Coder: Thomas Wesley 
//Last Edit June 10th, 2019
//Original abstract GIF(Graphic Interchange Format) being used as inspiration for a creative Instagram page
//Packages needed for GIF creation

import gifAnimation.*;
import java.util.Arrays;
import java.util.List;

// Sketch Variable Declarations
float ToRadians = PI / 180.0;
float gAngle = 112.75;
float rotation = 0.0;
int qq = 150;
int qqq=0;
float initialRotation = 0.0;
int width, height;
float count2 = 0;
int totalPetals = 9000;
Petal[] petals = new Petal[totalPetals];
float radiusGrowth = 1.00001;
float radius = 1000.001;
float g = 0.001;
float a = -25;
float b =0;
float c =0;
float d=0;
float x = 0;
float y = 0;
float z = 0;
PImage img;
float t = 0;
float u = 0;
float track =0;
float he=1280;
float wi=720;
int delay=0;
float red;
float blue;
float green;
float size=0;
static final int LINE_C = 120;
//Sketch Setup - Sizing and background parameters
void setup(){
background(0);
    size(2048, 2048);
    //img = loadImage("Tex5.jpg");
    gifExport = new GifMaker(this, "Sol_GIF1_NoFlash.gif");
    gifExport.setRepeat(0);  
    background(180,180,180,255);
}
//Sketch Draw - Logic for the GIF
void draw() {
  scale(5);
  delay=delay+1;
  //if(delay%2==0){
    background(180,180,180,255);
  //}
   he=height;
   wi=width;
    noStroke();
    strokeWeight(1);
    smooth();
     track = track +1;
     if(qq==-400){
       qq = 200;
     }
     qq= qq+1;
    if(y<45){
    if(x>75){
    y = 50;
         }
    x = x+1 ; 
    }
    else{
   if(x<1){y = 0;
  }
  x = x-1;
  }
  translate(2048/(10),2048/10);
  if(delay%10==0){
    size=0;
  }
  fill(255,173,204,35);
  size=size+1;
  
  noStroke();
  fill(255,206,175,255);

  rotate(delay*10);
  rotation=0;
    for (int i = 0; i < totalPetals; i++) {
        if(i%3==0){
          red=255;
          green=240;
          blue=113;}
        else if(i%2==0){
          red=255;
          green=173;
          blue=204;}
          else{
           red=0;
           green=0;
           blue=0;
          }
        rotation += gAngle;
        //radius *= radiusGrowth;
        radius = g + (.045)*i;
        Petal petal = new Petal(red,green,blue,255,red,green,blue,255);
        petal.x = width / 2 + cos(rotation * ToRadians) * radius;
        petal.y = height / 2 + sin(rotation * ToRadians) * radius;
        petal.rotation = rotation * ToRadians;
        petal.scaleVar += ((i-500) * 4.3) / totalPetals;
        petal.render();
        petals[i] = petal;
    }
    translate(-2048/(10),-2048/10);
   gifExport.setDelay(1);
   if(delay>0 && delay <39){
    gifExport.addFrame();
}    
}
//Class and function declaration
class Petal{
  float rrr;
  float ggg; 
  float bbb;
  float opopop;
  float rrrr;
  float bbbb;
  float gggg;
  float opopopop;
   color baseColor;
  color detailColor; 
  Petal(float r, float g, float b, float op, float rr, float gg, float bb, float opop){
  rrr= r;
  bbb= b;
  ggg = g;
  opopop = op;
  rrrr= rr;
  bbbb=  bb;
  gggg=gg;
  opopopop = opop;
  baseColor = color(rrr, ggg, bbb, opopop);
  detailColor = color(rrrr, gggg, bbbb, opopopop);
  }
  float x = 0;
  float y = 0;
  float rotation = 0.0;
  float scaleVar = 1;
 
  //color baseColor = color(rrr, ggg, bbb, opopop);
 // color detailColor = color(rrrr, gggg, bbbb, opopopop);
  color trimColor = color(255, 255, 255,255);

  
  void render (){
      pushMatrix();
      translate(this.x, this.y);
      fill(this.baseColor);
      rotate(this.rotation);
      scale(this.scaleVar, this.scaleVar);
      rect(-10, -1, 1, .25);
      ellipse(0, 0, 2, 2);
      fill(this.detailColor);
      ellipse(0, 0, 1.5, 1.5);
      
      fill(this.trimColor);
      //ellipse(0, 0, .5, .5);
      popMatrix();
  }
}
