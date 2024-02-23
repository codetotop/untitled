import 'package:flutter/material.dart';

class ListViewExample extends StatelessWidget {
  const ListViewExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Basic list'),
      ),
      body: ListView(children: const [
        ListTile(
          leading: Icon(Icons.map),
          title: Text('Map'),
          subtitle: Text("data0"),
        ),
        ListTile(
          leading: Icon(Icons.photo_album),
          title: Text("Photo Album"),
          subtitle: Text("data1"),
        ),
        ListTile(
          leading: Icon(Icons.phone),
          title: Text('Phone'),
          subtitle: Text('data2'),
        )
      ]),
    );
  }
}
