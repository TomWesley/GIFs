//Visual sequence consisting of various changing colors and shapes for a music video
//Coder: Thomas Wesley 
//Last Edit 9/28/2018
//Title: Eyelids Sequence
import gifAnimation.*;
import java.util.Arrays;
import java.util.List;
//Variable Declarations


float changer=20;
float counter=0;

PFont title;
float phase;
float theta;
float LINE_O=360;
float meh;
float osx;
float osy;
float hits=0;
//Setup function to establis the frame color and size 
void setup() {
  size(500,250);
  background(255);
  //Don't forget to change file name for each new recording
   gifExport = new GifMaker(this, "PersonalSignature.gif");
    gifExport.setRepeat(0);        // make it an "endless" animatio
    title = createFont("AnoxicSC-Medium.ttf",250);
  
}
//The draw function runs through the actions contained in a loop
void draw() {
  translate(0,-50);
  background(255);
  textFont(title);
  counter=counter+.25;
 
 translate(width/2,height/2);

 fill(0);
 noStroke();
//ellipse(-23,23,50,50);
ellipse(107,0,50,50);
 stroke(255,240,0);
/* if(counter%100==0){
    hits=hits+1;
 }
 
  //float initX=-23+int(random(-23,23)); 
  float initX=-48+counter*.5-(50*hits); 
  float initY=23+sqrt(25*25-(initX+23)*(initX+23));
  float yTwo=23-sqrt(25*25-(initX+23)*(initX+23));
stroke(255,240,0);
strokeWeight(3);
 /* beginShape();
  curveVertex(initX,initY);
  curveVertex(initX,initY);
  curveVertex(initX,yTwo);
  curveVertex(initX,yTwo);
  endShape();*/
  beginShape();
  curveVertex(82,0);
  strokeWeight(1);
  for(float k=82;k<=132;k=k+2){    
    curveVertex(k,0+9*sin(abs(k-132)*radians(counter*2)));
  }
 
  curveVertex(132,0);
 endShape();
if(mousePressed){
 print(counter); 
}
 translate(-width/2,-height/2);
  strokeWeight(2);
    stroke(0);
   noFill();
  beginShape();
  vertex(50,230);
  vertex(230,230);
  vertex(270,260);
  vertex(450,260);
  endShape();
  fill(255,240,0,255);
  ellipse(50,230,20,20);
  ellipse(450,260,20,20);
  fill(0);
  text("T",80,220);
  text("W",260,250);
  //Aura
  noFill();
  for(float j=6;j>0;j=j-.25){
  stroke(255,240,0,15-j);
  strokeWeight(j+1);
  if(counter<=35){
    beginShape();
    if(counter<=5){
      vertex(50,230);
      vertex(50+counter*30/5,230);
    }
    else{
  vertex(50+(counter-5)*150/30,230);
  vertex(80+(counter-5)*150/30,230);
    }
  endShape();    
  }
  else if(counter<=40){
    beginShape();
  vertex(200+(counter-35)*6,230);
  vertex(230,230);
  vertex(230+(counter-35)*4,230+(counter-35)*3);
  endShape();    
  }
  else if(counter<=45){
    beginShape();
  vertex(230+(counter-40)*4,230+(counter-40)*3);
  vertex(250+(counter-40)*4,245+(counter-40)*3);
  endShape();    
  }
  else if(counter<=50){
    beginShape();
  vertex(250+(counter-45)*4,245+(counter-45)*3);
  vertex(270,260);
  vertex(270+(counter-45)*6,260);
  endShape();    
  }
 else if(counter<=90){
   beginShape();
   vertex(270+(counter-50)*150/35,260);
   if(300+(counter-50)*150/35>449){
     vertex(450,260);
   }
   else{
  vertex(300+(counter-50)*150/35,260);
   }
  endShape();
 }
  
  }
  strokeWeight(2.5);
  //Full Weight
  stroke(255,240,0,255);
  if(counter<=35){
    beginShape();
    if(counter<=5){
      vertex(50,230);
      vertex(50+counter*30/5,230);
    }
    else{
  vertex(50+(counter-5)*150/30,230);
  vertex(80+(counter-5)*150/30,230);
    }
  endShape();    
  }
  else if(counter<=40){
    beginShape();
  vertex(200+(counter-35)*6,230);
  vertex(230,230);
  vertex(230+(counter-35)*4,230+(counter-35)*3);
  endShape();    
  }
  else if(counter<=45){
    beginShape();
  vertex(230+(counter-40)*4,230+(counter-40)*3);
  vertex(250+(counter-40)*4,245+(counter-40)*3);
  endShape();    
  }
  else if(counter<=50){
    beginShape();
  vertex(250+(counter-45)*4,245+(counter-45)*3);
  vertex(270,260);
  vertex(270+(counter-45)*6,260);
  endShape();    
  }
 else if(counter<=90){
   beginShape();
   vertex(270+(counter-50)*150/35,260);
   if(300+(counter-50)*150/35>449){
     vertex(450,260);
   }
   else{
  vertex(300+(counter-50)*150/35,260);
   }
  endShape();
 }
//Translate the original diagram in with no moving parts to reset it 

  gifExport.setDelay(0);
    
    if(counter>0.9 && counter <90.1){
    gifExport.addFrame();
}
}

void mousePressed() {
    gifExport.finish();          // write file
}
