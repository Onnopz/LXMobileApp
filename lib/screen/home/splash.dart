import 'dart:async';
import 'package:flutter/material.dart';
import 'main_page.dart';
import '../../data/data_storage.dart';

class Splash extends StatefulWidget {
  Splash();

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();

    onLoad();
  }

  Future<Timer> onLoad() async{
    return new Timer(Duration(seconds: 3), onLoadDone);
  }

  void onLoadDone(){
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(
            builder: (context) => HomePage()
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Scaffold(
          backgroundColor: AppConstant.color_Background,
          body: Container(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.circular(25.0),
                    child: Image.asset("assets/applogo.png", scale: 10),
                  )
                ],
              ),
            )
          ),
      )
    );
  }
}
