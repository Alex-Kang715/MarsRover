public final float SCALE = 5; //<>//
public Rover rover;
public Surface surface;
public Goal goal;

public void setup() {
  size(800, 800);
  rover = new Rover(new PVector(80, 80));
  surface = new Surface(width/SCALE, height/SCALE);
  goal = new Goal();
}

public void draw() {
  background(220);
  surface.show();
  goal.show();
  rover.show();
  rover.move(surface.terrain, goal);
  rover.isPrevPos((int)rover.pos.x, (int)rover.pos.y);
  System.out.println(rover.isPrevPos((int)rover.pos.x, (int)rover.pos.y));

}
