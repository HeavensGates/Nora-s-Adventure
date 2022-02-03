class SceneCampsite {
  PImage Anim1, Anim2, Anim3;
  int animationNumber=1;
  int Timer;
  SceneCampsite() {
  }
  void sceneLoad() {
    Anim1=loadImage("Scene_1_Anim_1.png");   
    Anim2=loadImage("Scene_1_Anim_2.png");
    Anim3=loadImage("Scene_1_Anim_3.png");
    Timer=millis();
    campAmbiance.loop();

  }
  void sceneDisplay() {
    switch(animationNumber) {
    case 1:
      image(Anim1, width/2, height/2, width, height);
      if (millis()>Timer+700) {
        animationNumber=2;
        Timer=millis();
      }
      break;
    case 2:
      image(Anim2, width/2, height/2, width, height);
      if (millis()>Timer+700) {
        animationNumber=3; 
        Timer=millis();
      }
      break;
    case 3:
      image(Anim3, width/2, height/2, width, height);
      if (millis()>Timer+700) {
        animationNumber=1; 
        Timer=millis();
      }
      break;
    }
  }
}
