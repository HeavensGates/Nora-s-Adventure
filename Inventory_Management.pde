class Inventory {
  PImage inva;
  float mX[]=new float[4]; 
  float mY[]=new float[4];
  float potY[]=new float[4];
  int invSlotsOpen[]=new int[4];
  PImage potNames[]=new PImage[9];
  int potsCreated[]=new int[4];
  Collider col[]=new Collider[4];
  boolean isPressed1=false;
  boolean isPressed2=false;
  boolean isPressed3=false;
  boolean isPressed4=false;
  Inventory() {
  }

  void loadInventory() {
    potY[0]=height/3.4;
    potY[1]=height/2.04;
    potY[2]=height/1.47;
    potY[3]=height/1.18;
    inva = loadImage("Inventory.png");
    potNames[0]=loadImage("freezing_potion.png");
    potNames[1]=loadImage("acid_potion.png");
    potNames[2]=loadImage("fire_potion.png");
    potNames[3]=loadImage("ghost_potion.png");
    potNames[4]=loadImage("growth_potion.png");
    potNames[5]=loadImage("levitation_potion.png");
    potNames[6]=loadImage("shrinking_potion.png");
    potNames[7]=loadImage("strength_potion.png");
    potNames[8]=loadImage("undo_potion.png");
    //chooses which inv is open
    invSlotsOpen[0]=0;
    invSlotsOpen[1]=0;
    invSlotsOpen[2]=0;
    invSlotsOpen[3]=1;
    //chooses potion number
    potsCreated[0]=0;
    potsCreated[1]=0;
    potsCreated[2]=0;
    potsCreated[3]=8;
    for (int i=0; i<4; i++) {
      col[i]=new Collider();
    }
  }
  void invDisplay() {

    image(inva, width/2, height/1.9, width, height);
    if (invSlotsOpen[0]==1) {
      image(potNames[potsCreated[0]], width/23+mX[0], potY[0]+mY[0], width/23, height/8.5);
    }
    if (invSlotsOpen[1]==1) {
      image(potNames[potsCreated[1]], width/23+mX[1], potY[1]+mY[1], width/23, height/8.5);
    }
    if (invSlotsOpen[2]==1) {
      image(potNames[potsCreated[2]], width/23+mX[2], potY[2]+mY[2], width/23, height/8.5);
    }
    if (invSlotsOpen[3]==1) {
      image(potNames[potsCreated[3]], width/23+mX[3], potY[3]+mY[3], width/23, height/8.5);
    }
    if (mousePressed) {
      inv.col[0].circleCol(width/23, height/3.4, width/23);
      boolean pot1Select = pointCircle( width/23, height/3.4, width/23);
      if (pot1Select&&!dialogueActive&&!potBook.bookOpened) {
        isPressed1=true;
      }
      if (isPressed1&&inv.invSlotsOpen[0]==1&&!dialogueActive) {
        mX[0]=mouseX-0.04*width;
        mY[0]=mouseY-0.3*height;
      }
      inv.col[1].circleCol(width/23, height/2.04, width/23);
      boolean pot2Select = pointCircle( width/23, height/2.04, width/23);
      if (pot2Select&&!dialogueActive) {
        isPressed2=true;
      }
      if (isPressed2&&inv.invSlotsOpen[1]==1&&!dialogueActive) {
        mX[1]=mouseX-0.04*width;
        mY[1]=mouseY-0.5*height;
      }
      inv.col[2].circleCol(width/23, height/1.47, width/23);
      boolean pot3Select = pointCircle( width/23, height/1.47, width/23);
      if (pot3Select&&!dialogueActive) {
        isPressed3=true;
      }
      if (isPressed3&&inv.invSlotsOpen[2]==1&&!dialogueActive) {
        mX[2]=mouseX-0.04*width;
        mY[2]=mouseY-0.7*height;
      }
      inv.col[3].circleCol(width/23, height/1.18, width/23);
      boolean pot4Select = pointCircle( width/23, height/1.18, width/23);
      if (pot4Select&&!dialogueActive) {
        isPressed4=true;
      }
      if (isPressed4&&inv.invSlotsOpen[3]==1&&!dialogueActive) {
        mX[3]=mouseX-0.04*width;
        mY[3]=mouseY-0.85*height;
      }
    } else {
      for (int i=0; i<4; i++) {
        mX[i]=0;
        mY[i]=0;
        isPressed1=false;
        isPressed2=false;
        isPressed3=false;
        isPressed4=false;
      }
    }
  }


  void addPotion(int potnum) {
    if (isSlotOpen()) {
      potsCreated[checkOpenSlot()]=potnum;
    } else {
      println("No open inventory slot");
      noraSounds[6].rewind();
      dial.dialNum=18;
      dialogueActive=true;
    }
  }
  int checkOpenSlot() {
    if (invSlotsOpen[0]==0) {
      invSlotsOpen[0]=1;
      return 0;
    } else if (invSlotsOpen[1]==0) {
      invSlotsOpen[1]=1;
      return 1;
    } else {
      invSlotsOpen[2]=1;
      return 2;
    }
  }
  boolean isSlotOpen() {
    return (invSlotsOpen[0]==0) || (invSlotsOpen[1]==0) || (invSlotsOpen[2]==0);
  }
   boolean isPressed(){
    return (!(isPressed1||isPressed2||isPressed3||isPressed4)); 
   }
}
