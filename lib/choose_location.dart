import 'package:flutter/material.dart';
import 'package:lx_mobile_app/find_direction.dart';
import 'data_storage.dart';

class ChooseLo extends StatefulWidget {
  ChooseLo();

  @override
  _ChooseLoState createState() => _ChooseLoState();
}

class _ChooseLoState extends State<ChooseLo> {
  static final pageIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: DataStorage.bg_Color,
      body: CustomBodyContainer(
        <Widget>[
          CustomText(
            "Choose your target location",
            0, 0, 0, 20,
            DataStorage.textSize_secondHead
          ),


        ],
          context
      ),

      bottomNavigationBar: CustomNavigationBar((int i) {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => CustomNavigationBar.page[i]));
      }, pageIndex),
    );
  }
}