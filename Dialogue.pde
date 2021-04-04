class Dialogue {
  PImage dial1, dial2, dial3, dial4, dial5, dial6, dial7, dial8, dial9, dial10, dial11, dial12, dial13, dial14, dial15, dial16, dial17, dial18, dial19, dial20, dial21, dial22, dial23, dial24, dial25, dial26, dial27, dial28;
  int dialNum=1;
  Dialogue() {
  }
  void loadDialogue() {
    dial1=loadImage("dialogue_box_1.png");
    dial2=loadImage("dialogue_box_2.png");
    dial3=loadImage("dialogue_box_3.png");
    dial4=loadImage("dialogue_box_4.png");
    dial5=loadImage("dialogue_box_5.png");
    dial6=loadImage("dialogue_box_6.png");
    dial7=loadImage("dialogue_box_7.png");
    dial8=loadImage("dialogue_box_8.png");
    dial9=loadImage("dialogue_box_9.png");
    dial10=loadImage("dialogue_box_10.png");
    dial11=loadImage("dialogue_box_11.png");
    dial12=loadImage("dialogue_box_12.png");
    dial13=loadImage("dialogue_box_13.png");
    dial14=loadImage("dialogue_box_14.png");
    dial15=loadImage("dialogue_box_15.png");
    dial16=loadImage("dialogue_box_16.png");
    dial17=loadImage("dialogue_box_17.png");
    dial18=loadImage("dialogue_box_18.png");
    dial19=loadImage("dialogue_box_19.png");
    dial20=loadImage("dialogue_box_20.png");
    dial21=loadImage("dialogue_box_21.png");
    dial22=loadImage("dialogue_box_22.png");
    dial23=loadImage("dialogue_box_23.png");
    dial24=loadImage("dialogue_box_24.png");
    dial25=loadImage("dialogue_box_25.png");
    dial26=loadImage("dialogue_box_26.png");
    dial27=loadImage("dialogue_box_27.png");
    dial28=loadImage("dialogue_box_28.png");


    /*   
     1   [Finally.. ]
     2   [After months I have collected enough resources and finished my research about this world.]
     3   [Time to head back to the portal and go home!]
     4   [Hmm… It looks like the path is blocked by.. a giant toad?! This is the only path to get to the portal!]
     5   [What should I do? I can’t just walk past him..]
     6   [Oh! Maybe making a potion will do the trick.]
     7   [Let’s start by making potions at my workbench.]
     8   [To make a potion I need to combine one natural ingredient, one crystal and a bit of powder.] (tutorial potion making)
     9   [Let’s see if these potions can help me get past the toad]
     10  [I can’t make any more potions, my satchel is already full.]
     (Inventory full)
     11  [Looks like the toad is no longer my problem, time to go home!]
     (when toad is out of way/defeated)
     12  [I can’t go through the river! I will drown!]
     *when clicking the river*
     13  [I can’t climb over them. They’re way too big!]
     *when clicking on rocks*
     14  [Are you trying to kill me?]
     *fire or acid over witch*
     15  [Hmmm. The toad is still there… I didn’t think this one through.]
     (for frozen toad, toad levitation)
     16  [That doesn’t seem strong enough to make any difference.]
     (for acid stones, toad levitation, fire river)
     17  [This only makes things worse!]
     (acid stones, growth toad)
     18  [That will only make things worse!]
     (growth toad, if we don’t want to make an illustration)
     19  [I could use these potions on the toad… But maybe there’s another option.]
     20  [I need to watch out with these potions. I could hurt myself if I’m not careful.]
     21  [Ah.. Feels good to be myself again]
     *Nora after turning back to normal*
     25 [I cant use that here...]
     *using potion on wrong place*
     26 [Oh no! The path is completely overgrown with vines! They seem to have grown while I was away..]
     27 [Ouch.. I can’t get past without using a potion..]
     28 [Looks like that fixes the vine problem! I can finally get past them!]
     *vines are gone*
     
     */
  }
  void dialog1Display() {
    if (dialogueActive) {
      switch(dialNum) {
      case 1:
        image(dial1, width/2, height/1.2, width/1.7, height/3.5);
        noraSounds[14].play();
        noraSounds[1].rewind();
        noraSounds[2].rewind();
        noraSounds[3].rewind();
        noraSounds[4].rewind();
        noraSounds[5].rewind();
        noraSounds[6].rewind();
        noraSounds[7].rewind();
        noraSounds[8].rewind();
        noraSounds[9].rewind();
        noraSounds[10].rewind();
        noraSounds[11].rewind();
        noraSounds[12].rewind();
        noraSounds[13].rewind();
        noraSounds[0].rewind();
        noraSounds[15].rewind();
        break;
      case 2:
        image(dial2, width/2, height/1.2, width/1.7, height/3.5);
        noraSounds[13].play();
        noraSounds[1].rewind();
        noraSounds[2].rewind();
        noraSounds[3].rewind();
        noraSounds[4].rewind();
        noraSounds[5].rewind();
        noraSounds[6].rewind();
        noraSounds[7].rewind();
        noraSounds[8].rewind();
        noraSounds[9].rewind();
        noraSounds[10].rewind();
        noraSounds[11].rewind();
        noraSounds[12].rewind();
        noraSounds[0].rewind();
        noraSounds[14].rewind();
        noraSounds[15].rewind();
        break;
      case 3:
        image(dial3, width/2, height/1.2, width/1.7, height/3.5);
        noraSounds[8].play();
        noraSounds[1].rewind();
        noraSounds[2].rewind();
        noraSounds[3].rewind();
        noraSounds[4].rewind();
        noraSounds[5].rewind();
        noraSounds[6].rewind();
        noraSounds[7].rewind();
        noraSounds[0].rewind();
        noraSounds[9].rewind();
        noraSounds[10].rewind();
        noraSounds[11].rewind();
        noraSounds[12].rewind();
        noraSounds[13].rewind();
        noraSounds[14].rewind();
        noraSounds[15].rewind();
        break;
      case 4:
        dialogueActive=false;
        dialNum=5;
        break;
      case 5:
        image(dial4, width/2, height/1.2, width/1.7, height/3.5);
        noraSounds[4].play();
        noraSounds[1].rewind();
        noraSounds[2].rewind();
        noraSounds[3].rewind();
        noraSounds[0].rewind();
        noraSounds[5].rewind();
        noraSounds[6].rewind();
        noraSounds[7].rewind();
        noraSounds[8].rewind();
        noraSounds[9].rewind();
        noraSounds[10].rewind();
        noraSounds[11].rewind();
        noraSounds[12].rewind();
        noraSounds[13].rewind();
        noraSounds[14].rewind();
        noraSounds[15].rewind();
        break;
      case 6:
        image(dial4, width/2, height/1.2, width/1.7, height/3.5);
        break;
      case 7:
        image(dial5, width/2, height/1.2, width/1.7, height/3.5);
        noraSounds[6].play();
        noraSounds[1].rewind();
        noraSounds[2].rewind();
        noraSounds[3].rewind();
        noraSounds[4].rewind();
        noraSounds[5].rewind();
        noraSounds[0].rewind();
        noraSounds[7].rewind();
        noraSounds[8].rewind();
        noraSounds[9].rewind();
        noraSounds[10].rewind();
        noraSounds[11].rewind();
        noraSounds[12].rewind();
        noraSounds[13].rewind();
        noraSounds[14].rewind();
        noraSounds[15].rewind();
        break;
      case 8:
        image(dial6, width/2, height/1.2, width/1.7, height/3.5);
        noraSounds[15].play();
        noraSounds[1].rewind();
        noraSounds[2].rewind();
        noraSounds[3].rewind();
        noraSounds[4].rewind();
        noraSounds[5].rewind();
        noraSounds[6].rewind();
        noraSounds[7].rewind();
        noraSounds[8].rewind();
        noraSounds[9].rewind();
        noraSounds[10].rewind();
        noraSounds[11].rewind();
        noraSounds[12].rewind();
        noraSounds[13].rewind();
        noraSounds[14].rewind();
        noraSounds[0].rewind();
        break;
      case 9:
        dialogueActive=false;
        dialNum=10;
        break;
      case 10:
        image(dial7, width/2, height/1.2, width/1.7, height/3.5);
        noraSounds[12].play();
        noraSounds[1].rewind();
        noraSounds[2].rewind();
        noraSounds[3].rewind();
        noraSounds[4].rewind();
        noraSounds[5].rewind();
        noraSounds[6].rewind();
        noraSounds[7].rewind();
        noraSounds[8].rewind();
        noraSounds[9].rewind();
        noraSounds[10].rewind();
        noraSounds[11].rewind();
        noraSounds[0].rewind();
        noraSounds[13].rewind();
        noraSounds[14].rewind();
        noraSounds[15].rewind();
        break;
      case 11:
        dialogueActive=false;
        dialNum=12;
        break;
      case 12:
        image(dial8, width/2, height/1.2, width/1.7, height/3.5);
        noraSounds[7].play();
        noraSounds[1].rewind();
        noraSounds[2].rewind();
        noraSounds[3].rewind();
        noraSounds[4].rewind();
        noraSounds[5].rewind();
        noraSounds[6].rewind();
        noraSounds[0].rewind();
        noraSounds[8].rewind();
        noraSounds[9].rewind();
        noraSounds[10].rewind();
        noraSounds[11].rewind();
        noraSounds[12].rewind();
        noraSounds[13].rewind();
        noraSounds[14].rewind();
        noraSounds[15].rewind();
        break;
      case 13:
        image(dial8, width/2, height/1.2, width/1.7, height/3.5);
        break;
      case 14:
        dialogueActive=false;
        dialNum=15;
        break;
      case 15:
        image(dial9, width/2, height/1.2, width/1.7, height/3.5);
        noraSounds[1].play();
        noraSounds[0].rewind();
        noraSounds[2].rewind();
        noraSounds[3].rewind();
        noraSounds[4].rewind();
        noraSounds[5].rewind();
        noraSounds[6].rewind();
        noraSounds[7].rewind();
        noraSounds[8].rewind();
        noraSounds[9].rewind();
        noraSounds[10].rewind();
        noraSounds[11].rewind();
        noraSounds[12].rewind();
        noraSounds[13].rewind();
        noraSounds[14].rewind();
        noraSounds[15].rewind();
        break;
      case 16:
        image(dial9, width/2, height/1.2, width/1.7, height/3.5);
        break;
      case 17:
        dialogueActive=false;
        break;
        //tutorial end
      case 18:
        image(dial10, width/2, height/1.2, width/1.7, height/3.5);
        noraSounds[6].play();
        noraSounds[1].rewind();
        noraSounds[2].rewind();
        noraSounds[3].rewind();
        noraSounds[4].rewind();
        noraSounds[5].rewind();
        noraSounds[0].rewind();
        noraSounds[7].rewind();
        noraSounds[8].rewind();
        noraSounds[9].rewind();
        noraSounds[10].rewind();
        noraSounds[11].rewind();
        noraSounds[12].rewind();
        noraSounds[13].rewind();
        noraSounds[14].rewind();
        noraSounds[15].rewind();
        break;
      case 19:
        image(dial10, width/2, height/1.2, width/1.7, height/3.5);
        break;
      case 20:
        dialogueActive=false;
        break;
      case 21:
        image(dial11, width/2, height/1.2, width/1.7, height/3.5);
        noraSounds[8].play();
        noraSounds[1].rewind();
        noraSounds[2].rewind();
        noraSounds[3].rewind();
        noraSounds[4].rewind();
        noraSounds[5].rewind();
        noraSounds[6].rewind();
        noraSounds[7].rewind();
        noraSounds[0].rewind();
        noraSounds[9].rewind();
        noraSounds[10].rewind();
        noraSounds[11].rewind();
        noraSounds[12].rewind();
        noraSounds[13].rewind();
        noraSounds[14].rewind();
        noraSounds[15].rewind();
        break;
      case 22:
        dialogueActive=false;
        break;
      case 23:
        image(dial12, width/2, height/1.2, width/1.7, height/3.5);
        noraSounds[5].play();
        noraSounds[1].rewind();
        noraSounds[2].rewind();
        noraSounds[3].rewind();
        noraSounds[4].rewind();
        noraSounds[0].rewind();
        noraSounds[6].rewind();
        noraSounds[7].rewind();
        noraSounds[8].rewind();
        noraSounds[9].rewind();
        noraSounds[10].rewind();
        noraSounds[11].rewind();
        noraSounds[12].rewind();
        noraSounds[13].rewind();
        noraSounds[14].rewind();
        noraSounds[15].rewind();
        break;
      case 24:
        image(dial12, width/2, height/1.2, width/1.7, height/3.5);
        break;
      case 25:
        dialogueActive=false;
        break;
      case 26:
        image(dial13, width/2, height/1.2, width/1.7, height/3.5);
        noraSounds[0].play();
        noraSounds[1].rewind();
        noraSounds[2].rewind();
        noraSounds[3].rewind();
        noraSounds[4].rewind();
        noraSounds[5].rewind();
        noraSounds[6].rewind();
        noraSounds[7].rewind();
        noraSounds[8].rewind();
        noraSounds[9].rewind();
        noraSounds[10].rewind();
        noraSounds[11].rewind();
        noraSounds[12].rewind();
        noraSounds[13].rewind();
        noraSounds[14].rewind();
        noraSounds[15].rewind();
        break;
      case 27:
        image(dial13, width/2, height/1.2, width/1.7, height/3.5);
        break;
      case 28:
        dialogueActive=false;
        break;
      case 29:
        image(dial14, width/2, height/1.2, width/1.7, height/3.5);
        noraSounds[11].play();
        noraSounds[1].rewind();
        noraSounds[2].rewind();
        noraSounds[3].rewind();
        noraSounds[4].rewind();
        noraSounds[5].rewind();
        noraSounds[6].rewind();
        noraSounds[7].rewind();
        noraSounds[8].rewind();
        noraSounds[9].rewind();
        noraSounds[10].rewind();
        noraSounds[0].rewind();
        noraSounds[12].rewind();
        noraSounds[13].rewind();
        noraSounds[14].rewind();
        noraSounds[15].rewind();
        break;
      case 30:
        dialogueActive=false;
        break;
      case 31:
        image(dial15, width/2, height/1.2, width/1.7, height/3.5);
        noraSounds[7].play();
        noraSounds[1].rewind();
        noraSounds[2].rewind();
        noraSounds[3].rewind();
        noraSounds[4].rewind();
        noraSounds[5].rewind();
        noraSounds[6].rewind();
        noraSounds[0].rewind();
        noraSounds[8].rewind();
        noraSounds[9].rewind();
        noraSounds[10].rewind();
        noraSounds[11].rewind();
        noraSounds[12].rewind();
        noraSounds[13].rewind();
        noraSounds[14].rewind();
        noraSounds[15].rewind();
        break;
      case 32:
        dialogueActive=false;
        break;
      case 33:
        image(dial16, width/2, height/1.2, width/1.7, height/3.5);
        noraSounds[2].play();
        noraSounds[1].rewind();
        noraSounds[0].rewind();
        noraSounds[3].rewind();
        noraSounds[4].rewind();
        noraSounds[5].rewind();
        noraSounds[6].rewind();
        noraSounds[7].rewind();
        noraSounds[8].rewind();
        noraSounds[9].rewind();
        noraSounds[10].rewind();
        noraSounds[11].rewind();
        noraSounds[12].rewind();
        noraSounds[13].rewind();
        noraSounds[14].rewind();
        noraSounds[15].rewind();
        break;
      case 34:
        dialogueActive=false;
        break;
      case 35:
        image(dial17, width/2, height/1.2, width/1.7, height/3.5);
        noraSounds[3].play();
        noraSounds[1].rewind();
        noraSounds[2].rewind();
        noraSounds[0].rewind();
        noraSounds[4].rewind();
        noraSounds[5].rewind();
        noraSounds[6].rewind();
        noraSounds[7].rewind();
        noraSounds[8].rewind();
        noraSounds[9].rewind();
        noraSounds[10].rewind();
        noraSounds[11].rewind();
        noraSounds[12].rewind();
        noraSounds[13].rewind();
        noraSounds[14].rewind();
        noraSounds[15].rewind();
        break;
      case 36:
        dialogueActive=false;
        break;
      case 37:
        image(dial18, width/2, height/1.2, width/1.7, height/3.5);
        noraSounds[3].play();
        noraSounds[1].rewind();
        noraSounds[2].rewind();
        noraSounds[0].rewind();
        noraSounds[4].rewind();
        noraSounds[5].rewind();
        noraSounds[6].rewind();
        noraSounds[7].rewind();
        noraSounds[8].rewind();
        noraSounds[9].rewind();
        noraSounds[10].rewind();
        noraSounds[11].rewind();
        noraSounds[12].rewind();
        noraSounds[13].rewind();
        noraSounds[14].rewind();
        noraSounds[15].rewind();
        break;
      case 38:
        dialogueActive=false;
        break;
      case 39:
        image(dial19, width/2, height/1.2, width/1.7, height/3.5);
        noraSounds[7].play();
        noraSounds[1].rewind();
        noraSounds[2].rewind();
        noraSounds[3].rewind();
        noraSounds[4].rewind();
        noraSounds[5].rewind();
        noraSounds[6].rewind();
        noraSounds[0].rewind();
        noraSounds[8].rewind();
        noraSounds[9].rewind();
        noraSounds[10].rewind();
        noraSounds[11].rewind();
        noraSounds[12].rewind();
        noraSounds[13].rewind();
        noraSounds[14].rewind();
        noraSounds[15].rewind();
        break;
      case 40:
        dialogueActive=false;
        break;
      case 41:
        image(dial25, width/2, height/1.2, width/1.7, height/3.5);
        noraSounds[2].play();
        noraSounds[1].rewind();
        noraSounds[0].rewind();
        noraSounds[3].rewind();
        noraSounds[4].rewind();
        noraSounds[5].rewind();
        noraSounds[6].rewind();
        noraSounds[7].rewind();
        noraSounds[8].rewind();
        noraSounds[9].rewind();
        noraSounds[10].rewind();
        noraSounds[11].rewind();
        noraSounds[12].rewind();
        noraSounds[13].rewind();
        noraSounds[14].rewind();
        noraSounds[15].rewind();
        break;
      case 42:
        dialogueActive=false;
        break;
      case 43:
        image(dial22, width/2, height/1.2, width/1.7, height/3.5);
        noraSounds[5].play();
        noraSounds[1].rewind();
        noraSounds[2].rewind();
        noraSounds[3].rewind();
        noraSounds[4].rewind();
        noraSounds[0].rewind();
        noraSounds[6].rewind();
        noraSounds[7].rewind();
        noraSounds[8].rewind();
        noraSounds[9].rewind();
        noraSounds[10].rewind();
        noraSounds[11].rewind();
        noraSounds[12].rewind();
        noraSounds[13].rewind();
        noraSounds[14].rewind();
        noraSounds[15].rewind();
        break;
      case 44:
        dialogueActive=false;
        break;
      case 45:
        image(dial23, width/2, height/1.2, width/1.7, height/3.5);
        noraSounds[10].play();
        noraSounds[1].rewind();
        noraSounds[2].rewind();
        noraSounds[3].rewind();
        noraSounds[4].rewind();
        noraSounds[5].rewind();
        noraSounds[6].rewind();
        noraSounds[7].rewind();
        noraSounds[8].rewind();
        noraSounds[9].rewind();
        noraSounds[0].rewind();
        noraSounds[11].rewind();
        noraSounds[12].rewind();
        noraSounds[13].rewind();
        noraSounds[14].rewind();
        noraSounds[15].rewind();
        break;
      case 46:
        image(dial23, width/2, height/1.2, width/1.7, height/3.5);
        break;
      case 47:
        dialogueActive=false;
        break;
      case 48:
        image(dial24, width/2, height/1.2, width/1.7, height/3.5);
        noraSounds[2].play();
        noraSounds[1].rewind();
        noraSounds[0].rewind();
        noraSounds[3].rewind();
        noraSounds[4].rewind();
        noraSounds[5].rewind();
        noraSounds[6].rewind();
        noraSounds[7].rewind();
        noraSounds[8].rewind();
        noraSounds[9].rewind();
        noraSounds[10].rewind();
        noraSounds[11].rewind();
        noraSounds[12].rewind();
        noraSounds[13].rewind();
        noraSounds[14].rewind();
        noraSounds[15].rewind();
        break;
      case 49:
        dialogueActive=false;
        break;
      case 50:
        image(dial21, width/2, height/1.2, width/1.7, height/3.5);
        noraSounds[12].play();
        noraSounds[1].rewind();
        noraSounds[2].rewind();
        noraSounds[3].rewind();
        noraSounds[4].rewind();
        noraSounds[5].rewind();
        noraSounds[6].rewind();
        noraSounds[7].rewind();
        noraSounds[8].rewind();
        noraSounds[9].rewind();
        noraSounds[10].rewind();
        noraSounds[11].rewind();
        noraSounds[0].rewind();
        noraSounds[13].rewind();
        noraSounds[14].rewind();
        noraSounds[15].rewind();
        break;
      case 51:
        dialogueActive=false;
        break;
      case 52:
        image(dial26, width/2, height/1.2, width/1.7, height/3.5);
        noraSounds[14].play();
        noraSounds[1].rewind();
        noraSounds[2].rewind();
        noraSounds[3].rewind();
        noraSounds[4].rewind();
        noraSounds[5].rewind();
        noraSounds[6].rewind();
        noraSounds[7].rewind();
        noraSounds[8].rewind();
        noraSounds[9].rewind();
        noraSounds[10].rewind();
        noraSounds[11].rewind();
        noraSounds[12].rewind();
        noraSounds[13].rewind();
        noraSounds[0].rewind();
        noraSounds[15].rewind();
        break;
      case 53:
        image(dial26, width/2, height/1.2, width/1.7, height/3.5);
        break;
      case 54:
        dialogueActive=false;
        break;
      case 55:
        image(dial27, width/2, height/1.2, width/1.7, height/3.5);
        noraSounds[11].play();
        noraSounds[1].rewind();
        noraSounds[2].rewind();
        noraSounds[3].rewind();
        noraSounds[4].rewind();
        noraSounds[5].rewind();
        noraSounds[6].rewind();
        noraSounds[7].rewind();
        noraSounds[8].rewind();
        noraSounds[9].rewind();
        noraSounds[10].rewind();
        noraSounds[0].rewind();
        noraSounds[12].rewind();
        noraSounds[13].rewind();
        noraSounds[14].rewind();
        noraSounds[15].rewind();
        break;
      case 56:
        image(dial27, width/2, height/1.2, width/1.7, height/3.5);
        break;
      case 57:
        dialogueActive=false;
        break;
      case 58:
        image(dial28, width/2, height/1.2, width/1.7, height/3.5);
        noraSounds[14].play();
        noraSounds[1].rewind();
        noraSounds[2].rewind();
        noraSounds[3].rewind();
        noraSounds[4].rewind();
        noraSounds[5].rewind();
        noraSounds[6].rewind();
        noraSounds[7].rewind();
        noraSounds[8].rewind();
        noraSounds[9].rewind();
        noraSounds[10].rewind();
        noraSounds[11].rewind();
        noraSounds[12].rewind();
        noraSounds[13].rewind();
        noraSounds[0].rewind();
        noraSounds[15].rewind();
        break;
      case 59:
        dialogueActive=false;
        break;
        case 60:
        image(dial28, width/2, height/1.2, width/1.7, height/3.5);
        noraSounds[14].play();
        noraSounds[1].rewind();
        noraSounds[2].rewind();
        noraSounds[3].rewind();
        noraSounds[4].rewind();
        noraSounds[5].rewind();
        noraSounds[6].rewind();
        noraSounds[7].rewind();
        noraSounds[8].rewind();
        noraSounds[9].rewind();
        noraSounds[10].rewind();
        noraSounds[11].rewind();
        noraSounds[12].rewind();
        noraSounds[13].rewind();
        noraSounds[0].rewind();
        noraSounds[15].rewind();
        break;
        case 61:
        image(dial28, width/2, height/1.2, width/1.7, height/3.5);
        break;
      case 62:
        dialogueActive=false;
        break;
      }
    }
  }

  void incDial() {
    dialNum=dialNum+1;
  }
}
/*
 noraSounds[0].play();
 noraSounds[1].rewind();
 noraSounds[2].rewind();
 noraSounds[3].rewind();
 noraSounds[4].rewind();
 noraSounds[5].rewind();
 noraSounds[6].rewind();
 noraSounds[7].rewind();
 noraSounds[8].rewind();
 noraSounds[9].rewind();
 noraSounds[10].rewind();
 noraSounds[11].rewind();
 noraSounds[12].rewind();
 noraSounds[13].rewind();
 noraSounds[14].rewind();
 noraSounds[15].rewind();
 */
