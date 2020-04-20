import 'package:flutter/material.dart';
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
      bottomNavigationBar: CustomNavigationBar((int i) {
        if(i != pageIndex){
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => CustomNavigationBar.page[i]));
        }
      },
        pageIndex
      ),
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
    );
  }
}