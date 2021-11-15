import 'package:flutter/material.dart';
import 'package:flutter_pro/modules/todo/entity/todo_entity.dart';

class TodoDetailPresenter with ChangeNotifier {
  late TodoEntity entity;

  setEntity(TodoEntity entity) {
    this.entity = entity;

    notifyListeners();
  }
}
