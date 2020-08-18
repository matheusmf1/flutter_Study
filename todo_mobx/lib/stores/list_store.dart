import 'package:mobx/mobx.dart';

import 'list_todo_item_store.dart';

part 'list_store.g.dart';

class ListStore = _ListStore with _$ListStore;

abstract class _ListStore with Store {

  @observable
  String newTodoTitle = "";

  @action
  void setNewTodoTitle( String value ) => newTodoTitle = value; 

  @computed
  bool get isFormValid => newTodoTitle.isNotEmpty;

  ObservableList<ListTodoItemStore> todoList = ObservableList<ListTodoItemStore>(); 

  @action
  void addTodo() { 
    todoList.insert( 0, ListTodoItemStore( newTodoTitle ) );
    newTodoTitle = "";
  } 

}