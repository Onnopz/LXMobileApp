import 'package:flutter/material.dart';
import '../about_lx/main_page.dart';
import '../find_direction/main_page.dart';
import '../map_to_lx/main_page.dart';
import '../../data/data_storage.dart';

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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(
              children: <Widget>[
                CustomText("What do you want to do?", 0, 20, 0, 40,
                    AppConstant.textSize_head),
                CustomButton(
                  text: "Find direction",
                  preset: CustomButtonPreset.main,
                  onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => FindDirection()));
                }),
                SizedBox(
                  height: 20.0,
                ),
                CustomButton(
                  text: "Map to LX",
                  preset: CustomButtonPreset.main,
                  onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => GMapNavigator()));
                }),
                SizedBox(
                  height: 20.0,
                ),
                CustomButton(
                  text: "About LX",
                  preset: CustomButtonPreset.main,
                  onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => AboutLX()));
                }),
              ],
            )
          ],
        ),
      ),
    );
  }
}
