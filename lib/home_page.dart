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
        body: Container(
            decoration: BoxDecoration(

            ),

            margin: EdgeInsets.fromLTRB(
                0,
                DataStorage.mainMargin_TB,
                0,
                DataStorage.mainMargin_TB
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    CustomHeaderText("What do you want to do?"),
                    CustomButton("Find direction", (){print("Button pressed");}),
                  ],
                )
              ],
            ),
        )
    );
  }
}
