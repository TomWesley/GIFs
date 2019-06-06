//Title: Assembly Line Transformation
//Coder: Thomas Wesley 
//Last Edit June 5th, 2019
//Original GIF(Graphic Interchange Format) featured on the Searce company website to illustrate concepts about technology changing the business world.

//Packages needed for GIF creation
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
float k;
float d; 
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
  

//Sketch Setup - Sizing and background parameters
void setup() {
  size(500,500);
  background(0);
  gifExport = new GifMaker(this, "Searce_Website_Home_1_Bravo.gif");
  gifExport.setRepeat(0);        // make it an "endless" animation
  //gifExport.setTransparent(0,0,0);  // black is transparent
}

//Sketch Draw - Logic for the GIF
void draw() {
  counter=counter+1;
  if(interval==240){
    interval=0;}
    else{
  interval = interval+1;
  }
  
  background(0);
  translate(width/2,height/2);
  strokeWeight(1);
  stroke(255);
  fill(255);
  noFill();
  if(interval<30){
    //Bubblers
    fill(255,120);
    stroke(255,100);
    ellipse(-30,-40,size+interval%3,size+interval%3);
    ellipse(-150,-10,size/2+interval%3,size/2+interval%3);
    ellipse(130,-110,size+interval%3,size+interval%3);
    ellipse(40,-60,size/2+interval%3,size/2+interval%3);
    ellipse(20,130,size/2+interval%3,size/2+interval%3);
    ellipse(-140,80,size/2+interval%3,size/2+interval%3);
    ellipse(60,110,size+interval%3,size+interval%3);
    ellipse(140,100,size/2+interval%3,size/2+interval%3);
     ellipse(-50,200,size/2+interval%3,size/2+interval%3);
     ellipse(-120,140,size/2+interval%3,size/2+interval%3);
     ellipse(160,-20,size/2+interval%3,size/2+interval%3);
    noFill();
    ellipse(-10,-80,size+interval%3,size+interval%3);
    ellipse(-80,0,size/2+interval%3,size/2+interval%3);
    ellipse(130,20,size+interval%3,size+interval%3);
    ellipse(70,-100,size/2+interval%3,size/2+interval%3);
    ellipse(-30,190,size+interval%3,size+interval%3);
    ellipse(-110,110,size/2+interval%3,size/2+interval%3);
    ellipse(30,80,size+interval%3,size+interval%3);
    ellipse(100,130,size/2+interval%3,size/2+interval%3);
    ellipse(-70,180,size+interval%3,size+interval%3);
     ellipse(-160,40,size+interval%3,size+interval%3);
      ellipse(180,-70,size+interval%3,size+interval%3);
      ellipse(190,60,size/2+interval%3,size/2+interval%3);
    fill(255);
    stroke(255);
    //ellipse(-30,-30,(interval%7)*3,(interval%7)*3);
    noFill();
    ellipse(80,5,(interval%10)*2,(interval%10)*2);
    
    //Stationary
    noFill();
    quad(-120,30,-120,60,-90,60,-90,30);
    line(-90,45,-50,45);
    line(-50,45,-50,5);
    line(-50,45,-50,85);
    line(-50,5,-10,5);
    quad(-10,-10,-10,20,20,20,20,-10);
    line(20,5,60,5);
    quad(60,5,80,25,100,5,80,-15);
    line(80,25,80,65);
    line(80,-15,80,-55);
    line(80,65,120,65);
    line(80,-55,120,-55);
 
    quad(120,50,120,80,150,80,150,50);
    fill(255);
      ellipse(130,-55,size*2,size*2);
    ellipse(-50,95,size*2,size*2);
    ellipse(-50,155,size*2,size*2);
    ellipse(-80,125,size,size);
    ellipse(-20,125,size,size);
    if(interval%5==0){
      fill(255);
    }
    else{
    noFill();}
    ellipse(-50,125,60,60);
    fill(255);
    //Moving Things
    ellipse(-90+(interval*1.3),45,size-(30-interval)/2,size-(30-interval)/2);
    ellipse(20+interval*1.4,5,15-abs(15-interval),15-abs(15-interval));
   
  }
  else if(interval<60){
    fill(255,120);
    stroke(255,100);
    ellipse(-30,-40,size+interval%3,size+interval%3);
    ellipse(-150,-10,size/2+interval%3,size/2+interval%3);
    ellipse(130,-110,size+interval%3,size+interval%3);
     ellipse(40,-60,size/2+interval%3,size/2+interval%3);
    ellipse(20,130,size/2+interval%3,size/2+interval%3);
    ellipse(-140,80,size/2+interval%3,size/2+interval%3);
    ellipse(60,110,size+interval%3,size+interval%3);
    ellipse(140,100,size/2+interval%3,size/2+interval%3);
     ellipse(-50,200,size/2+interval%3,size/2+interval%3);
     ellipse(-120,140,size/2+interval%3,size/2+interval%3);
     ellipse(160,-20,size/2+interval%3,size/2+interval%3);
    noFill();
    ellipse(-10,-80,size+interval%3,size+interval%3);
    ellipse(-80,0,size/2+interval%3,size/2+interval%3);
    ellipse(130,20,size+interval%3,size+interval%3);
    ellipse(70,-100,size/2+interval%3,size/2+interval%3);
    ellipse(-30,190,size+interval%3,size+interval%3);
    ellipse(-110,110,size/2+interval%3,size/2+interval%3);
    ellipse(30,80,size+interval%3,size+interval%3);
    ellipse(100,130,size/2+interval%3,size/2+interval%3);
    ellipse(-70,180,size+interval%3,size+interval%3);
     ellipse(-160,40,size+interval%3,size+interval%3);
      ellipse(180,-70,size+interval%3,size+interval%3);
      ellipse(190,60,size/2+interval%3,size/2+interval%3);
    fill(255);
    stroke(255);
    //dashed lines that connect them to new locations in a triangle, lines glow and connect and something forms in the middle and they fade in
    //Stationary
     noFill();
     ellipse(80,5,(interval%10)*2,(interval%10)*2);
    quad(-120,30,-120,60,-90,60,-90,30);
    
    line(-90,45,-50,45);
    line(-50,45,-50,5);
    line(-50,45,-50,85);
    line(-50,5,-10,5);
   quad(-10,-10,-10,20,20,20,20,-10);
   line(20,5,60,5);
   quad(60,5,80,25,100,5,80,-15);
   line(80,25,80,65);
    line(80,-15,80,-55);
    line(80,65,120,65);
    line(80,-55,120,-55);
   
    quad(120,50,120,80,150,80,150,50);
    fill(255);
    ellipse(130,-55,size*2,size*2);
     ellipse(-50,95,size*2,size*2);
    ellipse(-50,155,size*2,size*2);
    ellipse(-80,125,size,size);
    ellipse(-20,125,size,size);
    if(interval%5==0){
      fill(255);
    }
    else{
    noFill();}
    ellipse(-50,125,60,60);
    fill(255);
    //Moving
    ellipse(-50,45+(interval-30)*1.5,size,size);
    ellipse(20+(interval-30)*1.4,5,15-abs(15-(interval-30)),15-abs(15-(interval-30)));
  }
  else if(interval<90){
    fill(255,120);
    stroke(255,100);
    ellipse(-30,-40,size+interval%3,size+interval%3);
    ellipse(-150,-10,size/2+interval%3,size/2+interval%3);
    ellipse(130,-110,size+interval%3,size+interval%3);
     ellipse(40,-60,size/2+interval%3,size/2+interval%3);
    ellipse(20,130,size/2+interval%3,size/2+interval%3);
    ellipse(-140,80,size/2+interval%3,size/2+interval%3);
    ellipse(60,110,size+interval%3,size+interval%3);
    ellipse(140,100,size/2+interval%3,size/2+interval%3);
     ellipse(-50,200,size/2+interval%3,size/2+interval%3);
     ellipse(-120,140,size/2+interval%3,size/2+interval%3);
     ellipse(160,-20,size/2+interval%3,size/2+interval%3);
    noFill();
    ellipse(-10,-80,size+interval%3,size+interval%3);
    ellipse(-80,0,size/2+interval%3,size/2+interval%3);
    ellipse(130,20,size+interval%3,size+interval%3);
    ellipse(70,-100,size/2+interval%3,size/2+interval%3);
    ellipse(-30,190,size+interval%3,size+interval%3);
    ellipse(-110,110,size/2+interval%3,size/2+interval%3);
    ellipse(30,80,size+interval%3,size+interval%3);
    ellipse(100,130,size/2+interval%3,size/2+interval%3);
    ellipse(-70,180,size+interval%3,size+interval%3);
     ellipse(-160,40,size+interval%3,size+interval%3);
      ellipse(180,-70,size+interval%3,size+interval%3);
      ellipse(190,60,size/2+interval%3,size/2+interval%3);
    fill(255);
    stroke(255);
     //Stationary
     noFill();
     ellipse(80,5,(interval%10)*2,(interval%10)*2);
    quad(-120,30,-120,60,-90,60,-90,30);
    line(-90,45,-50,45);
    line(-50,45,-50,5);
    line(-50,45,-50,85);
    line(-50,5,-10,5);
   quad(-10,-10,-10,20,20,20,20,-10);
   line(20,5,60,5);
   quad(60,5,80,25,100,5,80,-15);
   line(80,25,80,65);
    line(80,-15,80,-55);
    line(80,65,120,65);
    line(80,-55,120,-55);

    quad(120,50,120,80,150,80,150,50);
    fill(255);
     ellipse(130,-55,size*2,size*2);
     ellipse(-50,95,size*2,size*2);
    ellipse(-50,155,size*2,size*2);
    ellipse(-80,125,size,size);
    ellipse(-20,125,size,size);
    if(interval%5==0){
      fill(255);
    }
    else{
    noFill();}
    ellipse(-50,125,60,60);
    fill(255);
    //Moving
    //ellipse(-50+(interval-60)*1.8,5,size,size);
    ellipse(-90+((interval-60)*1.3),45,size-(90-interval)/2,size-(90-interval)/2);
    ellipse(20+(interval-60)*1.4,5,15-abs(15-(interval-60)),15-abs(15-(interval-60)));
    if(interval%2==0){
      line(5,-10,5,-10-(interval-60)*3);
      line(-105,30,-105,30-(interval-60)*6.8);
       line(130,-70,130,-70-(interval-60)*3.5);
    } 
  }
  else if(interval<120){
    fill(255,120);
    stroke(255,100);
    ellipse(-30,-40,size+interval%3,size+interval%3);
    ellipse(-150,-10,size/2+interval%3,size/2+interval%3);
    ellipse(130,-110,size+interval%3,size+interval%3);
     ellipse(40,-60,size/2+interval%3,size/2+interval%3);
    ellipse(20,130,size/2+interval%3,size/2+interval%3);
    ellipse(-140,80,size/2+interval%3,size/2+interval%3);
    ellipse(60,110,size+interval%3,size+interval%3);
    ellipse(140,100,size/2+interval%3,size/2+interval%3);
     ellipse(-50,200,size/2+interval%3,size/2+interval%3);
     ellipse(-120,140,size/2+interval%3,size/2+interval%3);
     ellipse(160,-20,size/2+interval%3,size/2+interval%3);
    noFill();
    ellipse(-10,-80,size+interval%3,size+interval%3);
    ellipse(-80,0,size/2+interval%3,size/2+interval%3);
    ellipse(130,20,size+interval%3,size+interval%3);
    ellipse(70,-100,size/2+interval%3,size/2+interval%3);
    ellipse(-30,190,size+interval%3,size+interval%3);
    ellipse(-110,110,size/2+interval%3,size/2+interval%3);
    ellipse(30,80,size+interval%3,size+interval%3);
    ellipse(100,130,size/2+interval%3,size/2+interval%3);
    ellipse(-70,180,size+interval%3,size+interval%3);
     ellipse(-160,40,size+interval%3,size+interval%3);
      ellipse(180,-70,size+interval%3,size+interval%3);
      ellipse(190,60,size/2+interval%3,size/2+interval%3);
    fill(255);
    stroke(255);
    //Stationary
     noFill();
     ellipse(80,5,(interval%10)*2,(interval%10)*2);
    quad(-120,30,-120,60,-90,60,-90,30);
    line(-90,45,-50,45);
    line(-50,45,-50,5);
    line(-50,45,-50,85);
    line(-50,5,-10,5);
   quad(-10,-10,-10,20,20,20,20,-10);
   line(20,5,60,5);
   quad(60,5,80,25,100,5,80,-15);
   line(80,25,80,65);
    line(80,-15,80,-55);
    line(80,65,120,65);
    line(80,-55,120,-55);

    quad(120,50,120,80,150,80,150,50);
    fill(255);
     ellipse(130,-55,size*2,size*2);
     ellipse(-50,95,size*2,size*2);
    ellipse(-50,155,size*2,size*2);
    ellipse(-80,125,size,size);
    ellipse(-20,125,size,size);
    if(interval%5==0){
      fill(255);
    }
    else{
    noFill();}
    ellipse(-50,125,60,60);
    fill(255);
    //Moving
    //ellipse(-50+(interval-60)*1.8,5,size,size);
    ellipse(-50,45+(interval-90)*1.5,size,size);
    ellipse(20+(interval-90)*1.4,5,15-abs(15-(interval-90)),15-abs(15-(interval-90)));
    if(interval%2==0){
      line(5,-10,5,-10-(90-60)*3);
      line(-105,30,-105,30-(90-60)*6.8);
      line(-105,30-(90-60)*6.8,-105+(interval-90),30-(90-60)*6.8);
       line(130,-70,130,-70-(90-60)*3.5);
       line(130,-70-(90-60)*3.5,130-(interval-90),-70-(90-60)*3.5);
    }
    
  }
  else if(interval<150){
    if(interval%2==0){
      fill(255,120);
    stroke(255,100);
    ellipse(-30,-40,size+interval%3,size+interval%3);
    ellipse(-150,-10,size/2+interval%3,size/2+interval%3);
    ellipse(130,-110,size+interval%3,size+interval%3);
     ellipse(40,-60,size/2+interval%3,size/2+interval%3);
    ellipse(20,130,size/2+interval%3,size/2+interval%3);
    ellipse(-140,80,size/2+interval%3,size/2+interval%3);
    ellipse(60,110,size+interval%3,size+interval%3);
    ellipse(140,100,size/2+interval%3,size/2+interval%3);
     ellipse(-50,200,size/2+interval%3,size/2+interval%3);
     ellipse(-120,140,size/2+interval%3,size/2+interval%3);
     ellipse(160,-20,size/2+interval%3,size/2+interval%3);
    noFill();
    ellipse(-10,-80,size+interval%3,size+interval%3);
    ellipse(-80,0,size/2+interval%3,size/2+interval%3);
    ellipse(130,20,size+interval%3,size+interval%3);
    ellipse(70,-100,size/2+interval%3,size/2+interval%3);
    ellipse(-30,190,size+interval%3,size+interval%3);
    ellipse(-110,110,size/2+interval%3,size/2+interval%3);
    ellipse(30,80,size+interval%3,size+interval%3);
    ellipse(100,130,size/2+interval%3,size/2+interval%3);
    ellipse(-70,180,size+interval%3,size+interval%3);
     ellipse(-160,40,size+interval%3,size+interval%3);
      ellipse(180,-70,size+interval%3,size+interval%3);
      ellipse(190,60,size/2+interval%3,size/2+interval%3);
    fill(255);
    stroke(255);
    //Stationary
     noFill();
     ellipse(80,5,(interval%10)*2,(interval%10)*2);
    quad(-120,30,-120,60,-90,60,-90,30);
    line(-90,45,-50,45);
    line(-50,45,-50,5);
    line(-50,45,-50,85);
    line(-50,5,-10,5);
   quad(-10,-10,-10,20,20,20,20,-10);
   line(20,5,60,5);
   quad(60,5,80,25,100,5,80,-15);
   line(80,25,80,65);
    line(80,-15,80,-55);
    line(80,65,120,65);
    line(80,-55,120,-55);

    quad(120,50,120,80,150,80,150,50);
    fill(255);
     ellipse(130,-55,size*2,size*2);
     ellipse(-50,95,size*2,size*2);
    ellipse(-50,155,size*2,size*2);
    ellipse(-80,125,size,size);
    ellipse(-20,125,size,size);
    if(interval%5==0){
      fill(255);
    }
    else{
    noFill();}
    ellipse(-50,125,60,60);
    fill(255);
    //Moving
    //ellipse(-50+(interval-60)*1.8,5,size,size);
   // ellipse(20+(interval-90)*1.4,5,15-abs(15-(interval-90)),15-abs(15-(interval-90)));
    
      line(5,-10,5,-10-(90-60)*3);
       quad(25,-105,25,-145,-15,-145,-15,-105);
      line(-105,30,-105,30-(90-60)*6.8);
      line(-105,30-(90-60)*6.8,-105+(120-90),30-(90-60)*6.8);
      quad(-70,-195,-70,-155,-30,-155,-30,-195);
       line(130,-70,130,-70-(90-60)*3.5);
       line(130,-70-(90-60)*3.5,130-(120-90),-70-(90-60)*3.5);
       quad(95,-195,95,-155,55,-155,55,-195);
    } 
  }
  else if(interval<180){
    fill(255);
    quad(95,-195+(interval-150)*4,95,-155+(interval-150)*4,55,-155+(interval-150)*4,55,-195+(interval-150)*4);
    quad(-70-(25*(interval-150)/29),-195+(interval-150)*4,-70-(25*(interval-150)/29),-155+(interval-150)*4,-30-(25*(interval-150)/29),-155+(interval-150)*4,-30-(25*(interval-150)/29),-195+(interval-150)*4);
    quad(25-(5*(interval-150)/29),-105+(interval-150)*6,25-(5*(interval-150)/29),-145+(interval-150)*6,-15-(5*(interval-150)/29),-145+(interval-150)*6,-15-(5*(interval-150)/29),-105+(interval-150)*6);
    
  }
  else if(interval<210){
    fill(255);
     quad(95,-195+(179-150)*4,95,-155+(179-150)*4,55,-155+(179-150)*4,55,-195+(179-150)*4);
    quad(-70-(25*(179-150)/29),-195+(179-150)*4,-70-(25*(179-150)/29),-155+(179-150)*4,-30-(25*(179-150)/29),-155+(179-150)*4,-30-(25*(179-150)/29),-195+(179-150)*4);
    quad(25-(5*(179-150)/29),-105+(179-150)*6,25-(5*(179-150)/29),-145+(179-150)*6,-15-(5*(179-150)/29),-145+(179-150)*6,-15-(5*(179-150)/29),-105+(179-150)*6);
    strokeWeight(5);
    if(interval%2==0){
    line(55,-60,-55,-60);
    line(65,-60,0,60);
    line(-65,-60,0,60);
    }
    noFill();
      strokeWeight(1);
      if(interval<190){
      for(float angle=0;angle<361;angle=angle+40){ 
     m=(100+(interval-180)*2)*cos(radians(angle))+0;
  n=(100+(interval-180)*2)*sin(radians(angle))-20;
     o=(110+(interval-180)*3)*cos(radians(angle))+0;
  p=(110+(interval-180)*3)*sin(radians(angle))-20;
      line(m,n,o,p);
      }}
    ellipse(0,-20,interval-180,interval-180);
    noStroke();
    fill(255,120);
    for(float angle=0;angle<361;angle=angle+30){ 
     x=(180)*cos(radians(angle))+0;
  y=(180)*sin(radians(angle))-20;
      ellipse(x,y,30,30);
      }
      stroke(255);
    fill(255);
      
  }
  else if(interval<220){
    fill(255);
     quad(95,-195+(179-150)*4,95,-155+(179-150)*4,55,-155+(179-150)*4,55,-195+(179-150)*4);
    quad(-70-(25*(179-150)/29),-195+(179-150)*4,-70-(25*(179-150)/29),-155+(179-150)*4,-30-(25*(179-150)/29),-155+(179-150)*4,-30-(25*(179-150)/29),-195+(179-150)*4);
    quad(25-(5*(179-150)/29),-105+(179-150)*6,25-(5*(179-150)/29),-145+(179-150)*6,-15-(5*(179-150)/29),-145+(179-150)*6,-15-(5*(179-150)/29),-105+(179-150)*6);
    strokeWeight(5);
    if(interval%2==0){
    line(55,-60,-55,-60);
    line(65,-60,0,60);
    line(-65,-60,0,60);
    }
    ellipse(0,-20,210-180-(interval-210)*3,210-180-(interval-210)*3);
    
  }
  else if(interval<=240){
    fill(255);
     quad(95,-195+(179-150)*4,95,-155+(179-150)*4,55,-155+(179-150)*4,55,-195+(179-150)*4);
    quad(-70-(25*(179-150)/29),-195+(179-150)*4,-70-(25*(179-150)/29),-155+(179-150)*4,-30-(25*(179-150)/29),-155+(179-150)*4,-30-(25*(179-150)/29),-195+(179-150)*4);
    quad(25-(5*(179-150)/29),-105+(179-150)*6,25-(5*(179-150)/29),-145+(179-150)*6,-15-(5*(179-150)/29),-145+(179-150)*6,-15-(5*(179-150)/29),-105+(179-150)*6);
    strokeWeight(5);
    if(interval%2==0){
    line(55,-60,-55,-60);
    line(65,-60,0,60);
    line(-65,-60,0,60);
    }
   fill(0);
   strokeWeight(2);
   ellipse(0,-20,1+(interval-220)*40,1+(interval-220)*40);
  }
  strokeWeight(1);
//Translate the original diagram in with no moving parts to reset it 
 translate(-width,-height/2);
gifExport.setDelay(0);
    
    if(counter>240 && counter <482){
    gifExport.addFrame();
}
}
//Not necessary given the addFrame Export only occurs over the above specified interval
void mousePressed() {
    gifExport.finish();          // write file
}
