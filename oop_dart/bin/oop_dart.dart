import 'package:oop_dart/oop_dart.dart' as oop_dart;

//writing the encapsulation code

class Box {
  int __size;

  Box(this.__size);

  //define getter for controlled access

  int get size => __size;

  // define setter to change private instance

  set size(int val) {
    if (val > 0) {
      __size = val;
    } else {
      print("eror");
    }
  }

  void calculateVolume() {
    print("Volume: ${size * size * size}");
  }
}

class Animal {
  String name;

  String sound;

  Animal(this.sound, this.name);

  void animalSound() {
    print("make a loud sound");
  }
}

//inheritance code

class Dog extends Animal {
  String color;

  Dog(String name, String sound, this.color) : super(sound, name);

  void dogSound() {
    print("Dog is barking");
  }
}

//polymorphism code

class Faculty {
  void numberOfOffices(String name) {
    print("Number of offices in $name is 67");
  }
}

class Department extends Faculty {
  int num;

  Department(this.num);

  @override
  void numberOfOffices(String name) {
    print("Number of offices in $name is  $num");
  }
}

class Adminoffice extends Faculty {
  int num;

  Adminoffice(this.num);

  @override
  void numberOfOffices(String name) {
    print("Number of offices in $name is $num");
  }
}

// abstraction code

abstract class Trafficlight {
  // abstarct method

  void printColor();

//concrete method

  void myTrafficLight() {
    print("traffic light holder of color");
  }
}

class Redlight extends Trafficlight {
  String color;

  Redlight(this.color);

  @override
  void printColor() {
    print("yellow light $color");
  }
}

void main(List<String> arguments) {
  print('Hello world: ${oop_dart.calculate()}!');

// let us showcase encapsulation

// demonstarte inheritance
  Box box = Box(4);

  print(box.size);

  box.size = 56;

  box.calculateVolume();

  Dog dog = Dog("mark", "bark", "white");

  dog.animalSound();
  dog.dogSound();

//  to demonstarte polymorphism

  Faculty science = Faculty();
  Department mathematics = Department(45);
  Adminoffice office_1 = Adminoffice(10);
  science.numberOfOffices("Science");
  mathematics.numberOfOffices("Mathematics");
  office_1.numberOfOffices("Office 1");

//to demonstarte absraction

  Redlight myLight = Redlight("yellow");

  myLight.printColor();
}
