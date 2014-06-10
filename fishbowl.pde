/*
// States
final byte stateAddStaticPredator = 1;
final byte stateAddFeed = 2;
byte state = 0;
*/

// Global variables
StaticPredator sPred;
Feed feed;
Fish fish;

void setup()  // executed once
{
  size(1000, 500);
  smooth(8); // anti-aliased egdes and improved resized quality images
  sPred = new StaticPredator();
  feed = new Feed();
  fish = new Fish();
}

void draw()  // continuosly executed
{
  background(#1E6BE3);
  showMenu();
  /*
  for(byte i = 0; i < Environment.staticPredators.size(); i++)
  {
    Environment.staticPredators.get(i).display;
  }
  for(byte i = 0; i < Environment.feeds.size(); i++)
  {
    Environment.feeds.get(i).display;
  }
  for(byte i = 0; i < maxFish; i++)
  {
    
  }*/
}

void showMenu()
{
  sPred.displayMenu();
  feed.displayMenu();
}

void mouseClicked()
{
  if(mouseX == sPred.menuX && mouseY == sPred.menuY)
    
  if(mouseX == feed.menuX && mouseY == feed.menuY)
      
}
