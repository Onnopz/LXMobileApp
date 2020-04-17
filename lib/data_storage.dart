import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DataStorage {
  // Color
  static final Color bg_Color = Color.fromARGB(255, 252, 181, 134);
  static final Color button_Color = Color.fromARGB(255, 244, 120, 54);
  static final Color buttonText_Color = Color.fromARGB(255, 250, 250, 250);
  static final Color text_Color = Color.fromARGB(255, 112, 112, 112);

  //  margin
  static final double mainMargin_LR = 30.0;
  static final double mainMargin_TB = 60.0;
  static final double widgetMargin_head = 50.0;

  static final double buttonHeight = 15.0;
  static final double buttonLR = 40.0;
}

class CustomButton extends RaisedButton {
  static double test = 30.0;

  CustomButton(String text, Function func)
    : super(
        child: Text(
          text,
          style: TextStyle(
            fontSize: 20.0
          ),
        ),
        onPressed: func,
        color: DataStorage.button_Color,
        textColor: DataStorage.buttonText_Color,
        padding: EdgeInsets.fromLTRB(
            DataStorage.buttonLR,
            DataStorage.buttonHeight,
            DataStorage.buttonLR,
            DataStorage.buttonHeight
        ),
        shape: RoundedRectangleBorder()
      );
}


class CustomHeaderText extends Container {
  CustomHeaderText(String text)
      : super(
          margin: EdgeInsets.fromLTRB(0, 0, 0, DataStorage.widgetMargin_head),
          child: Text(
            text,
            style: TextStyle(
              fontSize: 25.0,
              color: DataStorage.text_Color,
            ),
          ),
        );
}
