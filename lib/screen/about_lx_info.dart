import 'package:flutter/material.dart';
import '../data/data_storage.dart';

class AboutLXinfo extends StatefulWidget {
  AboutLXinfo();

  @override
  _AboutLXinfoState createState() => _AboutLXinfoState();
}

class _AboutLXinfoState extends State<AboutLXinfo> {
  static final pageIndex = 3;

  void initState() {
    super.initState();
    setState(() {});
  }

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
      body: CustomBodyContainer(
        children: <Widget>[
        Image.asset(
          "assets/loc${LocationStorage.aboutLXChosen}.jpg",
          scale: 8,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CustomText(
                LocationStorage.locationName[LocationStorage.aboutLXChosen],
                0,
                30,
                0,
                30,
                AppConstant.textSize_secondHead),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Flexible(
              child:  Column(
              children: <Widget>[
                SizedBox(
                  height: 10,
                ),
                CustomText(
                  "       ${LocationStorage.aboutInfo[LocationStorage.aboutLXChosen]}",
                  0,
                  0,
                  0,
                  0,
                  AppConstant.textSize_body
                ),
                    
              ],
            ),
            ),
           
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(
              children: <Widget>[
                HorizontalLine(),
                SizedBox(
                  height: 10,
                ),
                CustomButton(
                    text: "Back to selection",
                    preset: CustomButtonPreset.main,
                    onPressed: () {
                      Navigator.pop(context);
                  }
                )
              ],
            ),
          ],
        ),
      ],
      
      context: context),
    );
  }
}
