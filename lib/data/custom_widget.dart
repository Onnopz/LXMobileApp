import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../screen/about_lx/main_page.dart';
import '../screen/find_direction/main_page.dart';
import '../screen/map_to_lx/main_page.dart';
import '../screen/home/main_page.dart';
import 'data_storage.dart';

// Layout widget
class CustomMainContainer extends Container {
  // CustomMainContainer(Widget child)
  //     : super(
  //           margin: EdgeInsets.fromLTRB(
  //               AppConstant.margin_mainLR,
  //               AppConstant.margin_mainTB,
  //               AppConstant.margin_mainLR,
  //               AppConstant.margin_mainTB),
  //           child: child);

  CustomMainContainer({Widget child})
      : super(
            margin: EdgeInsets.symmetric(
              horizontal: AppConstant.margin_mainLR,
              vertical: AppConstant.margin_mainTB,
            ),
            child: child);
}

class CustomBodyContainer extends Container {
  CustomBodyContainer({List<Widget> children, BuildContext context})
      : super(
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
                        CustomBackButton(context: context),
                        SizedBox(
                          height: 10.0,
                        )
                      ],
                    )
                  ],
                ),

                Expanded(
                  child: ListView(children: <Widget>[
                    Column(
                      children: children,
                    )
                  ]),
                ),
              ],
            ));
}

// Constant object widget
class HorizontalLine extends Container {
  HorizontalLine()
      : super(
          color: AppConstant.color_Text,
          height: 2,
          width: 280,
        );
}

class CustomBackButton extends FlatButton {
  CustomBackButton({BuildContext context})
      : super(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.arrow_back_ios,
                  color: AppConstant.color_Text,
                ),
                Text(
                  "Back",
                  style: TextStyle(
                    fontSize: 25.0,
                    color: AppConstant.color_Text,
                  ),
                ),
              ],
            ));
}

// Object widget
class CustomButton extends RaisedButton {
  CustomButton({String text, @required List<double> preset, Function onPressed})
      : super(
            child: Text(
              text,
              style: TextStyle(fontSize: preset[0]),
            ),
            onPressed: onPressed,
            color: AppConstant.color_Button,
            textColor: AppConstant.color_ButtonText,
            padding: EdgeInsets.symmetric(
              horizontal: preset[1],
              vertical: preset[2],
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ));
}

class CustomText extends Container {
  CustomText(
      {String text,
      double left = 0,
      double top = 0,
      double right = 0,
      double bottom = 0,
      @required double size})
      : super(
          margin: EdgeInsets.fromLTRB(left, top, right, bottom),
          child: Text(
            text,
            maxLines: null,
            style: TextStyle(
              fontSize: size,
              color: AppConstant.color_Text,
            ),
          ),
        );
}

class CustomNavigationBar extends BottomNavigationBar {
  static final List<Widget> page = [
    HomePage(),
    FindDirection(),
    GMapNavigator(),
    AboutLX(),
  ];

  CustomNavigationBar(Function func, int selected)
      : super(
          currentIndex: selected,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: AppConstant.color_Button,
          unselectedItemColor: AppConstant.color_Text,
          showUnselectedLabels: true,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text("Home"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.map),
              title: Text("Navigator"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.location_on),
              title: Text("Map to LX"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.business),
              title: Text("About LX"),
            ),
          ],
          onTap: func,
        );
}

class CustomTextField extends Container {
  CustomTextField({String hint = "", Function onChanged})
      : super(
          height: 55.0,
          width: 250.0,
          child: TextField(
            decoration: InputDecoration(
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 15.0, vertical: 7.0),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15.0))),
              hintText: hint,
              hintStyle: TextStyle(
                  color: AppConstant.color_Text,
                  fontSize: AppConstant.textSize_textFieldHint),
              fillColor: Colors.white,
              filled: true,
            ),
            onChanged: onChanged,
          ),
        );
}

class LocationListItem extends GestureDetector {
  final int index;

  LocationListItem({this.index, Function onTap})
      : super(
            onTap: onTap,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 0, vertical: 10.0),
              decoration: BoxDecoration(
                  border: Border.all(color: AppConstant.color_Button, width: 3),
                  borderRadius: BorderRadius.all(Radius.circular(5.0))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 20.0, 20.0, 20.0),
                    child: Image.asset(
                      "assets/loc$index.jpg",
                      scale: 20,
                    ),
                  ),
                  Container(
                    child: Text(LocationStorage.locationName[index]),
                  ),
                ],
              ),
            ));
}
