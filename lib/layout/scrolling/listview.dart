import 'package:flutter/material.dart';

void main() {
  runApp(ListViewExample(items: List.generate(100, (index) => 'Item $index')));
}
class ListViewExample extends StatelessWidget {
  final List<String> items;

  const ListViewExample({Key? key, required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('List view'),
        ),
        body: ListView.separated(
          itemBuilder: (_, index) => ListTile(title: Text(items[index])),
          separatorBuilder: (_, index) => const Divider(thickness: 5,),
          itemCount: items.length,
        ),
      ),
    );
  }
}
