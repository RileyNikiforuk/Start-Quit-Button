//Global Variables
int appWidth, appHeight;
boolean start=false, noNowReallyStart=false, areYouSure=false;
float quiteButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
float textX, textY;
float quitX, quitY, quitWidth, quitHeight;
color quitButtonColor, yellow = #FFF700, purple = #BA00FF, black = #030303;
PFont font;
float textSize;
//
void setup() 
{
  size(800, 700);
  //fullscreen(); //displayWidth, displayHeight
  println("Left Click On The Tab To Start");
  Display_and_Orientation();
  appWidth = width;
  appHeight = height;
  Population();
} //End setup
//
void draw() 
{
  frameRate(35);
  if ( noNowReallyStart==true ) { //Actual start IF
    ProgramDraw();
  } //End IF-Start
  if ( areYouSure==true ) {
    rect(50, 50, 50, 50);
  }
} //End draw
//
void keyPressed() 
{
  //
  //User initiated start screen
  if ( key==' ' && start==true ) noNowReallyStart = true;
  //
  KeyBoardShortCuts();
  //
} //End keyPressed
//
void mousePressed() 
{
  OS_Start();
  //
  //Quit Button: Logical rectangle, see println in draw()
  if ( noNowReallyStart && mouseX > quiteButtonX && mouseX < quiteButtonX+quitButtonWidth && mouseY > quitButtonY && mouseY < quitButtonY+quitButtonHeight ) areYouSure=true; //exit();
  //
} //End mousePressed
//
//End Main program
