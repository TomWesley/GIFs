//Title: Searce_Logo_GIF
//Coder: Thomas Wesley
//Last Edit: June 9th, 2019
//GIF for use in email signatures by Searce Employees, adds a playful motion that does not distract from business

import gifAnimation.*;
import java.util.Arrays;
import java.util.List;

//Sketch Variable Declarations
int min=9;
float l;
float h;
float sh;
float o=-25;
float crunch;
float delay=0;
float j;
float r;
float g;
float b;
float a;
float i;
float k;//Runs up to the length in filling in the columns
float d; //The Difference Between grid markers
int interval=0;
float size=15;
float changer=20;
int counter=0;
float angler=250;
float temp=0;
float xxx=0;
  float yyy=0;
  float www=0;
  float zzz=0;
  float angle =0;
  float x;
  float y;
  float z;
  float w;

  float m;
  float n;
  float p;
  PImage img;
  float aaa;
  float bbb;
  float ccc;
  float ddd;
  float eee;
  float fff;
   float ggg;
  float hhh;
  float iii;

//Sketch Setup - Sizing and background parameters
void setup() {
  size(300,150);
  background(0);
  //UNCOMMENT THIS TO ENable new copy
  gifExport = new GifMaker(this, "Searce_Logo_GIF_Final_Modified.gif");
    gifExport.setRepeat(0);        // make it an "endless" animation
    //gifExport.setTransparent(0,0,0);  // black is transparent
  img=loadImage("SearceLogo2.png");
}
//Sketch Draw - Logic for the image
void draw() {
  translate(-40,-130);
  counter=counter+4;
  if(interval==240){
    interval=0;}
    else{
  interval = interval+4;
  }
   if(o>=120){
    o=o-1;
    crunch = 1;
  }
  else{
    if(o==0){
     crunch =0; 
     o=o+1;
    }
    if(crunch == 1)
    {
      o = o-1;
    }
    else{
      o =o+1;
    }
  } 

  
  background(255);
  image(img,33,124);
  fill(255);
  noStroke();
  quad(0,0,130,0,130,260,0,260);
    quad(0,200,190,200,190,360,0,360);
   // fill(255,100,110,255);
   if(interval<180){
    aaa=0;
    //bbb=xx(interval/2);
    //ccc=yy(interval/2);
    fff=0;
   // ddd=ww(interval);
   // eee=ww(interval);
  
   // ggg=uu(interval);
  //  hhh=vv(interval);
    iii=0;
   }
   if(interval>20 && interval<41){
     fill(210,30,30,255);
     //ellipse(90+(interval-40)*4,182-(interval-40),45+aaa,45+aaa);
     ellipse(90,182,interval*45/40+aaa,interval*45/40+aaa);
     fill(255);
    // ellipse(94+(interval-40)*4,182-(interval-40),32+aaa,32+aaa);
     ellipse(94,182,(interval*32)/40+aaa,(interval*32)/40+aaa);
   }
   if(interval>40){
      fill(210,30,30,255);
    ellipse(90,182+bbb,45+aaa,45+aaa);
    fill(255);
    ellipse(94,182+bbb,32+aaa,32+aaa);
    }
   
    if(interval>60 && interval<81){
      fill(30,160,230,255);
    ellipse(113,237,interval-46+fff,interval-46+fff);
    fill(255);
    ellipse(115,234,interval-57+fff,interval-57+fff);
    }
    if(interval>80){
      fill(30,160,230,255);
    ellipse(113,237,34+fff,34+fff);
    fill(255);
    ellipse(115,234,23+fff,23+fff);
    }
    if(interval>100 && interval<121){
      fill(160,200,60,255);
   // ellipse(158-(interval-120)*5,225-(interval-120)*4,26+iii,26+iii);
   ellipse(158,225,interval*26/120+iii,interval*26/120+iii);
    fill(255);
   // ellipse(157-(interval-120)*5,222-(interval-120)*4,16+iii,16+iii);
   ellipse(157,222,interval*16/120+iii,interval*16/120+iii);
    }
    if(interval>120){
      fill(160,200,60,255);
    ellipse(158,225,26+iii,26+iii);
    fill(255);
    ellipse(157,222,16+iii,16+iii);
    }
    
   translate(40,130);
gifExport.setDelay(0);
    
    if(counter>0 && counter <242){
    gifExport.addFrame();
}
}

void mousePressed() {
    gifExport.finish();          // write file
}
