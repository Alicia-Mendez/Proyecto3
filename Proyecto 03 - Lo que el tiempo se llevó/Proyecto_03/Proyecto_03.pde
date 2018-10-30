ArrayList <Principal> pantalla;

PImage fondo1;
PImage fondo2;
PImage fondo3;
PImage fondo4;
PImage fondo5;
PImage fondo6;

PImage magritte;
PImage mucha;
PImage boticelli;
PImage warhol;
PImage gogh;

PImage manzana;
PImage lentes;
PImage pincel;
PImage cambells;
PImage oreja;

PImage jugador1;
PImage jugador2;

int mana1;
int mana2;

int vida = 160;
int vida1;
int vida2;
int defensa1 = 160;
int defensa2 = 160;
int ataque1;
int ataque2;
int turno;
int turno1;
int turno2;

color cuadro = #EDE656;

void setup() {
  size(1100, 500);

  fondo1 = loadImage("001.png");
  fondo2 = loadImage("002.png");
  fondo3 = loadImage("003.png");
  fondo4 = loadImage("004.png");
  fondo5 = loadImage("005.png");
  fondo6 = loadImage("006.png");
  
  magritte = loadImage("magritte.png");
  mucha = loadImage("mucha.png");
  boticelli = loadImage("boticelli.png");
  warhol = loadImage("warhol.png");
  gogh = loadImage("gogh.png");
  
  manzana = loadImage("manzana.png");
  lentes = loadImage("lentes.png");
  pincel = loadImage("pincel.png");
  cambells = loadImage("cambells.png");
  oreja = loadImage("oreja.png");
  
  pantalla = new ArrayList <Principal>();
  pantalla.add(new Principal1());
}

void draw() {
  for (Principal p:pantalla){
    p.display();
  }
}

void keyPressed() {
  for (Principal p:pantalla){
    p.teclado();
  }
}
