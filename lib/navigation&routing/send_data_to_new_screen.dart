import 'package:flutter/material.dart';

class Todo {
  String title;
  String description;

  Todo(this.title, this.description);
}

void main() {
  runApp(MaterialApp(
    title: 'Passing Data',
    home: TodosScreen(
        todos: List.generate(
            20,
            (index) => Todo('Todo $index',
                'A description of what needs to be done for Todo $index'))),
  ));
}

class TodosScreen extends StatelessWidget {
  final List<Todo> todos;

  const TodosScreen({super.key, required this.todos});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: const Text('Todos')),
      body: ListView.builder(
          itemCount: todos.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(todos[index].title),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            DetailScreen(todo: todos[index])));
              },
            );
          }),
    );
  }
}

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key, required this.todo}) : super(key: key);

  final Todo todo;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(todo.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Text((todo.description)),
      ),
    );
  }
}
