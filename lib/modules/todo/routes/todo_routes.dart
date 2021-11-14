import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pro/modules/todo/view/todo_view.dart';
import 'package:flutter_pro/modules/todo_detail/view/todo_detail_view.dart';

mixin TodoRouter {
  static final Handler todoHandler = Handler(
    handlerFunc: (
      BuildContext? context,
      Map<String, List<String>> parameters,
    ) =>
        const TodoView(),
  );

  static final Handler todoDetailHandler = Handler(
    handlerFunc: (
      BuildContext? context,
      Map<String, List<String>> parameters,
    ) =>
        TodoDetailView(
      todoId: parameters['id']![0],
    ),
  );
}
