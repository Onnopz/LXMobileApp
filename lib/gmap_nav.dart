import 'package:flutter/material.dart';
import 'data_storage.dart';

class GMapNavigator extends StatefulWidget {
  GMapNavigator();

  @override
  _GMapNavigatorState createState() => _GMapNavigatorState();
}

class _GMapNavigatorState extends State<GMapNavigator> {
  static final pageIndex = 2;

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
      backgroundColor: AppConstant.color_Background,
      body: CustomBodyContainer(
        <Widget>[
            CustomText(
              "Text", 0, 0, 0, 0, 30.0
            ),
        ],
          context
      ),

    );
  }
}
