import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DataStorage {
  // Color
  static final Color bg_Color = Color.fromARGB(255, 252, 181, 134);
  static final Color button_Color = Color.fromARGB(255, 244, 120, 54);
  static final Color buttonText_Color = Color.fromARGB(255, 250, 250, 250);
  static final Color text_Color = Color.fromARGB(255, 112, 112, 112);

  //  margin
  static final double mainMargin_LR = 15.0;
  static final double mainMargin_TB = 50.0;

  static final double widgetMargin_head = 40.0;
  static final double widgetMargin_secondHeader = 15.0;

  // text size
  static final double textSize_head = 25.0;
  static final double textSize_secondHead = 20.0;
  static final double textSize_body = 15.0;

  static final double textSize_mainButton = 20.0;
  static final double textSize_smallButton = 15.0;

  static final double widgetMargin_bodyText = 10.0;

  // button info
  static final double buttonMainTB = 15.0;
  static final double buttonMainLR = 40.0;

  static final double buttonSmallTB = 5.0;
  static final double buttonSmallLR = 15.0;
}

class CustomButton extends RaisedButton {
  CustomButton(String text, double textSize, double padding_LR, double padding_TB, Function func)
      : super(
            child: Text(
              text,
              style: TextStyle(fontSize: textSize),
            ),
            onPressed: func,
            color: DataStorage.button_Color,
            textColor: DataStorage.buttonText_Color,
            padding: EdgeInsets.fromLTRB(
                padding_LR,
                padding_TB,
                padding_LR,
                padding_TB
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ));
}

class CustomText extends Container {
  CustomText(String text, double left, double top, double right, double bottom, double size)
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

class CustomBodyText extends Container {
  CustomBodyText(String text)
      : super(
          margin: EdgeInsets.fromLTRB(0, DataStorage.widgetMargin_bodyText, 0,
              DataStorage.widgetMargin_bodyText),
          child: Text(
            text,
            style: TextStyle(
              fontSize: 15.0,
              color: DataStorage.text_Color,
            ),
          ),
        );
}

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
                DataStorage.mainMargin_TB),
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

                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Column(
                        children: children,
                      ),
                    ])
              ],
            ));
}
class HorizontalLine extends Container{
  HorizontalLine() : super(
    color: DataStorage.text_Color,
    height: 2,
    width: 250,
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
