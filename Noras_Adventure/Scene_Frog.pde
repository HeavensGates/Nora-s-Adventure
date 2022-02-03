class SceneToad {
  PImage Anim1, Anim2, Anim3, frozenRiver, rockMolten, rockDefault;
  int animationNumber=1;
  int Timer;
  int riverState=1;
  int rockState=1;
  boolean firstClick=true;
  Collider colFrog=new Collider();
  Collider colRock1=new Collider();
  Collider colRock2=new Collider();
  Collider colRiver=new Collider();
  Collider colNora=new Collider();
  Collider colHome=new Collider();
  SceneToad() {
  }
  void sceneLoad() {
    Anim1=loadImage("frogscene_frame1.png");   
    Anim2=loadImage("frogscene_frame2.png");
    Anim3=loadImage("frogscene_frame3.png");
    frozenRiver=loadImage("frogscene_frozen_river.png");
    rockMolten=loadImage("rocks_molten.png");
    rockDefault=loadImage("rocks_default.png");
    Timer=millis();
  }
  void sceneDisplay() { 
    if (riverState==1) {
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
    if (riverState==2) {
      image(frozenRiver, width/2, height/2, width, height);
    }
    if (rockState==1) {
      image(rockDefault, width/2, height/2, width, height);
    } 
    if (rockState==2) {
      image(rockMolten, width/2, height/2, width, height);
    }
    //collision for frog
    colFrog.squareCol(width/3.2, height/3.1, width/3, height/2.2);
    boolean frogTarget = pointRect( width/3.2, height/3.1, width/3, height/2.2);
    if (frogTarget&&sceneNum==2&&inv.invSlotsOpen[0]==1&&inv.isPressed1&&(!mousePressed)&&!dialogueActive) {
      potEff.FrogEffects(0);
    }
    if (frogTarget&&sceneNum==2&&inv.invSlotsOpen[1]==1&&inv.isPressed2&&(!mousePressed)&&!dialogueActive) {
      potEff.FrogEffects(1);
    }
    if (frogTarget&&sceneNum==2&&inv.invSlotsOpen[2]==1&&inv.isPressed3&&(!mousePressed)&&!dialogueActive) {
      potEff.FrogEffects(2);
    }
    if (frogTarget&&sceneNum==2&&inv.invSlotsOpen[3]==1&&inv.isPressed4&&(!mousePressed)&&!dialogueActive) {
      potEff.FrogEffects(3);
    }
    if (mousePressed&&frogTarget&&inv.isPressed()&&!dialogueActive&&!potBook.bookOpened){
      if (frog.frogState==8){
      deathScenes.deathNum=2;
      deathTimer=millis();
      }
      if (frog.frogState==3){
      deathScenes.deathNum=5;
      deathTimer=millis();
      }
    }
    //river collision
    colRiver.squareCol(width/10, height/10, width/6.5, height/1.12);
    boolean riverTarget = pointRect(width/10, height/10, width/6.5, height/1.12);
    if (riverTarget&&sceneNum==2&&inv.invSlotsOpen[0]==1&&inv.isPressed1&&(!mousePressed)&&!dialogueActive) {
      potEff.riverEffects(0);
    }
    if (riverTarget&&sceneNum==2&&inv.invSlotsOpen[1]==1&&inv.isPressed2&&(!mousePressed)&&!dialogueActive) {
      potEff.riverEffects(1);
    }
    if (riverTarget&&sceneNum==2&&inv.invSlotsOpen[2]==1&&inv.isPressed3&&(!mousePressed)&&!dialogueActive) {
      potEff.riverEffects(2);
    }  
    if (riverTarget&&sceneNum==2&&inv.invSlotsOpen[3]==1&&inv.isPressed4&&(!mousePressed)&&!dialogueActive) {
      potEff.riverEffects(3);
    }  
    //clicking river without potions
    if (mousePressed&&riverTarget&&inv.isPressed()&&!dialogueActive&&!potBook.bookOpened){
      dialogueActive=true;
      dial.dialNum=23;
    }
      //collision for nora
      colNora.squareCol(width/1.535, height/1.75, width/8, height/2.5);
    boolean noraTarget = pointRect(width/1.535, height/1.75, width/8, height/2.5);
    if (noraTarget&&sceneNum==2&&inv.invSlotsOpen[0]==1&&inv.isPressed1&&(!mousePressed)&&!dialogueActive) {
      potEff.NoraEffects(0);
    }
    if (noraTarget&&sceneNum==2&&inv.invSlotsOpen[1]==1&&inv.isPressed2&&(!mousePressed)&&!dialogueActive) {
      potEff.NoraEffects(1);
    }
    if (noraTarget&&sceneNum==2&&inv.invSlotsOpen[2]==1&&inv.isPressed3&&(!mousePressed)&&!dialogueActive) {
      potEff.NoraEffects(2);
    }
    if (noraTarget&&sceneNum==2&&inv.invSlotsOpen[3]==1&&inv.isPressed4&&(!mousePressed)&&!dialogueActive) {
      potEff.NoraEffects(3);
    }  
    //rock1 collision
    colRock1.squareCol(width/1.55, height/10, width/3, height/2.15);
    boolean rock1Target = pointRect( width/1.55, height/10, width/3, height/2.15);
    if (rock1Target&&sceneNum==2&&inv.invSlotsOpen[0]==1&&inv.isPressed1&&(!mousePressed)&&!dialogueActive) {
      potEff.rockEffects(0);
    }
    if (rock1Target&&sceneNum==2&&inv.invSlotsOpen[1]==1&&inv.isPressed2&&(!mousePressed)&&!dialogueActive) {
      potEff.rockEffects(1);
    }
    if (rock1Target&&sceneNum==2&&inv.invSlotsOpen[2]==1&&inv.isPressed3&&(!mousePressed)&&!dialogueActive) {
      potEff.rockEffects(2);
    }  
    if (rock1Target&&sceneNum==2&&inv.invSlotsOpen[3]==1&&inv.isPressed4&&(!mousePressed)&&!dialogueActive) {
      potEff.rockEffects(3);
    }  
    //clicking rock without potion
    if (mousePressed&&rock1Target&&inv.isPressed()&&(!signCampNext)&&!dialogueActive&&!potBook.bookOpened){
      dialogueActive=true;
      dial.dialNum=26;
    }
    //roc2 collision
    colRock2.squareCol(width/1.28, height/1.77, width/5, height/5);
    boolean rock2Target = pointRect( width/1.28, height/1.77, width/5, height/5);
    if (rock2Target&&sceneNum==2&&inv.invSlotsOpen[0]==1&&inv.isPressed1&&(!mousePressed)&&!dialogueActive) {
      potEff.rockEffects(0);
    }
    if (rock2Target&&sceneNum==2&&inv.invSlotsOpen[1]==1&&inv.isPressed2&&(!mousePressed)&&!dialogueActive) {
      potEff.rockEffects(1);
    }
    if (rock2Target&&sceneNum==2&&inv.invSlotsOpen[2]==1&&inv.isPressed3&&(!mousePressed)&&!dialogueActive) {
      potEff.rockEffects(2);
    }  
    if (rock2Target&&sceneNum==2&&inv.invSlotsOpen[3]==1&&inv.isPressed4&&(!mousePressed)&&!dialogueActive) {
      potEff.riverEffects(3);
    } 
    //clicking rock without potion
    if (mousePressed&&rock2Target&&inv.isPressed()&&(!signCampNext)&&!dialogueActive&&!potBook.bookOpened){
      dialogueActive=true;
      dial.dialNum=26;
    }

    //colision with portal home sign
    if (noraWitch.noraState==2||frog.frogState==2||frog.frogState==5||frog.frogState==6||scene2.riverState==2) {
      image(highlight, width/3.5, height/2.35, width/10, height/8);
      colHome.squareCol(width/4, height/2.6, width/16, height/15);
      signFrogNext = pointRect( width/4, height/2.6, width/16, height/15);
      if (signFrogNext&&mousePressed&&!potBook.bookOpened) {
        sceneNum=3;
        noraWitch.noraState=1;
        frogCleared=true;
        startDelay=millis();
        if (firstClick){
         dialogueActive=true;
         dial.dialNum=52;
         firstClick=false;
         toadAmbiance.pause();
         vineAmbiance.loop(); 
        }

      }
    }
  }
}
