import 'package:flutter/material.dart';
import 'package:qrscan/qrscan.dart' as scanner;
import 'choose.dart';
import 'show.dart';
import '../../data/data_storage.dart';
import '../../data/custom_widget.dart';

class FindDirection extends StatefulWidget {
  FindDirection();

  @override
  _FindDirectionState createState() => _FindDirectionState();
}

class _FindDirectionState extends State<FindDirection> {
  static final pageIndex = 1;
  Column originCol;
  Column targetCol;

  static bool buttonReady;
  static bool locNotSame;

  void checkForButton() {
    setState(() {
      buttonReady = LocationStorage.origin >= 0 && LocationStorage.target >= 0;
      locNotSame = LocationStorage.origin != LocationStorage.target;
    });
  }

  // InitState
  @override
  void initState() {
    print("Initstate is called: ${LocationStorage.origin}");
    super.initState();
    setState(() {
      print("Set state is called ${LocationStorage.origin}");

      if (LocationStorage.origin < 0) {
        originCol = Column(
          children: <Widget>[
            CustomText(
                text: "Scan QR in your area for starting location",
                bottom: 18,
                size: CustomTextSize.body),
          ],
        );
      } else {
        setState(() {
          originCol = Column(
            children: <Widget>[
              Image.asset(
                "assets/loc${LocationStorage.origin}.jpg",
                scale: 20,
              ),
              SizedBox(
                height: 15.0,
              ),
              CustomText(
                  text: LocationStorage.locationName[LocationStorage.origin],
                  bottom: 18,
                  size: CustomTextSize.body),
            ],
          );
        });
      }

      if (LocationStorage.target < 0) {
        // location is not picked
        setState(() {
          targetCol = Column(
            children: <Widget>[
              CustomText(
                  text: "Choose your target location",
                  bottom: 18,
                  size: CustomTextSize.body),
            ],
          );
        });
      } else {
        setState(() {
          targetCol = Column(
            children: <Widget>[
              Image.asset(
                "assets/loc${LocationStorage.target}.jpg",
                scale: 20,
              ),
              SizedBox(
                height: 15.0,
              ),
              CustomText(
                  text: LocationStorage.locationName[LocationStorage.target],
                  bottom: 18,
                  size: CustomTextSize.body),
            ],
          );
        });
      }

      checkForButton();
    });
  }

  void onScanDone(int origin) {
    LocationStorage.origin = origin;

    setState(() {
      originCol = Column(
        children: <Widget>[
          Image.asset(
            "assets/loc${LocationStorage.origin}.jpg",
            scale: 21,
          ),
          SizedBox(
            height: 15.0,
          ),
          CustomText(
              text: LocationStorage.locationName[LocationStorage.origin],
              bottom: 18,
              size: CustomTextSize.body),
        ],
      );

      checkForButton();
    });
  }

  void onScanFail() {
    setState(() {
      LocationStorage.origin = -1;
      checkForButton();
      originCol = Column(
        children: <Widget>[
          CustomText(
              text: "Invalid QR. Try again",
              bottom: 18,
              size: CustomTextSize.body),
        ],
      );
    });
  }

  bool checkQRValid(String qrStr) {
    if (qrStr.length < 22) {
      return false;
    } else {
      return qrStr.substring(0, 21) == "kmutt_navigator_area_" &&
          "0123456789".contains(qrStr[21]);
    }
  }

  void scanQR() {
    scanner.scan().then((String str) {
      if (checkQRValid(str)) {
        String tmp = str.substring(21);
        String extract = "";
        for (var i = 0; i < tmp.length && "0123456789".contains(tmp[i]); i++) {
          extract += tmp[i];
        }

        if (int.parse(extract) > LocationStorage.locationName.length - 1) {
          onScanFail();
        } else {
          onScanDone(int.parse(extract));
        }
      } else {
        onScanFail();
      }

      return str;
    }, onError: (e) {
      throw e;
    });
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
        CustomText(
            text: "Find direction", bottom: 20, size: CustomTextSize.head),
        HorizontalLine(),
        Column(
          children: <Widget>[
            CustomText(
                text: "Your starting location",
                top: 20,
                bottom: 20,
                size: CustomTextSize.secondHead),
            originCol,
            CustomButton(
                text: "Scan QR",
                preset: CustomButtonPreset.small,
                onPressed: scanQR),
          ],
        ),
        SizedBox(
          height: 10.0,
        ),
        Image.asset(
          "assets/arrowdown.png",
          scale: 2,
        ),
        Column(
          children: <Widget>[
            CustomText(
                text: "To your destination",
                top: 18,
                bottom: 20,
                size: CustomTextSize.secondHead),
            targetCol,
            CustomButton(
                text: "Choose location",
                preset: CustomButtonPreset.small,
                onPressed: () {
                  Navigator.push(context,
                          MaterialPageRoute(builder: (context) => ChooseLo()))
                      .then((value) {
                    setState(() {
                      targetCol = Column(
                        children: <Widget>[
                          Image.asset(
                            "assets/loc${LocationStorage.target}.jpg",
                            scale: 20,
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                          CustomText(
                              text: LocationStorage
                                  .locationName[LocationStorage.target],
                              bottom: 18,
                              size: CustomTextSize.body),
                        ],
                      );
                      checkForButton();
                    });
                  });
                }),
          ],
        ),
        SizedBox(height: 10.0),
        Visibility(
          visible: buttonReady && locNotSame,
          child: Column(
            children: <Widget>[
              HorizontalLine(),
              SizedBox(
                height: 10.0,
              ),
              RaisedButton(
                  child: Text(
                    "Get direction",
                    style: TextStyle(fontSize: CustomTextSize.secondHead),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ShowDirection()));
                  },
                  color: AppConstant.color_Button,
                  textColor: AppConstant.color_ButtonText,
                  padding: EdgeInsets.symmetric(
                    horizontal: 70.0,
                    vertical: 10.0,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  )),
            ],
          ),
        ),
        Visibility(
          visible: buttonReady && !locNotSame,
          child: CustomText(
              text: "You are already there!", size: CustomTextSize.secondHead),
        ),
        SizedBox(height: 30.0),
      ], context: context),
    );
  }
}
