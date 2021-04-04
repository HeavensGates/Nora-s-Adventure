class Collider {
  float circleX;    // circle center position
  float circleY;
  float circleRadius;
  float squareX;    // square position
  float squareY;
  float squareWidth;    // and dimensions
  float squareHeight;
  boolean isSelected;
  boolean hit;
  boolean squareSelected;
  Collider() {
    
  }
  void circleCol(float tempX,float tempY,float tempR) {
    //circle Collision
    circleX =    tempX;    // circle center position
    circleY =     tempY;
    circleRadius = tempR;
    boolean hit = pointCircle(circleX, circleY, circleRadius);

    // draw circle
    if ((hit)&&(mousePressed)) {
      isSelected=false;
      cursor(curGrab,0-50/width,0);
    }else if(hit){
      cursor(curTrig,0-50/width,0);
    }
    //ellipse(circleX, circleY, circleRadius*2, circleRadius*2);

    // draw the point
    if (isSelected) {
    }
  }
  void squareCol(float tempX,float tempY,float tempWidth,float tempHeight) {
    //potionMakerOpen
    squareX = tempX;    // square position
    squareY = tempY;
    squareWidth = tempWidth;    // and dimensions
    squareHeight = tempHeight;
    boolean squareSelected = pointRect( squareX, squareY, squareWidth, squareHeight);
    if ((squareSelected)&&(mousePressed)) {
      isSelected=true;
    cursor(curGrab,0-50/width,0);
    }else if(squareSelected){
      cursor(curTrig,0-50/width,0);
    }
    //rect(squareX,squareY,squareWidth,squareHeight);
  }
}
// PotionMakerOpen

boolean pointRect( float rx, float ry, float rw, float rh) {

  // is the point inside the rectangle's bounds?
  if (mouseX >= rx &&        // right of the left edge AND
      mouseX <= rx + rw &&   // left of the right edge AND
      mouseY >= ry &&        // below the top AND
      mouseY <= ry + rh) {   // above the bottom
        return true;
  }
  return false;
}
//colisions
boolean pointCircle( float cx, float cy, float r) {

  // get distance between the point and circle's center
  // using the Pythagorean Theorem
  float distX = mouseX - cx;
  float distY = mouseY - cy;
  float distance = sqrt( (distX*distX) + (distY*distY) );

  // if the distance is less than the circle's
  // radius the point is inside!
  if (distance <= r) {
    return true;
  }
  return false;
}
