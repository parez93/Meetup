
void main(List<String> arguments) {

  // 1. I tipi
  String heroName = "Flash";
  bool hasPowers = true;
  int age = 30;
  double speedForce = 299.792;  //km/s

  List<String> justiceLeague = ["Flash", "Superman", "Wonder Woman", "Batman"];

  Map<String, String> favouriteHero = {
    "first": "Flash",
    "second": "Superman",
    "third": "Green Lantern",
  };

  Map<int, String> favouriteHero2 = { // posso usare come chiave anche gli interi o quello che voglio
    1: "Flash",
    2: "Superman",
    3: "Green Lantern",
  };

  Set<String> theFlash = {"Barry Allen", "Jay Garrick", "Wally West"};
  theFlash.add("Barry Allen"); // non viene aggiunto perche è un Set è una lista non ordinata di elementi unici.
  print(theFlash);

  // è una good-practice non definire esplicitamente il tipo ma usare var quando definisco le variabili
  // Questo perchè Dart è abbastanza furbo da capire il tipo
  var lanternName = "Hal Jordan";
  // questo cambia se definisci una variabile senza inizializzarla allora sarebbe bene informare Dart del tipo
  String anotherLanternName;
  anotherLanternName = "Kyle Rayner";


  // 2. Operazioni aritmetiche
  print(2 + 3 == 5);
  print(2 - 3 == -1);
  print(2 * 3 == 6);
  print(5 / 2 == 2.5); // divisione
  print(5 ~/ 2 == 2); // divisione che ritorna un int come risultato
  print(5 % 2 == 1); // modulo

  var greenLanternCorp, sinestroCorp;
  greenLanternCorp = 0;
  sinestroCorp = ++greenLanternCorp; // Increment greenLanternCorp before sinestroCorp gets its value.
  print(greenLanternCorp == sinestroCorp); // 1 == 1

  greenLanternCorp = 0;
  sinestroCorp = greenLanternCorp++; // Increment greenLanternCorp AFTER sinestroCorp gets its value.
  print(greenLanternCorp != sinestroCorp); // 1 != 0

  greenLanternCorp = 0;
  sinestroCorp = --greenLanternCorp; // Decrement greenLanternCorp before sinestroCorp gets its value.
  print(greenLanternCorp == sinestroCorp); // -1 == -1

  greenLanternCorp = 0;
  sinestroCorp = greenLanternCorp--; // Decrement greenLanternCorp AFTER sinestroCorp gets its value.
  print(greenLanternCorp != sinestroCorp); // -1 != 0


  print(2 == 2);
  print(2 != 3);
  print(3 > 2);
  print(2 < 3);
  print(3 >= 3);
  print(2 <= 3);

  // 3. Come chiamare le funzioni
  tellYourIdentityBatman("I'm Batman");
  tellYourIdentityFlash("Barry Allen");
  tellYourIdentityWonderWoman("Diana Prince");


  // 4. Condizioni e cicli
  var villain = "Reverse Flash";
  if(villain == "Cheeta"){
    print("Cheeta");
  } else if(villain == "Lex Luthor"){
    print("Lex Luthor");
  } else {
    print("Reverse Flash");
  }

  villain == "Reverse Flash" ? "Time travel" : "Not time travel";


  var villains = ["Joker", "Lex Luthor", "Cheeta", "Black Manta", "Sinestro"];
  for(var i = 0; i < 5; i++){
    print(villains[i]);
  }

  for(var v in villains){
    print(v);
  }

  villains.forEach((v) => print(v));


  // 4. Come chiamare le classi
  var flash = Flash();
  print(flash.name);
  
  var superman = Hero("Superman", "Invulnerability", false);
  var batman = Hero.justiceLeague("Batman", "investigation");
  var greenLantern = Hero.short("Green Lantern", "power ring", false);

  superman.doSomething("Metropolis", enemy: "Doomsday", peopleSaved: 100);
  superman.doSomething("Metropolis", enemy: "Luthor");


  // 5. Final & const
  var supermanCity = "Metropolis"; // Variabili reali possono cambiare, mentre final e const NO!

  // Indica che i valori sono constanti greenLanternCorp runtime.
  // As esempio un utente di un'app inserisce un valore che poi non cambia, ma tu non lo sai mentre scrivi il codice.
  final flashCity = "Central City";

  // Indica che i valori sono constati greenLanternCorp tempo di compilazione
  // Sono valori conosciuti mentre stai scrivendo il codice
  // Ad esempio del testo predefinito che tu vuoi mostrare all'utente.
  const batsCity = "Gotham";
}

// 3. Funzioni
void tellYourIdentityBatman(String name){
  print(name);
}

// Si possono omettere i tipi (anche se è consigliato metterli), Dart è in grado di capirlo
tellYourIdentityFlash(name){
  print(name);
}

// Per funzioni che contengono una sola espressione si può usare la versione accorciata
void tellYourIdentityWonderWoman(String name) => print(name);


// 4. Classi
// In Dart tutto è un oggetto
class Flash {
  var name = "Flash";
  var power = "speed";

  void greet() {
    print("Hi, I'm $name and I'm the fastest man alive!");
  }
}

class Hero {
  var name;
  var power;
  var isFavourite;
  
  Hero(String name, String power, bool isFavourite){
    this.name = name;
    this.power = power;
    this.isFavourite = isFavourite;
  }

  // Forma abbreviata del costruttore Hero(...)
  Hero.short(this.name, this.power, this.isFavourite);

  // Named constructor
  Hero.justiceLeague(String name, String power){
    this.name = name;
    this.power = power;
    this.isFavourite = true;
  }

  // Redirect al costruttore Hero(...)
  Hero.justiceLeagueShort(String name, String power) : this(name, power, true);

  // Uso di named arguments
  void doSomething(String city, {int peopleSaved = 0, String enemy}){
    print("In the city $city, ${this.name} saved $peopleSaved people by $enemy.");
  }

}
