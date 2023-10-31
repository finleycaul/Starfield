Particle [] bee = new Particle [100];
void setup()
{
  size(600, 600);
  background(#ccffff);
  for (int i=0; i<bee.length; i++){
    bee [i] = new Particle();
  }
  for (int i=99; i<bee.length; i++){
    bee [i] = new OddballParticle();
  }
}

void draw()
{
  scale(0.3);
  background(#ccffff);
  for (int i = 0; i<bee.length; i++){
    bee[i].move();
    bee[i].show();
  }  
}
class OddballParticle extends Particle//inherits from Particle
{
  OddballParticle(){
    myX = 490;
    myY = 470;
  }
  void show (){
  fill(#FFB61E);
  ellipse((float)myX/.5, (float)(myY-85)/.5, 135/.5, 60/.5);
  ellipse((float)myX/.5, (float)(myY-55)/.5, 195/.5, 65/.5);
  ellipse((float)myX/.5, (float)(myY-25)/.5, 225/.5, 70/.5);
  ellipse((float)myX/.5, (float)(myY+85)/.5, 135/.5, 60/.5);
  ellipse((float)myX/.5, (float)(myY+55)/.5, 195/.5, 65/.5);
  ellipse((float)myX/.5, (float)(myY+25)/.5, 225/.5, 70/.5);
  ellipse((float)myX/.5, (float)myY/.5, 250/.5, 60/.5);
  fill(#5C4033);
  ellipse((float)myX/.5,(float)(myY+10)/.5,70/.5,90/.5);
  }
  void move (){
  myX += (Math.random()*2)-1;       
  myY += (Math.random()*2)-1;
  }
}

class Particle
{
  double myX, myY, mySpeed, myAngle;
  int green,blue,red;
  Particle()
   {
     myX = 965;
     myY = 950;
     myAngle = Math.random()*2 * Math.PI;
     green = (int)(Math.random()*56)+200;
     blue = (int)(Math.random()*150);  
     red = (int)(Math.random()*21)+235;
     mySpeed = Math.random()*3+1;
   }
  void move()
   {
    myX += Math.cos(myAngle) * mySpeed;        
    myY += Math.sin(myAngle) * mySpeed;
   }
  void show()
   {
    fill(179, 230, 255);
    beginShape(); //first wing
    curveVertex((float)myX-20, (float)myY-20);
    curveVertex((float)myX-20, (float)myY-20);
    curveVertex((float)myX-35, (float)myY-25);
    curveVertex((float)myX-55, (float)myY-35);
    curveVertex((float)myX-60, (float)myY-55);
    curveVertex((float)myX-45, (float)myY-70);
    curveVertex((float)myX-25, (float)myY-65);
    curveVertex((float)myX-15, (float)myY-50);
    curveVertex((float)myX-20, (float)myY-20);
    curveVertex((float)myX-20, (float)myY-20);
    endShape();
    beginShape();//ontop wing
    curveVertex((float)myX-5, (float)myY-25);
    curveVertex((float)myX-5, (float)myY-25);
    curveVertex((float)myX-25, (float)myY-40);
    curveVertex((float)myX-35, (float)myY-55);
    curveVertex((float)myX-35, (float)myY-70);
    curveVertex((float)myX-20, (float)myY-80);
    curveVertex((float)myX-8, (float)myY-77);
    curveVertex((float)myX-5, (float)myY-75);
    curveVertex((float)myX+2, (float)myY-65);
    curveVertex((float)myX+2, (float)myY-55);
    curveVertex((float)myX-5, (float)myY-25);
    curveVertex((float)myX-5, (float)myY-25);
    endShape();
    fill(26, 13, 0);
    triangle((float)myX-65, (float)myY, (float)myX-40, (float)myY-10, (float)myX-40, (float)myY+10);// stinger
    fill((float)red, (float)green, (float)blue);
    ellipse((float)myX, (float)myY, 100, 75); //body
    fill(26, 13, 0);
    beginShape();//first strip
    curveVertex((float)myX+15, (float)myY-36);
    curveVertex((float)myX+15,(float)myY-36);
    curveVertex((float)myX+8, (float)myY);
    curveVertex((float)myX+15,(float)myY+34);
    curveVertex((float)myX+5,(float)myY+34);
    curveVertex((float)myX-2, (float)myY);
    curveVertex((float)myX+5,(float)myY-36);
    curveVertex((float)myX+15,(float)myY-36);
    curveVertex((float)myX+15,(float)myY-36);
    endShape();
    beginShape(); // second strip
    curveVertex((float)myX-10,(float)myY-35);
    curveVertex((float)myX-10,(float)myY-35);
    curveVertex((float)myX-17,(float)myY+2);
    curveVertex((float)myX-10,(float)myY+35);
    curveVertex((float)myX-20,(float)myY+35);
    curveVertex((float)myX-27,(float)myY+2);
    curveVertex((float)myX-20,(float)myY-35);
    curveVertex((float)myX-10,(float)myY-35);
    curveVertex((float)myX-10,(float)myY-35);
    endShape();
    beginShape(); // third strip
    curveVertex((float)myX-35,(float)myY-27);
    curveVertex((float)myX-35,(float)myY-27);
    curveVertex((float)myX-40,(float)myY+2);
    curveVertex((float)myX-35,(float)myY+25);
    curveVertex((float)myX-50,(float)myY+10);
    curveVertex((float)myX-50,(float)myY-11);
    curveVertex((float)myX-35,(float)myY-27);
    curveVertex((float)myX-35,(float)myY-27);
    endShape();
    ellipse((float)myX+25, (float)myY-5,5,10);
    ellipse((float)myX+35, (float)myY-5,5,10);
   }
}


