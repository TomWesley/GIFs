//Title: Bierfeldt Audio Email Signature
//Coder: Thomas Wesley 
//Last Edit June 20th, 2019
//Alteration of the Bierfeldt Audio company logo as a moving GIF to be used in email signatures. 

//Imports for GIF creation
import gifAnimation.*;
import java.util.Arrays;
import java.util.List;
//Variable Declarations



// Sketch Variable Declarations
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
  

//Setup function to establis the frame color and size 
void setup() {
  //The initial background is black
 // background(255,190,189,100);
  //Size the frame in HD proportions
  size(500,500);
//  translate(80,40);
  background(255);
  //scale(0.7);
  //UNCOMMENT THIS TO ENable new copy
  gifExport = new GifMaker(this, "Bierfeldt_Audio.gif");
    gifExport.setRepeat(0);        // make it an "endless" animation
    //gifExport.setTransparent(0,0,0);  // black is transparent
  
}

//Sketch Draw - Logic for the drawing
void draw() {
  counter=counter+1;
  if(interval==130){
    interval=1;}
    else{
  interval = interval+1;
  }
  
  background(255);
  translate(width/2,height/2);
  noStroke();
  
   fill(239,48,29,255);
  ellipse(130,50,160,160);
  fill(255);
  ellipse(130,50,100,100);
  quad(50,-30,130,-30,130,130,50,130);
  fill(239,48,29,255);
  ellipse(130,-15,30,30);
  ellipse(130,115,30,30);
  strokeWeight(30);
  stroke(239,48,29,255);
  line(65,115,65,-100);
  if(interval<66){
  line(65-interval,115,65-interval,-100+(interval*(1.308)));
  line(0-interval,115,0-interval,-15+interval);
  line(-65-interval,115,-65-interval,50+interval);
  }
  else if(interval<131){
    line(65-(interval-65),115,65-(interval-65),-100+((interval-65)*(1.308)));
  line(0-(interval-65),115,0-(interval-65),-15+(interval-65));
  line(-65-(interval-65),115,-65-(interval-65),50+(interval-65));
  }

//Translate the original diagram in with no moving parts to reset it 
 translate(-width,-height/2);
gifExport.setDelay(0);
    
    if(counter>0 && counter <131){
    gifExport.addFrame();
}
}

void mousePressed() {
    gifExport.finish();          // write file
}
