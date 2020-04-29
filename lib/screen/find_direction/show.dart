import 'package:flutter/material.dart';
import '../../data/data_storage.dart';

class ShowDirection extends StatefulWidget {
  ShowDirection();

  @override
  _ShowDirectionState createState() => _ShowDirectionState();
}

class _ShowDirectionState extends State<ShowDirection> {
  static final pageIndex = 1;
  static int currentStep = 0;
  static bool firstORlast = true;

  void reloadPrevNext() {
    setState(() {
      firstORlast = currentStep == 0 ||
          currentStep + 1 ==
              LocationStorage.mockUpInst[LocationStorage.origin]
                  [LocationStorage.target];
    });
  }

  void showInfo() {
    print("${LocationStorage.origin} to ${LocationStorage.target}");
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
      body: CustomBodyContainer(children: <Widget>[
        Image.asset(
          "assets/map.png",
          scale: 1.4,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Column(
              children: <Widget>[
                CustomText("Step ${currentStep + 1} out of ${LocationStorage.mockUpInst[LocationStorage.origin][LocationStorage.target]}", 0, 20.0, 0, 20.0,
                    AppConstant.textSize_head),
                CustomText(
                    "Location ${LocationStorage.origin} to ${LocationStorage.target}",
                    0,
                    0,
                    0,
                    0,
                    AppConstant.textSize_body),
              ],
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Visibility(
              visible: currentStep > 0,
              child: CustomButton(
                text: "Previous",
                preset: CustomButtonPreset.small,
                onPressed: () {
                setState(() {
                  currentStep--;
                  reloadPrevNext();
                  showInfo();
                });
              }),
            ),
            if (currentStep > 0 &&
                currentStep + 1 <
                    LocationStorage.mockUpInst[LocationStorage.origin]
                        [LocationStorage.target])
              SizedBox(
                width: 60,
              ),
            Visibility(
              visible: currentStep + 1 <
                  LocationStorage.mockUpInst[LocationStorage.origin]
                      [LocationStorage.target],
              child: CustomButton(
                text: "Next",
                preset: CustomButtonPreset.small,
                onPressed: () {
                setState(() {
                  currentStep++;
                  reloadPrevNext();
                  showInfo();
                });
              }),
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
                })
              ],
            ),
          ],
        ),
      ],
      context: context
      ),
    );
  }
}
