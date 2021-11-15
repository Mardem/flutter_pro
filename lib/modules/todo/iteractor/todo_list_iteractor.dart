import 'package:flutter_pro/modules/todo/entity/todo_entity.dart';
import 'package:flutter_pro/services/http_service.dart';

class TodoListIteractor {
  final HttpService _httpService = HttpService();

  Future<List<TodoEntity>> fetchList() async {
    final List<dynamic> res = await _httpService.get(url: '/todos');

    return res.map((entity) => TodoEntity.fromJson(entity)).toList();
  }
}
