import tui.*;

int gamemode = 1;
int gamespeed = 45;
float player_X = width/2;
float player_Y = 40;
float player_Speed = 2;
float player_Size = 15;
int score = 0;


void setup() {
  size(400, 900, P2D);
  frameRate(50);
  TUI.aloita(this);
  imageMode(CENTER);
  rectMode(CENTER);
  ellipseMode(CENTER);
}
