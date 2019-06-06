import gifAnimation.*;
 
GifMaker gifExport;
 
void gifsetup() {
  println("gifAnimation " + Gif.version());
  gifExport = new GifMaker(this, "export.gif");
  gifExport.setRepeat(0);
  gifExport.setDelay(50);
}
 
void gifdraw(int frames) {
 
  gifExport.addFrame();
  if (frameCount == frames) {
    gifExport.finish();
    println("gif saved");
    exit();
  }
}
