//Game Objects
ArrayList<GameObject> objects;
Player myPlayer;

//colors
color magenta = #B67EAA;
color lgreen  = #CFF09E;
color lblue   = #69D2E7;
color pink    = #FC9D9A;
color orange  = #FA2A00;
color yellow  = #F8CA00;

final int INTRO = 1;
final int GAME  = 2;
final int GAMEOVER = 3;
final int PAUSE = 4;
int mode = INTRO;  //1: intro screen, 2: game playing, 3: gameover screen, 4: pause

//key variables
boolean wkey, akey, skey, dkey, spacekey;

//##################################################################################//

void setup() {
  size(800, 600);
  noStroke();

//initialize key variables
wkey = akey = skey = dkey = spacekey = false;

  //Game Object Initializations
  objects = new ArrayList<GameObject>();
  myPlayer = new Player();
  objects.add(myPlayer);
  int i = 0;
  while (i < 50) {
    objects.add(new Obstacle());
    i++; 
  }
}

//##################################################################################//

void draw() {
  println(objects.size());
  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == GAMEOVER) {
    gameover();
  } else if (mode == PAUSE) {  
    pause();
  } else {
    println("?");
  }
}
