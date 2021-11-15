import 'package:flutter/material.dart';
import 'package:flutter_pro/modules/todo/entity/todo_entity.dart';
import 'package:flutter_pro/modules/todo/presenter/todo_presenter.dart';
import 'package:provider/provider.dart';

class TodoView extends StatelessWidget {
  const TodoView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de TODOS'),
      ),
      body: Consumer<TodoPresenter>(
        builder: (
          BuildContext context,
          TodoPresenter presenter,
          _,
        ) {
          return FutureBuilder(
            future: presenter.fetchList(),
            builder: (
              BuildContext context,
              AsyncSnapshot<List<TodoEntity>> snapshot,
            ) {
              switch (snapshot.connectionState) {
                case ConnectionState.waiting:
                  return const Text('Rodando...');
                default:
                  return ListView.builder(
                    itemCount: snapshot.data?.length ?? 0,
                    itemBuilder: (
                      BuildContext context,
                      int index,
                    ) {
                      TodoEntity item = snapshot.data![index];

                      return ListTile(
                        title: Text(item.title),
                      );
                    },
                  );
              }
            },
          );
        },
      ),
    );
  }
}
