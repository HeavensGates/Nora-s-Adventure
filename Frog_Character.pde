class frogChar {
  PImage frogDefault, frogMelt, frogStrong, frogFreeze, frogBurnt, frogLevi;
  int frogState=1;//1 normal, 2 melted, 3 strong, 4 frozen, 5 burnt, 6 shrink, 7 grow, 8 levitate
  frogChar() {
  }
  void frogLoad() {
    frogDefault=loadImage("frog.png");
    frogMelt=loadImage("frog_melted.png");
    frogStrong=loadImage("frog_angor.png");
    frogFreeze=loadImage("frog_frozen.png");
    frogBurnt=loadImage("frog_burnt.png");
    frogLevi=loadImage("frog_levitating.png");
  }
  void frogDisplay() {
    switch(frogState) {
    case 1:
      image(frogDefault, width/2, height/1.9, width/1.6, height/1.3);
      break;
    case 2:
      image(frogMelt, width/2, height/1.9, width/1.6, height/1.3);
      frogSounds[6].play();
      break;
    case 3:
      image(frogStrong, width/2, height/1.9, width/1.6, height/1.3);
      frogSounds[4].play();
      break;
    case 4:
      image(frogFreeze, width/2, height/1.9, width/1.6, height/1.3);
      frogSounds[8].play();
      break;
    case 5:
      image(frogBurnt, width/2, height/1.9, width/1.6, height/1.3);
      frogSounds[7].play();
      break;
    case 6:
      image(frogDefault, width/2, height/1.4, width/16, height/13);
      frogSounds[3].play();
      break;
    case 7:
      image(frogDefault, width/2, height/2, width/1, height*1.3);
      frogSounds[1].play();
      break;
    case 8:
      image(frogLevi, width/2, height/1.9, width/1.6, height/1.3);
      frogSounds[5].play();
    }
  }
  void setState(int tempState) {
    frogState=tempState;
  }
}
