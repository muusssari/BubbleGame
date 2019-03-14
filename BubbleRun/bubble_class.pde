ArrayList<Bubble> bubbles = new ArrayList<Bubble>();

void draw_bubbles() {
  for (int i = bubbles.size() -1; i>= 0; i--) {
    Bubble bubble = bubbles.get(i);
    bubble.display();
    bubble.move();
    bubble.checkhit();
  }
}

class Bubble {
  int size;
  int x, y;
  float speed;
  int pointX;
  int c1;
  int c2;
  int c3;
  int col;
  int[][] colors = {{250,0,0}, {0,250,0}, {0,250,250},{250,250,0}, {250,0,127}};

  public Bubble(int x, int y) {
    this.x = x;
    this.y = y;
    this.size = int(random(20, 40));
    this.speed = random(1, 3);
    this.pointX = randomX();
    bubbles.add(this);
    this.col = Math.round(random(0, 4));
    this.c1 = colors[col][0];
    this.c2 = colors[col][1];
    this.c3 = colors[col][2];
  }

  void display() {
    stroke(0);
    fill(this.c1, this.c2, this.c3);
    ellipse(x, y, size, size);
    fill(255, 0, 0);
  }
  void checkhit() {
    if (dist(this.x, this.y, player_X, player_Y) < this.size-(player_Size/1.8)) {
      gamemode = 3;
    }
  }

  void move() {
    this.y -= this.speed;
    if (this.y <= 0) {
      //bubbles.remove(this);
      this.y = height - 10;
    }
    if (score > 10) {
      if (this.x == this.pointX){
        this.pointX = randomX();
      }

      if (this.x != this.pointX) {
        if (this.x < this.pointX) { 
          this.x += 1;
        }
        if (this.x > this.pointX) {
          this.x -= 1;
        }
      }
    }
  }
  float randomPoint() {
    float point = random(1, 3);
    return point;
  }
  int randomX() {
    int pointX = int(random(0, width));
    return pointX;
  }
}
