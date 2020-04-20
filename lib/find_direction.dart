import 'package:flutter/material.dart';
import 'package:lx_mobile_app/choose_location.dart';
import 'data_storage.dart';
import 'package:qrscan/qrscan.dart' as scanner;

class FindDirection extends StatefulWidget {
  FindDirection();

  @override
  _FindDirectionState createState() => _FindDirectionState();
}

class _FindDirectionState extends State<FindDirection> {
  static final pageIndex = 1;

  Column originCol;
  Column targetCol;

  @override
  void initState() {
    print("Initstate is called: ${LocationStorage.origin}");

    super.initState();

    setState(() {
      print("Set state is called ${LocationStorage.origin}");

      if (LocationStorage.origin < 0) {
        originCol = Column(
          children: <Widget>[
            CustomText("Scan QR in your area for starting location", 0, 0, 0,
                18, DataStorage.textSize_body),
          ],
        );
      } else {
        print("This is met");
        setState(() {
          originCol = Column(
            children: <Widget>[
              Image.asset(
                "assets/loc${LocationStorage.origin}.jpg",
                scale: 20,
              ),
              CustomText(LocationStorage.locationName[LocationStorage.origin],
                  0, 0, 0, 18, DataStorage.textSize_body),
            ],
          );
        });
      }

      if (LocationStorage.target < 0) {
        // location is not picked
        setState(() {
          targetCol = Column(
            children: <Widget>[
              CustomText("Choose your target location", 0, 0, 0, 18,
                  DataStorage.textSize_body),
            ],
          );
        });
      } else {
        setState(() {
          originCol = Column(
            children: <Widget>[
              CustomText(LocationStorage.locationName[LocationStorage.target],
                  0, 0, 0, 18, DataStorage.textSize_body),
            ],
          );
        });
      }
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
          CustomText(LocationStorage.locationName[LocationStorage.origin], 0, 0,
              0, 18, DataStorage.textSize_body),
        ],
      );
    });
  }

  void onScanFail() {
    setState(() {
      originCol = Column(
        children: <Widget>[
          CustomText(
              "Invalid QR. Try again", 0, 0, 0, 18, DataStorage.textSize_body),
        ],
      );
    });
  }

  bool checkQR_valid(String qrStr) {
    if (qrStr.length < 22) {
      return false;
    } else {
      return qrStr.substring(0, 21) == "kmutt_navigator_area_" &&
          "0123456789".contains(qrStr[21]);
    }
  }

  void scanQR() {
    scanner.scan().then((String str) {
      if (checkQR_valid(str)) {
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
        if(i != pageIndex){
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => CustomNavigationBar.page[i]));
        }
      },
          pageIndex),
      backgroundColor: DataStorage.bg_Color,
      body: CustomBodyContainer(<Widget>[
        CustomText("Find direction", 0, 0, 0, 20, DataStorage.textSize_head),

        HorizontalLine(),

        Column(
          children: <Widget>[
            CustomText("Your starting location", 0, 20, 0, 20,
                DataStorage.textSize_secondHead),

            originCol,

            CustomButton("Scan QR", DataStorage.textSize_smallButton,
                DataStorage.buttonSmallLR, DataStorage.buttonSmallTB, scanQR),
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
            CustomText("To your destination", 0, 18, 0, 20,
                DataStorage.textSize_secondHead),

            targetCol,

            CustomButton("Choose location", DataStorage.textSize_smallButton,
                DataStorage.buttonSmallLR, DataStorage.buttonSmallTB, () {
                  Navigator.push(context,
                    MaterialPageRoute(
                        builder: (context) => ChooseLo()
                    )
                  );
                }

            ),

            CustomButton("Choose location", DataStorage.textSize_smallButton,
                DataStorage.buttonSmallLR, DataStorage.buttonSmallTB, () {
                  Navigator.push(context,
                      MaterialPageRoute(
                          builder: (context) => ChooseLo()
                      )
                  );
                }

            ),
            CustomButton("Choose location", DataStorage.textSize_smallButton,
                DataStorage.buttonSmallLR, DataStorage.buttonSmallTB, () {
                  Navigator.push(context,
                      MaterialPageRoute(
                          builder: (context) => ChooseLo()
                      )
                  );
                }

            ),
            CustomButton("Choose location", DataStorage.textSize_smallButton,
                DataStorage.buttonSmallLR, DataStorage.buttonSmallTB, () {
                  Navigator.push(context,
                      MaterialPageRoute(
                          builder: (context) => ChooseLo()
                      )
                  );
                }

            ),
            CustomButton("Choose location", DataStorage.textSize_smallButton,
                DataStorage.buttonSmallLR, DataStorage.buttonSmallTB, () {
                  Navigator.push(context,
                      MaterialPageRoute(
                          builder: (context) => ChooseLo()
                      )
                  );
                }

            ),
          ],
        ),
      ], context),
    );
  }
}
