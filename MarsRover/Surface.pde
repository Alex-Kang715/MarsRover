public class Surface {
  public float[][] terrain;

  public Surface(float w, float h) {
    noStroke();
    terrain = new float[(int)h][(int)w];
    float xOff = 0.0, yOff = 0.0, inc = 0.02;
    for (int i = 0; i < h; i++) {
      for (int j = 0; j < w; j++) {
        terrain[i][j] = noise(xOff, yOff);
        xOff += inc;
      }
      yOff += inc;
      xOff = 0.0;
    }
  }

  public void show() {
    for (int i = 0; i < terrain.length; i++) {
      for (int j = 0; j < terrain[0].length; j++) {
        //System.out.println(terrain[i][j]);
        fill(terrain[i][j]*255, 0, 0);
        square(j*SCALE, i*SCALE, SCALE);
      }
    }
  }

  public float highestPoint() {
    float highest = - Float.MAX_VALUE;
    for (int i = 0; i < terrain.length; i++) {
      for (int j = 0; j < terrain[0].length; j++) {
        if (terrain[i][j] > highest) {
          highest = terrain[i][j];
        }
      }
    }
    return highest;
  }

  public float lowestPoint() {
    float lowest = Float.MAX_VALUE;
    for (int i = 0; i < terrain.length; i++) {
      for (int j = 0; j < terrain[0].length; j++) {
        if (terrain[i][j] < lowest) {
          lowest = terrain[i][j];
        }
      }
    }
    return lowest;
  }

  public float averageAltitude() {
    float sum = 0;
    float averageAltitude = 0;
    for (int i = 0; i < terrain.length; i++) {
      for (int j = 0; j < terrain[0].length; j++) {
        sum += terrain[i][j];
      }
    }
    averageAltitude = sum/(terrain.length*terrain[0].length);
    return averageAltitude;
  }
}
