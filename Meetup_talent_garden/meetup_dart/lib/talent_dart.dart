
void main(List<String> arguments) {

  //0. ### Hello World
  print('Hello Krypton!');

  //##########################################

  //1. ### Data types
  String heroName = 'Flash';
  bool hasPowers = true;
  int age = 30;
  double speedForce = 299.792;
  List<String> justiceLeague = ['Flash', "Superman", "Wonder Woman", "Batman"];
  Map<int,String> favouriteHero2 = {
    1: "Flash",
    2: "Superman",
    3: "Green Lantern"
  };
  Set<String> theFlash = {"Barry Allen", "Jay Garrick", 'Wally West'};

  // Better use
  var flashName = "Barry Allen";

  //##########################################

  //2. ### Methods
  tellYourNemesysWithType("Reverse Flash");
  tellYourNemesysWithoutType("Joker");
  tellYourNemesysShort("Lex Luthor");

  //##########################################

  //3. ### Classes
  var flash = Hero("The Flash", "Speed", true);
  var batman = Hero.short("Batman", "Money", false);
  var superman = Hero.long("Superman", "Strenght", false);
  var greenLantern = Hero.named(power: "power ring", name: "Hal Jordan", favourite: true);

  // Call method in classes
  flash.greet();

//##########################################

  //4. ### final vs const
  const batmanCity = "Gotham";
  final supermanCity = "Metropolis";

}

//##########################################

void tellYourNemesysWithType(String name){
  print("My worst enemy is $name");
}

tellYourNemesysWithoutType(name){
  print("My worst enemy is $name");
}

void tellYourNemesysShort(String name) => print("My worst enemy is $name");

//##########################################

class Hero {
  var name;
  var power;
  var favourite;

  Hero(this.name, this.power, this.favourite);

  Hero.short(this.name, this.power, this.favourite);

  Hero.long(String name, String power, bool favourite){
    this.name = name;
    this.power = power;
    this.favourite = favourite;
  }

  Hero.named({this.name, this.power, this.favourite});

  void greet() {
    print("Hi, I'm $name!");
  }
}
