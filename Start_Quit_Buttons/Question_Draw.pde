void questionDraw() {
if ( areYouSure==true ) {
    fill(255);
    stroke(0);
    rect(areYouSureX, areYouSureY, areYouSureWidth, areYouSureHeight);
    rect(yesX, yesY, yesWidth, yesHeight);
    rect(noX, noY, noWidth, noHeight);
  }
  textSize(25);
  fill(0);
  text(question, textX2, textY2);
  text(question2, textX3, textY3);
  text(yes, textX4, textY4);
  text(no, textX5, textY5);
}
