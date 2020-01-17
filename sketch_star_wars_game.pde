PImage hammerhead;
PImage lightsaber;
PImage jedi;
PImage stardestroyer;
PImage tiefighter;
PImage stormtrooper;
float [] Speeds = new float[10];
float  LaserX;
float LaserY;
float Speed = 5;
float []LaserYs = new float[10];
float[]LaserXs = new float[10];
int score = 0;
void setup()

{

  size(800, 800);
  stormtrooper = loadImage("stormtrooper.jpg");
  stormtrooper.resize(100, 150);
  tiefighter = loadImage("tiefighter.png");
  tiefighter.resize(150, 100 );
  stardestroyer = loadImage("stardestroyer.jpg");
  stardestroyer.resize(400, 200);
  jedi = loadImage("jedi.jpg");
  jedi.resize(100, 150);
  lightsaber = loadImage("lightsaber.png");
  lightsaber.resize(100, 100);
  hammerhead = loadImage("hammerhead.png");
  hammerhead.resize(170, 140);
  LaserX = 1;
  LaserY = 675;

  LaserXs[0]=0;

  for (int i =0; i<10; i++)
  {
    LaserXs[i] = 0;
    LaserYs[i]=random(800);
    Speeds[i]=5;
  }

  LaserYs[0]=150;
}


void draw()
{
  background(255, 255, 255);
  fill(255, 0, 0);
  image(stormtrooper, 1, 650);





  image(tiefighter, 1, 250);
  image(stardestroyer, 1, 50);
  image(jedi, 700, 650);

  imageMode(CENTER);
  image(lightsaber, mouseX, mouseY);
  imageMode(CORNER);

  image(hammerhead, 500, 50);

  rect(LaserX, LaserY, 55, 5);
  LaserX = LaserX + Speed;

  if (LaserX >=830)
  {
    LaserX = 0;
  }


  if (dist(mouseX, mouseY, LaserX, LaserY)<50)
  {
    Speed = Speed*-1;
  }


  for (int i =0; i<10; i++)
  {
    rect(LaserXs[i], LaserYs[i], 55, 5);
    LaserXs[i] = LaserXs[i] + Speeds[i];

    if (LaserXs[i] >=830)
    {
      LaserXs[i] = 0;
    }


    if (dist(mouseX, mouseY, LaserXs[i], LaserYs[i])<50)
    {
      Speeds[i] = Speeds[i]*-1;
    }

    if (LaserXs[i] < 0)
    {
      Speeds[i] = Speeds[i]*-1;
    }
  }
}
