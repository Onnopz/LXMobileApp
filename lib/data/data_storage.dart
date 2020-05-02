import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Storage class
class LocationStorage {
  static int origin = -1;
  static int target = -1;

  static int aboutLXChosen = -1;

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
  ];

  static const List<List<int>> mockUpInst = [
    [5, 5, 9, 3, 5, 6, 1, 2, 8, 5, 8, 9, 8, 8],
    [3, 5, 9, 3, 5, 6, 1, 2, 8, 5, 8, 9, 8, 8],
    [4, 5, 9, 3, 5, 6, 1, 2, 8, 5, 8, 9, 8, 8],
    [5, 5, 9, 3, 5, 6, 1, 2, 8, 5, 8, 9, 8, 8],
    [6, 5, 9, 3, 5, 6, 1, 2, 8, 5, 8, 9, 8, 8],
    [7, 5, 9, 3, 5, 6, 1, 2, 8, 5, 8, 9, 8, 8],
    [8, 5, 9, 3, 5, 6, 1, 2, 8, 5, 8, 9, 8, 8],
    [9, 5, 9, 3, 5, 6, 1, 2, 8, 5, 8, 9, 8, 8],
    [2, 5, 9, 3, 5, 6, 1, 2, 8, 5, 8, 9, 8, 8],
    [3, 5, 9, 3, 5, 6, 1, 2, 8, 5, 8, 9, 8, 8],
    [4, 5, 9, 3, 5, 6, 1, 2, 8, 5, 8, 9, 8, 8],
    [5, 5, 9, 3, 5, 6, 1, 2, 8, 5, 8, 9, 8, 8],
    [6, 5, 9, 3, 5, 6, 1, 2, 8, 5, 8, 9, 8, 8],
    [7, 5, 9, 3, 5, 6, 1, 2, 8, 5, 8, 9, 8, 8],
  ];

  static final List<String> aboutInfo = [
    "About for 0 Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum pretium, mauris quis viverra ultricies, lacus elit pretium nibh, ac convallis tortor arcu ac tellus.",
    "About for 1 Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum pretium, mauris quis viverra ultricies, lacus elit pretium nibh, ac convallis tortor arcu ac tellus.",
    "About for 2 Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum pretium, mauris quis viverra ultricies, lacus elit pretium nibh, ac convallis tortor arcu ac tellus.",
    "About for 3 Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum pretium, mauris quis viverra ultricies, lacus elit pretium nibh, ac convallis tortor arcu ac tellus.",
    "About for 4 Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum pretium, mauris quis viverra ultricies, lacus elit pretium nibh, ac convallis tortor arcu ac tellus.",
    "About for 5 Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum pretium, mauris quis viverra ultricies, lacus elit pretium nibh, ac convallis tortor arcu ac tellus.",
    "About for 6 Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum pretium, mauris quis viverra ultricies, lacus elit pretium nibh, ac convallis tortor arcu ac tellus.",
    "About for 7 Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum pretium, mauris quis viverra ultricies, lacus elit pretium nibh, ac convallis tortor arcu ac tellus.",
    "About for 8 Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum pretium, mauris quis viverra ultricies, lacus elit pretium nibh, ac convallis tortor arcu ac tellus.",
    "About for 9 Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum pretium, mauris quis viverra ultricies, lacus elit pretium nibh, ac convallis tortor arcu ac tellus.",
    "About for 10 Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum pretium, mauris quis viverra ultricies, lacus elit pretium nibh, ac convallis tortor arcu ac tellus.",
    "About for 11 Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum pretium, mauris quis viverra ultricies, lacus elit pretium nibh, ac convallis tortor arcu ac tellus.",
    "About for 12 Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum pretium, mauris quis viverra ultricies, lacus elit pretium nibh, ac convallis tortor arcu ac tellus.",
    "About for 13 Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum pretium, mauris quis viverra ultricies, lacus elit pretium nibh, ac convallis tortor arcu ac tellus."
  ];
}

class AppConstant {
  // Color
  static const Color color_Background = Color.fromARGB(255, 252, 181, 134);
  static const Color color_Button = Color.fromARGB(255, 244, 120, 54);
  static const Color color_ButtonText = Color.fromARGB(255, 250, 250, 250);
  static const Color color_Text = Color.fromARGB(255, 112, 112, 112);

  //  margin
  static const double margin_mainLR = 15.0;
  static const double margin_mainTB = 30.0;

  static const double textSize_textFieldHint = 15.0;
}

class CustomButtonPreset {
  // textSize, paddingLR, paddingTB

  static const List<double> main = [20.0, 40.0, 15.0];
  static const List<double> small = [15.0, 15.0, 5.0];
}

class CustomTextSize{
  static const double head = 25.0;
  static const double secondHead = 20.0;
  static const double body = 15.0;
}