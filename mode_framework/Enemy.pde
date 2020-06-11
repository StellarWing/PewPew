class Enemy extends GameObject {
 
  Enemy() {
   super(random(0, width), random(0, height), 20, 1, pink); 
   while (touchingObstacle()) {
     x = random(0, width);
     y = random(0, height); 
   }
  }
  
  void act() {
   super.act();
   
  }
  
}
