import 'package:flutter/material.dart';

void main() {
  runApp(
      LongListExample(items: List<String>.generate(1000, (index) => 'Item $index')));
}

class LongListExample extends StatelessWidget {
  final List<String> items;

  const LongListExample({Key? key, required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const title = 'Long list';
    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(title),
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(items[index]),
            );
          },
          itemCount: 100,
        ),
      ),
    );
  }
}
