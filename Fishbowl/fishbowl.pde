// States
final byte stateAddStaticPredator = 1;
final byte stateAddFeed = 2;
byte state = 0;

// Global variables
StaticPredator sPred;
Feed feed;
Fish fish;

void setup()  // executed once
{
  size(1000, 500);
  smooth(); // anti-aliased egdes and improved resized quality images
  sPred = new StaticPredator();
  feed = new Feed();
  fish = new Fish();
}

void draw()  // continuosly executed
{
  background(#1E6BE3);
  showMenu();
  switch(state)
  {
    case stateAddStaticPredator:
      sPred.addPredator();
      break;
    case stateAddFeed:
      feed.addFeed();
      break;          
  }
  /*
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
  // on staticPredator
  if(mouseX > sPred.menuX && mouseX < (sPred.menuX + 60) && mouseY > sPred.menuY && mouseY < (sPred.menuY + 20))
  {
    state = stateAddStaticPredator;
    
  }
  // on Feed 
  else if(mouseX > feed.menuX && mouseX < (feed.menuX + 60) && mouseY > feed.menuY && mouseY < (feed.menuY + 30))        
  {
    state = stateAddFeed;
  }
}
