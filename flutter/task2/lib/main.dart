import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/page1': (context) => FirstPage(),
        '/page2': (context) => SecondPage(),
      },
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const FirstPage(),
    );
  }
}

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: TextButton(
            onPressed: () {
              Navigator.pushNamed(context, '/page2');
            },
            child: const Text(
              "На экран 2",
              style: TextStyle(color: Colors.white),
            )),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        child: TextButton(
            onPressed: () {
              Navigator.pushNamed(context, '/page1');
              //Navigator.pop(context);
            },
            child: const Text(
              "На экран 1",
              style: TextStyle(color: Colors.white),
            )),
      ),
    );
  }
}
