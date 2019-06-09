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
  gifExport = new GifMaker(this, "Searce_Logo_GIF.gif");
    gifExport.setRepeat(0);        // make it an "endless" animation
    //gifExport.setTransparent(0,0,0);  // black is transparent
  img=loadImage("SearceLogo2.png");
}
//Sketch Draw - Logic for the image
void draw() {
  translate(-40,-130);
  counter=counter+1;
  if(interval==240){
    interval=0;}
    else{
  interval = interval+1;
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
    aaa=o/13;
    bbb=xx(interval/2);
    ccc=yy(interval/2);
    fff=abs(o-40)/18;
    ddd=ww(interval);
    eee=ww(interval);
  
    ggg=uu(interval);
    hhh=vv(interval);
    iii=abs(-o)/17;
   }
   if(interval>20 && interval<41){
     fill(210,30,30,255);
     ellipse(88+(interval-40)*4,180-(interval-40),42+aaa,42+aaa);
     fill(255);
     ellipse(92+(interval-40)*4,180-(interval-40),29+aaa,29+aaa);
   }
   if(interval>40){
      fill(210,30,30,255);
    ellipse(88+ccc,180+bbb,42+aaa,42+aaa);
    fill(255);
    ellipse(92+ccc,180+bbb,29+aaa,29+aaa);
    }
   
    if(interval>60 && interval<81){
      fill(30,160,230,255);
    ellipse(111+ddd,237+eee,interval-46+fff,interval-46+fff);
    fill(255);
    ellipse(113+ddd,234+eee,interval-57+fff,interval-57+fff);
    }
    if(interval>80){
      fill(30,160,230,255);
    ellipse(111+ddd,237+eee,34+fff,34+fff);
    fill(255);
    ellipse(113+ddd,234+eee,23+fff,23+fff);
    }
    if(interval>100 && interval<121){
      fill(160,200,60,255);
    ellipse(158-(interval-120)*5+ggg,225-(interval-120)*4+hhh,26+iii,26+iii);
    fill(255);
    ellipse(157-(interval-120)*5+ggg,222-(interval-120)*4+hhh,16+iii,16+iii);
    }
    if(interval>120){
      fill(160,200,60,255);
    ellipse(158+ggg,225+hhh,26+iii,26+iii);
    fill(255);
    ellipse(157+ggg,222+hhh,16+iii,16+iii);
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
