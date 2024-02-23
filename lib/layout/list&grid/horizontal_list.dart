import 'package:flutter/material.dart';

class HorizontalListExample extends StatelessWidget {
  const HorizontalListExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Horizontal List Example'),
      ),
      body: Container(
        padding: const EdgeInsets.only(top: 20),
        height: 200,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Container(width: 160, color: Colors.pink),
            Container(width: 160, color: Colors.grey),
            Container(width: 160, color: Colors.green),
            Container(width: 160, color: Colors.yellow),
            Container(width: 160, color: Colors.blue),
            Container(width: 160, color: Colors.purple),
            Container(width: 160, color: Colors.orange),
          ],
        ),
      ),
    );
  }
}
