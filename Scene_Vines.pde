class SceneVines {
  PImage BG, vinesDefault, vinesFrozen, vinesThicc, vinesTorn, rocksDefault, rocksMolten;
  int vineState=1;
  int rockState=1;
  boolean passVines=false;
  Collider colBack=new Collider();
  Collider colVines=new Collider();
  Collider colRockLeft=new Collider();
  Collider colRockRight=new Collider();
  Collider colRockRight2=new Collider();
  Collider colNora=new Collider();
  Collider colHome=new Collider();
  SceneVines() {
  }
  void sceneLoad() {
    BG=loadImage("vinescene.png");
    vinesDefault=loadImage("vines_default.png");
    vinesFrozen=loadImage("vines_frozen.png");
    vinesThicc=loadImage("vines_thicc.png");
    vinesTorn=loadImage("vines_torn_molten.png");
    rocksDefault=loadImage("vinescene_rocks.png");
    rocksMolten=loadImage("vinescene_rocks_molten.png");
  }
  void sceneDisplay() { 
    image(BG, width/2, height/2, width, height);    
    switch(rockState) {
    case 1:
      image(rocksDefault, width/2, height/2, width, height);
      break;
    case 2:
      image(rocksMolten, width/2, height/2, width, height);
      break;
    }
    switch(vineState) {
    case 1:
      image(vinesDefault, width/2, height/2, width, height);
      break;
    case 2:
      image(vinesFrozen, width/2, height/2, width, height);
      break;
    case 3:
      image(vinesThicc, width/2, height/2, width, height);
      break;
    case 4:
      image(vinesTorn, width/2, height/2, width, height);
      break;
    }
    //collisions
    colVines.squareCol(width/2.9, height/6, width/3.5, height/2);
    boolean vinesTarget = pointRect( width/2.9, height/6, width/3.5, height/2);
    if (vinesTarget&&sceneNum==3&&inv.invSlotsOpen[0]==1&&inv.isPressed1&&(!mousePressed)&&!dialogueActive) {
      potEff.vinesEffects(0);
    }
    if (vinesTarget&&sceneNum==3&&inv.invSlotsOpen[1]==1&&inv.isPressed2&&(!mousePressed)&&!dialogueActive) {
      potEff.vinesEffects(1);
    }
    if (vinesTarget&&sceneNum==3&&inv.invSlotsOpen[2]==1&&inv.isPressed3&&(!mousePressed)&&!dialogueActive) {
      potEff.vinesEffects(2);
    }  
    if (vinesTarget&&sceneNum==3&&inv.invSlotsOpen[3]==1&&inv.isPressed4&&(!mousePressed)&&!dialogueActive) {
      potEff.vinesEffects(3);
    }
    if (mousePressed&&vinesTarget&&inv.isPressed()&&(!signFrogNext)&&(!signCampNext)&&!passVines&&!potBook.bookOpened) {

      if ((noraWitch.noraState==4)) {
        vineState=4;
        dialogueActive=true;
        dial.dialNum=60;
      } else if ((noraWitch.noraState==6)) {
        deathScenes.deathNum=3;
        deathTimer=millis();
      } else if ((noraWitch.noraState==2)) {
        deathScenes.deathNum=4;
        deathTimer=millis();
      } else {
        dialogueActive=true;
        dial.dialNum=55;
      }
    }
    //Left rock collision
    colRockLeft.squareCol(width/10, height/10, width/4.3, height/1.5);
    boolean rockLeft = pointRect(width/10, height/10, width/4.3, height/1.5);
    if (rockLeft&&sceneNum==3&&inv.invSlotsOpen[0]==1&&inv.isPressed1&&(!mousePressed)&&!dialogueActive) {
      potEff.rockEffects(0);
    }
    if (rockLeft&&sceneNum==3&&inv.invSlotsOpen[1]==1&&inv.isPressed2&&(!mousePressed)&&!dialogueActive) {
      potEff.rockEffects(1);
    }
    if (rockLeft&&sceneNum==3&&inv.invSlotsOpen[2]==1&&inv.isPressed3&&(!mousePressed)&&!dialogueActive) {
      potEff.rockEffects(2);
    }  
    if (rockLeft&&sceneNum==3&&inv.invSlotsOpen[3]==1&&inv.isPressed4&&(!mousePressed)&&!dialogueActive) {
      potEff.rockEffects(3);
    }  
    //clicking rock without potion
    if (mousePressed&&rockLeft&&inv.isPressed()&&(!signFrogNext)&&(!signCampNext)&&!potBook.bookOpened) {
      dialogueActive=true;
      dial.dialNum=26;
    }
    //Right rock collision
    colRockRight.squareCol(width/1.55, height/10, width/3, height/2.15);
    boolean rockRight = pointRect( width/1.55, height/10, width/3, height/2.15);
    if (rockRight&&sceneNum==3&&inv.invSlotsOpen[0]==1&&inv.isPressed1&&(!mousePressed)&&!dialogueActive) {
      potEff.rockEffects(0);
    }
    if (rockRight&&sceneNum==3&&inv.invSlotsOpen[1]==1&&inv.isPressed2&&(!mousePressed)&&!dialogueActive) {
      potEff.rockEffects(1);
    }
    if (rockRight&&sceneNum==3&&inv.invSlotsOpen[2]==1&&inv.isPressed3&&(!mousePressed)&&!dialogueActive) {
      potEff.rockEffects(2);
    }  
    if (rockRight&&sceneNum==3&&inv.invSlotsOpen[3]==1&&inv.isPressed4&&(!mousePressed)&&!dialogueActive) {
      potEff.rockEffects(3);
    }  
    //clicking rock without potion
    if (mousePressed&&rockRight&&inv.isPressed()&&(!signFrogNext)&&(!signCampNext)&&!potBook.bookOpened) {
      dialogueActive=true;
      dial.dialNum=26;
    }
    //Right rock collision
    colRockRight2.squareCol(width/1.28, height/1.77, width/5, height/5);
    boolean rockRight2 = pointRect( width/1.28, height/1.77, width/5, height/5);
    if (rockRight2&&sceneNum==3&&inv.invSlotsOpen[0]==1&&inv.isPressed1&&(!mousePressed)&&!dialogueActive) {
      potEff.rockEffects(0);
    }
    if (rockRight2&&sceneNum==3&&inv.invSlotsOpen[1]==1&&inv.isPressed2&&(!mousePressed)&&!dialogueActive) {
      potEff.rockEffects(1);
    }
    if (rockRight2&&sceneNum==3&&inv.invSlotsOpen[2]==1&&inv.isPressed3&&(!mousePressed)&&!dialogueActive) {
      potEff.rockEffects(2);
    }  
    if (rockRight2&&sceneNum==3&&inv.invSlotsOpen[3]==1&&inv.isPressed4&&(!mousePressed)&&!dialogueActive) {
      potEff.rockEffects(3);
    }  
    //clicking rock without potion
    if (mousePressed&&rockRight2&&inv.isPressed()&&(!signFrogNext)&&(!signCampNext)&&!potBook.bookOpened) {
      dialogueActive=true;
      dial.dialNum=26;
    }
    //collision for nora
    colNora.squareCol(width/1.535, height/1.75, width/8, height/2.5);
    boolean noraTarget = pointRect(width/1.535, height/1.75, width/8, height/2.5);
    if (noraTarget&&sceneNum==3&&inv.invSlotsOpen[0]==1&&inv.isPressed1&&(!mousePressed)&&!dialogueActive) {
      potEff.NoraEffects(0);
    }
    if (noraTarget&&sceneNum==3&&inv.invSlotsOpen[1]==1&&inv.isPressed2&&(!mousePressed)&&!dialogueActive) {
      potEff.NoraEffects(1);
    }
    if (noraTarget&&sceneNum==3&&inv.invSlotsOpen[2]==1&&inv.isPressed3&&(!mousePressed)&&!dialogueActive) {
      potEff.NoraEffects(2);
    }
    if (noraTarget&&sceneNum==3&&inv.invSlotsOpen[3]==1&&inv.isPressed4&&(!mousePressed)&&!dialogueActive) {
      potEff.NoraEffects(3);
    }  
    //colision with portal home sign
    if (noraWitch.noraState==3||noraWitch.noraState==5||vineState==4) {
      passVines=true;
      image(highlight, width/2.15, height/2.5, width/10, height/8);
      colHome.squareCol(width/2.3, height/2.8, width/16, height/15);
      boolean SignTarget = pointRect( width/2.3, height/2.8, width/16, height/15);
      if (SignTarget&&mousePressed&&!dialogueActive) {
        sceneNum=4;
        dialogueActive=true;
        dial.dialNum=45;
        toadAmbiance.pause();
        campAmbiance.pause();
        portalAmbiance.loop();
      }
    }
  }
}
