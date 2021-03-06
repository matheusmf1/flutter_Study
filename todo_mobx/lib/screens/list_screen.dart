import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import 'package:todomobx/widgets/custom_icon_button.dart';
import 'package:todomobx/widgets/custom_text_field.dart';

import '../stores/login_store.dart';
import 'login_screen.dart';
import '../stores/list_store.dart';

class ListScreen extends StatefulWidget {

  @override
  _ListScreenState createState() => _ListScreenState();
}

class _ListScreenState extends State < ListScreen > {

  ListStore listStore = ListStore();

  final TextEditingController _textController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      resizeToAvoidBottomInset: false,
      body: Container(

        margin: const EdgeInsets.fromLTRB(20, 0, 20, 20),
          child: Column(
            children: < Widget > [

              Padding(
                padding: const EdgeInsets.fromLTRB(2, 40, 2, 10),
                  child: Row(

                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: < Widget > [

                      Text(
                        'Tarefas',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w900,
                          fontSize: 32
                        ),
                      ),

                      IconButton(
                        icon: Icon(Icons.exit_to_app),
                        color: Colors.white,
                        onPressed: () {
                          //Acessa pelo provider o login store
                          Provider.of<LoginStore>(context, listen: false).logout();

                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(builder: (context) => LoginScreen())
                          );
                        },
                      ),
                    ],
                  ),
              ),


              Expanded(
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  elevation: 15,
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                      child: Column(
                        children: < Widget > [

                          Observer(builder: (_) {

                            return CustomTextField(
                              hint: "Adicionar tarefa",
                              onChanged: listStore.setNewTodoTitle,
                              controller: _textController,

                              suffix: listStore.isFormValid ? CustomIconButton(
                                radius: 32,
                                iconData: Icons.add,

                                onTap: () {
                                  listStore.addTodo();
                                  _textController.clear();
                                }, 
                              
                              ) : null,
                            );
                          }),

                          const SizedBox(height: 8, ),
                            Expanded(

                              child: Observer(builder: (_) {
                                return ListView.separated(

                                  itemCount: listStore.todoList.length,
                                  itemBuilder: (_, index) {

                                    final todo = listStore.todoList[index];

                                    return Observer(builder: (_) {

                                      return ListTile(

                                        title: Text(todo.title,

                                          style: TextStyle(

                                            decoration: todo.done ? TextDecoration.lineThrough : null, 
                                            color: todo.done ? Colors.grey : Colors.black,

                                          ),

                                        ),

                                        onTap: () {
                                          todo.toggleDone();
                                        } 
                                      );

                                    }, );
                                  },
                                  separatorBuilder: (_, __) {
                                    return Divider();
                                  },
                                );
                              }, ),
                            ),
                        ],
                      ),
                  ),
                ),
              ),
            ],
          ),
      ),
    );
  }
}