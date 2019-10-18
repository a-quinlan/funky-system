// ==================== palette ====================
color red = #C44141;
color orange = #EDA545;
color yellow = #FFE279;
color blue = #498CCE;
color purple = #7459B4;
color black = #17181C;
color white = #F7F8FF;

// ==================== variables ==================== 
boolean upkey, downkey, leftkey, rightkey, spacekey;
PImage shipimg;
Ship myShip;
int mode;
ArrayList<GameObject> myGameObjects;

// ==================== setup ==================== 
void setup() {
  size(800, 600);
  imageMode(CENTER);
  shipimg = loadImage("ship.png");
  shipimg.resize(100,100);
  myShip = new Ship();
  myGameObjects = new ArrayList<GameObject>();
  
  myGameObjects.add(new Asteroid());
  myGameObjects.add(new Asteroid());
  myGameObjects.add(new Asteroid());
}

void draw() {
 if(mode == 0){
   game();
 } else if (mode == 1) {
   intro();
 } else if (mode == 2){
   loss();
 } else if (mode == 3){
   win();
 } else {
   println("pewish");
 }
}

void keyPressed() {
  if (key == 'w' || key == 'W')    upkey = true; 
  if (key == 's' || key == 'S')  downkey = true;
  if (key == 'a' || key == 'A')  leftkey = true;
  if (key == 'd' || key == 'D') rightkey = true;
  if (key == ' ')       spacekey = true;
}

void keyReleased() {
  if (key == 'w' || key == 'W')    upkey = false; 
  if (key == 's' || key == 'S')  downkey = false;
  if (key == 'a' || key == 'A')  leftkey = false;
  if (key == 'd' || key == 'D') rightkey = false;
  if (key == ' ')       spacekey = false;
}
