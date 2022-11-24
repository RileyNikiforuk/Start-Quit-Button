void quitButtonHoverOver() {
  if ( noNowReallyStart && mouseX > quiteButtonX && mouseX < quiteButtonX+quitButtonWidth && mouseY > quitButtonY && mouseY < quitButtonY+quitButtonHeight ) {
    quitButtonColor = yellow; //remember nightmode
  } else {
    quitButtonColor = purple; //remember night mode
  } //End Hover Over
} //End quitButtonHoverOver
