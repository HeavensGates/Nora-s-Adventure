class SceneHome {
  PImage Anim1, Anim2, Anim3;
  int animationNumber=1;
  int Timer;
  SceneHome() {
  }
  void sceneLoad() {
    Anim1=loadImage("endscene_frame1.png");   
    Anim2=loadImage("endscene_frame2.png");
    Anim3=loadImage("endscene_frame3.png");
    Timer=millis();
    campAmbiance.loop();

  }
  void sceneDisplay() {
    switch(animationNumber) {
    case 1:
      image(Anim1, width/2, height/2, width, height);
      if (millis()>Timer+200) {
        animationNumber=2;
        Timer=millis();
      }
      break;
    case 2:
      image(Anim2, width/2, height/2, width, height);
      if (millis()>Timer+200) {
        animationNumber=3; 
        Timer=millis();
      }
      break;
    case 3:
      image(Anim3, width/2, height/2, width, height);
      if (millis()>Timer+200) {
        animationNumber=1; 
        Timer=millis();
      }
      break;
    }
    colSceneSwitch.squareCol(width/2.6, height/8, width/4, height/1.5);
      boolean SignTarget = pointRect(width/2.6, height/8, width/4, height/1.5);    
      if (SignTarget&&mousePressed&&!dialogueActive) {
       fading=true; 
      }    
      if (fading) { 
       tint(255, fadeTrans);
      fadeTrans -= 10;
      }
      if (fadeTrans<0) {
        sceneNum=6;
        credMusic.play();
        BGM.pause();
        portalAmbiance.pause();
        fading=false;
      }
  }
}
