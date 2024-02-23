import 'package:flutter/material.dart';

void main() {
  runApp(const ThemeExample());
}

class ThemeExample extends StatelessWidget {
  const ThemeExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Theme example',
        theme: ThemeData(
            brightness: Brightness.dark,
            primaryColor: Colors.pink,

            fontFamily: 'Georgia',

            textTheme: const TextTheme(
              displayLarge: TextStyle(
                  fontSize: 72, fontWeight: FontWeight.bold),
              titleLarge: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
              bodyLarge: TextStyle(fontSize: 24, fontWeight: FontWeight.normal),
              bodyMedium: TextStyle(
                  fontSize: 16, fontWeight: FontWeight.normal),
              bodySmall: TextStyle(fontSize: 12, fontWeight: FontWeight.normal),
            )
        ),
        home: const MyHomePage(title: 'Theme example',)
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(child: Container(
        color: Theme
            .of(context)
            .colorScheme
            .secondary,
        child: Text('Text with a background color',
            style: Theme
                .of(context)
                .textTheme
                .titleLarge),
      )
      ),
      floatingActionButton: Theme(
        data: Theme.of(context).copyWith(splashColor: Colors.pink),
        child: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}

