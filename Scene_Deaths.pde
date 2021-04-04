class SceneDeaths {
  PImage burnt, frog, spider, thorns, buffFrog;
  int deathNum=0;
  SceneDeaths() {
  }
  void sceneLoad() {
    burnt=loadImage("death_burnt.png");   
    frog=loadImage("death_frog.png");
    spider=loadImage("death_spider.png");
    thorns=loadImage("death_thorns.png");
    buffFrog=loadImage("death_frog_buff.png");
    campAmbiance.loop();
  }
  void sceneDisplay() {
    switch (deathNum) {
    case 1:
        sceneNum=5;
        image(burnt, width/2, height/2, width, height);
        toadAmbiance.pause();
        BGM.pause();
      break;
    case 2:
        sceneNum=5;
        image(frog, width/2, height/2, width, height);
        squash.play();
        toadAmbiance.pause();
        BGM.pause();
      break;
    case 3:
        sceneNum=5;
        image(spider, width/2, height/2, width, height);
        vineAmbiance.pause();
        BGM.pause();
      break;
    case 4:
        sceneNum=5;
        image(thorns, width/2, height/2, width, height);
        vineAmbiance.pause();
        BGM.pause();
      break;
      case 5:
      sceneNum=5;
      image(buffFrog,width/2,height/2,width,height);
      toadAmbiance.pause();
      squash.play();
      BGM.pause();
      break;
    }
  }
}
