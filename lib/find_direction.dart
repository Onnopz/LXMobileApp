import 'package:flutter/material.dart';
import 'data_storage.dart';

class FindDirection extends StatefulWidget {
  FindDirection();

  @override
  _FindDirectionState createState() => _FindDirectionState();
}

class _FindDirectionState extends State<FindDirection> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: DataStorage.bg_Color,
      body: CustomBodyContainer(<Widget>[
        CustomText("Find direction", 0, 0, 0, 20, DataStorage.textSize_head),
        HorizontalLine(),
        Column(
          children: <Widget>[
            CustomText("Your starting location", 0, 20, 0, 20,
                DataStorage.textSize_secondHead),
            CustomText("Scan QR code to get current position", 0, 0, 0, 18,
                DataStorage.textSize_body),
            CustomButton("Scan QR", DataStorage.textSize_smallButton,
                DataStorage.buttonSmallLR, DataStorage.buttonSmallTB, () {
              print("Scan the QR");
            }),
          ],
        ),
        SizedBox(
          height: 10.0,
        ),
        Image.asset(
          "assets/arrowdown.png",
          scale: 1.5,
        ),
        Column(
          children: <Widget>[
            CustomText("To your destination", 0, 18, 0, 20,
                DataStorage.textSize_secondHead),
            CustomText("Choose the location you want to go first.", 0, 0, 0, 18,
                DataStorage.textSize_body),
            CustomButton("Choose location", DataStorage.textSize_smallButton,
                DataStorage.buttonSmallLR, DataStorage.buttonSmallTB, () {
              print("Pick tartget");
            }),
          ],
        ),
      ], context),
    );
  }
}
