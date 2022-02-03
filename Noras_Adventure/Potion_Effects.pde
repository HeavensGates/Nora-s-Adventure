class potionEffects {
  potionEffects() {
  }

  void FrogEffects(int potNum) {   
    switch(inv.potsCreated[potNum]) {
      //0=freeze,1=acid,2=fire,3=ghost,4=growth,5=levi,6=shrink,7=strong,8=nulify
    case 0:
      frog.setState(4);
      dialogueActive=true;
      dial.dialNum=31;
      inv.invSlotsOpen[potNum]=0;
      inv.potsCreated[potNum]=0;
      break;
    case 1:
      frog.setState(2);
      dialogueActive=true;
      dial.dialNum=21;
      inv.invSlotsOpen[potNum]=0;
      inv.potsCreated[potNum]=0;
      break;
    case 2:
      frog.setState(5);
      dialogueActive=true;
      dial.dialNum=21;
      inv.invSlotsOpen[potNum]=0;
      inv.potsCreated[potNum]=0;
      break;
    case 3:
      dialogueActive=true;
      dial.dialNum=39;
      break;
    case 4:
      frog.setState(7);
      dialogueActive=true;
      dial.dialNum=35;      
      inv.invSlotsOpen[potNum]=0;
      inv.potsCreated[potNum]=0;
      break;
    case 5:
      frog.setState(8);
      inv.invSlotsOpen[potNum]=0;
      inv.potsCreated[potNum]=0;
      break;
    case 6:
      frog.setState(6);
      dialogueActive=true;
      dial.dialNum=21;
      inv.invSlotsOpen[potNum]=0;
      inv.potsCreated[potNum]=0;
      break;
    case 7:
      frog.setState(3);
      inv.invSlotsOpen[potNum]=0;
      inv.potsCreated[potNum]=0;
      break;
    case 8:
      frog.setState(1);
      break;
    }
  }
  void NoraEffects(int potNum) {   
    switch(inv.potsCreated[potNum]) {
      //0=freeze,1=acid,2=fire,3=ghost,4=growth,5=levi,6=shrink,7=strong,8=nulify
    case 0:
      dialogueActive=true;
      dial.dialNum=29;
      break;
    case 1:
      dialogueActive=true;
      dial.dialNum=29;
      break;
    case 2:
      dialogueActive=true;
      dial.dialNum=29;
      break;
    case 3:
      noraWitch.noraState=2;
      inv.invSlotsOpen[potNum]=0;
      inv.potsCreated[potNum]=0;
      if (sceneNum==2) {
        dialogueActive=true;
        dial.dialNum=21;
      } else {
        dial.dialNum=43;
        dialogueActive=true;
      }
      break;
    case 4:
      noraWitch.noraState=5;
      if (sceneNum==3) {
        dialogueActive=true;
        dial.dialNum=58;
      }
      inv.invSlotsOpen[potNum]=0;
      inv.potsCreated[potNum]=0;
      break;
    case 5:
      noraSounds[9].play();
      noraWitch.noraState=3;
      if (sceneNum==3) {
        dialogueActive=true;
        dial.dialNum=58;
      }
      inv.invSlotsOpen[potNum]=0;
      inv.potsCreated[potNum]=0;
      break;
    case 6:
      noraWitch.noraState=6;
      inv.invSlotsOpen[potNum]=0;
      inv.potsCreated[potNum]=0;
      break;
    case 7:
      noraWitch.noraState=4;
      inv.invSlotsOpen[potNum]=0;
      inv.potsCreated[potNum]=0;
      if (sceneNum==3) {
        dial.dialNum=48;
        dialogueActive=true;
      }
      break;
    case 8:
      noraWitch.setState(1);
      dial.dialNum=50;
      dialogueActive=true;
      break;
    }
  }
  void riverEffects(int potNum) {
    switch(inv.potsCreated[potNum]) {
      //0=freeze,1=acid,2=fire,3=ghost,4=growth,5=levi,6=shrink,7=strong,8=nulify
    case 0:
      scene2.riverState=2;
      dialogueActive=true;
      dial.dialNum=21;
      inv.invSlotsOpen[potNum]=0;
      inv.potsCreated[potNum]=0;
      break;
    case 1:
      dialogueActive=true;
      dial.dialNum=41;
      break;
    case 2:
      dialogueActive=true;
      dial.dialNum=41;
      break;
    case 3:
      dialogueActive=true;
      dial.dialNum=41;
      break;
    case 4:
      dialogueActive=true;
      dial.dialNum=41;
      break;
    case 5:
      dialogueActive=true;
      dial.dialNum=41;
      break;
    case 6:
      dialogueActive=true;
      dial.dialNum=41;
      break;
    case 7:
      dialogueActive=true;
      dial.dialNum=41;
      break;
    case 8:
      scene2.riverState=1;
      break;
    }
  }
  void rockEffects(int potNum) {
    switch(inv.potsCreated[potNum]) {
      //0=freeze,1=acid,2=fire,3=ghost,4=growth,5=levi,6=shrink,7=strong,8=nulify
    case 0:
      dialogueActive=true;
      dial.dialNum=41;
      break;
    case 1:
      if (sceneNum==2) {
        scene2.rockState=2;
        dialogueActive=true;
        dial.dialNum=35;
        inv.invSlotsOpen[potNum]=0;
        inv.potsCreated[potNum]=0;
      }
      if (sceneNum==3) {
        scene3.rockState=2;
        dialogueActive=true;
        dial.dialNum=35;
        inv.invSlotsOpen[potNum]=0;
        inv.potsCreated[potNum]=0;
      }
      break;
    case 2:
      dialogueActive=true;
      dial.dialNum=41;
      break;
    case 3:
      dialogueActive=true;
      dial.dialNum=41;
      break;
    case 4:
      dialogueActive=true;
      dial.dialNum=41;
      break;
    case 5:
      dialogueActive=true;
      dial.dialNum=41;
      break;
    case 6:
      dialogueActive=true;
      dial.dialNum=41;
      break;
    case 7:
      dialogueActive=true;
      dial.dialNum=41;
      break;
    case 8:
      if (sceneNum==2) {
        scene2.rockState=1;
      }
      if (sceneNum==3) {
        scene3.rockState=1;
        break;
      }
    }
  }
  void vinesEffects(int potNum) {
    switch(inv.potsCreated[potNum]) {
      //0=freeze,1=acid,2=fire,3=ghost,4=growth,5=levi,6=shrink,7=strong,8=nulify
    case 0:
      scene3.vineState=2; 
      inv.invSlotsOpen[potNum]=0;
      inv.potsCreated[potNum]=0;
      break;
    case 1:
      scene3.vineState=4; 
      if (sceneNum==3) {
        dialogueActive=true;
        dial.dialNum=58;
      }
      inv.invSlotsOpen[potNum]=0;
      inv.potsCreated[potNum]=0;
      break;
    case 2:
      deathScenes.deathNum=1;
      inv.invSlotsOpen[potNum]=0;
      inv.potsCreated[potNum]=0;
      break;
    case 3:
      dialogueActive=true;
      dial.dialNum=41;
      break;
    case 4:
      scene3.vineState=3; 
      dialogueActive=true;
      dial.dialNum=35;
      inv.invSlotsOpen[potNum]=0;
      inv.potsCreated[potNum]=0;
      break;
    case 5:
      dialogueActive=true;
      dial.dialNum=41;
      break;
    case 6:
      dialogueActive=true;
      dial.dialNum=41;
      break;
    case 7:
      scene3.vineState=3; 
      dialogueActive=true;
      dial.dialNum=35;
      inv.invSlotsOpen[potNum]=0;
      inv.potsCreated[potNum]=0;
      break;
    case 8:
      scene3.vineState=1;
      break;
    }
  }
}
