PImage stormtrooper;
float [] Speeds = new float[10];
float  LaserX;
float LaserY;
float Speed = 5;
float []LaserYs = new float[10];
float[]LaserXs = new float[10];
void setup()
{

  size(800, 800);
  stormtrooper = loadImage("stormtrooper.jpg");
  stormtrooper.resize(100, 150);
  LaserX = 1;
  LaserY = 675;

  LaserXs[0]=0;
  for (int i =0; i<10; i++)
  {
    LaserXs[i] = 0;
  }
}


void draw()
{
  background(255, 255, 255);
  fill(255, 0, 0);
  rect(LaserX, LaserY, 55, 5);
  image(stormtrooper, 1, 650);
  LaserX = LaserX + Speed;
  if (LaserX >=830)
  {
    LaserX = 0;
  }
}
