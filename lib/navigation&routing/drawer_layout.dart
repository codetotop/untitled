import 'package:flutter/material.dart';

void main() {
  runApp(const DrawerLayout());
}

class DrawerLayout extends StatelessWidget {
  const DrawerLayout({Key? key}) : super(key: key);

  static const appTitle = 'Drawer Demo';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Drawer layout",
      home: MyHomePage(appTitle: appTitle)
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String appTitle;
  const MyHomePage({super.key, required this.appTitle});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle = TextStyle(fontSize:  30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    )
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("data")),
      body: Center(
        child: _widgetOptions[_selectedIndex],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(child: Text('Drawer header')),
            ListTile(
              title: const Text('Home'),
              selected: _selectedIndex == 0,
              onTap: () {
                _onItemTapped(0);
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text("Business"),
              selected: _selectedIndex == 1,
              onTap: () {
                _onItemTapped(1);
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text("School"),
              selected: _selectedIndex == 2,
              onTap: (){
                _onItemTapped(2);
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    );
  }
}

