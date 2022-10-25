class NonSingletonCounter {
  NonSingletonCounter() {
    print('Non Singleton Counter initialized!!');
  }

  int count = 0;

  int add() => ++count;
}

class SingletonCounter {
  SingletonCounter._internal() {
    print('Singleton Counter initialized!!');
  }

  static final SingletonCounter _instance = SingletonCounter._internal();

  factory SingletonCounter() {
    return _instance;
  }

  int count = 0;

  int add() => ++count;
}
