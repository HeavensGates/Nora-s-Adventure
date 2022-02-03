class potionCreated {
  PImage createdFreeze, createdAcid, createdFire, createdGhost, createdGrowth, createdLevi, createdShrink, createdStrength;
  boolean tagDisp=false;
  int dispPot = 7;
  int dispSeq=1;
  potionCreated() {
    //keep empty
  }
  void loadCreate() {
    //load PImages example:(exampleVariableName=loadImage("exampleFileName.png");
    createdFreeze = loadImage ("freezing_potion_created.png");
    createdAcid = loadImage ("acid_potion_created.png");
    createdFire = loadImage ("fire_potion_created.png");
    createdGhost = loadImage ("ghost_potion_created.png");
    createdGrowth = loadImage ("growing_potion_created.png");
    createdLevi = loadImage ("levitation_potion_created.png");
    createdShrink = loadImage ("shrinking_potion_created.png");
    createdStrength = loadImage ("strength_potion_created.png");
  }
  void displayCreate() {
    if (tagDisp) {
      switch (potCreate.dispSeq) {
      case 1:
        break;
      case 2:  
        break;
      case 3:
        potCreate.tagDisp=false;

        break;
      }
      switch(dispPot) {
        //0=freeze,1=acid,2=fire,3=ghost,4=growth,5=levi,6=shrink,7=strong
      case 0:
        image(createdFreeze, width/2, height/2, width/2.8, height/2.8);
        image(inv.potNames[0], width/2, height/2, width/23, height/8.5);
        break;
      case 1:
        image(createdAcid, width/2, height/2, width/2.8, height/2.8);
        image(inv.potNames[1], width/2, height/2, width/23, height/8.5);
        break;
      case 2:
        image(createdFire, width/2, height/2, width/2.8, height/2.8);
        image(inv.potNames[2], width/2, height/2, width/23, height/8.5);
        break;
      case 3:
        image(createdGhost, width/2, height/2, width/2.8, height/2.8);
        image(inv.potNames[3], width/2, height/2, width/23, height/8.5);
        break;
      case 4:
        image(createdGrowth, width/2, height/2, width/2.8, height/2.8);
        image(inv.potNames[4], width/2, height/2, width/23, height/8.5);
        break;
      case 5:
        image(createdLevi, width/2, height/2, width/2.8, height/2.8);
        image(inv.potNames[5], width/2, height/2, width/23, height/8.5);
        break;
      case 6:
        image(createdShrink, width/2, height/2, width/2.8, height/2.8);
        image(inv.potNames[6], width/2, height/2, width/23, height/8.5);
        break;
      case 7:
        image(createdStrength, width/2, height/1.95, width/2.8, height/2.8);
        image(inv.potNames[7], width/2, height/2, width/23, height/8.5);
        break;
      }
    }
  }
}

/*
add this to the variables
 potionCreated potCreate=new potionCreated();
 
 add this to the setup with other loads
 potCreate.loadCreate();
 
 add this to draw preferably inside the "if (!(sceneNum==4)&&!(sceneNum==0)) {" statement you can use ctrl+f to find it ((remember to select all tabs))
 potCreate.displayCreate();
 */
