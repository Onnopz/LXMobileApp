import 'package:flutter/material.dart';
import 'package:lx_mobile_app/find_direction.dart';
import 'package:lx_mobile_app/splash.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Splash(),
    );
  }
}

// splash is the real home page