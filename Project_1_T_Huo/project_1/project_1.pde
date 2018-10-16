int dropNumber = 100;
int personX, personY;
color doorCol = color(191, 155, 130, 255);
color doorStro = color(0, 0, 0, 255);
color roomCol = color(100, 100, 100);


Snow whiteDrops;
Smoke cloud;

Snow[] nums = new Snow[dropNumber]; 

void setup() {
  size(800, 800);
  background(80, 115, 148);
  personX = 700;
  personY = 300;
  cloud = new Smoke();
  //cloud2 = new Smoke();

  for (int i=0; i < nums.length; i++) {

    nums[i] = new Snow();
  }
}

void draw() {
  background(80, 115, 148);
  noStroke();

  for (int i = 0; i < nums.length; i++) {
    nums[i].fall();
  }

  //smoke(145,140,60,50,color(250));
  //smoke(155,90,50,40, color(250));
  //smoke(170,40,40,30, color(250));


  fill(255);
  stroke(200);
  strokeWeight(5);
  arc(200, 600, 1400, 650, 0, TWO_PI);//back left pile
  arc(700, 580, 1800, 600, 0, TWO_PI);//back right pile
  arc(200, 600, 1800, 550, 0, TWO_PI);//front pile
  //stroke(255);
  //strokeWeight(20);


  if (keyPressed) {

    if (key == 32) {
      personY -=5;
      if (personY < 5) {
        personY = 5;
      } // personY
    } // spacebar

    if (key == 'w' || key == 'W') {
      personY -=5;
    }

    if (key == 'd' || key == 'D') {
      personX +=5;
    }

    if (key == 's' || key == 'S') {
      personY +=5;
    }

    if (key == 'a' || key == 'A') {
      personX -=5; // personX = personX - 10
    }

    if (personX>width) {
      personX = width;
    }

    if (personX<0) {
      personX= 0;
    }

    if (personY>740) {
      personY = 740;
    }

    if (personY<230) {
      personY = 230;
    }
    println(personY);
  } // keyPressed
  //background(255);



  strokeWeight(3);
  stroke(30);
  fill(100);
  rectMode(CORNER);
  rect(120, 170, 50, 100);//chimney
  fill(50);
  rect(120, 200, 20, 10);//chimney
  rect(120, 240, 20, 20);//chimney
  rect(150, 220, 20, 5);//chimney

  noStroke();
  strokeWeight(5);
  fill(61, 25, 0);//roof
  triangle(280, 150, 70, 300, 490, 300);
  //fill(255);
  //triangle(300, 150, 200, 230, 400, 230);

  stroke(0);
  fill(245, 239, 218);
  rectMode(CORNER);
  rect(75, 300, 410, 300);//housebody

  strokeWeight(20);
  stroke(140, 119, 74);
  rect(120, 380, 200, 208, 0);//door rim

  strokeWeight(2);
  stroke(0);
  fill(doorCol);
  rect(120, 380, 200, 220);//!!!!!!!!!!!!!!!!!!!THE DOOR!!!!!!!
  stroke(doorStro);
  line(220, 382, 220, 598);

  stroke(0);
  fill(roomCol);
  rect(350, 350, 110, 130);//windows
  line(405, 350, 405, 480);//verticle line
  line(350, 415, 460, 415);//horizontal line
  strokeWeight(10);
  stroke(140, 119, 74);
  line(350, 480, 460, 480);//under the window thing

  person();
  


  if (personX<500&&personX>65&&personY>200&&personY<545) {
    strokeWeight(3);
    stroke(30);
    fill(100);
    rectMode(CORNER);
    rect(120, 170, 50, 100);//chimney
    fill(50);
    rect(120, 200, 20, 10);//chimney
    rect(120, 240, 20, 20);//chimney
    rect(150, 220, 20, 5);//chimney

    noStroke();
    strokeWeight(5);
    fill(61, 25, 0);//roofs
    triangle(280, 150, 70, 300, 490, 300);
    //fill(255);
    //triangle(300, 150, 200, 230, 400, 230);

    stroke(0);
    fill(245, 239, 218);
    rectMode(CORNER);
    rect(75, 300, 410, 300);//housebody

    strokeWeight(20);
    stroke(140, 119, 74);
    rect(120, 380, 200, 208, 0);//door rim

    strokeWeight(2);
    stroke(0);
    fill(doorCol);
    rect(120, 380, 200, 220);//!!!!!!!!!!!!!!!!!!!THE DOOR!!!!!!!
    stroke(doorStro);
    line(220, 382, 220, 598);

    stroke(0);
    fill(roomCol);
    rect(350, 350, 110, 130);//windows
    fill(0);
    line(405, 350, 405, 480);//verticle line
    line(350, 415, 460, 415);//horizontal line
    strokeWeight(10);
    stroke(140, 119, 74);
    line(350, 480, 460, 480);//under the window thing

    if (personY >= 540) {
      personY = 553;
    }
  }
  
  
  if (personX<320&&personX>120&&personY>540&&personY<580) {
    doorCol = color(255, 205, 118);
    roomCol = color(255, 205, 118);
    doorStro= color(255, 205, 118);


    stroke(160);
    strokeWeight(15);
    fill(200);
    rect(170, 470, 100, 120);
    stroke(50);
    line(160, 460, 280, 460);

    //flames

    flames(random(190, 260), random(480, 550), 1, 1);
    flames(random(190, 260), random(500, 550), 2, 2);
    flames(random(190, 250), random(500, 550), 3, 3);
    flames(random(190, 250), random(510, 550), 5, 5);
    flames(random(200, 240), random(520, 544), 7, 7);
    flames(random(200, 240), random(520, 544), 7, 7);
    flames(random(200, 240), random(520, 544), 7, 7);
    flames(random(200, 240), random(520, 544), 7, 7);
    flames(random(200, 240), random(530, 545), 10, 10);
    flames(random(200, 240), random(530, 550), 10, 10);
    flames(random(210, 230), random(510, 550), 10, 10);
    flames(random(210, 230), random(510, 550), 10, 10);
    flames(random(210, 230), random(530, 550), 10, 10);
    flames(random(210, 230), random(530, 550), 13, 13);

    //ellipse(flameX,flameY,random(3,7),random(3,7));


    //the floor
    stroke(0);
    strokeWeight(1);
    fill(80, 70, 60);
    rect(120, 550, 200, 49);
    cloud.rise();

    person();
    
    
  } else if (personX <width && personY <height) {
    doorCol = color(191, 155, 130, 255);
    doorStro = color(0, 0, 0);
    roomCol = color(100, 100, 100);
  }
}







class Snow {
  float x = random(width);
  float y1 = random(height);
  float y2 = random(height);
  float y3 = random(height);
  float cir = random(5, 10);


  void fall() {
    y1 = y1 + 8;
    y2 = y2 + 5;
    y3 = y3 + 3;
    fill(255);
    ellipse(x, y1, cir, cir);
    ellipse(x, y2, cir, cir);
    ellipse(x, y3, cir, cir);

    if (y1>height) {
      y1 = random(-10);
    }

    if (y2 > height) {
      y2 = random (-10);
    }
    if (y3 > height) {
      y3 = random (-10);
    }
  }
}




class Smoke {
  int x= 145;
  int y= 150;
  int cirW = 20;
  int cirL = 10;
  int tr = 250;      


  void rise() {
    x = x +1;
    y = y- 1;
    cirW = cirW + 1;
    cirL = cirL + 1;
    tr = tr -2;
    fill(255, 255, 255, tr);
    noStroke();
    ellipse(x, y, cirW, cirL);

    if (y<40) {
      x = 145;
      y = 150;
      cirW = 20;
      cirL = 10;
      tr = 200;
      ellipse(x, y, cirW, cirL);
    }
  }
}



void person() {
  stroke(0, 0, 0);
  strokeWeight(1);
  fill(200, 198, 170);
  ellipse(personX, personY, 30, 30);//head
  strokeWeight(2);
  line(personX, personY+15, personX, personY+23);//nect
  strokeWeight(5);
  line(personX, personY+25, personX, personY+50);//body
  strokeWeight(3);
  line(personX, personY+50, personX-13, personY+70);//left leg
  line(personX, personY+50, personX+13, personY+70);//right leg
  line(personX, personY+28, personX-15, personY+35);//left arm
  line(personX, personY+28, personX+15, personY+35);//right art
}

void flames(float x, float y, float a, float b) {

  noStroke();
  fill(random(150, 255), random(0, 150), random(0, 100));
  ellipse(x, y, a, a);
  fill(random(60, 80), random(0, 50), random(0, 30));
  ellipse(random(210, 230), 550, 12, 12);
} 

/*
void smoke(int cirX, int cirY, int cirW, int cirL, color col){
 noStroke();
 fill(col,150);
 ellipse(cirX, cirY, cirW, cirL);
 cirX = cirX +3;
 
 }
 */

/*void snowPile (int a) {
 
 if(mousePressed==true){
 arc(400, 800, 1200, a, 0, TWO_PI);
 
 }
 
 }
 */
