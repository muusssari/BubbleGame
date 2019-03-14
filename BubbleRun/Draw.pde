void draw() {
  background(200);


  if (gamemode == 1) {
    restart();
    draw_bttons();
    textSize(40);
    text("BubbleRun", (width/2)/1.9, 40);
    while (buttons.size() < 2) {
      new Button(width/2, height/2-50, 80, 50, "Play", 1);
      new Button(width/2, height/2+5, 80, 50, "Stage", 2);
    }
  }

  if (gamemode == 2) {
    draw_bubbles();
    for (int i = buttons.size() -1; i>= 0; i--) {
      Button button = buttons.get(i);
      buttons.remove(button);
    }
    if ((frameCount%gamespeed == 0) && bubbles.size() <= 90) {
      new Bubble(int(random(5, width-5)), height-10);
      new Bubble(int(random(5, width-5)), height-10);
    }
    if (frameCount%50 == 0 && !(gamespeed >0)) {
      gamespeed--;
    }
    player_move();
    player();
    walls();
    textSize(40);
    fill(0,0,0);
    text(score, (width/2), 40);
    if (frameCount%50 == 0){
      score++;
    }
  }
  
  
  
  
  if (gamemode == 3) {
    draw_bttons();
    ScoreScreen();
    while (buttons.size() < 1) {
      new Button(width/2, height/2+100, 80, 50, "Menu", 3);
    }
  }
}
