void game() {
  background (lgreen);

  int i = 0;
  while (i < objects.size()) {
    GameObject obj = objects.get(i);
    obj.show();
    obj.act();
    if (obj.isDead()) {
      objects.remove(i);
    } else {

      i++;
    }
  }
}

void gameClicks() {
}
