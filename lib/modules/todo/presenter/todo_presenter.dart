import 'package:flutter/material.dart';
import 'package:flutter_pro/modules/todo/entity/todo_entity.dart';
import 'package:flutter_pro/modules/todo/iteractor/todo_list_iteractor.dart';

class TodoPresenter with ChangeNotifier {
  final TodoListIteractor _iteractor = TodoListIteractor();

  Future<List<TodoEntity>> fetchList() async {
    return await _iteractor.fetchList();
  }
}
