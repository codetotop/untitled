import 'package:flutter/material.dart';

void main() {
  runApp(ScrollbarExample(
      items: List<String>.generate(100, (index) => "Item $index")));
}

class ScrollbarExample extends StatelessWidget {
  final List<String> items;

  const ScrollbarExample({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Scrollbar'),
        ),
        body: Scrollbar(
          child: ListView.builder(
              itemBuilder: (_, index) => ListTile(title: Text(items[index])),
              itemCount: items.length
          ),
        ),
      ),
    );
  }
}
