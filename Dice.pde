int numDice;
int finDice = numDice;
int dice1,dice2,dice3,dice4,dice5,dice6;
int rollCount;
void setup() {
  size(300,300);
  noLoop();
}
void draw() {
  background(252, 204, 246);
  for (int y = 10; y < 270; y+=90) {
    for(int x = 10; x < 180; x+=70) {
      Die floop = new Die(x,y);
      floop.show();      
    }
  }
  text("Total: " +  numDice, 180,280);
  finDice+=numDice;
  fill(255,0,0);
}
void mousePressed() {
  dice1 = 0;
  dice2 = 0;
  dice3 = 0;
  dice4 = 0;
  dice5 = 0;
  dice6 = 0;
  rollCount++;
  numDice = 0;
  if (rollCount == 99) {
    rollCount = 0;
    finDice = 0;
  }
  redraw();
}
class Die {
  int myX, myY;
  int diceRoll = (int)(Math.random()*6)+1;
  Die(int x, int y) { 
    myX = x;
    myY = y;
  }
  void show() {
    fill(255);
    rect(myX,myY,30,30);
    roll();
  }
  void roll() {
    fill(0);
    if(diceRoll == 1) {
      ellipse(myX+15,myY+15,5,5);
      numDice+=1;
      dice1++;
    }
    if(diceRoll == 2) {
      ellipse(myX+5,myY+5,5,5);
      ellipse(myX+25,myY+25,5,5);
      numDice+=2;
      dice2++;
    }
    if(diceRoll == 3) {
      ellipse(myX+5,myY+5,5,5);
      ellipse(myX+25,myY+25,5,5);
      ellipse(myX+15,myY+15,5,5);
      numDice+=3;
      dice3++;
    }
    if(diceRoll == 4) {
      ellipse(myX+5,myY+5,5,5);
      ellipse(myX+25,myY+25,5,5);
      ellipse(myX+5,myY+25,5,5);
      ellipse(myX+25,myY+5,5,5);
      numDice+=4;
      dice4++;
    }
    if (diceRoll == 5) {
      ellipse(myX+5,myY+5,5,5);
      ellipse(myX+25,myY+25,5,5);
      ellipse(myX+5,myY+25,5,5);
      ellipse(myX+25,myY+5,5,5);
      ellipse(myX+15,myY+15,5,5);
      numDice+=5;
      dice5++;
    }
    if (diceRoll == 6) {
      ellipse(myX+5,myY+5,5,5);
      ellipse(myX+25,myY+25,5,5);
      ellipse(myX+5,myY+25,5,5);
      ellipse(myX+25,myY+5,5,5);
      ellipse(myX+5,myY+15,5,5);
      ellipse(myX+25,myY+15,5,5);
      numDice+=6;
      dice6++;
    }
  }
}