import 'package:flutter/material.dart';
import 'data_storage.dart';

class Splash extends StatefulWidget {
  Splash();

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: DataStorage.bg_Color,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              "Text 1"
            ),
          ],
        ),
      ),
    );
  }
}