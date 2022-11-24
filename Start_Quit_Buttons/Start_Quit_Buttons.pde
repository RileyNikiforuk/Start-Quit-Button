//Global Variables
int appWidth, appHeight;
boolean start=false, noNowReallyStart=false;
float quiteButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
float textX, textY;
color quitButtonColor, yellow = #FFF700, purple = #BA00FF;
PFont font;
//
void setup() 
{
  size(800, 700);
  //fullscreen(); //displayWidth, displayHeight
  println("Left Click On The Tab To Start");
  appWidth = width;
  appHeight = height;
  //Population
  float centerX = appWidth * 1/2; //point
  float centerY = appHeight * 1/2; //point
  quiteButtonX = centerX - ( appWidth * 1/4 ); 
  quitButtonY = centerY - ( appHeight * 1/4 ); 
  quitButtonWidth = appWidth * 1/2; //Line not point, thus use formula
  quitButtonHeight = appHeight * 1/2; //Line not point, thus use formula
  textX = appWidth/2;
  textY = appHeight/2;
  font = createFont("Algerian-48.vlw", 55);
  //quiteButtonX = appWidth/4; 
  //quitButtonY = appHeight/4; 
  //quitButtonWidth = appWidth/2;
  //quitButtonHeight = appHeight/2;
} //End setup
//
void draw() 
{
  if ( noNowReallyStart==true ) { //Actual start IF
    background(random(0, 255), random(0, 255), random(0, 255)); //Night Mode not considered yet
    //
    //Logical rectangle
    println("X-Value", quiteButtonX, mouseX, quiteButtonX+quitButtonWidth);
    println("Y-Value", quitButtonY, mouseY, quitButtonY+quitButtonHeight);
    //
    //quite button hover over feature
    if ( noNowReallyStart && mouseX > quiteButtonX && mouseX < quiteButtonX+quitButtonWidth && mouseY > quitButtonY && mouseY < quitButtonY+quitButtonHeight ) {
      quitButtonColor = yellow; //remember nightmode
    } else {
      quitButtonColor = purple; //remember night mode
    } //End Hover Over
    if( noNowReallyStart == true ) {
      text("Quit", textX, textY);
    }
    fill( quitButtonColor );
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
  //Quit Button: Logical rectangle, see println in draw()
  if ( noNowReallyStart && mouseX > quiteButtonX && mouseX < quiteButtonX+quitButtonWidth && mouseY > quitButtonY && mouseY < quitButtonY+quitButtonHeight ) exit();
  //
} //End mousePressed
//
//End Main program
