import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

int mode;
final int INTRO=1;
final int GAME=2;
final int PAUSE=3;
final int GAMEOVER=4;

float leftx, lefty, leftd, rightx, righty, rightd;
float ballx, bally, balld;
float vx,vy;

boolean wkey,skey,upkey,downkey;
boolean onePlayer=true;

int leftScore=0;
int rightScore=0;
int timer=100;

Minim minim;
AudioPlayer theme, coin, bump, gameover;

void setup() {
  size(800,800);
  mode=INTRO;
  textAlign(CENTER,CENTER);
  rectMode(CENTER);
  imageMode(CENTER);
  leftx=0;
  lefty=height/2;
  leftd=200;
  rightx=width;
  righty=height/2;
  rightd=200;
  ballx=width/2;
  bally=height/2;
  balld=100;
  wkey=skey=upkey=downkey=false;
  vx=5;
  vy=2;
  minim=new Minim(this);
  theme= minim.loadFile("MUSIC.mp3");
  gameover= minim.loadFile("FAILURE.wav");
  coin= minim.loadFile("SUCCESS.wav");
}

void draw() {
  if (mode==INTRO){
    intro();
  } else if (mode==GAME){
    game();
  } else if (mode==PAUSE){
    pause();
  } else if (mode==GAMEOVER){
    gameover();
  } else {
    println("Mode error!" +mode);
  }
}
