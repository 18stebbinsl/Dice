Die bob;
void setup()
{
  noLoop();
  size(700,455);
}
void draw()
{
  background(50,85,150);
  int total = 0;
  for (int y = 30; y<400; y+= 95){
    for (int x = 40; x<400; x+= 90){
      Die bob = new Die(x,y);
      bob.show();
      bob.roll();
      total = total + bob.dice; 
    }
  }
  int average = total/9;
  fill(255,0,0);
    textSize(24);
    text("Total:",500,60);
    text(total,510,90);
    text("Average:",490,220);
    text(average,515,250);
    fill(random(255),random(255),random(255));
    textSize(22);
    text("By: Liam Stebbins",450,400);
}
void mousePressed()
{
  redraw();
}
class Die
{
  int myX, myY, dice;
  Die(int x, int y)
  {
    myX = x;
    myY = y;
    dice = ((int)(Math.random()*6)+1);
  }
  void roll()
  {  
    int rectSize = 80;
    int size = 20;
    if (dice == 1){
      fill(random(255),random(255),random(255));
      ellipse(myX+rectSize/2,myY+rectSize/2,size,size);
    }
    else if (dice == 2){
      fill(random(255),random(255),random(255));
      ellipse(myX+rectSize/4,myY+rectSize/4,size,size);
      ellipse(myX+3*rectSize/4,myY+3*rectSize/4,size,size);
    }
    else if (dice == 3){
      fill(random(255),random(255),random(255));
      ellipse(myX+rectSize/2,myY+rectSize/4,size,size);
      ellipse(myX+rectSize/2,myY+rectSize/2,size,size);
      ellipse(myX+rectSize/2,myY+3*rectSize/4,size, size);
    }
    else if (dice == 4){
      fill(random(255),random(255),random(255));
      ellipse(myX+rectSize/4,myY+rectSize/4,size,size);
      ellipse(myX+3*rectSize/4,myY+3*rectSize/4,size,size);
      ellipse(myX+rectSize/4,myY+3*rectSize/4,size,size);
      ellipse(myX+3*rectSize/4,myY+rectSize/4,size,size);
    }
    else if (dice == 5){
      fill(random(255),random(255),random(255));
      ellipse(myX+rectSize/4,myY+rectSize/4,size,size);
      ellipse(myX+3*rectSize/4,myY+3*rectSize/4,size,size);
      ellipse(myX+rectSize/4,myY+3*rectSize/4,size,size);
      ellipse(myX+3*rectSize/4,myY+rectSize/4,size,size);
      ellipse(myX+rectSize/2,myY+rectSize/2,size,size);
    }
    else if (dice== 6){
      fill(random(255),random(255),random(255));
      ellipse(myX+rectSize/4,myY+rectSize/4,size,size);
      ellipse(myX+3*rectSize/4,myY+3*rectSize/4,size,size);
      ellipse(myX+rectSize/4,myY+3*rectSize/4,size,size);
      ellipse(myX+3*rectSize/4,myY+rectSize/4,size,size);
      ellipse(myX+rectSize/4,myY+2*rectSize/4,size,size);
      ellipse(myX+3*rectSize/4,myY+2*rectSize/4,size,size);;
    }
  }
  void show()
  {
    int rectSize = 80;
    fill(255);
    noStroke();
    rect(myX,myY,rectSize,rectSize);
  }
}
