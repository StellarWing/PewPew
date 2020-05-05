void intro() {
   background(lblue);
   
   fill(255);
   rect(300, 300, 200, 100);
   textSize(32);
   fill(0);
   text("BEGIN", 355, 360);
}

void introClicks() {
  
  if (mouseX > 300 && mouseX < 500 && mouseY > 300 && mouseY < 400) {
   mode = GAME; //START GAME 
  }
}
