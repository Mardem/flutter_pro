import 'package:flutter/material.dart';
import 'package:flutter_pro/modules/todo/entity/todo_entity.dart';
import 'package:flutter_pro/modules/todo/iterator/todo_list_iterator.dart';

class TodoPresenter with ChangeNotifier {
  final TodoListIterator _iterator = TodoListIterator();

  Future<List<TodoEntity>> fetchList() async {
    return await _iterator.fetchList();
  }
}
