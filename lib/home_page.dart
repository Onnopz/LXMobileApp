import 'package:flutter/material.dart';
import 'package:lx_mobile_app/about_lx.dart';
import 'package:lx_mobile_app/find_direction.dart';
import 'package:lx_mobile_app/gmap_nav.dart';
import 'data_storage.dart';

class HomePage extends StatefulWidget {
  HomePage();

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static final pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomNavigationBar((int i) {
        if (i != pageIndex) {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => CustomNavigationBar.page[i]));
        }
      }, pageIndex),
      backgroundColor: AppConstant.color_Background,
      body: CustomMainContainer(
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(
              children: <Widget>[
                CustomText("What do you want to do?", 0, 20, 0, 40,
                    AppConstant.textSize_head),
                CustomButton(
                    "Find direction",
                    AppConstant.textSize_button_main,
                    AppConstant.padding_button_mainLR,
                    AppConstant.padding_button_mainTB, () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => FindDirection()));
                }),
                SizedBox(
                  height: 20.0,
                ),
                CustomButton(
                    "Map to LX",
                    AppConstant.textSize_button_main,
                    AppConstant.padding_button_mainLR,
                    AppConstant.padding_button_mainTB, () {
                      Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => GMapNavigator()));
                }),
                SizedBox(
                  height: 20.0,
                ),
                CustomButton(
                    "About LX",
                    AppConstant.textSize_button_main,
                    AppConstant.padding_button_mainLR,
                    AppConstant.padding_button_mainTB, () {
                      Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => AboutLX())
                    );
                }),
              ],
            )
          ],
        ),
      ),
    );
  }
}
