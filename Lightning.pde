int startx = 250;
int starty = 20;
int endx = 250;
int endy = 20;
void setup()
{
  size(500,500);
  strokeWeight(5);
  background(0,4,20);
}
void draw()
{
  noStroke();
  //ground
  fill(6,37,4);
  ellipse(250,450,900,200);
  //cloud
  strokeWeight(1);
  stroke((int)(Math.random()*255)+1,(int)(Math.random()*255)+1,(int)(Math.random()*255)+1);
  fill(200,200,200);
  ellipse(250,30,500,50);
  //lightning
  strokeWeight(5);
  while(endy<500){
   stroke((int)(Math.random()*255)+1,(int)(Math.random()*255)+1,(int)(Math.random()*255)+1);
   fill((int)(Math.random()*255)+1,(int)(Math.random()*255)+1,(int)(Math.random()*255)+1);
   endy+=((int)(Math.random()*40)-5);
   endx+=((int)(Math.random()*100)-50);
   line(startx,starty,endx,endy);
   startx=endx;
   starty=endy;
  }
  noStroke();
  //tree stump
  fill(27,15,3);
  rect(200,300,70,100);
  fill(165,132,90);
  ellipse(235,300,70,10);
    
}
void mousePressed()
{
  startx = 250;
  starty = 20;
  endx = 250;
  endy = 20;
}
