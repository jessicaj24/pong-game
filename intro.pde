void intro(){
  theme.play();
  background(#A1E3FC);
  println(mouseX,mouseY);
  
  noStroke();
  fill(255);
  ellipse(140, 190, 100, 90);
  ellipse(220, 200, 100, 100);
  ellipse(175, 250, 50, 60);
  ellipse(120, 230, 90, 90);
  ellipse(100, 180, 80, 80);

  ellipse(550, 80, 80, 80);
  ellipse(490, 70, 70, 70);
  ellipse(530, 130, 100, 80);
  ellipse(600, 100, 80, 80);
  ellipse(620, 60, 80, 60);
  
  

  strokeWeight(1);
  fill(0);
  textSize(72);
  text("PONG GAME", 400, 400);
  stroke(0);
  fill(#C4EFFF);
  tactile(150,500,200,100);
  rect(250, 550, 200, 100);
  tactile(450,500,200,100);
  rect(550, 550, 200, 100);
  fill(#172679);
  textSize(40);
  text("1 Player", 250, 550);
  text("2 Players", 550, 550);
  textSize(30);
  text("let's go!",400,650);
  
}

void introClicks(){
  if (mouseX>150 && mouseX<350 && mouseY>500 && mouseY<600) {
    mode = GAME;
    onePlayer=true;
    fill(250);
    strokeWeight(5);
    rect(250, 550, 200, 100);
  } else if (mouseX>450 && mouseX<650 && mouseY>500 && mouseY<600) {
    mode = GAME;
    onePlayer=false;
    strokeWeight(5);
    rect(550,500,200,100);
  } else {
    strokeWeight(1);
    fill(255);
  }
}

void tactile(int x, int y, int w, int h) {
  if (mouseX>x && mouseX<x+w && mouseY>y && mouseY<y+h) {
    fill(255);
    stroke(0);
  } else{
    fill(#C4EFFF);
  }
}
