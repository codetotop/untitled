import 'package:flutter/material.dart';
import 'package:untitled/bloc_page.dart';
import 'package:untitled/layout/build_a_layout/first_layout.dart';
import 'package:untitled/layout/list&grid/gridview.dart';

import 'list&grid/horizontal_list.dart';
import 'list&grid/list_view.dart';
import 'list&grid/list_with_space.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const BlocPage(),
    );
  }
}

class MyHomePageMaterialApp extends StatelessWidget {
  const MyHomePageMaterialApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter demo",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Flutter layout demo"),
        ),
        body: const Center(
          child: Text("Ronaldo isn't GOAT. GOAT is Messi!"),
        ),
      ),
    );
  }
}

class MyHomePageNonMaterialApp extends StatelessWidget {
  const MyHomePageNonMaterialApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Colors.white),
      child: const Scaffold(
        body: Center(
          child: Text(
            "Ronaldo isn't GOAT, GOAT is Leo Messi!",
            textDirection: TextDirection.ltr,
            style: TextStyle(fontSize: 32, color: Colors.black87),
          ),
        ),
      ),
    );
  }
}

class MyHomePageRow extends StatelessWidget {
  const MyHomePageRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              'assets/images/neymar1.jpeg',
              width: 80,
              height: 80,
              fit: BoxFit.fill,
            ),
            const SizedBox(width: 16),
            Image.asset(
              'assets/images/messi.jpeg',
              width: 80,
              height: 80,
              fit: BoxFit.fill,
            ),
            const SizedBox(width: 16),
            Image.asset(
              'assets/images/neymar2.jpeg',
              width: 80,
              height: 80,
              fit: BoxFit.fill,
            )
          ],
        ),
      ),
    );
  }
}

class MyHomePageColumn extends StatelessWidget {
  const MyHomePageColumn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              'assets/images/neymar1.jpeg',
              width: 80,
              height: 80,
              fit: BoxFit.fill,
            ),
            const SizedBox(width: 16),
            Image.asset(
              'assets/images/messi.jpeg',
              width: 80,
              height: 80,
              fit: BoxFit.fill,
            ),
            const SizedBox(width: 16),
            Image.asset(
              'assets/images/neymar2.jpeg',
              width: 80,
              height: 80,
              fit: BoxFit.fill,
            )
          ],
        ),
      ),
    );
  }
}

class MyHomePageScrollView extends StatelessWidget {
  const MyHomePageScrollView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SizedBox.expand(
        child: SingleChildScrollView(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/messi.jpeg',
                width: 80,
                height: 80,
                fit: BoxFit.fill,
              ),
              const SizedBox(width: 16),
              Image.asset(
                'assets/images/neymar1.jpeg',
                width: 80,
                height: 80,
                fit: BoxFit.fill,
              ),
              const SizedBox(width: 16),
              Image.asset(
                'assets/images/neymar2.jpeg',
                width: 80,
                height: 80,
                fit: BoxFit.fill,
              ),
              Image.asset(
                'assets/images/neymar1.jpeg',
                width: 80,
                height: 80,
                fit: BoxFit.fill,
              ),
              const SizedBox(width: 16),
              Image.asset(
                'assets/images/messi.jpeg',
                width: 80,
                height: 80,
                fit: BoxFit.fill,
              ),
              const SizedBox(width: 16),
              Image.asset(
                'assets/images/neymar2.jpeg',
                width: 80,
                height: 80,
                fit: BoxFit.fill,
              ),

              Image.asset(
                'assets/images/neymar1.jpeg',
                width: 80,
                height: 80,
                fit: BoxFit.fill,
              ),
              const SizedBox(width: 16),
              Image.asset(
                'assets/images/messi.jpeg',
                width: 80,
                height: 80,
                fit: BoxFit.fill,
              ),
              const SizedBox(width: 16),
              Image.asset(
                'assets/images/neymar2.jpeg',
                width: 80,
                height: 80,
                fit: BoxFit.fill,
              )
            ],
          ),
        ),
      ),
    );
  }
}
