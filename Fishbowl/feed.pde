class Feed
{
  PImage imgFeed;
  float posX, posY;
  float menuX, menuY;
  
  // Constructors
  Feed()
  {
   imgFeed = loadImage("Fish feed.png");
   posX = mouseX;
   posY = mouseY;
   menuX = (60*width)/100;
   menuY = height/10;
  }
  
  // Methods
  void display()
  {
    imgFeed.resize(width/15, height/15);
    image(imgFeed, posX, posY);
  }
  
  void displayMenu()
  {
    imgFeed.resize(width/15, height/15);
    image(imgFeed, menuX, menuY); 
  }
}  
