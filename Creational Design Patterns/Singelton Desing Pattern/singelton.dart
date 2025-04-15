// Singelton Design Pattern
// 1. Ensure that the class has only a single instance.
// 2. Provide easy global access to this instance.
// 3. Control how it is instantiated.
// 4. Any critical region must be entered serially.
class Singleton {
  static final Singleton _instance = Singleton._internal();

  Singleton._internal() {
    print('Creating an instance of Singleton');
  }
  factory Singleton() {
    return _instance;
  }

  log() {
    print('Him I am singelton');
  }

  //here you can methods as methods with listener
}

// better implementation
abstract class Singelton2 {
  Singelton2._privateConstructor();
}

class NewClass extends Singelton2 {
  NewClass._privateConstructor() : super._privateConstructor();

  static final NewClass _instance = NewClass._privateConstructor();

  factory NewClass() {
    return _instance;
  }

//methods
}

void main() {
  Singleton s1 = Singleton();
  s1.log();
  Singleton s2 = Singleton();
  s2.log();
}
