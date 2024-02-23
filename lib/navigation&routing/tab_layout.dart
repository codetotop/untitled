import 'package:flutter/material.dart';

void main() {
  runApp(const TabLayout());
}

class TabLayout extends StatelessWidget {
  const TabLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Tab layout'),
            bottom: const TabBar(tabs: [
              Tab(
                icon: Icon(Icons.directions_car),
              ),
              Tab(
                icon: Icon(Icons.directions_transit),
              ),
              Tab(
                icon: Icon(Icons.directions_bike),
              )
            ]),
          ),
          body: const TabBarView(children: [
            Icon(Icons.directions_car),
            Icon(Icons.directions_transit),
            Icon(Icons.directions_bike),
          ]),
        ),
      ),
    );
  }
}
