import 'package:flutter/material.dart';

class GridviewExample extends StatelessWidget {
  const GridviewExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gridview example'),
      ),
      body: GridView.count(
        padding: const EdgeInsets.all(8),
        scrollDirection: Axis.horizontal,
        crossAxisCount: 3,
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 8.0,
        children: List.generate(20, (index) {
          return Container(
            color: Colors.pink,
            child: SizedBox(
              child: Text(
                  'Item $index',
                  style: Theme.of(context).textTheme.headlineMedium
              ),
            ),
          );
        }),
      ),
    );
  }
}
