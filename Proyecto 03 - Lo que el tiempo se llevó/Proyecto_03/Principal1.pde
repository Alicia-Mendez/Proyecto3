class Principal1 implements Principal {
  int n;
  
  void display() {
    switch(this.n) {
    case 0:
      inicio();
      break;
    case 1:
      seleccion1();
      break;
    case 2:
      seleccion2();
      break;
    case 3:
      instrucciones();
      break;
    case 4:
      pelea();
      break;
    case 5:
      fin();
      break;
    }
  }
  
  void teclado() {
    if (n == 0 && keyCode == ENTER) {
      n = 1;
    }
    if (n == 3 && keyCode == ENTER) {
      n = 4;
    }
    if (n == 5 && keyCode == ENTER) {
      n = 0;
      mana1 = 0;
      mana2 = 0;
      vida = 160;
      defensa1 = 160;
      defensa2 = 160;
    }
  }

  void inicio() {
    imageMode(CENTER);
    image(fondo1, width/2, height/2);
  }
  
  void seleccion1() {
    imageMode(CENTER);
    image(fondo2, width/2, height/2);

    if (keyPressed) {
      switch(key) {
      case 'a' | 'A':
        jugador1 = magritte;
        mana1 = 0;
        n = 2;
        break;
      case 's'| 'S':
        jugador1 = mucha;
        mana1 = 1;
        n = 2;
        break;
      case 'd'| 'D':
        jugador1 = boticelli;
        mana1 = 2;
        n = 2;
        break;
      case 'f'| 'F':
        jugador1 = warhol;
        mana1 = 3;
        n = 2;
        break;
      case 'g'| 'G':
        jugador1 = gogh;
        mana1 = 4;
        n = 2;
        break;
      }
    }
  }

  void seleccion2() {
    imageMode(CENTER);
    image(fondo3, width/2, height/2);

    if (keyPressed) {
      switch(key) {
      case 'h' | 'H':
        jugador2 = magritte;
        mana2 = 0;
        n = 3;
        break;
      case 'j'| 'J':
        jugador2 = mucha;
        mana2 = 1;
        n = 3;
        break;
      case 'k'| 'K':
        jugador2 = boticelli;
        mana2 = 2;
        n = 3;
        break;
      case 'l'| 'L':
        jugador2 = warhol;
        mana2 = 3;
        n = 3;
        break;
      case 'ñ'| 'Ñ':
        jugador2 = gogh;
        mana2 = 4;
        n = 3;
        break;
      }
    }
  }

  void instrucciones() {
    imageMode(CENTER);
    image(fondo4, width/2, height/2);
  }

  void pelea() {
    imageMode(CENTER);
    image(fondo5, width/2, height/2);
    pushMatrix();
    scale(0.5);
    image(jugador1, 655, 470);
    popMatrix();

    pushMatrix();
    scale(0.5);
    image(jugador2, 1530, 470);
    popMatrix();

    mana();
    vida();
    turnos();

    if (defensa1<=0) {
      n = 5;
    }
    if (defensa2<=0) {
      n = 5;
    }
  }

  void fin() {
    imageMode(CENTER);
    image(fondo6, width/2, height/2);
    
    premios();
    
  }
  
  void mana() {
    //JUGADOR1
    switch(mana1) {
    case 0:
      ataque1 = 40;
      turno1 = 0;
      vida1 = 0;
      break;
    case 1:
      ataque1 = 30;
      turno1 = 0;
      vida1 = 1;
      break;
    case 2:
      ataque1 = 25;
      turno1 = 0;
      vida1 = 2;
      break;
    case 3:
      ataque1 = 30;
      turno1 = 0;
      vida1 = 3;
      break;
    case 4:
      ataque1 = 40;
      turno1 = 0;
      vida1 = 4;
      break;
    }

    //JUGADOR2
    switch(mana2) {
    case 0:
      ataque2 = 40;
      turno2 = 1;
      vida2 = 0;
      break;
    case 1:
      ataque2 = 30;
      turno2 = 1;
      vida2 = 1;
      break;
    case 2:
      ataque2 = 25;
      turno2 = 1;
      vida2 = 2;
      break;
    case 3:
      ataque2 = 30;
      turno2 = 1;
      vida2 = 3;
      break;
    case 4:
      ataque2 = 40;
      turno2 = 1;
      vida2 = 4;
      break;
    }
  }

  void vida() {
    //DEF1
    switch(vida1) {
    case 0:
      noStroke();
      fill(cuadro);
      rect(250, 30, defensa1, 30);
      break;
    case 1:
      noStroke();
      fill(cuadro);
      rect(250, 30, defensa1, 30);
      break;
    case 2:
      noStroke();
      fill(cuadro);
      rect(250, 30, defensa1, 30);
      break;
    case 3:
      noStroke();
      fill(cuadro);
      rect(250, 30, defensa1, 30);
      break;
    case 4:
      noStroke();
      fill(cuadro);
      rect(250, 30, defensa1, 30);
      break;
    }

    //DEF2
    switch(vida2) {
    case 0:
      noStroke();
      fill(cuadro);
      rect(695, 30, defensa2, 30);
      break;
    case 1:
      noStroke();
      fill(cuadro);
      rect(695, 30, defensa2, 30);
      break;
    case 2:
      noStroke();
      fill(cuadro);
      rect(695, 30, defensa2, 30);
      break;
    case 3:
      noStroke();
      fill(cuadro);
      rect(695, 30, defensa2, 30);
      break;
    case 4:
      noStroke();
      fill(cuadro);
      rect(695, 30, defensa2, 30);
      break;
    }
  }

  void turnos() {
    //Turno
    switch(turno) {
    case 0:
      if (keyPressed) {
        if ((key == 'a')||(key == 'a')) {
          defensa2 = defensa2 - ataque1;
          turno = 1;
        }
      }
      break;
    case 1:
      if (keyPressed) {
        if ((key == 'ñ')||(key == 'ñ')) {
          defensa1 = defensa1 - ataque2;
          turno = 0;
        }
      }
      break;
    }
  }

  void premios() {
    if ((defensa1<=0)&&(mana2==0)) {
      pushMatrix();
      scale(0.5);
      image(jugador2, 960, 435);
      image(manzana, 1200, 500);
      popMatrix();
      n = 5;
    }
    if ((defensa1<=0)&&(mana2==1)) {
      pushMatrix();
      scale(0.5);
      image(jugador2, 960, 435);
      image(lentes, 1200, 510);
      popMatrix();
      n = 5;
    }
    if ((defensa1<=0)&&(mana2==2)) {
      pushMatrix();
      scale(0.5);
      image(jugador2, 960, 435);
      image(pincel, 1200, 520);
      popMatrix();
      n = 5;
    }
    if ((defensa1<=0)&&(mana2==3)) {
      pushMatrix();
      scale(0.5);
      image(jugador2, 960, 435);
      image(cambells, 1200, 500);
      popMatrix();
      n = 5;
    }
    if ((defensa1<=0)&&(mana2==4)) {
      pushMatrix();
      scale(0.5);
      image(jugador2, 960, 435);
      image(oreja, 1200, 510);
      popMatrix();
      n = 5;
    } 

    if ((defensa2<=0)&&(mana1==0)) {
      pushMatrix();
      scale(0.5);
      image(jugador1, 960, 435);
      image(manzana, 1200, 500);
      popMatrix();
      n = 5;
    }
    if ((defensa2<=0)&&(mana1==1)) {
      pushMatrix();
      scale(0.5);
      image(jugador1, 960, 435);
      image(lentes, 1200, 510);
      popMatrix();
      n = 5;
    }
    if ((defensa2<=0)&&(mana1==2)) {
      pushMatrix();
      scale(0.5);
      image(jugador1, 960, 435);
      image(pincel, 1200, 520);
      popMatrix();
      n = 5;
    }
    if ((defensa2<=0)&&(mana1==3)) {
      pushMatrix();
      scale(0.5);
      image(jugador1, 960, 435);
      image(cambells, 1200, 500);
      popMatrix();
      n = 5;
    }
    if ((defensa2<=0)&&(mana1==4)) {
      pushMatrix();
      scale(0.5);
      image(jugador1, 960, 435);
      image(oreja, 1200, 510);
      popMatrix();
      n = 5;
    }
  }
}
