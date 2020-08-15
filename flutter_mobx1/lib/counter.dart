import 'package:mobx/mobx.dart';

class Counter {

  Counter(){
    increment = Action(_increment);
  }

// Listener 
  Observable _count = Observable(0);

  int get count => _count.value;

// Acao a ser tomada de acordo com o listener
  Action increment;

  void _increment() {
    _count.value++;
  }
}