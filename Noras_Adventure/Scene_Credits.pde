class SceneCredits {
  PImage creds, copyright, noraLogo;
  float scroll=0;
  int Timer;
  SceneCredits() {
  }
  void sceneLoad() {
    creds=loadImage("credits_scene.png");
    copyright=loadImage("boring_copyright.png");
    noraLogo=loadImage("game_title.png");
  }
  void sceneDisplay() {
    image(noraWitch.noraDefault1,width/6,height*2+scroll,width/8,height/2.5);
    image(noraWitch.noraLevi1,width/1.15,height*3+scroll,width/8,height/2.5);
    image(noraWitch.noraGhost1,width/6,height*4+scroll,width/8,height/2.5);
    image(noraWitch.noraBuff1,width/1.15,height*5+scroll,width/8,height/2.5);
    tint(255, fadeTrans);
    image(creds, width/2, height*3+scroll, width/2, height*3);
    if (scroll==0) {
      Timer=millis();
      fadeTrans=255;
    }
    scroll-=height/500;

    if ((Timer+90000<millis())&&Timer+91000>millis()) {
      fadeTrans=0;
      tint(255, fadeTrans);
    }
    if (Timer+91000<millis()&&Timer+110000>millis()) {
      tint(255, fadeTrans);
      image(copyright, width/2, height/2, width, height);
      if (fadeTrans<255) { 
        fadeTrans += 15;
      }
    }
    if (Timer+110000<millis()&&Timer+114000>millis()) {
      tint(255, fadeTrans);
      if (fadeTrans>0) { 
        fadeTrans -= 30;
      }
      image(copyright, width/2, height/2, width, height);
    }
    if (Timer+114000<millis()) { 
      tint(255, fadeTrans);
      if (fadeTrans<255) {
        fadeTrans += 10;
      }
      image(noraLogo, width/2, height/2, width/2, height/4);
    }
    
    if (Timer+139000<millis()){
     exit(); 
    }
  }
}
