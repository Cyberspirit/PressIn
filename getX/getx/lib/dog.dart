import 'package:get/get.dart';

class TodoController extends GetxController {
  List<Todo> items = new List<Todo>().obs;

  void addItem(Todo todo) {
    items.add(Todo(author: todo.author, title: todo.title));
  }

  int get itemCounts => items.length;
}

class Todo {
  final String title;
  final String author;
  final DateTime postedOn = DateTime.now();
  Todo({this.title, this.author});
}
