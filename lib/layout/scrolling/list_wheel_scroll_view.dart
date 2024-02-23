import 'package:flutter/material.dart';

void main() {
  runApp(ListWheelScrollViewExample(
    items: List<Widget>.generate(
        100, (index) => ListTile(title: Text('Item $index'))),
  ));
}

class ListWheelScrollViewExample extends StatelessWidget {
  final List<Widget> items;

  const ListWheelScrollViewExample({Key? key, required this.items})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('List wheel scroll view'),
        ),
        body: ListWheelScrollView(
          itemExtent: items.length * 1.0,
          useMagnifier: true,
          children: items,
        ),
      ),
    );
  }
}
