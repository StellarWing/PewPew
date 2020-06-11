class Bullet extends GameObject {

  Bullet() {
    super(myPlayer.x, myPlayer.y, 5, 1, yellow);
    PVector aim = new PVector(mouseX - myPlayer.x, mouseY - myPlayer.y);
    aim.setMag(10);
    vx = aim.x;
    vy = aim.y;
  }

  void act() {
    super.act();
    if (x < 0 || x > width || y < 0 || y > height) {
      hp = 0;
    }
    int i = 0;
    while (i < objects.size()) {
      GameObject obj = objects.get(i);
      if (obj instanceof Obstacle && touching(obj)) {
  
          PVector bounce = new PVector(x - obj.x, y - obj.y); //try obj.x - x 
          bounce.setMag(10);
          vx = bounce.x;
          vy = bounce.y;
        
      }
      if (obj instanceof Enemy && touching(obj)) {
        obj.hp--; 
      }
      i++;
    }
  }
}
