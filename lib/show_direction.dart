import 'package:flutter/material.dart';
import 'package:lx_mobile_app/choose_location.dart';
import 'data_storage.dart';
import 'package:qrscan/qrscan.dart' as scanner;

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
      body: CustomBodyContainer(<Widget>[
        CustomText("Direction", DataStorage.mainMargin_LR,
            DataStorage.mainMargin_TB,
            DataStorage.mainMargin_LR,
            0,
            DataStorage.textSize_head
        ),
      ], context),
    );
  }
}
