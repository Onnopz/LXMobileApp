import 'package:flutter/material.dart';
import 'data_storage.dart';

class HomePage extends StatefulWidget {
  HomePage();

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: DataStorage.bg_Color,
      body: Column(
        children: <Widget>[
          Center(child: Text("Text 1"),),
          Center(child: Text("Text 2"),),
          Center(child: Text("Text 3"),),
        ],
      ),
    );
  }
}