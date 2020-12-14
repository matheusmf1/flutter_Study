import 'package:mobx/mobx.dart';

part 'list_todo_item_store.g.dart';

class ListTodoItemStore = _ListTodoItemStore with _$ListTodoItemStore;

abstract class _ListTodoItemStore with Store {

  // Gerenciamento de estado interno de uma tela, 
  //cada task tem o seu gerenciamento para poder ter o estado de feito ou nao 

  _ListTodoItemStore( this.title );

  final String title;

  @observable
  bool done = false;

  @action
  void toggleDone() => done = !done;


}