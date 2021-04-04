int ingOrd=1;
class potionMaker {
  boolean PotIconSelected;
  float closeMakerX;    // circle center position
  float closeMakerY;
  float closeMakerRadius;
  float openMakerX;    // square position
  float openMakerY;
  float openMakerWidth;    // and dimensions
  float openMakerHeight;
  PImage Anim1, Anim2, Anim3;
  PImage itemImages[]=new PImage[6];
  PImage brewColor[]=new PImage[3];
  int animationNumber=1;
  int Timer; 
  int organic[]=new int[2];//0=eye 1=mushroom
  int crystal[]=new int[2];//0=red 1=purple
  int powder[]=new int[2];//0=yellow 1=green
  Collider colMenu=new Collider();
  Collider colItems[]=new Collider[6];
  potionMaker() {
  }
  void loadPotionMaker() {
    Anim1=loadImage("workingtable_frame1.png");  
    Anim2=loadImage("workingtable_frame2.png"); 
    Anim3=loadImage("workingtable_frame3.png");
    itemImages[0]=loadImage("eyeball.png");
    itemImages[1]=loadImage("mushroom.png");
    itemImages[2]=loadImage("red_crystal.png");
    itemImages[3]=loadImage("purple_crystal.png");
    itemImages[4]=loadImage("yellow_powder.png");
    itemImages[5]=loadImage("green_powder.png");
    brewColor[0]=loadImage("workingtable_water.png");
    brewColor[1]=loadImage("workingtable_potion_red.png");
    brewColor[2]=loadImage("workingtable_potion_purple.png");
    Timer=millis();
    for (int i=0; i<6; i++) {
      colItems[i]=new Collider();
    }
  }
  void selectOrganic() {
  }
  void selectCrystal() {
  }
  void selectPowder() {
  }
  void potOpened() {
    //potionMakerOpen
    openMakerX = width/4;    // square position
    openMakerY = height/3;
    openMakerWidth = width/2.7;    // and dimensions
    openMakerHeight = height/3;
    if (!dialogueActive) {
      if (startDelay+1000<millis()) {
        colMenu.squareCol(openMakerX, openMakerY, openMakerWidth, openMakerHeight);
        boolean openPotion = pointRect( openMakerX, openMakerY, openMakerWidth, openMakerHeight);
        if ((openPotion)&&(mousePressed)&&(!signStart)&&inv.isPressed()&&!potBook.bookOpened&&!potMake.PotIconSelected) {
          if (dial.dialNum==12) {
            dialogueActive=true;
          }
          PotIconSelected=true;
          workingTableAmbiance.loop();
          campAmbiance.pause();
          campAmbiance.rewind();
          //fill(255,150,0);
        }
      }
    }
    //potionMakerClose
    closeMakerX =    width/4.7;    // circle center position
    closeMakerY =     height/5;
    closeMakerRadius = width/40;
    if (!dialogueActive) {
      colMenu.circleCol(closeMakerX, closeMakerY, closeMakerRadius);
      boolean hit = pointCircle( closeMakerX, closeMakerY, closeMakerRadius);
      if ((hit)&&(mousePressed)&&inv.isPressed()&&!dialogueActive&&!potBook.bookOpened) {
        PotIconSelected=false;
        workingTableAmbiance.pause();
        campAmbiance.loop();
      }
    }
    //noStroke();
    //ellipse(closeMakerX, closeMakerY, closeMakerRadius*2, closeMakerRadius*2);


    if (PotIconSelected) {
      switch(animationNumber) {
      case 1:
        image(Anim1, width/2, height/2, width/1.5, height/1.5);
        if (millis()>Timer+500) {
          animationNumber=2;
          Timer=millis();
        }
        break;
      case 2:
        image(Anim2, width/2, height/2, width/1.5, height/1.5);
        if (millis()>Timer+500) {
          animationNumber=3; 
          Timer=millis();
        }
        break;
      case 3:
        image(Anim3, width/2, height/2, width/1.5, height/1.5);
        if (millis()>Timer+500) {
          animationNumber=1; 
          Timer=millis();
        }
        break;
      }
      colMenu.squareCol(width/2.6, height/2.9, width/7, height/10);
      boolean trashBin = pointRect(width/2.6, height/2.9, width/7, height/10);

      if (trashBin&inv.invSlotsOpen[0]==1&&inv.isPressed1&&(!mousePressed)&&!dialogueActive) {
        inv.invSlotsOpen[0]=0;
        inv.potsCreated[0]=0;
      }
      if (trashBin&&inv.invSlotsOpen[1]==1&&inv.isPressed2&&(!mousePressed)&&!dialogueActive) {
        inv.invSlotsOpen[1]=0;
        inv.potsCreated[1]=0;
      }
      if (trashBin&&inv.invSlotsOpen[2]==1&&inv.isPressed3&&(!mousePressed)&&!dialogueActive) {
        inv.invSlotsOpen[2]=0;
        inv.potsCreated[2]=0;
      }  
      colMenu.squareCol(width/1.6, height/3, width/6.5, height/4);
      boolean touchFire = pointRect(width/1.6, height/3, width/6.5, height/4);
      if ((touchFire)&&(mousePressed)&&inv.isPressed()&&!dialogueActive&&!potBook.bookOpened) {
        noraSounds[11].rewind();
        noraSounds[11].play();
      }
      if (crystal[0]==0&&crystal[1]==0) {
        image(brewColor[0], width/1.99, height/2, width/1.58, height/1.5);
      }
      if (crystal[0]==1) {
        image(brewColor[1], width/1.99, height/2, width/1.58, height/1.5);
      }
      if (crystal[1]==1) {
        image(brewColor[2], width/1.99, height/2, width/1.58, height/1.5);
      }
      if (organic[0]==0) {
        colMenu.squareCol(width/4.5, height/2, width/30, height/20);
        image(itemImages[0], width/4.2, height/1.9, width/30, height/20);
      }
      if (organic[1]==0) {
        colMenu.squareCol(width/5.5, height/2.03, width/45, height/15);
        image(itemImages[1], width/5.2, height/1.9, width/45, height/15);
      }
      if (crystal[0]==0) {
        colMenu.squareCol(width/2.87, height/2.45, width/55, height/20);
        image(itemImages[2], width/2.8, height/2.3, width/55, height/20);
      }
      if (crystal[1]==0) {
        colMenu.squareCol(width/3.19, height/2.33, width/55, height/20);
        image(itemImages[3], width/3.1, height/2.2, width/55, height/20);
      }
      if (powder[0]==0) {
        colMenu.squareCol(width/2.74, height/2, width/25, height/20);
        image(itemImages[4], width/2.6, height/1.9, width/25, height/20);
      }
      if (powder[1]==0) {
        colMenu.squareCol(width/3.2, height/1.89, width/25, height/20);
        image(itemImages[5], width/3, height/1.8, width/25, height/20);
      }
      if ((organic[0]==0&&organic[1]==0)) {
        image(highlight, width/4.5, height/1.9, width/8, height/6);
      }
      if ((crystal[0]==0&&crystal[1]==0)&&(organic[0]==1||organic[1]==1)) {
        image(highlight, width/2.9, height/2.2, width/8, height/6);
      }
      if ((powder[0]==0||powder[1]==0)&&(crystal[0]==1||crystal[1]==1)) { 
        image(highlight, width/2.75, height/1.85, width/8, height/6);
      }
      potCreate.displayCreate();
    }
    //eye organic
    //0=freeze,1=acid,2=fire,3=ghost,4=growth,5=levi,6=shrink,7=strong
    if ((organic[0]==1)&&(crystal[0]==1)&&(powder[0]==1)) {
      println("Fire Potion created");
      potCreate.dispPot=2;
      potCreate.tagDisp=true;
      potCreate.dispSeq=1;
      potBook.fireCreated=true;
      inv.addPotion(2);
      organic[0]=0;
      crystal[0]=0;
      powder[0]=0;
    }
    if ((organic[0]==1)&&(crystal[1]==1)&&(powder[0]==1)) {
      println("Acid Potion created");
      potCreate.dispPot=1;
      potCreate.tagDisp=true;
      potCreate.dispSeq=1;
      potBook.acidCreated=true;
      inv.addPotion(1);
      organic[0]=0;
      crystal[1]=0;
      powder[0]=0;
    }
    if ((organic[0]==1)&&(crystal[1]==1)&&(powder[1]==1)) {
      println("Ghost Potion created"); 
      potCreate.dispPot=3;
      potCreate.tagDisp=true;
      potCreate.dispSeq=1;
      potBook.ghostCreated=true;
      inv.addPotion(3);
      organic[0]=0;
      crystal[1]=0;
      powder[1]=0;
    }
    if ((organic[0]==1)&&(crystal[0]==1)&&(powder[1]==1)) {
      println("Strength Potion created");
      potCreate.dispPot=7;
      potCreate.tagDisp=true;
      potCreate.dispSeq=1;
      potBook.strengthCreated=true;
      inv.addPotion(7);
      organic[0]=0;
      crystal[0]=0;
      powder[1]=0;
    }
    //mushroom organic
    if ((organic[1]==1)&&(crystal[0]==1)&&(powder[0]==1)) {
      println("Growth Potion created"); 
      potCreate.dispPot=4;
      potCreate.tagDisp=true;
      potCreate.dispSeq=1;
      potBook.growthCreated=true;
      inv.addPotion(4);
      organic[1]=0;
      crystal[0]=0;
      powder[0]=0;
    }
    if ((organic[1]==1)&&(crystal[1]==1)&&(powder[0]==1)) {
      println("Shrinking Potion created"); 
      potCreate.dispPot=6;
      potCreate.tagDisp=true;
      potCreate.dispSeq=1;
      potBook.shrinkCreated=true;
      inv.addPotion(6);
      organic[1]=0;
      crystal[1]=0;
      powder[0]=0;
    }
    if ((organic[1]==1)&&(crystal[1]==1)&&(powder[1]==1)) {
      println("Freezing Potion created"); 
      potCreate.dispPot=0;
      potCreate.tagDisp=true;
      potCreate.dispSeq=1;
      potBook.freezeCreated=true;
      inv.addPotion(0);
      organic[1]=0;
      crystal[1]=0;
      powder[1]=0;
    }
    if ((organic[1]==1)&&(crystal[0]==1)&&(powder[1]==1)) {
      println("Levitation Potion created");
      potCreate.dispPot=5;
      potCreate.tagDisp=true;
      potCreate.dispSeq=1;
      potBook.leviCreated=true;
      inv.addPotion(5);
      organic[1]=0;
      crystal[0]=0;
      powder[1]=0;
    }
  }//open mix end
  //organic handlers
  int getOrgEye() {
    return organic[0];
  }
  int getOrgMush() {
    return organic[1];
  }
  void setOrgEye(int val) {
    organic[0]=val;
  }
  void setOrgMush(int val) {
    organic[1]=val;
  }
  //crystal handlers
  int getCrRed() {
    return crystal[0];
  }
  int getCrPurp() {
    return crystal[1];
  }
  void setCrRed(int val) {
    crystal[0]=val;
  }
  void setCrPurp(int val) {
    crystal[1]=val;
  }
  //Poweder handlers
  int getPowYell() {
    return powder[0];
  }
  int getPowGreen() {
    return powder[1];
  }
  void setPowYell(int val) {
    powder[0]=val;
  }
  void setPowGreen(int val) {
    powder[1]=val;
  }
}
