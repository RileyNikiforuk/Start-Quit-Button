//Global Variables
int appWidth, appHeight;
boolean start=false, noNowReallyStart=false;
int quiteButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
//
void setup() 
{
  size(400, 300);
  //fullscreen(); //displayWidth, displayHeight
  println("Left Click On The Tab To Start");
  appWidth = width;
  appHeight = height;
  //Population
  //quiteButtonX = appWidth; 
  //quitButtonY = appHeight; 
  //quitButtonWidth = appWidth;
  //quitButtonHeight = appHeight;
} //End setup
//
void draw() 
{
  if ( noNowReallyStart==true ) { //Actual start IF
    background(255, 0, 0); //Night Mode not considered yet
    rect(quiteButtonX, quitButtonY, quitButtonWidth, quitButtonHeight); //Quit button
  } //End IF-Start
} //End draw
//
void keyPressed() 
{
  //
  if ( key==' ' && start==true ) noNowReallyStart = true;
  println("YOU DID IT! :)");
  //
  //Prototype key board quite button or shortcut
  //if ( key == 'X' || key == 'x' ) exit();
  if ( keyCode == ESC ) exit();
  println("Press ESC to Quit");
  //
} //End keyPressed
//
void mousePressed() 
{
  //
  //OS Level Start Button
  start = true;
  println("To Start, Press The Space Bar");
  //
} //End mousePressed
//
//End Main program
