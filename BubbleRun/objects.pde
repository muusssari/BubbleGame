void walls() {
  if (player_X <= (0 + player_Size/2)) {
    player_X += player_Speed;
  }
  if (player_X >= (width - player_Size/2)) {
    player_X -= player_Speed;
  }
  if (player_Y <= (0 + player_Size/2)) {
    player_Y += player_Speed;
  }
  if (player_Y >= (height - player_Size/2)) {
    player_Y -= player_Speed;
  }
}

void restart() {
  player_X = 40;
  player_Y = 40;
  score = 0;
  for (int i = bubbles.size() -1; i>= 0; i--) {
    Bubble bubble = bubbles.get(i);
    bubbles.remove(i);
  }
}
void ScoreScreen() {
  textSize(40);
  text("You Died", width/2-100, height/2-50);
  text("Your Score Is " + score, width/2-150, height/2+20);
  fill(0, 0, 0);
}
