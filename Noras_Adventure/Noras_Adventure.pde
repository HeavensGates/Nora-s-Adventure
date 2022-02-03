/*
team potion Inc.
*/
boolean dialogueActive=false;
boolean signStart=false;
boolean frogCleared=false;
boolean signCampNext=false;
boolean signFrogNext=false;
int deathTimer=0;
import ddf.minim.*;
Minim minim;
AudioPlayer workingTableAmbiance, campAmbiance, toadAmbiance, portalAmbiance, BGM, credMusic, organicAdd, crystalAdd, potionCreated,pageFlip,vineAmbiance,squash,button;
AudioPlayer frogSounds[]=new AudioPlayer[9];
AudioPlayer noraSounds[]=new AudioPlayer[16];
potionMaker potMake=new potionMaker();
Nora noraWitch=new Nora();
SceneMainMenu sceneFirst=new SceneMainMenu();
SceneCampsite scene1=new SceneCampsite();
SceneToad scene2=new SceneToad();
SceneVines scene3=new SceneVines();
SceneHome sceneFinal=new SceneHome();
SceneDeaths deathScenes=new SceneDeaths();
SceneCredits creds=new SceneCredits();
potionBook potBook=new potionBook();
frogChar frog=new frogChar();
Dialogue dial=new Dialogue();
potionEffects potEff=new potionEffects();
potionCreated potCreate=new potionCreated();
Inventory inv = new Inventory();
Collider colSceneSwitch=new Collider();
Collider colBook=new Collider();
PImage cursorDefault, curGrab, curTrig, highlight;
int startDelay;
//Cursor cur=new Cursor();
int sceneNum=0;
//screen fade effect
float fadeTrans=255;
boolean fading=false;
void setup() {
  fullScreen();
  //size(1920,1080);
  smooth(6);
  frameRate(60);
  highlight=loadImage("item_highlight.png");
  minim=new Minim(this);
  workingTableAmbiance=minim.loadFile("MixingPotions.wav");
  campAmbiance=minim.loadFile("Camp.wav");
  organicAdd=minim.loadFile("OrganicWater.wav");
  crystalAdd=minim.loadFile("OrganicWater.wav");
  toadAmbiance=minim.loadFile("Toad_scene.wav");
  vineAmbiance=minim.loadFile("Vines_Scene.wav");
  potionCreated=minim.loadFile("PotionCreated.wav");
  portalAmbiance=minim.loadFile("Portal.wav");
  pageFlip=minim.loadFile("Page.wav");
  button=minim.loadFile("Button.wav");
  squash=minim.loadFile("squashed.wav");
  //frog sounds
  frogSounds[0]=minim.loadFile("Frog.wav");
  frogSounds[1]=minim.loadFile("Frog1.wav");
  frogSounds[2]=minim.loadFile("Frog2.wav");
  frogSounds[3]=minim.loadFile("FrogAngry.wav");
  frogSounds[4]=minim.loadFile("FrogAngry2.wav");
  frogSounds[5]=minim.loadFile("FrogCryLong.wav");
  frogSounds[6]=minim.loadFile("FrogCryLong2.wav");
  frogSounds[7]=minim.loadFile("FrogCryShort.wav");
  frogSounds[8]=minim.loadFile("FrogCryShort2.wav");
  //nora Sounds
  noraSounds[0]=minim.loadFile("NoraCurious.wav");
  noraSounds[1]=minim.loadFile("NoraCurious2.wav");
  noraSounds[2]=minim.loadFile("NoraFrustrated.wav");
  noraSounds[3]=minim.loadFile("NoraFrustrated2.wav");
  noraSounds[4]=minim.loadFile("NoraHuh.wav");
  noraSounds[5]=minim.loadFile("NoraIrritated.wav");
  noraSounds[6]=minim.loadFile("NoraIrritated2.wav");
  noraSounds[7]=minim.loadFile("NoraQuestion.wav");
  noraSounds[8]=minim.loadFile("NoraQuestion2.wav");
  noraSounds[9]=minim.loadFile("NoraWiii.wav");
  noraSounds[10]=minim.loadFile("NoraWiii2.wav");
  noraSounds[11]=minim.loadFile("NoraAuch.wav");
  noraSounds[12]=minim.loadFile("NoraHmhm.wav");
  noraSounds[13]=minim.loadFile("NoraHmhm2.wav");
  noraSounds[14]=minim.loadFile("NoraOh.wav");
  noraSounds[15]=minim.loadFile("NoraOh2.wav");
  BGM=minim.loadFile("Traveler.mp3"); 
  credMusic=minim.loadFile("Homeward.mp3");
  inv.loadInventory();
  dial.loadDialogue();
  potMake.loadPotionMaker();  
  noraWitch.noraLoad();
  sceneFirst.sceneLoad();
  scene1.sceneLoad();
  scene2.sceneLoad();
  scene3.sceneLoad();
  sceneFinal.sceneLoad();
  deathScenes.sceneLoad();
  creds.sceneLoad();
  potBook.loadBook();
  potCreate.loadCreate();
  frog.frogLoad();
  cursorDefault=loadImage("cursor_default.png");
  curGrab=loadImage("cursor_grab.png");
  curTrig=loadImage("cursor_triggered.png");
  //cursor(cursorDefault,0-50/width,0);
  BGM.loop();
}
void draw() {
  imageMode(CENTER);
  //scene
  background(0);
  if (sceneNum==0) {  
    tint(255, fadeTrans);
    sceneFirst.sceneDisplay();

    colSceneSwitch.squareCol(width/2.6, height/3.5, width/4.4, height/8);
    signStart = pointRect(width/2.6, height/3.5, width/4.4, height/8);
    if (signStart) {
      startDelay=millis();
    }
    if (signStart&&mousePressed) {
      button.play();
      fading=true;
    }
    if (fadeTrans<0) {
      sceneNum=1;
      toadAmbiance.pause();
      campAmbiance.loop();
      fading=false;
    }
    if (fading) { 
      fadeTrans -= 10;
    }   
    colSceneSwitch.squareCol(width/2.6, height/2.3, width/4.4, height/8);
    signStart = pointRect(width/2.6, height/2.3, width/4.4, height/8);
    if (signStart&&mousePressed) {
      exit();
    }
  }
  if (sceneNum==1) {
    tint(255, fadeTrans);
    if (fadeTrans<255) { 
      fadeTrans += 25;
    } 
    if (startDelay+1000<millis()&&startDelay+1500>millis()) {
      dialogueActive=true;
    }
    if (dial.dialNum==10) {
      dialogueActive=true;
    }

    scene1.sceneDisplay();
    noraWitch.noraDefault(width/1.2, height/2);
    if (dial.dialNum==5&&(!dialogueActive)) {
      image(highlight, width/1.07, height/1.75, width/8, height/6);
    }
    if (dial.dialNum==12) {
      image(highlight, width/2.3, height/2, width/2, height/2);
    }
    potMake.potOpened();
    colSceneSwitch.squareCol(width/1.12, height/1.9, width/11, height/10);
    signCampNext = pointRect( width/1.12, height/1.9, width/11, height/10);
    if (signCampNext&&mousePressed&&inv.isPressed()&&!dialogueActive&&!potBook.bookOpened) {      
      potMake.PotIconSelected=false;
      potCreate.tagDisp=false;
      if (frogCleared) {
        startDelay=millis();
        sceneNum=3;
        campAmbiance.pause();
        vineAmbiance.loop();
        noraWitch.noraState=1;
      } else {
        startDelay=millis();
        sceneNum=2;
        noraWitch.noraState=1;
        campAmbiance.pause();
        toadAmbiance.loop();
      }
    }
  }
  if (sceneNum==2) {
    if (startDelay+1000<millis()) {
      signCampNext=false;
    }
    if (dial.dialNum==5) {
      dialogueActive=true;
    }
    if (dial.dialNum==15&&inv.invSlotsOpen[0]==1) {
      dialogueActive=true;
    }

    scene2.sceneDisplay();
    frog.frogDisplay();
    noraWitch.noraDefault(width/1.4, height/1.3);
    if (dial.dialNum==10&&(!dialogueActive)) {
      image(highlight, width/1.12, height/1.15, width/8, height/6);
    }
    colSceneSwitch.squareCol(width/1.175, height/1.25, width/11, height/8);
    boolean signBack = pointRect( width/1.175, height/1.2, width/11, height/10);
    if (signBack&&mousePressed&&inv.isPressed()&&!dialogueActive&&!potBook.bookOpened) {
      sceneNum=1;
      noraWitch.noraState=1;
      toadAmbiance.pause();
      campAmbiance.loop();
    }
  }
  if (sceneNum==3) {
    if (startDelay+1000<millis()) {
      signCampNext=false;
      signFrogNext=false;
    }
    scene3.sceneDisplay();
    noraWitch.noraDefault(width/1.4, height/1.3);
    colSceneSwitch.squareCol(width/1.13, height/1.3, width/11, height/10);
    boolean signBack = pointRect( width/1.13, height/1.3, width/11, height/10);
    if (signBack&&mousePressed&&inv.isPressed()&&!dialogueActive&&!potBook.bookOpened) {
      sceneNum=1;
      noraWitch.noraState=1;
      toadAmbiance.pause();
      campAmbiance.loop();
    }
  }
  if (sceneNum==4) {
    sceneFinal.sceneDisplay();
  }
  //ui
  if (!(sceneNum==4)&&!(sceneNum==0)&&!(sceneNum==6)) {
    inv.invDisplay();
    potBook.displayBook();
    colBook.circleCol(width/21, height/10, width/23);
    boolean bookSelect = pointCircle( width/21, height/10, width/23);
    if (bookSelect&&mousePressed&&inv.isPressed()&&!dialogueActive) {
      potBook.bookOpened=true;
    }      
    deathScenes.sceneDisplay();
  }
  if (sceneNum==6) {
    creds.sceneDisplay();
  }
  dial.dialog1Display();
}
void mousePressed() {
  //Potion Making handlers
  if (potMake.PotIconSelected) {
    if (potMake.getOrgEye() ==0 && potMake.getOrgMush()==0 && ingOrd==1) {
      boolean eyeSelect = pointRect( width/4.5, height/2, width/30, height/20);
      if (eyeSelect) {
        potMake.setOrgEye(1);
        organicAdd.play();
        potionCreated.pause();
        potionCreated.rewind();
        ingOrd=2;
      }
      boolean mushSelect = pointRect( width/5.5, height/2.03, width/45, height/15);
      if (mushSelect) {
        potMake.setOrgMush(1);
        potionCreated.pause();
        potionCreated.rewind();
        organicAdd.play();
        ingOrd=2;
      }
    }
    if (potMake.getCrRed() ==0 && potMake.getCrPurp()==0&& ingOrd==2) {
      boolean redCSelect = pointRect( width/2.87, height/2.45, width/55, height/20);
      if (redCSelect) {
        potMake.setCrRed(1);
        crystalAdd.play();
        ingOrd=3;
      }
      boolean purpCSelect = pointRect( width/3.19, height/2.33, width/55, height/20);
      if (purpCSelect) {
        potMake.setCrPurp(1);
        crystalAdd.play();
        ingOrd=3;
      }
    }
    if (potMake.getPowYell() ==0 && potMake.getPowGreen()==0&& ingOrd==3) {
      boolean yellPSelect = pointRect( width/2.74, height/2, width/25, height/20);
      if (yellPSelect) {
        potMake.setPowYell(1);
        potionCreated.play();
        organicAdd.rewind();
        crystalAdd.rewind();
        ingOrd=1;
      }
      boolean greenPSelect = pointRect( width/3.2, height/1.89, width/25, height/20);
      if (greenPSelect) {
        potMake.setPowGreen(1);
        potionCreated.play();
        organicAdd.rewind();
        crystalAdd.rewind();
        ingOrd=1;
      }
    }
  }
}
void mouseClicked() {
  if (dialogueActive) {
    dial.incDial();
  }
  if (potCreate.tagDisp) {
    potCreate.dispSeq++;
  }
  if (sceneNum==5&&deathTimer+3000<millis()){
     sceneNum=1; 
     deathScenes.deathNum=0;
     frog.setState(1);
     noraWitch.setState(1);
     campAmbiance.loop();
     BGM.loop();
  }
}
void mouseReleased() {
  cursor(curTrig, 0-50/width, 0);
}
