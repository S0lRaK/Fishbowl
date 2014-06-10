class StaticPredator
{
  PImage imgStaticPredator;
  float posX, posY;
  float menuX, menuY;
  
  // Constructors
  StaticPredator()
  {
   imgStaticPredator = loadImage("Snakhead Fish.png");
   posX = mouseX;
   posY = mouseY;
   menuX = (40*width)/100;
   menuY = height/10;
  }
  
  // Methods
  void display()
  {
    imgStaticPredator.resize(width/15, height/15);
    image(imgStaticPredator, posX, posY);
  }
  
  void displayMenu()
  {
    imgStaticPredator.resize(width/15, height/15);
    image(imgStaticPredator, menuX, menuY); 
  }
}
