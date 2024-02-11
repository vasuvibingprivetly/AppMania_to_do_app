import 'package:flutter/material.dart';
import '../../utils/all_data.dart';
import 'add_todo.dart'; 

class CompletedTodoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    List<Map<String, dynamic>> completedTodos =
    allTodos.where((todo) => todo['completed'] == true).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text('Completed Todos'),
      ),
      body: ListView.builder(
        itemCount: completedTodos.length,
        itemBuilder: (context, index) {
          return todoCard(
            size: size,
            index: index,
            context: context,
          );
        },
      ),
    );
  }
}
