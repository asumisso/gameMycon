float X,v,x,s,t,r,y,u;
int S;
void setup(){
size(640,360);
colorMode(RGB,100);
background(64,255,255,100);
stroke(0);
line(0,320,640,320);
frameRate(30);
X=-41;
S=100;
y=279;
u=-12;
delay(3000);
}
void mousePressed(){
  if (mouseButton == LEFT){
    S=30;
    s=second();
    println(s);
    }
}
void draw(){
  if(X<-40){
  X=720;
  v=random(5,10);
  exe();
}else{
  exe();
}
}
void exe(){
  fade();
  X-=v;
  x=mouseX;
  stroke(64,255,255);
  fill(255,0,255,100);
  ellipse(X,279,80,80);
  if (S==30){
    t=second();
    println(t);
    if (y<279.5-u){
      y+=u;
      u+=0.5;
    }
    else{
      S=100;
      u=-12;
    }
  }
  PImage ninja = loadImage("ninja.gif");
  image(ninja,x-40,y-40,80,80);
  r=dist(X,279,x,y);
  if (S==100 && r<40){
    fill(255,0,0,50);
    rect(-10,-10,650,370);
    textSize(96);
    textAlign(CENTER);
    fill(100);
    text("GAME OVER",320,180);
    noLoop();
  }
}
void fade(){
  fill(64,255,255,100);
  ellipse(X,279,81,81);
  rect(x-40,y-40,80,80);
}