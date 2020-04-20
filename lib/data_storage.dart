import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lx_mobile_app/find_direction.dart';
import 'package:lx_mobile_app/home_page.dart';

// Storage class
class LocationStorage {
  static var origin = -1;
  static var target = -1;

  static const List<String> locationName = [
    "Location 0",
    "Location 1",
    "Location 2",
    "Location 3",
    "Location 4",
    "Location 5",
    "Location 6",
    "Location 7",
    "Location 8",
    "Location 9",
    "Location 10",
    "Location 11",
    "Location 12",
    "Location 13",
    "Location 14",
  ];
}

class DataStorage {
  // Color
  static const Color bg_Color = Color.fromARGB(255, 252, 181, 134);
  static const Color button_Color = Color.fromARGB(255, 244, 120, 54);
  static const Color buttonText_Color = Color.fromARGB(255, 250, 250, 250);
  static const Color text_Color = Color.fromARGB(255, 112, 112, 112);

  //  margin
  static const double mainMargin_LR = 15.0;
  static const double mainMargin_TB = 30.0;

  static const double widgetMargin_head = 40.0;
  static const double widgetMargin_secondHeader = 15.0;

  // text size
  static const double textSize_head = 25.0;
  static const double textSize_secondHead = 20.0;
  static const double textSize_body = 15.0;

  static const double textSize_mainButton = 20.0;
  static const double textSize_smallButton = 15.0;

  static const double widgetMargin_bodyText = 10.0;

  // button info
  static const double buttonMainTB = 15.0;
  static const double buttonMainLR = 40.0;

  static const double buttonSmallTB = 5.0;
  static const double buttonSmallLR = 15.0;
}

// Layout widget
class CustomMainContainer extends Container {
  CustomMainContainer(Widget child)
      : super(
      margin: EdgeInsets.fromLTRB(
          DataStorage.mainMargin_LR,
          DataStorage.mainMargin_TB,
          DataStorage.mainMargin_LR,
          DataStorage.mainMargin_TB),
      child: child);
}

class CustomBodyContainer extends Container {
  CustomBodyContainer(List<Widget> children, BuildContext context)
      : super(
      margin: EdgeInsets.fromLTRB(
          DataStorage.mainMargin_LR,
          DataStorage.mainMargin_TB,
          DataStorage.mainMargin_LR,
          0
      ),
      child: Column(
        children: <Widget>[
          // This row is for BACK Button
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Column(
                children: <Widget>[
                  CustomBackButton(context),
                  SizedBox(
                    height: 10.0,
                  )
                ],
              )
            ],
          ),

          Expanded(
            child: ListView(
                children: <Widget>[
                  Column(
                    children: children,
                  )
                ]
            ),
          ),

        ],
      ));
}

// Constant object widget
class HorizontalLine extends Container {
  HorizontalLine()
      : super(
    color: DataStorage.text_Color,
    height: 2,
    width: 280,
  );
}

class CustomBackButton extends FlatButton {
  CustomBackButton(BuildContext context)
      : super(
      onPressed: () {
        Navigator.pop(context);
      },
      child: Row(
        children: <Widget>[
          Icon(
            Icons.arrow_back_ios,
            color: DataStorage.text_Color,
          ),
          Text(
            "Back",
            style: TextStyle(
              fontSize: 25.0,
              color: DataStorage.text_Color,
            ),
          ),
        ],
      ));
}


// Object widget
class CustomButton extends RaisedButton {
  CustomButton(String text, double textSize, double padding_LR,
      double padding_TB, Function func)
      : super(
            child: Text(
              text,
              style: TextStyle(fontSize: textSize),
            ),
            onPressed: func,
            color: DataStorage.button_Color,
            textColor: DataStorage.buttonText_Color,
            padding: EdgeInsets.fromLTRB(
                padding_LR, padding_TB, padding_LR, padding_TB),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ));
}

class CustomText extends Container {
  CustomText(String text, double left, double top, double right, double bottom,
      double size)
      : super(
          margin: EdgeInsets.fromLTRB(left, top, right, bottom),
          child: Text(
            text,
            style: TextStyle(
              fontSize: size,
              color: DataStorage.text_Color,
            ),
          ),
        );
}

class CustomNavigationBar extends BottomNavigationBar {
  static final List<Widget> page = [
    HomePage(),
    FindDirection(),
  ];

  CustomNavigationBar(Function func, int selected)
      : super(
          currentIndex: selected,
          selectedItemColor: DataStorage.button_Color,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text("Home"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.map),
              title: Text("Navigator"),
            ),
          ],
          onTap: func,
      );
}

class CustomTextField extends Container{
  CustomTextField(String hint, Function func) : super(
    height: 55.0,
    width: 250.0,
    child: TextField(
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(15.0, 7.0, 15.0, 7.0),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(15.0))
        ),
        hintText: hint,

        hintStyle: TextStyle(
            color: DataStorage.text_Color,
            fontSize: DataStorage.textSize_smallButton
        ),
        fillColor: Colors.white,
        filled: true,
      ),
      onChanged: func,
    ),

  );
}

class LocationListItem extends GestureDetector{
  int index;

  LocationListItem(this.index, BuildContext context) :
        super(
          onTap: (){
            LocationStorage.target = index;
            Navigator.pop(context);
          },

          child: Container(
            margin: EdgeInsets.fromLTRB(0, 10.0, 0, 10.0),
            decoration: BoxDecoration(
                border: Border.all(
                    color: DataStorage.button_Color,
                    width: 3
                ),
                borderRadius: BorderRadius.all(
                    Radius.circular(5.0)
                )
            ),

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
          )
      );


}



