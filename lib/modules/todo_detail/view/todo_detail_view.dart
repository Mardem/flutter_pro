import 'package:flutter/material.dart';
import 'package:flutter_pro/modules/todo_detail/presenter/todo_detail_presenter.dart';
import 'package:provider/provider.dart';

class TodoDetailView extends StatelessWidget {
  final String? todoId;

  const TodoDetailView({Key? key, this.todoId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<TodoDetailPresenter>(builder: (
      BuildContext context,
      TodoDetailPresenter presenter,
      _,
    ) {
      String completed = presenter.entity.completed ? 'Sim' : 'Não';

      return Scaffold(
        appBar: AppBar(
          title: Text('Detalhes da tarefa ' + todoId!),
        ),
        body: Card(
          child: ListTile(
            title: Text(presenter.entity.title),
            subtitle: Text(
              'Completo? ' + completed,
            ),
          ),
        ),
      );
    });
  }
}
