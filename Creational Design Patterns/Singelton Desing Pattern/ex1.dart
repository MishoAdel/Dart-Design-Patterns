// 1. Create a Singleton implementation which will generate a sequence of numbers to the callers.
//     a. The idea here is that there is only a single number/sequence generator and all the numbers follow a perfect sequence.
//     b. So when we do a call to the generator like getNextNumber() we should get the next number in the sequence no matter how we obtained the generator.
// 2. Make that implementation both with eager-instantiation and with
// lazy-instantiation.
//     a. Which one would you prefer to use and why?

abstract class Singelton {
  Singelton._privateConstructor();
}

class NumGen extends Singelton {
  NumGen._privateConstructor() : super._privateConstructor();

  static final NumGen _instance = NumGen._privateConstructor();

  int _sequence = 0;

  factory NumGen() {
    return _instance;
  }

  getNextNumber() {
    _sequence++;
    return _sequence;
  }
}

main() {
  NumGen numGen1 = NumGen();
  print(numGen1.getNextNumber());
  NumGen numGen2 = NumGen();
  print(numGen2.getNextNumber());
}
