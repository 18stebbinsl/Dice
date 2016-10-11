Die bob;

void setup()
{
  noLoop();
  background(255,255,0);
  size(700,455);
}
void draw()
{
  int total = 0;
  for (int y = 30; y < 400; y + = 95){
    for (int x = 40; x < 400; x + = 90){
      Die bob = new Die(x , y);
      bob.show();
      bob.roll();
      total = total + bob.num; 
    }
  }
  fill(255);
  textSize(20);
  text("Die Rolls", 515,95);
  
  fill(255);
  textSize(18);
  text("TOTAL SUM:", 515,190);
  text(total, 555,215);
  
  text("AVERAGE SUM:", 495,300);
  text(total/9, 550,325);
}
void mousePressed()
{
  redraw();
  background(255,255,0);
  redraw();
}
class Die
{
  int myX, myY, num;
  Die(int x, int y)
  {
    myX = x;
    myY = y;
    num = ((int)(Math.random()*6)+1);
  }
  void roll()
  {  
    int rectSize = 80;
    int size = 20;
    if (num == 1){
      fill(random(255),random(255),random(255));
      ellipse(myX+rectSize/2,myY+rectSize/2,size,size);
    }
    else if (num == 2){
      fill(random(255),random(255),random(255));
      ellipse(myX+rectSize/4,myY+rectSize/4,size,size);
      ellipse(myX+3*rectSize/4,myY+3*rectSize/4,size,size);
    }
    else if (num == 3){
      fill(random(255),random(255),random(255));
      ellipse(myX+rectSize/2,myY+rectSize/4,size,size);
      ellipse(myX+rectSize/2,myY+rectSize/2,size,size);
      ellipse(myX+rectSize/2,myY+3*rectSize/4,el, el);
    }
    else if (num == 4){
      fill(random(255),random(255),random(255));
      ellipse(myX+rectSize/4,myY+rectSize/4,size,size);
      ellipse(myX+3*rectSize/4,myY+3*rectSize/4,size,size);
      ellipse(myX+rectSize/4,myY+3*rectSize/4,size,size);
      ellipse(myX+3*rectSize/4,myY+rectSize/4,size,size);
    }
    else if (num == 5){
      fill(random(255),random(255),random(255));
      ellipse(myX+rectSize/4,myY+rectSize/4,size,size);
      ellipse(myX+3*rectSize/4,myY+3*rectSize/4,size,size);
      ellipse(myX+rectSize/4,myY+3*rectSize/4,size,size);
      ellipse(myX+3*rectSize/4,myY+rectSize/4,size,size);
      ellipse(myX+rectSize/2,myY+rectSize/2,size,size);
    }
    else{
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
    noStroke();
    fill(255);
    rect(myX,myY,rectSize,rectSize);
    int rectSize = 80;
  }
}
