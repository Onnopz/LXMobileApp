import 'package:flutter/material.dart';
import 'package:lx_mobile_app/find_direction.dart';
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
        body: CustomMainContainer(
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Column(
                children: <Widget>[
                  CustomText("What do you want to do?", 0, 20, 0, 40,
                      DataStorage.textSize_head),
                  CustomButton(
                      "Find direction",
                      DataStorage.textSize_mainButton,
                      DataStorage.buttonMainLR,
                      DataStorage.buttonMainTB,
                      () {
                        Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => FindDirection()));
                      }
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
