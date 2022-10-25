# singleton_counter

Singleton Example

## factory

```
class Foo {
  Foo._internal() {
    // initalized one time
    print('Foo initialized!!');
  }

  static final Foo _instance = Foo._internal();

  factory Foo() {
    return _instance;
  }
  
  ...
}

```
