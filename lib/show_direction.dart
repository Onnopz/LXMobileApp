import 'package:flutter/material.dart';
import 'data_storage.dart';

class ShowDirection extends StatefulWidget {
  ShowDirection();

  @override
  _ShowDirectionState createState() => _ShowDirectionState();
}

class _ShowDirectionState extends State<ShowDirection> {
  static final pageIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomNavigationBar((int i) {
        if(i != pageIndex){
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => CustomNavigationBar.page[i]));
        }
      },
          pageIndex),
      backgroundColor: DataStorage.bg_Color,
      body: CustomBodyContainer(
          <Widget>[
            Image.asset("assets/map.png"),

            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    CustomText("Direction",
                        0, 20.0, 0, 20.0,
                        DataStorage.textSize_head
                    ),
                    CustomText(
                        "Some instruction text",
                        0, 0, 0, 0,
                        DataStorage.textSize_body
                    ),
                  ],
                ),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CustomButton("Back to selection",
                    DataStorage.textSize_mainButton,
                    DataStorage.buttonMainLR,
                    DataStorage.buttonMainTB,
                    (){
                      Navigator.pop(context);
                    }
                )
              ],
            ),

      ], context),
    );
  }
}
