void quitButtonDraw() {
  fill( quitButtonColor );
  rect(quiteButtonX, quitButtonY, quitButtonWidth, quitButtonHeight); //Quit button
  if ( noNowReallyStart==true ) {
    stroke(1000);
    rect(quitX, quitY, quitWidth, quitHeight);
  }
  textFont(font, 40);
  fill(0);
  text("X", textX, textY);
} //End quiteButtonDraw
