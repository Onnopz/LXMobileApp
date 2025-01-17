import 'package:flutter/material.dart';
import '../../data/data_storage.dart';
import '../../data/custom_widget.dart';
import 'info.dart';


class AboutLX extends StatefulWidget {
  AboutLX();

  @override
  _AboutLXState createState() => _AboutLXState();
}

class _AboutLXState extends State<AboutLX> {
  static final pageIndex = 3;
  static List<Widget> locList = [];

  void checkMatch(String str) {
    setState(() {
      locList = [];

      for (int i = 0; i < LocationStorage.locationName.length; i++) {
        if (LocationStorage.locationName[i].contains(str)) {
          locList.add(LocationListItem(
            index: i,
            onTap: () {
                LocationStorage.aboutLXChosen = i;
                Navigator.push(
                  context, MaterialPageRoute(builder: (context) => AboutLXinfo()));
          }));
        }
      }
    });
  }

  @override
  void initState() {
    super.initState();
    setState(() {
      print("Initstate called");

      locList.clear();

      for (int i = 0; i < LocationStorage.locationName.length; i++) {
        locList.add(LocationListItem(
          index: i,
          onTap: () {
          LocationStorage.aboutLXChosen = i;
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => AboutLXinfo()));
        }));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);

        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: Scaffold(
        bottomNavigationBar: CustomNavigationBar((int i) {
          if (i != pageIndex) {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => CustomNavigationBar.page[i]));
          }
        }, pageIndex),
        backgroundColor: AppConstant.color_Background,
        body: Container(
          margin: EdgeInsets.fromLTRB(AppConstant.margin_mainLR,
              AppConstant.margin_mainTB, AppConstant.margin_mainLR, 0),
          child: Column(
            children: <Widget>[
              // This row is for BACK Button
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      CustomBackButton(
                        context: context),
                      SizedBox(
                        height: 10.0,
                      )
                    ],
                  )
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      CustomText(
                        text: "What do you want to know?",
                        top: 18, bottom: 20,
                        size: CustomTextSize.secondHead
                      ),
                      CustomTextField(
                        hint: "Tell me what it is",
                        onChanged: (String str) {
                          checkMatch(str);
                      }),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              HorizontalLine(),

              Expanded(
                child: ListView(children: locList),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
