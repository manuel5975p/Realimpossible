void level() {
  if(counter == 1){
    player.rewind();
    player.loop();
    player2.pause();
    player3.pause();
  }
  if (counter == 95 || counter == 100 || counter == 104 || counter == 4 || counter == 20) {
    bokses.add(new Boks(900, 25));
  }
  if (counter == 24) {
    bokses.add(new Boks(900, 125));
  }
  if (counter == 104) {
    bokses.add(new Boks(900, 75));
    bokses.add(new Boks(900, 125));
  }
  if (counter == 3 || counter == 5 || counter == 13 || counter == 14 || counter == 30 || counter == 31 || counter == 32 || counter == 40 || counter == 41) {
    //bokses.add(new Boks(900,25));
    trians.add(new Trian(925,25));
  }
  if (counter == 28 || counter == 29 || counter == 30 || counter == 31 || counter == 32 ||counter == 33 || counter == 34) {
    bokses.add(new Boks(900, 200));
    if (counter == 30 || counter == 31 || counter == 32) {
      trians.add(new Trian(925,250));
    }
  }
  if (round(counter) == counter)
    //bokses.add(new Boks(900,76));
    if (counter == 50 || counter == 51 ||counter == 55 || counter == 69 || counter == 70 ||counter == 71 || counter == 109 || counter == 110 || counter == 111 || counter == 134 | counter == 135 || counter == 136)
      trians.add(new Trian(925,25));
  if (counter == 118 || counter == 124) {
    trians.add(new Trian(925,75));
    bokses.add(new Boks(900, 25));
  }
  if (counter == 133 || counter == 137) {
    bokses.add(new Boks(900, 25));
  }
  if (frameCount - freim == 150 * 10 ||counter == 155 ||counter == 156 ||counter == 157 ||counter == 158) {// || counter == 162.95){// || counter == 162 + 4.95 || counter == 162 + 9.9){
    bokses.add(new Boks(900, 75));
    trians.add(new Trian(925,25));
  }
  if (counter == 155 || counter == 156 || counter == 157 || counter == 158) {
    bokses.add(new Boks(900, 75));
    bokses.add(new Boks(900, 25));
  }
  if (counter == 161 || counter == 162 || counter == 163 || counter == 164) {
    trians.add(new Trian(925,25));
    //bokses.add(new Boks(900,75));
    //bokses.add(new Boks(900,25));
    //bokses.add(new Boks(900,125));
    bokses.add(new Boks(900, 175));
  }
  if (counter == 167 || counter == 168 || counter == 169 || counter == 170) {
    trians.add(new Trian(925,25));
    /*bokses.add(new Boks(900,75));
     bokses.add(new Boks(900,25));
     bokses.add(new Boks(900,125));
     bokses.add(new Boks(900,175));
     bokses.add(new Boks(900,225));*/
    bokses.add(new Boks(900, 275));
  }
  if (counter == 173 || counter == 174 || counter == 175 || counter == 176) {
    trians.add(new Trian(925,25));
    /*bokses.add(new Boks(900,75));
     bokses.add(new Boks(900,25));
     bokses.add(new Boks(900,125));
     bokses.add(new Boks(900,175));
     bokses.add(new Boks(900,225));
     bokses.add(new Boks(900,275));
     bokses.add(new Boks(900,325));*/
    bokses.add(new Boks(900, 375));
  }
  if (counter == 195 ||counter ==  199.95 || counter == 199.95 + 4.95 || counter == 200.95 + 4.95 || counter == 201.95 + 4.95) {
    bokses.add(new Boks(900, 25));
  }
  if (counter == 199.95 + 9 || counter == 205 + 9) {
    trians.add(new Trian(925,25));
    bokses.add(new Boks(900, 75));
    trians.add(new Trian(925,125));
  }
  if (counter == 222 || counter == 223 || counter == 224 || counter == 270) {
    bokses.add(new Boks(900, 75));
    trians.add(new Trian(925,25));
  }
  if (counter == 228 || counter == 229 || counter == 230 || counter == 231 || counter == 232 || counter == 267) {
    bokses.add(new Boks(900, 175));
    trians.add(new Trian(925,25));
  }
  if (counter == 236 || counter == 237 || counter == 238 || counter == 239 || counter == 235 || counter == 264) {
    bokses.add(new Boks(900, 275));
    trians.add(new Trian(925,25));
  }
  if (counter == 242 || counter == 243 || counter == 244 || counter == 245 || counter == 246 || counter == 261) {
    bokses.add(new Boks(900, 375));
    trians.add(new Trian(925,25));
  }
  if (counter == 249 || counter == 250 || counter == 251 || counter == 252 ||counter == 255 || counter == 256 || counter == 257 || counter == 258) {
    bokses.add(new Boks(900, 475));
    trians.add(new Trian(925,25));
  }
  if (counter == 252 || counter == 253 || counter == 254) {
    trians.add(new Trian(925,525));
    bokses.add(new Boks(900, 475));
    trians.add(new Trian(925,25));
  }
  if (counter == 202 + 9 || counter == 203 + 9 || counter == 204 + 9 || counter == 205 + 9) {
    bokses.add(new Boks(900, 75));
  }
  if (counter % 1 == 0 && counter >= 280 && counter <= 339) {
    trians.add(new Trian(925,25));
  }
  if (counter == 280 || counter == 281 || counter == 282) {
    bokses.add(new Boks(900, 75));
  }
  if (counter == 285 || counter == 286 || counter == 287 || counter == 294 ||counter == 299 || counter == 304 || counter == 309 || counter == 325 || counter == 330) {
    bokses.add(new Boks(900, 175));
  }
  if (counter == 289 || counter == 290 || counter == 312 || counter == 317 || counter == 333 || counter == 339) {
    bokses.add(new Boks(900, 125));
  }
  if (counter == 320.5 || counter == 321.5 || counter == 322.5 || counter == 336) {
    bokses.add(new Boks(900, 225));
  }
  if (counter % 1 == 0 && counter > 383 && counter <= 600) {
    trians.add(new Trian(925,23));
  }


  if (counter == 501 || counter == 502 || counter == 503 || counter == 524.5) {
    trians.add(new Trian(925,325));
  }
  if (counter == 383 ||counter == 463.5 || counter == 468.5) {
    bokses.add(new Boks(900, 25));
  }
  if (counter == 387.5 || counter == 439 || counter == 444 || counter == 451 || counter == 456 || counter == 461 || counter == 473) {
    bokses.add(new Boks(900, 75));
  }
  if (counter == 392 || counter == 437 || counter == 448.5 || counter == 477.5 || counter == 484.5 || counter == 551 || counter == 552 || counter == 553 || counter == 554) {
    bokses.add(new Boks(900, 125));
  }
  if (counter == 396.5 || counter == 415.5 || counter == 420.5 || counter == 435 || counter == 482 || counter == 489 || counter == 548.5 || counter == 565 || counter == 566 || counter == 567) {
    bokses.add(new Boks(900, 175));
  }
  if (counter == 401 || counter == 408 || counter == 413 || counter == 425 || counter == 433 || counter == 494 || counter == 546 || counter == 556.5 || counter == 561.5 || counter == 562.5 || counter == 571.5) {
    bokses.add(new Boks(900, 225));
  }
  if (counter == 405.5 || counter == 429.5 || counter == 430.5 || counter == 431.5 || counter == 499 || counter == 500 || counter == 501 || counter == 502 || counter == 503 || counter == 504) {
    bokses.add(new Boks(900, 275));
  }
  if (counter == 505 || counter == 522 || counter == 524.5 || counter == 527 || counter == 532 || counter == 537 || counter == 543.5 || counter == 576 || counter == 593 || counter == 598) {
    bokses.add(new Boks(900, 275));
  }
  if (counter == 509.5 || counter == 514.5 || counter == 519.5 || counter == 541 || counter == 580.5 || counter == 585.5 || counter == 590.5) {
    bokses.add(new Boks(900, 325));
  }



  if (counter == 612 || counter == 613 || counter == 614 || counter == 636 || counter == 637 || counter == 638 || counter == 657 || counter == 658 || counter == 659) {
    trians.add(new Trian(925,25));
  }
  if (counter == 649 || counter == 650 || counter == 651 || counter == 652 || counter == 653) {
    bokses.add(new Boks(900, 25));
  }
  if (counter == 620 || counter == 621 || counter == 622 || counter == 626 || counter == 627 || counter == 628 || counter == 633 || counter == 634 || counter == 635 || counter == 643 || counter == 644 || counter == 645) {
    bokses.add(new Boks(900, 25));
  }
  if (counter == 647 || counter == 648 || counter == 654 || counter == 655 || counter == 656) {
    bokses.add(new Boks(900, 25));
    bokses.add(new Boks(900, 75));
    bokses.add(new Boks(900, 125));
  }

  if (counter == 670 || counter == 671 || counter == 672 || counter == 679 || counter == 680 || counter == 681 || counter == 688 || counter == 689) {
    bokses.add(new Boks(900, 25));
    bokses.add(new Boks(900, 75));
  }


  if (counter == 752 || counter == 825 || counter >= 836 && counter <= 839 && counter % 1 == 0) {
    bokses.add(new Boks(900, 25));
  }
  if (counter == 756.5 || counter == 829.5) {
    bokses.add(new Boks(900, 75));
    trians.add(new Trian(925,25));
  }
  if (counter == 761 || counter == 780 || counter <= 820 && counter >= 780 && counter % 1 == 0 || counter == 833 || counter == 834 || counter == 835 || counter == 840 || counter == 841) {
    bokses.add(new Boks(900, 125));
    trians.add(new Trian(925,25));
  }
  if (counter == 765.5 || counter == 772.5 || counter == 777.5 || counter == 790 || counter == 797) {
    bokses.add(new Boks(900, 175));
    trians.add(new Trian(925,25));
  }
  if (counter == 770 || counter == 790 || counter == 797) {
    bokses.add(new Boks(900, 225));
    trians.add(new Trian(925,25));
    if (counter < 770)
      trians.add(new Trian(925,175));
    trians.add(new Trian(925,25));
  }
  if (counter == 800) {
    trians.add(new Trian(925,25));
    bokses.add(new Boks(900, 325));
    trians.add(new Trian(925,175));
  }
  if (counter == 805.5) {
    trians.add(new Trian(925,25));
    bokses.add(new Boks(900, 375));
    trians.add(new Trian(925,175));
  }
  if (counter == 803 || counter == 811) {
    trians.add(new Trian(925,25));
    bokses.add(new Boks(900, 425));
    trians.add(new Trian(925,175));
  }
  if (counter == 820) {
    trians.add(new Trian(925,25));
    trians.add(new Trian(925,175));
  }
  if (counter == 836 || counter == 837 || counter == 838 || counter == 839) {
    trians.add(new Trian(925,75));
    trians.add(new Trian(925,25));
  }
  if (counter == 1) {
    bokses.add(new Boks(85 * 50, 25));
  }
  if (counter <= 357) {
    background(190, 190, 30);
  }
  else if (counter <= 399) {
    background(15, 15, 30);
  }
  else if (counter <= 396.8) {
    background(15, 15, 30);
  }
  else if (counter <= 728.0) {
    background(100, 0, 0);
  }
  else if (counter <= 752.0) {
    background(0, 0, 0);
  }
  else {
    background(30, 150, 0);
  }
}
void level2() {
  player.pause();
  int puller = 0;
  background(30,190,190);
  if (counter == 1) {
    player3.loop();
    XML xml = loadXML("daten.xml");
    //xml = xml.getChild(1);
    
    XML points = xml.getChild(1);
    XML trianer = xml.getChild(3);
    //XMLElement beider = xml.getChild(2);
    for (int i = 0; i < points.getChildCount(); i++) {
      XML punkt = points.getChild(i);
      if ((punkt+"").equals("")) continue;
      bokses.add(new Boks(punkt.getFloat("x") * 50 - puller - 25, punkt.getFloat("y")));
    }
    for (int i = 0; i < trianer.getChildCount(); i++) {
      XML trian = trianer.getChild(i);
      if ((trian+"").equals("")) continue;
      trians.add(new Trian(trian.getFloat("x") * 50 - puller - 25, trian.getFloat("y")));
    }
    /*for (int i = 0; i < beider.getChildCount(); i++) {
      XMLElement beides = beider.getChild(i);
      trians.add(new Trian(beides.getFloat("x") * 50 - puller, 25));
      bokses.add(new Boks(beides.getFloat("x") * 50 - puller - 25, beides.getFloat("y")));
    }*/
  }
  if(frameCount - freim >= 1740){
    translate(width / 2,height / 2);
    rotate(constrain((float)(frameCount - freim - 1740) / 20.0f,0,PI));
    translate(-(width / 2), -(height / 2));
  }
}

