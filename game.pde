void game(){
  theme.play();
  background(#A1E3FC);
  stroke(#172679);
  line(400,0,400,800);
  textSize(40);
  circle(leftx,lefty,leftd);
  circle(rightx,righty,rightd);
  if (wkey==true) lefty=lefty-5;
  if (skey==true) lefty=lefty+5;
  if (upkey==true) righty=righty-5;
  if (downkey==true) righty=righty+5;
  if (onePlayer == true) {
    if (bally < righty - 4) {
      righty = righty - 4;
    } else if (bally > righty + 4) {
      righty = righty + 4;
    }
  }
  fill(255);
  circle(ballx,bally,balld);
  if (timer > 0){
    timer = timer - 1;
  } else{
    ballx = ballx + vx;
    bally = bally + vy;
  }
  if (lefty < leftd/2){
    lefty = leftd/2;
  } 
  if (lefty > height-leftd/2){
    lefty = height-leftd/2;
  }
  if (righty < rightd/2){
    righty = rightd/2;
  }
  if (righty > height-rightd/2){
    righty = height-rightd/2;
  }
  if (bally<= balld/2 || bally>=height-balld/2){
    vy=vy*-1;
  }
  if (ballx < 0){
    rightScore = rightScore + 1;
    ballx = width/2;
    bally = height/2;
    vx = random(-5,5);
    vy = random(-5,5);
    timer = 100;
  } else if (ballx > width){
    leftScore = leftScore + 1;
    ballx = width/2;
    bally = height/2;
    vx = random(-5,5);
    vy = random(-5,5);
    timer = 100;
  }
  distLeft = dist(ballx, bally, leftx, lefty);
  if (distLeft < balld/2 + leftd/2) {
    vx = (ballx - leftx) / 10;
    vy = (bally - lefty) / 10;
    if (vx<2) {
      vx=2;
    }
    ballx=leftx+(balld/2+leftd/2)+1;
  }
  distRight = dist(ballx, bally, rightx, righty);
  if (distRight < balld/2 + rightd/2) {
    vx = (ballx - rightx) / 10;
    vy = (bally - righty) / 10;
    if (vx>-2) {
      vx=-2;
    }
    ballx=rightx-(balld/2+rightd/2)-1;
  }
  text(leftScore, width/4, 50);
  text(rightScore, width*3/4, 50);
  if (leftScore == 3 || rightScore == 3){
    mode = GAMEOVER;
  }
}

void gameClicks(){
  mode = PAUSE;
}
