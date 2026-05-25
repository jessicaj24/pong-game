void game(){
  background(0);
  circle(leftx,lefty,leftd);
  circle(rightx,righty,rightd);
  if (wkey==true) lefty=lefty-5;
  if (skey==true) lefty=lefty+5;
  if (upkey==true) righty=righty-5;
  if (downkey==true) righty=righty+5;
  circle(ballx,bally,balld);
  ballx=ballx+vx;
  bally=bally+vy;
  if (lefty>850){
    lefty=0;
  }
  if (righty>850){
    righty=0;
  }
  if (lefty<-50){
    lefty=800;
  }
  if (righty<-50){
    righty=800;
  }
  if (bally<= balld/2 || bally>=height-balld/2){
    vy=vy*-1;
  }
  if (ballx < 0 || ballx > width){
    ballx = width/2;
    bally = height/2;
    vx = 5;
    vy = 2;
  }
  if (dist(ballx,bally,leftx,lefty) <=balld/2 + leftd/2){
    vx = vx * -1;
  }
  if (dist(ballx,bally,rightx,righty)<= balld/2 + rightd/2){
    vx = vx * -1;
  }
}

void gameClicks(){
  
}
