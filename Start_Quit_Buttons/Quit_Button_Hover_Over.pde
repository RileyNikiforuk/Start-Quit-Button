void quitButtonHoverOver() {
  if ( noNowReallyStart && mouseX > quiteButtonX && mouseX < quiteButtonX+quitButtonWidth && mouseY > quitButtonY && mouseY < quitButtonY+quitButtonHeight ) {
    quitButtonColor = red; //remember nightmode
  } else {
    quitButtonColor = white; //remember night mode
  } //End Hover Over
} //End quitButtonHoverOver
