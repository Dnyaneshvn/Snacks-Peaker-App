import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  List<String> snaks = [
    'Vada Pav',
    'Maggie',
    'Oli Bhel',
    'Misal',
    'Pizza',
    'Samosa'
  ];

  var currentIndex;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("What do you want to eat?"),
          if (currentIndex != null)
            Text(
              snaks[currentIndex],
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          Padding(padding: EdgeInsets.only(top: 50)),
          ElevatedButton(
            onPressed: () {
              updateIndex();
            },
            child: Text('Pick Snaks'),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.purple),
              foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
            ),
          ),
        ],
      )),
    ));
  }

  void updateIndex() {
    final random = Random();
    final index = random.nextInt(6);
    setState(() {
      currentIndex = index;
    });
  }
}
