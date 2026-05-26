void gameover(){
  theme.pause();
  gameover.play();
  background(#A1E3FC);
  
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
  fill(#172679);
  textSize(70);
  if (leftScore > rightScore) {
    text("LEFT PLAYER WINS!", width/2, height/2);
  } else {
    text("RIGHT PLAYER WINS!", width/2, height/2);
  }
  textSize(40);
  fill(#C4EFFF);
  text("click to play again!",400,650);
}

void gameoverClicks(){
  theme.rewind();
  mode = INTRO;
  leftScore=0;
  rightScore=0;
  ballx = width/2;
  bally = height/2;
  vx = random(0,5);
  vy = random(0,5);
  timer = 100;
}
