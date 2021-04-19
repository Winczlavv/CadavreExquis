PFont police;
PFont police2;
PFont police3;
PFont police5;
PImage accueil;
int debut;
int indexsujet;
int indexnom;
int indexnom2;
int indexcc;
int indexverbe; 
int indexverbe2; 
int indexcod;
int indexcod2;
int doublechange;
int easteregg;
int blockee;
String[] sujet = { "Un chirurgien ", "Un orang-outang", "Un dresseur de chevaux", "Un testeur de produits pharmaceutiques", 
  "Diego Maradona", "Kylian Mbappé", "Un ornithorynque ", "Un pokémon ", "Le pickpocket le plus connu de Paris", "Un savant fou", 
  "Un surveillant tyrannique", "Le roi", "Un policier", "Un chinois avec une main en moins", "Johnny Halliday", "Ghandi", "The Rock", 
  "Un condamné à mort ", "Le Minotaure", "Le professeur principal d'une école maternelle", "Bilal Hassani", "Moïse", "Tom Cruise", 
  "Jawad", "Mickey Mouse", "Un Vélociraptor violet", "Zeus", "Le Dalaï-lama", "Le prof de maths", "Le panda du zoo de Beauval", "Le préfet", "Une autruche"};

String[] verbe = { "trouve ", "cherche", "mange", "achète", "voit", "frappe", "dessine", "examine", "se déguise en", "tond", 
  "suspend", "digère", "agresse", "agrafe", "coupe en rondelles", "efface", "touille ", "insulte", "imite", "apporte", "coupe en deux", 
  "invite", "empoisonne", "lave", "brosse", "vole", "prie", "occit", "repasse", "pond", "loue", "écartèle", "crache sur", "étouffe", 
  "demande en mariage", "plie un canapé sur", "installe un ordinateur pour", "est en admiration devant", "matraque", "soulève", 
  "mord", "coud", "espionne", "attaque en justice", "cambriole", "arnaque", "fricote avec", "joue au bridge avec", "fait du curling avec", "tricote un pull pour"};

String[] nom = { "un chirurgien ", "un orang-outang", "un dresseur de chevaux", "un testeur de produits pharmaceutiques", 
  "Diego Maradona", "Kylian Mbappé", "un ornithorynque agonisant", "un pokémon de type eau", "le pickpocket le plus connu de Paris", 
  "un savant fou", "un surveillant tyrannique", "le roi", "un policier", "un chinois avec une main en moins", "Johnny Halliday", "Ghandi", 
  "The Rock", "un condamné à mort ", "le Minotaure", "le professeur principal d'une école maternelle", "Bilal Hassani", "Moïse", 
  "Tom Cruise", "Jawad", "Mickey Mouse", "un Vélociraptor violet", "Zeus", "le prof de maths", "le Dalaï-lama", "le panda du zoo de Beauval", "le préfet"};

String[] cc= {"à la plage", "dans le CDI", "dans la cuisine", "à Stratford", "sur la Tour Eiffel", "à côté de la poubelle", 
  "sous l'armoire", "dans le frigo", "sur l'arbre", "dans le frigo", "sur l'arbre", "en Corée du Nord", "dans la petite ville d'Antony", 
  "à la télé", "chez Darty", "dans un lit", "en Iran", "à Lyon", "chez son âme soeur", "sous le bureau", "dans le bureau du directeur", 
  "à la cantine", "dans les vestiaires", "dans sa tombe", "dans un batiment religieux", "sur le balcon", "devant sa mère", "dans son classeur", 
  "dans son téléphone", "chez Vladimir", "chez le boulanger", "en salle d'accouchement", "dans la salle d'attente", "chez le dentiste", 
  "dans le bureau du maire", "en Corse", "sur un catamaran", "dans la salle de ping-pong", "au club enfants", "sur le pas de tir du tir à l'arc", 
  "au théâtre", "face à son ex", "lors d'un diner aux chandelles", "lors du bal de promo", "pendant l'alarme incendie", "le jour de la fin du monde", 
  "pendant un RDV amoureux", "pendant un entretien d'embauche", "au coucher du soleil", "le jour de son mariage", "à son enterrement", "pendant le récréation", 
  "en Bretagne", "pendant un cours de civilisation", "dans l'enclos des cochons"};

String[] cod = { "sa mère ", "une boîte de clous", "des hirondelles", "des crabes ", "son escargot de compagnie", "sa pochette à élastique", 
  "une montre", "de la chair humaine", "une baguette de pain", "son ex", "un bébé", "sa dignité", "son chanteur préféré", "sa femme", "un origami", 
  "sa bouteille de soda", "un livre de 1200 pages", "son ardoise ", "son carnet de correspondance", "sa banane", "son bonsaï", "une armoire", 
  "son directeur", "son prof", "une de ses copines", "sa casquette", "un couteau de cuisine", "une planche de bois", "un crayon à papier","une autruche unijambiste",
  "sa trousse", "son meilleur ami", "son père", "un meuble Ikéa", "un tableau contrefait de Picasso"};

void setup() {
  size(700, 700);
  background(0);
  debut=0;
  police = loadFont("JasmineUPCBold-50.vlw");
  police2 = loadFont("JasmineUPCBold-50.vlw");
  police3 = loadFont("TempusSansITC-70.vlw");
  police5 = loadFont("Rockwell-Bold-70.vlw");
  accueil= loadImage("accueil.png");
};

void draw() {
  if ( debut==0 ) {
    regles();
  }
  if (key==' ' && debut==0 && blockee==1) {
    debut=1;
  }  
  if (debut==1) {
    avant();
  };
  if (key==ENTER && debut==1 && blockee==1) {
    debut=2;
  }
  if (debut==2) {
    debut=3;
    jouer();
  }
  if (key==BACKSPACE && debut==3 && blockee==1) { 
    debut=4;
  }
  if (debut==4) { 
    avant();
  }
  if (doublechange==1) {
    jouer2();
    doublechange=0;
  }
  if (doublechange==2) {
    jouer();
    doublechange=0;
  }
  if (easteregg==1) {
    blockee=0;
  }
  if (blockee==0) {
    eastereggquevousallezprobablementremarquer();
  }
  if (key=='a'  && blockee==0) { 
    finish();
  }
}
void regles() {
  debut=0;  
  blockee=1;
  background(255);
  fill(0);
  textAlign(CENTER);
  textFont(police5, 70);
  text("Bienvenue!", 350, 100);
  textFont(police, 40);
  text("Le concept est simple:", 350, 300); 
  text("l'odinateur va tirer au hasard plusieurs types de mots", 350, 350); 
  text("dans de nombreuses listes, et va les mettre bout à bout:", 350, 400); 
  text("ce qui donne une phrase...", 350, 450); 
  textFont(police2, 55);
  text("originale!", 350, 500); 
  textFont(police5, 55);
  text("Press SPACE to begin", 350, 600);
};


void avant() {
  debut=1;
  doublechange=0;
  fill(0);
  background(255);
  textAlign(CENTER);
  image(accueil, 150, 90);
  textFont(police5, 40);
  text("Press ENTER to begin", 350, 450);
  stroke(0);
  strokeWeight(5);
  line(0, 70, 1000, 70);
  textFont(police2, 40);
  text("par Dylan Li, Paul Lurin, Mathilde Moraud,", 350, 30);
  text(" Paul Moronvalle, Kani Saedi et Estelle Wang", 350, 60);
  textFont(police3, 80);
  text("Le cadavre exquis", 350, 600);
  blockee=1;
};

void jouer() {
  blockee=1;
  int indexsujet = int(random(sujet.length));
  int indexnom = int(random(nom.length));  
  int indexnom2 = int(random(nom.length)); 
  int indexcc = int(random(cc.length));
  int indexverbe = int(random(verbe.length));
  int indexverbe2 = int(random(verbe.length));
  int indexcod = int(random(cod.length));
  int indexcod2 = int(random(cod.length)); 
 if (indexverbe==indexverbe2 && indexnom==indexnom2 && indexcod==indexcod2 ) {
    easteregg=1;
  }
  if (indexnom==indexnom2 ||indexverbe==indexverbe2||indexnom==indexsujet||indexnom2==indexsujet||indexcod==indexcod2) {
    doublechange=1;
  }
  background(0);
  fill(255);
  textAlign(CENTER);
  textFont(police, 40);
  text(sujet[indexsujet], 350, 150);
  text(verbe[indexverbe], 350, 200);
  text(nom[indexnom], 350, 250);
  text(cc[indexcc], 350, 300);
  text("avec", 350, 350);
  text(cod[indexcod], 350, 400);
  text("quand tout à coup", 350, 450);
  text(nom[indexnom2], 350, 500);
  text(verbe[indexverbe2], 350, 550);
  text(cod[indexcod2], 350, 600);
  stroke(255);
  strokeWeight(5);
  line(0, 70, 1000, 70);
  textFont(police2, 40);
  text("par Dylan Li, Paul Lurin, Mathilde Moraud,", 350, 30);
  text(" Paul Moronvalle, Kani Saedi et Estelle Wang", 350, 60);
  textFont(police5, 42);
  text("Press BACKSPACE to do again!", 350, 670);
}

void jouer2() {
  blockee=1;
  int indexsujet = int(random(sujet.length));
  int indexnom = int(random(nom.length));  
  int indexnom2 = int(random(nom.length)); 
  int indexcc = int(random(cc.length));
  int indexverbe = int(random(verbe.length));
  int indexverbe2 = int(random(verbe.length));
  int indexcod = int(random(cod.length));
  int indexcod2 = int(random(cod.length));
  if (indexnom==indexnom2 &&indexverbe==indexverbe2 && indexnom==indexsujet && indexnom2==indexsujet && indexcod==indexcod2 ) {
    easteregg=1;
  }
  if (indexnom==indexnom2 ||indexverbe==indexverbe2||indexnom==indexsujet||indexnom2==indexsujet||indexcod==indexcod2) {
    doublechange=2;
  }
  background(0);
  fill(255);
  textAlign(CENTER);
  textFont(police, 40);
  text(sujet[indexsujet], 350, 150);
  text(verbe[indexverbe], 350, 200);
  text(nom[indexnom], 350, 250);
  text(cc[indexcc], 350, 300);
  text("avec", 350, 350);
  text(cod[indexcod], 350, 400);
  text("quand tout à coup", 350, 450);
  text(nom[indexnom2], 350, 500);
  text(verbe[indexverbe2], 350, 550);
  text(cod[indexcod2], 350, 600);
  stroke(255);
  strokeWeight(5);
  line(0, 70, 1000, 70);
  textFont(police2, 40);
  text("par Dylan Li, Paul Lurin, Mathilde Moraud,", 350, 30);
  text(" Paul Moronvalle, Kani Saedi et Estelle Wang", 350, 60);
  textFont(police5, 42);
  text("Press BACKSPACE to do again!", 350, 670);
}

void eastereggquevousallezprobablementremarquer() {
  blockee=0;
  background(0);
  textAlign(CENTER);
  textFont(police, 40);
  text("you unlocked the ultimate Easter Egg!", 350, 150);
  text("now you have to answer an enigma", 350, 200);
  text("I am better that God", 350, 250);
  text("I am worst than the evil", 350, 300);
  text("Rich people need me", 350, 350);
  text("Poor people have me", 350, 400);
  text("If you eat me, you die", 350, 450);
  textFont(police, 50);
  text("good luck!", 350, 510);
  textFont(police5, 20);
  text("press A to see the answer!", 500, 650);
}

void finish() {
  blockee=2;
  background(0);
  textAlign(CENTER);
  textFont(police5, 60);
  text("NOTHING", 350, 500);
  textFont(police5, 42);
  text("Press ESCAPE to do again!", 350, 650);
}
