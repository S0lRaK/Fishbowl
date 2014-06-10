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
  void displayMenu()
  {
    imgStaticPredator.resize(width/15, height/15);
    image(imgStaticPredator, menuX, menuY); 
  }
  
  void display()
  {
    imgStaticPredator.resize(width/15, height/15);
    image(imgStaticPredator, posX, posY);
  }
  
  void addPredator()
  {
    Environment.staticPredators.add(sPred);
    for(byte i = 0; i < Environment.staticPredators.size(); i++)
    {
      StaticPredator sPred = Environment.staticPredators.get(i);
      sPred.display();
    }
  }
}
