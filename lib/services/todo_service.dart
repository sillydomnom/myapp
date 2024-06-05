import 'package:myapp/models/todo_item_dto.dart';

class TodoService {
  Future<List<TodoItemDTO>> getItems() async {
    // Request to the Back end
    await Future.delayed(const Duration(seconds: 2));

    return [
      TodoItemDTO(title: 'test 1', subtitle: 'Foo bar'),
      TodoItemDTO(title: 'test 2', subtitle: 'Foo bar'),
      TodoItemDTO(title: 'test 3', subtitle: 'Foo bar'),
    ];
  }
}