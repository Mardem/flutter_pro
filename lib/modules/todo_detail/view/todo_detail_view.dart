import 'package:flutter/material.dart';

class TodoDetailView extends StatelessWidget {
  final String? todoId;

  const TodoDetailView({Key? key, this.todoId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detalhes da tarefa ' + todoId!),
      ),
      body: Center(
        child: Text('Detalhe: ' + todoId!),
      ),
    );
  }
}
