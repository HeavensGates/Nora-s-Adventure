class Nora {
  PImage noraDefault1,noraDefault2,noraGhost1,noraGhost2,noraBuff1,noraBuff2,noraLevi1,noraLevi2;
  int noraState=1;
  int animationNumber=1;
  int Timer;
  Nora(){
  }
  void noraLoad(){
   noraDefault1=loadImage("Nora_frame1.png"); 
   noraDefault2=loadImage("Nora_frame2.png");
   noraGhost1=loadImage("Nora_ghost_frame1.png");
   noraGhost2=loadImage("Nora_ghost_frame2.png");
   noraBuff1=loadImage("Nora_buff_frame1.png");
   noraBuff2=loadImage("Nora_buff_frame2.png");
   noraLevi1=loadImage("Nora_levitating_frame1.png");
   noraLevi2=loadImage("Nora_levitating_frame2.png");
   Timer=millis();
  }
  void noraDefault(float tempX,float tempY){
    if (noraState==1){
      switch(animationNumber) {
    case 1:
      image(noraDefault1,tempX,tempY,width/8,height/2.5);
      if (millis()>Timer+1000) {
        animationNumber=2;
        Timer=millis();
      }
      break;
    case 2:
      image(noraDefault2,tempX,tempY,width/8,height/2.5);
      if (millis()>Timer+1000) {
        animationNumber=1; 
        Timer=millis();
      }
      break;
      }
    }
    if (noraState==2){
      
      switch(animationNumber) {
    case 1:
      image(noraGhost1,tempX,tempY,width/8,height/2.5);
      if (millis()>Timer+1000) {
        animationNumber=2;
        Timer=millis();
      }
      break;
    case 2:
      image(noraGhost2,tempX,tempY+height/50,width/8,height/2.5);
      if (millis()>Timer+1000) {
        animationNumber=1; 
        Timer=millis();
      }
      break;
      }
    }
    if (noraState==3){
      
      switch(animationNumber) {
    case 1:
      image(noraLevi1,tempX,tempY,width/8,height/2.5);
      if (millis()>Timer+1000) {
        animationNumber=2;
        Timer=millis();
      }
      break;
    case 2:
      image(noraLevi2,tempX,tempY+height/50,width/8,height/2.5);
      if (millis()>Timer+1000) {
        animationNumber=1; 
        Timer=millis();
      }
      break;
      }
    }
    if (noraState==4){
      switch(animationNumber) {
    case 1:
      image(noraBuff1,tempX,tempY,width/8,height/2.5);
      if (millis()>Timer+1000) {
        animationNumber=2;
        Timer=millis();
      }
      break;
    case 2:
      image(noraBuff2,tempX,tempY,width/8,height/2.5);
      if (millis()>Timer+1000) {
        animationNumber=1; 
        Timer=millis();
      }
      break;
      }
    }
    if (noraState==5){
      switch(animationNumber) {
    case 1:
      image(noraDefault1,tempX,tempY-height/3,width/3.5,height/1);
      if (millis()>Timer+1000) {
        animationNumber=2;
        Timer=millis();
      }
      break;
    case 2:
      image(noraDefault2,tempX,tempY-height/3,width/3.5,height/1);
      if (millis()>Timer+1000) {
        animationNumber=1; 
        Timer=millis();
      }
      break;
      }
    }
    if (noraState==6){
      switch(animationNumber) {
    case 1:
      image(noraDefault1,tempX,tempY+height/9,width/20,height/6.25);
      if (millis()>Timer+1000) {
        animationNumber=2;
        Timer=millis();
      }
      break;
    case 2:
      image(noraDefault2,tempX,tempY+height/9,width/20,height/6.25);
      if (millis()>Timer+1000) {
        animationNumber=1; 
        Timer=millis();
      }
      break;
      }
    }
  }
  void setState(int tempState){
    noraState=tempState;
  }
}
