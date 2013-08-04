import processing.video.*;

import processing.opengl.*;
import ddf.minim.*;
float x = 100, y = 100, xgros = 49, ygros = 49, yb = -1, linie = 650, rot = 0, counter, pyp;
int pmillis, t, freim = 0;
float prevx,prevy,prevc,tcounter;
float translatory;
boolean eksited = false, dorotation, eksiter = true, pmousePressed,practice,level2 = true;
//boolean cmov = false;
//MovieMaker mm;
Minim minim;
Minim minim2;
Minim minim3; 
AudioPlayer player;
AudioPlayer player2;
AudioPlayer player3;
float tickspeed = 5, grav = 0.34, jump = 8.8;
ArrayList trians = new ArrayList(), bokses = new ArrayList();
void setup() {

  size(900, 700, OPENGL);
  frameRate(130);
  //if (cmov) {
  //  mm = new MovieMaker(this, width, height, "Realimp.mov");
  //}
  minim = new Minim(this);
  minim2 = new Minim(this);
  minim3 = new Minim(this);
  player = minim.loadFile("music.mp3");
  player2 = minim2.loadFile("Practice.mp3");
  player3 = minim3.loadFile("music2.mp3");
  player.loop();
  //player.cue(27000 * 2);
  yb = -3;
}
void draw() {
  //frameRate(mouseX + 2);
  //scale(0.5,0.5);
  dorotation = true;
  if (y - translatory <= 250) {
    translatory -= yb;
  }
  if (y - translatory >= 450 && translatory < 0) {
    translatory += yb;
  }
  translate(0, translatory);
  
  
  //translate(0, -y + 400);
  //scale(0.5, 0.5);
  eksited = false; 
  /*if(keyPressed){
   if(key == 'd'){
   tickspeed = 20;
   }
   if(key == 'a'){
   tickspeed = -20;
   }
   y = 251;
   }*/   
  counter = (float)((float)((frameCount - (float)freim) / 50.0f) * (float)tickspeed) * 1 + (constrain(tcounter - 30,0,1000000)) + 0;
  noStroke(); 

  /*
  beginShape(QUADS);
   fill(41, 40, 8);
   vertex(0, 0);
   fill(231, 219, 49);
   vertex(0, height);
   fill(231, 219, 49);
   vertex(width, height);
   fill(41, 40, 8);
   vertex(width, 0);
   endShape();*/

  if(counter % 1 == 0.4){
    counter += 0.1f;
  }
  rectMode(CENTER);

  yb += grav;// * 5.0f / tickspeed;
  y += yb;
  yb = constrain(yb, -1000, 23);
  if(keyPressed && key == 'f'){
    practice = true;
    prevc = counter;
  }
  if(practice){
    player.pause();
    player2.play();
    player3.pause();
    
  }
  if (y + ygros / 2 >= linie) {
    //println("Jumpzeit " + (frameCount - t));
    yb = 0;
    y = linie - ygros / 2;
    rot = 0;
  }
  translate(x, y);

  stroke(0, 0, 0);

  fill(255, 100, 0);


  if (y != linie - ygros / 2) {
    //rotate(-rot);
  }
  translate(-x, -y);
  if(level2){
    level2();
  }
  else{
    level();
  }

  for (int i = trians.size()-1;i >= 0;i--) {  //start
    if (!eksited) {
      Trian Trian = (Trian) trians.get(i);
      Trian.tick();
      if(Trian.x <= width + 50){
        Trian.render();
      }
      if (Trian.x < -25) {
        trians.remove(i);
      }
      if (x + 25 > Trian.x - 25 + abs((Trian.y + 25) - y) / 2 && x - 25 < Trian.x + 25 -  abs((Trian.y + 25) - y) / 2 && y + 25 > Trian.y - 25 && y - 25 < Trian.y + 25) {
        if(eksiter){
        eksit();
        eksited = true;
        }
      }
      if (abs((Trian.x - 25) - x) <= 25 && abs((Trian.y + 25) - y) <= 25) {
        if(eksiter){
        eksit();
        eksited = true;
        }
      }
      if (abs((Trian.x + 25) - x) <= 25 && abs((Trian.y + 25) - y) <= 25) {
        if(eksiter){
        eksit();
        eksited = true;
        }
      }
    }
  }      //end
  
  for (int i = bokses.size()-1;i >= 0;i--) { //start
    if (!eksited) {
      Boks Boks = (Boks) bokses.get(i);
      Boks.tick();
      if(Boks.x <= width + 50){
        Boks.render();
      }
      if (Boks.x < -25) {
        bokses.remove(i);
      }
      if(abs(mouseX - Boks.x) <= 25 && abs(mouseY - Boks.y) <= 25){
        fill(255);
        //println(i);
        Boks.render();
      }
      if (abs(x - Boks.x) < 50) {
        if (yb <= 0) {
          if (abs(y - Boks.y) < 49 || abs(y - Boks.y) < 49) {
            if(eksiter){
            eksit();
            eksited = true;
            }
          }
        }
        if (yb == 0 && abs(y - Boks.y) < 50) {
          if(eksiter){
          eksit();
          eksited = true;
          }
        }
        if (yb == 0 && abs(Boks.y - y) < 50 && abs(x - Boks.x) < 50) {
          if(eksiter){
          eksit();
          eksited = true;
          }
        }
        if (y == Boks.y) {
          if(eksiter){
          eksit();
          eksited = true;
          }
        }
      }
      if (abs(x - Boks.x) < 50) {
        if (Boks.y == y) {
          if(eksiter){
          eksit();
          eksited = true;
          }
        }
        if (y + 25 > Boks.y - 25) {
          if (y < Boks.y || y - Boks.y > 50) {
            if (pyp + 25 <= Boks.y - 25) {
              y = Boks.y - 50;
              yb = 0;
              rot = 0;
              dorotation = false;
              if (keyPressed && key == ' ' || key == CODED && keyCode == UP && keyPressed) {
                yb = -jump;// * 10.0f / tickspeed;
                t = frameCount;
              }
            }
          }
          else {
            if(eksiter){
            eksit();
            eksited = true;
            }
          }
        }
      }

      if (yb == 0 && abs(Boks.y - y) < 50 && abs(x - Boks.x) < 50) {
        if(eksiter){
        eksit();
        eksited = true;
        }
      }
    }
  }
  //end
  stroke(255);

  line(0, linie + 1, width * 2, linie + 1);
  if (keyPressed) {
    if (key == ' ' && y == linie - ygros/2  || key == CODED && keyCode == UP && y == linie - ygros/2) {
      yb = -jump;// * 10.0f / tickspeed;
      t = frameCount - freim;
    }
  }
  fill(255, 100, 0);
  stroke(0);
  pushMatrix();
  translate(x, y);

  if (y != linie - ygros / 2) {
    rot += TWO_PI / 105;
    if (dorotation) {
      rotate(rot);
    }
  }
  rect(0, 0, xgros, ygros);
  popMatrix();

  pmillis = millis();
  pyp = y;
  //if (cmov) {
  //  if (frameCount / 2 == round(frameCount / 2)) {
  //    mm.addFrame();
  //  }
  //  if (mousePressed) {
  //    mm.finish();
  //    exit();
  //  }
  //}
  if (frameCount % 100 == 0);
  //saveFrame();
  pmousePressed = mousePressed;
}
void eksit() {
  tcounter = prevc;
  player.rewind();
  player3.rewind();
  counter = 0;
  freim = frameCount;
  if(practice){
    ///counter = prevc;
    
  }
  for (int i = trians.size()-1;i >= 0;i--) {
    Trian Trian = (Trian) trians.get(i);
    trians.remove(i);
  }
  for (int i = bokses.size()-1;i >= 0;i--) {
    Boks Boks = (Boks) bokses.get(i);
    bokses.remove(i);
  }
  bokses = new ArrayList();
  trians = new ArrayList();
}
void mousePressed(){
  println(frameCount - freim);
}
void keyPressed(){
    if(keyPressed && key == 's' || key == 'S'){
    level2 = !level2;
    player.rewind();
    player2.rewind();
    freim = frameCount;
    bokses = new ArrayList();
    trians = new ArrayList();
  }
}

