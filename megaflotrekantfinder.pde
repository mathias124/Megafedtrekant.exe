ArrayList<elPunkt> punktListe = new ArrayList<elPunkt>();//her skabes der en arrayListe som kan holde samlet antal punkter, hvor der er 3 styks.
ArrayList<line> lineListe = new ArrayList<line>();//her skabes der en arrayListe for antal lister, til de givne antal punkter.
void setup () {
  size(600, 600);
  background(34,139,34);//giver en chill background imens man skal se sin flotte trekant.
  punkterne();//dette gør så programmet kører 1 gang, og ikke 60 gange i sekunder som i void draw.
  linjerne();
 
}

void punkterne() {//dette kører kun 1 gang istedet for 60fps, da det er sat under void setup, ved "punkterne();".

  for (int i =0; i<3; i =i+1) {//her er der et for-loop som er med til at skabe de 3 punkter, som forsætter indtil den kører til 3.
    punktListe.add(new elPunkt(13, 13));//her adder det et nyt punkt på listen af arrayet.
    fill(51,255,255);//ved ikke hvorfor kun 2 af punkterne bliver blå.
  }
}

void linjerne () {
  elPunkt hukommelsePunkt = punktListe.get(2);//her har jeg valgt at kalde den hukommelsepunkt som giver den et short memory, til at refere tilbage til punktet.
  for (int e =0; e<3; e =e+1) {//her er igen et for-llop dog bare for linjerne.
    punktListe.get(e);
    elPunkt hu = punktListe.get(e);
    lineListe.add(new line(hu.positionX,hu.positionY,hukommelsePunkt.positionX,hukommelsePunkt.positionY));//her indtaste jeg værdierne som linje skal kunne følge efter den eksakste punktværdi og huske det.

    lineListe.add(new line(hu.positionX, hu.positionY,hukommelsePunkt.positionX,hukommelsePunkt.positionY));
    
    lineListe.add(new line(hu.positionX,hu.positionY,hukommelsePunkt.positionX,hukommelsePunkt.positionY));//gør dette 3 gange da 3 linjer skal laves. til hver punkt.
     
    hukommelsePunkt= hu;//dette fortegnes til et short-cut da vi programmører er meget dovne.
     
  }
  
}
////////////////////////////////////////////////////
//dette indikere end klasse
class line {//dette skaber en class der fortæller objektorienteret hvad klassen line indeholder, og dens egenskaber.
  
    float startPosX, startPosY;
 float slutPosY,slutPosX;
  
  line(float startPosX, float startPosY,float slutPosX,float slutPosY){
    line(startPosX,startPosY,slutPosX,slutPosY);
    
  }
  
  
    
  }
  /////////////////////////////////////////////////////
  //dette indikere en klasse.
  class elPunkt{//dette er en klasse der indeholder alle punkternes egenskaber, og fortæller hvad den skal, hvor bla. en random funktion er en af egenskaberne.
  
  float positionX,positionY;
  float vardi1, vardi2;
  elPunkt(int storrelse1, int storrelse2){//her angives der width og height til den givne punkt.
    
    positionX = int (random(0,600)); positionY=int (random(0,600));
    vardi1 = storrelse1; vardi2=storrelse2;
  ellipse(positionX,positionY,storrelse1,storrelse2);
  }
  }
 
