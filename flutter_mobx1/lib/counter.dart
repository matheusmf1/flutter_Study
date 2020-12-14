import 'package:mobx/mobx.dart';

part 'counter.g.dart';

class Counter = _Counter with _$Counter;

abstract class _Counter with Store {
  // Counter() {
  //   increment = Action(_increment);
  // }

// Listener
  // Observable _count = Observable(0);

  // int get count => _count.value;

// Acao a ser tomada de acordo com o listener
  // Action increment;

  // void _increment() {
  //   _count.value++;
  // }

// The same as the listener
  @observable
  int count = 0;

// The same as the action
  @action
  void increment() => count++;
}
