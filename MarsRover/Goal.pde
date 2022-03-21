public class Goal {
  PVector pos;
  final int SIZE = 25;

  public Goal() {
    pos = new PVector(random(width), random(height));
  }
  public void show() {
    fill(0, 250, 25);
    rect(pos.x, pos.y, 20, 20);
  }
}
