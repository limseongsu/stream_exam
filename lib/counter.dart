import 'dart:async';

class Counter {
  int _counter = 0;
  final _counterStreamController = StreamController<int>();

  Stream<int> get counterStream => _counterStreamController.stream;

  void increment() {
    _counter++;
    _counterStreamController.add(_counter);
  }
}