void player() {
  fill(0, 0, 255);
  ellipse(player_X, player_Y, player_Size, player_Size);
}

void player_move() {
  if (TUI.nappain_painettu('W') && !(TUI.nappain_painettu(UP))) {
    player_Y = player_Y - player_Speed;
  }

  if (TUI.nappain_painettu('A') && !(TUI.nappain_painettu(LEFT))) {
    player_X = player_X - player_Speed;
  }

  if (TUI.nappain_painettu('S') && !(TUI.nappain_painettu(DOWN))) {
    player_Y = player_Y + player_Speed;
  }
  if (TUI.nappain_painettu('D') && !(TUI.nappain_painettu(RIGHT))) {
    player_X = player_X + player_Speed;
  }
  if (TUI.nappain_painettu(UP) && !(TUI.nappain_painettu('W'))) {
    player_Y = player_Y - player_Speed;
  }

  if (TUI.nappain_painettu(LEFT) && !(TUI.nappain_painettu('A'))) {
    player_X = player_X - player_Speed;
  }

  if (TUI.nappain_painettu(DOWN) && !(TUI.nappain_painettu('S'))) {
    player_Y = player_Y + player_Speed;
  }
  if (TUI.nappain_painettu(RIGHT) && !(TUI.nappain_painettu('D'))) {
    player_X = player_X + player_Speed;
  }
}
void keyPressed() {
  TUI.huomaa_painallus();
}
void keyReleased() {
  TUI.huomaa_vapautus();
}
