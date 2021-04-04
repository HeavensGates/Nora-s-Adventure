class potionBook {
  PImage page1, page2;
  boolean spellCrafted;
  boolean bookOpened=false;
  int pageNum = 1;
  boolean fireCreated, acidCreated, growthCreated, shrinkCreated, freezeCreated, ghostCreated, strengthCreated, leviCreated;
  Collider colCloseBook=new Collider();
  potionBook() {
  }
  void loadBook() {
    //load PImages example:(exampleVariableName=loadImage("exampleFileName.png"); 
    page1 = loadImage("spellbook_page1.png");
    page2 = loadImage("spellbook_page2.png");
  }
  void displayBook() {
    //0=freeze,1=acid,2=fire,3=ghost,4=growth,5=levi,6=shrink,7=strong

    //0=eyeball,1=mushroom,2=redC,3=purpC,4=yellP,5=grenP potMake.itemImages[0]
    if (bookOpened) {
      if (pageNum==1) {
        image(page1, width/2, height/2, width, height);
        if (freezeCreated) {
          image(inv.potNames[0], width/2.24, height/2.63, width/27, height/8.5);
          image(potMake.itemImages[1], width/3.9, height/2.63, width/35, height/12.5);
          image(potMake.itemImages[3], width/3.2, height/2.63, width/35, height/12.5);
          image(potMake.itemImages[5], width/2.66, height/2.62, width/25, height/17.5);
        }
        if (growthCreated) {
          image(inv.potNames[4], width/1.35, height/1.65, width/23, height/8.5);
          image(potMake.itemImages[1], width/1.84, height/1.66, width/35, height/12.5);
          image(potMake.itemImages[2], width/1.66, height/1.66, width/35, height/12.5);
          image(potMake.itemImages[4], width/1.50, height/1.65, width/25, height/17.5);
        }
        if (leviCreated) {
          image(inv.potNames[5], width/1.36, height/2.61, width/27, height/8.5);
          image(potMake.itemImages[1], width/1.84, height/2.59, width/35, height/12.5);
          image(potMake.itemImages[2], width/1.66, height/2.59, width/35, height/12.5);
          image(potMake.itemImages[5], width/1.51, height/2.58, width/25, height/17.5);
        }
        if (shrinkCreated) {
          image(inv.potNames[6], width/2.23, height/1.68, width/27, height/8.5);
          image(potMake.itemImages[1], width/3.9, height/1.68, width/35, height/12.5);
          image(potMake.itemImages[3], width/3.2, height/1.68, width/35, height/12.5);
          image(potMake.itemImages[4], width/2.65, height/1.67, width/25, height/17.5);
        }
        colSceneSwitch.squareCol(width/1.45, height/1.45, width/10, height/8);
        boolean pageSelected = pointRect( width/1.45, height/1.45, width/10, height/8);
        if (pageSelected&&mousePressed&&inv.isPressed()&&!dialogueActive) {
          pageFlip.rewind();
          pageFlip.play();
          pageNum=2;
        }
      }
      if (pageNum==2) {
        image(page2, width/2, height/2, width, height);
        if (acidCreated) {
          image(inv.potNames[1], width/2.23, height/1.67, width/27, height/8.75);
          image(potMake.itemImages[0], width/3.89, height/1.68, width/22.5, height/15);
          image(potMake.itemImages[3], width/3.18, height/1.68, width/35, height/12.5);
          image(potMake.itemImages[4], width/2.65, height/1.67, width/25, height/17.5);
        }
        if (fireCreated) {
          image(inv.potNames[2], width/1.35, height/1.65, width/23, height/8.5);
          image(potMake.itemImages[0], width/1.83, height/1.66, width/22.5, height/15);
          image(potMake.itemImages[2], width/1.66, height/1.66, width/35, height/12.5);
          image(potMake.itemImages[4], width/1.50, height/1.65, width/25, height/17.5);
        }
        if (ghostCreated == true) {
          image(inv.potNames[3], width/2.24, height/2.63, width/27, height/8.5);
          image(potMake.itemImages[0], width/3.9, height/2.63, width/22.5, height/15);
          image(potMake.itemImages[3], width/3.2, height/2.63, width/35, height/12.5);
          image(potMake.itemImages[5], width/2.66, height/2.62, width/25, height/17.5);
        }

        if (strengthCreated == true) {
          image(inv.potNames[7], width/1.36, height/2.61, width/23, height/8.5);
          image(potMake.itemImages[0], width/1.84, height/2.59, width/22.5, height/15);
          image(potMake.itemImages[2], width/1.66, height/2.59, width/35, height/12.5);
          image(potMake.itemImages[5], width/1.50, height/2.58, width/25, height/17.5);
        }
        colSceneSwitch.squareCol(width/5, height/1.45, width/10, height/8);
        boolean pageSelected = pointRect(width/5, height/1.45, width/10, height/8);
        if (pageSelected&&mousePressed&&inv.isPressed()&&!dialogueActive) {
          pageNum=1;
          pageFlip.rewind();
          pageFlip.play();
        }
      }
      colSceneSwitch.squareCol(width/4.4, height/5, width/25, height/10);
      boolean bookClose = pointRect(width/4.4, height/5, width/25, height/10);
      if (bookClose&&mousePressed&&inv.isPressed()&&!dialogueActive) {
        bookOpened=false;
      }
    }
  }
}
