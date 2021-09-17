import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  Widget buildUI() {
    switch (_counter) {
      case 0:
        return _first();
      default:
        return _second();
    }
  }

  Widget _first() {
    return Center(
      child: CupertinoPicker(
        selectionOverlay: null,
        onSelectedItemChanged: (value) {},
        itemExtent: 30,
        children: [
          Text("United Kingdom"),
          Text("France"),
          Text("United States of America"),
          Text("Spain"),
          Text("Nigeria"),
          Text("South Africa"),
          Text("Indonesia"),
        ],
      ),
    );
  }

  Widget _second() {
    return Center(
      child: CupertinoPicker(
        selectionOverlay: null,
        onSelectedItemChanged: (value) {},
        itemExtent: 30,
        children: [
          Text("City 1"),
          Text("City 2"),
          Text("City 3"),
          Text("City 4"),
          Text("City 5"),
          Text("City 6"),
          Text("City 7"),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            GestureDetector(
              onTap: () {
                setState(() {
                  _counter = 1;
                });
              },
              child: Icon(Icons.add),
            )
          ],
        ),
        body: buildUI());
  }
}
