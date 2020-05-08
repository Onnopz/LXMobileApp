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
  
    static final List<List<List<int>>> instPos = [
    [
      [
        2,
        5,
        4,
      ],
      [
        7,
        2,
        12,
      ],
      [
        12,
        2,
        3,
      ],
      [
        12,
        13,
        0,
      ],
      [
        2,
        5,
        4,
      ],
      [
        2,
        5,
        4,
      ],
      [
        2,
        5,
        4,
      ],
      [
        2,
        5,
        4,
      ],
      [
        2,
        5,
        4,
      ],
      [
        2,
        5,
        4,
      ],
      [
        2,
        5,
        4,
      ],
      [
        2,
        5,
        4,
      ],
      [
        2,
        5,
        4,
      ],
      [
        2,
        5,
        4,
      ],
    ],
    [
      [
        2,
        5,
        4,
      ],
      [
        7,
        2,
        12,
      ],
      [
        12,
        2,
        3,
      ],
      [
        12,
        13,
        0,
      ],
      [
        2,
        5,
        4,
      ],
      [
        2,
        5,
        4,
      ],
      [
        2,
        5,
        4,
      ],
      [
        2,
        5,
        4,
      ],
      [
        2,
        5,
        4,
      ],
      [
        2,
        5,
        4,
      ],
      [
        2,
        5,
        4,
      ],
      [
        2,
        5,
        4,
      ],
      [
        2,
        5,
        4,
      ],
      [
        2,
        5,
        4,
      ],
    ],
    [
      [2, 5, 4,],
      [7, 2, 12,],
      [7, 2, 12,],
      [7, 2, 12,],
      [7, 2, 12,],
      [7, 2, 12,],
      [7, 2, 12,],
      [7, 2, 12,],
      [7, 2, 12,],
      [7, 2, 12,],
      [7, 2, 12,],
      [7, 2, 12,],
      [7, 2, 12,],
      [7, 2, 12,],
    ],
    [
      [2, 5, 4,],
      [7, 2, 12,],
      [7, 2, 12,],
      [7, 2, 12,],
      [7, 2, 12,],
      [7, 2, 12,],
      [7, 2, 12,],
      [7, 2, 12,],
      [7, 2, 12,],
      [7, 2, 12,],
      [7, 2, 12,],
      [7, 2, 12,],
      [7, 2, 12,],
      [7, 2, 12,],
    ],
    [
      [2, 5, 4,],
      [7, 2, 12,],
      [7, 2, 12,],
      [7, 2, 12,],
      [7, 2, 12,],
      [7, 2, 12,],
      [7, 2, 12,],
      [7, 2, 12,],
      [7, 2, 12,],
      [7, 2, 12,],
      [7, 2, 12,],
      [7, 2, 12,],
      [7, 2, 12,],
      [7, 2, 12,],
    ],
    [
      [2, 5, 4,],
      [7, 2, 12,],
      [7, 2, 12,],
      [7, 2, 12,],
      [7, 2, 12,],
      [7, 2, 12,],
      [7, 2, 12,],
      [7, 2, 12,],
      [7, 2, 12,],
      [7, 2, 12,],
      [7, 2, 12,],
      [7, 2, 12,],
      [7, 2, 12,],
      [7, 2, 12,],
    ],
    [
      [2, 5, 4,],
      [7, 2, 12,],
      [7, 2, 12,],
      [7, 2, 12,],
      [7, 2, 12,],
      [7, 2, 12,],
      [7, 2, 12,],
      [7, 2, 12,],
      [7, 2, 12,],
      [7, 2, 12,],
      [7, 2, 12,],
      [7, 2, 12,],
      [7, 2, 12,],
      [7, 2, 12,],
    ],
    [
      [2, 5, 4,],
      [7, 2, 12,],
      [7, 2, 12,],
      [7, 2, 12,],
      [7, 2, 12,],
      [7, 2, 12,],
      [7, 2, 12,],
      [7, 2, 12,],
      [7, 2, 12,],
      [7, 2, 12,],
      [7, 2, 12,],
      [7, 2, 12,],
      [7, 2, 12,],
      [7, 2, 12,],
    ],
    [
      [2, 5, 4,],
      [7, 2, 12,],
      [7, 2, 12,],
      [7, 2, 12,],
      [7, 2, 12,],
      [7, 2, 12,],
      [7, 2, 12,],
      [7, 2, 12,],
      [7, 2, 12,],
      [7, 2, 12,],
      [7, 2, 12,],
      [7, 2, 12,],
      [7, 2, 12,],
      [7, 2, 12,],
    ],
    [
      [2, 5, 4,],
      [7, 2, 12,],
      [7, 2, 12,],
      [7, 2, 12,],
      [7, 2, 12,],
      [7, 2, 12,],
      [7, 2, 12,],
      [7, 2, 12,],
      [7, 2, 12,],
      [7, 2, 12,],
      [7, 2, 12,],
      [7, 2, 12,],
      [7, 2, 12,],
      [7, 2, 12,],
    ],
    [
      [2, 5, 4,],
      [7, 2, 12,],
      [7, 2, 12,],
      [7, 2, 12,],
      [7, 2, 12,],
      [7, 2, 12,],
      [7, 2, 12,],
      [7, 2, 12,],
      [7, 2, 12,],
      [7, 2, 12,],
      [7, 2, 12,],
      [7, 2, 12,],
      [7, 2, 12,],
      [7, 2, 12,],
    ],
    [
      [2, 5, 4,],
      [7, 2, 12,],
      [7, 2, 12,],
      [7, 2, 12,],
      [7, 2, 12,],
      [7, 2, 12,],
      [7, 2, 12,],
      [7, 2, 12,],
      [7, 2, 12,],
      [7, 2, 12,],
      [7, 2, 12,],
      [7, 2, 12,],
      [7, 2, 12,],
      [7, 2, 12,],
    ],
    [
      [2, 5, 4,],
      [7, 2, 12,],
      [7, 2, 12,],
      [7, 2, 12,],
      [7, 2, 12,],
      [7, 2, 12,],
      [7, 2, 12,],
      [7, 2, 12,],
      [7, 2, 12,],
      [7, 2, 12,],
      [7, 2, 12,],
      [7, 2, 12,],
      [7, 2, 12,],
      [7, 2, 12,],
    ],
    [
      [2, 5, 4,],
      [7, 2, 12,],
      [7, 2, 12,],
      [7, 2, 12,],
      [7, 2, 12,],
      [7, 2, 12,],
      [7, 2, 12,],
      [7, 2, 12,],
      [7, 2, 12,],
      [7, 2, 12,],
      [7, 2, 12,],
      [7, 2, 12,],
      [7, 2, 12,],
      [7, 2, 12,],
    ],
  ];

  static final List<List<List<String>>> instruction = [
    [
      [
        "0 to 0 step: 1",
        "0 to 0 step: 2",
        "0 to 0 step: 3",
      ],
      [
        "0 to 1 step: 1",
        "0 to 1 step: 2",
        "0 to 1 step: 3",
      ],
      [
        "0 to 2 step: 1",
        "0 to 2 step: 2",
        "0 to 2 step: 3",
      ],
      [
        "0 to 3 step: 1",
        "0 to 3 step: 2",
        "0 to 3 step: 3",
      ],
      [
        "0 to 4 step: 1",
        "0 to 4 step: 2",
        "0 to 4 step: 3",
      ],
      [
        "0 to 5 step: 1",
        "0 to 5 step: 2",
        "0 to 5 step: 3",
      ],
      [
        "0 to 6 step: 1",
        "0 to 6 step: 2",
        "0 to 6 step: 3",
      ],
      [
        "0 to 7 step: 1",
        "0 to 7 step: 2",
        "0 to 7 step: 3",
      ],
      [
        "0 to 8 step: 1",
        "0 to 8 step: 2",
        "0 to 8 step: 3",
      ],
      [
        "0 to 9 step: 1",
        "0 to 9 step: 2",
        "0 to 9 step: 3",
      ],
      [
        "0 to 10 step: 1",
        "0 to 10 step: 2",
        "0 to 10 step: 3",
      ],
      [
        "0 to 11 step: 1",
        "0 to 11 step: 2",
        "0 to 11 step: 3",
      ],
      [
        "0 to 12 step: 1",
        "0 to 12 step: 2",
        "0 to 12 step: 3",
      ],
      [
        "0 to 13 step: 1",
        "0 to 13 step: 2",
        "0 to 13 step: 3",
      ],
    ],
    [
      [
        "1 to 0 step: 1",
        "1 to 0 step: 2",
        "1 to 0 step: 3",
      ],
      [
        "1 to 1 step: 1",
        "1 to 1 step: 2",
        "1 to 1 step: 3",
      ],
      [
        "1 to 2 step: 1",
        "1 to 2 step: 2",
        "1 to 2 step: 3",
      ],
      [
        "1 to 3 step: 1",
        "1 to 3 step: 2",
        "1 to 3 step: 3",
      ],
      [
        "1 to 4 step: 1",
        "1 to 4 step: 2",
        "1 to 4 step: 3",
      ],
      [
        "1 to 5 step: 1",
        "1 to 5 step: 2",
        "1 to 5 step: 3",
      ],
      [
        "1 to 6 step: 1",
        "1 to 6 step: 2",
        "1 to 6 step: 3",
      ],
      [
        "1 to 7 step: 1",
        "1 to 7 step: 2",
        "1 to 7 step: 3",
      ],
      [
        "1 to 8 step: 1",
        "1 to 8 step: 2",
        "1 to 8 step: 3",
      ],
      [
        "1 to 9 step: 1",
        "1 to 9 step: 2",
        "1 to 9 step: 3",
      ],
      [
        "1 to 10 step: 1",
        "1 to 10 step: 2",
        "1 to 10 step: 3",
      ],
      [
        "1 to 11 step: 1",
        "1 to 11 step: 2",
        "1 to 11 step: 3",
      ],
      [
        "1 to 12 step: 1",
        "1 to 12 step: 2",
        "1 to 12 step: 3",
      ],
      [
        "1 to 13 step: 1",
        "1 to 13 step: 2",
        "1 to 13 step: 3",
      ],
    ],
    [
      [
        "2 to 0 step: 1",
        "2 to 0 step: 2",
        "2 to 0 step: 3",
      ],
      [
        "2 to 1 step: 1",
        "2 to 1 step: 2",
        "2 to 1 step: 3",
      ],
      [
        "2 to 2 step: 1",
        "2 to 2 step: 2",
        "2 to 2 step: 3",
      ],
      [
        "2 to 3 step: 1",
        "2 to 3 step: 2",
        "2 to 3 step: 3",
      ],
      [
        "2 to 4 step: 1",
        "2 to 4 step: 2",
        "2 to 4 step: 3",
      ],
      [
        "2 to 5 step: 1",
        "2 to 5 step: 2",
        "2 to 5 step: 3",
      ],
      [
        "2 to 6 step: 1",
        "2 to 6 step: 2",
        "2 to 6 step: 3",
      ],
      [
        "2 to 7 step: 1",
        "2 to 7 step: 2",
        "2 to 7 step: 3",
      ],
      [
        "2 to 8 step: 1",
        "2 to 8 step: 2",
        "2 to 8 step: 3",
      ],
      [
        "2 to 9 step: 1",
        "2 to 9 step: 2",
        "2 to 9 step: 3",
      ],
      [
        "2 to 10 step: 1",
        "2 to 10 step: 2",
        "2 to 10 step: 3",
      ],
      [
        "2 to 11 step: 1",
        "2 to 11 step: 2",
        "2 to 11 step: 3",
      ],
      [
        "2 to 12 step: 1",
        "2 to 12 step: 2",
        "2 to 12 step: 3",
      ],
      [
        "2 to 13 step: 1",
        "2 to 13 step: 2",
        "2 to 13 step: 3",
      ],
    ],
    [
      [
        "3 to 0 step: 1",
        "3 to 0 step: 2",
        "3 to 0 step: 3",
      ],
      [
        "3 to 1 step: 1",
        "3 to 1 step: 2",
        "3 to 1 step: 3",
      ],
      [
        "3 to 2 step: 1",
        "3 to 2 step: 2",
        "3 to 2 step: 3",
      ],
      [
        "3 to 3 step: 1",
        "3 to 3 step: 2",
        "3 to 3 step: 3",
      ],
      [
        "3 to 4 step: 1",
        "3 to 4 step: 2",
        "3 to 4 step: 3",
      ],
      [
        "3 to 5 step: 1",
        "3 to 5 step: 2",
        "3 to 5 step: 3",
      ],
      [
        "3 to 6 step: 1",
        "3 to 6 step: 2",
        "3 to 6 step: 3",
      ],
      [
        "3 to 7 step: 1",
        "3 to 7 step: 2",
        "3 to 7 step: 3",
      ],
      [
        "3 to 8 step: 1",
        "3 to 8 step: 2",
        "3 to 8 step: 3",
      ],
      [
        "3 to 9 step: 1",
        "3 to 9 step: 2",
        "3 to 9 step: 3",
      ],
      [
        "3 to 10 step: 1",
        "3 to 10 step: 2",
        "3 to 10 step: 3",
      ],
      [
        "3 to 11 step: 1",
        "3 to 11 step: 2",
        "3 to 11 step: 3",
      ],
      [
        "3 to 12 step: 1",
        "3 to 12 step: 2",
        "3 to 12 step: 3",
      ],
      [
        "3 to 13 step: 1",
        "3 to 13 step: 2",
        "3 to 13 step: 3",
      ],
    ],
    [
      [
        "4 to 0 step: 1",
        "4 to 0 step: 2",
        "4 to 0 step: 3",
      ],
      [
        "4 to 1 step: 1",
        "4 to 1 step: 2",
        "4 to 1 step: 3",
      ],
      [
        "4 to 2 step: 1",
        "4 to 2 step: 2",
        "4 to 2 step: 3",
      ],
      [
        "4 to 3 step: 1",
        "4 to 3 step: 2",
        "4 to 3 step: 3",
      ],
      [
        "4 to 4 step: 1",
        "4 to 4 step: 2",
        "4 to 4 step: 3",
      ],
      [
        "4 to 5 step: 1",
        "4 to 5 step: 2",
        "4 to 5 step: 3",
      ],
      [
        "4 to 6 step: 1",
        "4 to 6 step: 2",
        "4 to 6 step: 3",
      ],
      [
        "4 to 7 step: 1",
        "4 to 7 step: 2",
        "4 to 7 step: 3",
      ],
      [
        "4 to 8 step: 1",
        "4 to 8 step: 2",
        "4 to 8 step: 3",
      ],
      [
        "4 to 9 step: 1",
        "4 to 9 step: 2",
        "4 to 9 step: 3",
      ],
      [
        "4 to 10 step: 1",
        "4 to 10 step: 2",
        "4 to 10 step: 3",
      ],
      [
        "4 to 11 step: 1",
        "4 to 11 step: 2",
        "4 to 11 step: 3",
      ],
      [
        "4 to 12 step: 1",
        "4 to 12 step: 2",
        "4 to 12 step: 3",
      ],
      [
        "4 to 13 step: 1",
        "4 to 13 step: 2",
        "4 to 13 step: 3",
      ],
    ],
    [
      [
        "5 to 0 step: 1",
        "5 to 0 step: 2",
        "5 to 0 step: 3",
      ],
      [
        "5 to 1 step: 1",
        "5 to 1 step: 2",
        "5 to 1 step: 3",
      ],
      [
        "5 to 2 step: 1",
        "5 to 2 step: 2",
        "5 to 2 step: 3",
      ],
      [
        "5 to 3 step: 1",
        "5 to 3 step: 2",
        "5 to 3 step: 3",
      ],
      [
        "5 to 4 step: 1",
        "5 to 4 step: 2",
        "5 to 4 step: 3",
      ],
      [
        "5 to 5 step: 1",
        "5 to 5 step: 2",
        "5 to 5 step: 3",
      ],
      [
        "5 to 6 step: 1",
        "5 to 6 step: 2",
        "5 to 6 step: 3",
      ],
      [
        "5 to 7 step: 1",
        "5 to 7 step: 2",
        "5 to 7 step: 3",
      ],
      [
        "5 to 8 step: 1",
        "5 to 8 step: 2",
        "5 to 8 step: 3",
      ],
      [
        "5 to 9 step: 1",
        "5 to 9 step: 2",
        "5 to 9 step: 3",
      ],
      [
        "5 to 10 step: 1",
        "5 to 10 step: 2",
        "5 to 10 step: 3",
      ],
      [
        "5 to 11 step: 1",
        "5 to 11 step: 2",
        "5 to 11 step: 3",
      ],
      [
        "5 to 12 step: 1",
        "5 to 12 step: 2",
        "5 to 12 step: 3",
      ],
      [
        "5 to 13 step: 1",
        "5 to 13 step: 2",
        "5 to 13 step: 3",
      ],
    ],
    [
      [
        "6 to 0 step: 1",
        "6 to 0 step: 2",
        "6 to 0 step: 3",
      ],
      [
        "6 to 1 step: 1",
        "6 to 1 step: 2",
        "6 to 1 step: 3",
      ],
      [
        "6 to 2 step: 1",
        "6 to 2 step: 2",
        "6 to 2 step: 3",
      ],
      [
        "6 to 3 step: 1",
        "6 to 3 step: 2",
        "6 to 3 step: 3",
      ],
      [
        "6 to 4 step: 1",
        "6 to 4 step: 2",
        "6 to 4 step: 3",
      ],
      [
        "6 to 5 step: 1",
        "6 to 5 step: 2",
        "6 to 5 step: 3",
      ],
      [
        "6 to 6 step: 1",
        "6 to 6 step: 2",
        "6 to 6 step: 3",
      ],
      [
        "6 to 7 step: 1",
        "6 to 7 step: 2",
        "6 to 7 step: 3",
      ],
      [
        "6 to 8 step: 1",
        "6 to 8 step: 2",
        "6 to 8 step: 3",
      ],
      [
        "6 to 9 step: 1",
        "6 to 9 step: 2",
        "6 to 9 step: 3",
      ],
      [
        "6 to 10 step: 1",
        "6 to 10 step: 2",
        "6 to 10 step: 3",
      ],
      [
        "6 to 11 step: 1",
        "6 to 11 step: 2",
        "6 to 11 step: 3",
      ],
      [
        "6 to 12 step: 1",
        "6 to 12 step: 2",
        "6 to 12 step: 3",
      ],
      [
        "6 to 13 step: 1",
        "6 to 13 step: 2",
        "6 to 13 step: 3",
      ],
    ],
    [
      [
        "7 to 0 step: 1",
        "7 to 0 step: 2",
        "7 to 0 step: 3",
      ],
      [
        "7 to 1 step: 1",
        "7 to 1 step: 2",
        "7 to 1 step: 3",
      ],
      [
        "7 to 2 step: 1",
        "7 to 2 step: 2",
        "7 to 2 step: 3",
      ],
      [
        "7 to 3 step: 1",
        "7 to 3 step: 2",
        "7 to 3 step: 3",
      ],
      [
        "7 to 4 step: 1",
        "7 to 4 step: 2",
        "7 to 4 step: 3",
      ],
      [
        "7 to 5 step: 1",
        "7 to 5 step: 2",
        "7 to 5 step: 3",
      ],
      [
        "7 to 6 step: 1",
        "7 to 6 step: 2",
        "7 to 6 step: 3",
      ],
      [
        "7 to 7 step: 1",
        "7 to 7 step: 2",
        "7 to 7 step: 3",
      ],
      [
        "7 to 8 step: 1",
        "7 to 8 step: 2",
        "7 to 8 step: 3",
      ],
      [
        "7 to 9 step: 1",
        "7 to 9 step: 2",
        "7 to 9 step: 3",
      ],
      [
        "7 to 10 step: 1",
        "7 to 10 step: 2",
        "7 to 10 step: 3",
      ],
      [
        "7 to 11 step: 1",
        "7 to 11 step: 2",
        "7 to 11 step: 3",
      ],
      [
        "7 to 12 step: 1",
        "7 to 12 step: 2",
        "7 to 12 step: 3",
      ],
      [
        "7 to 13 step: 1",
        "7 to 13 step: 2",
        "7 to 13 step: 3",
      ],
    ],
    [
      [
        "8 to 0 step: 1",
        "8 to 0 step: 2",
        "8 to 0 step: 3",
      ],
      [
        "8 to 1 step: 1",
        "8 to 1 step: 2",
        "8 to 1 step: 3",
      ],
      [
        "8 to 2 step: 1",
        "8 to 2 step: 2",
        "8 to 2 step: 3",
      ],
      [
        "8 to 3 step: 1",
        "8 to 3 step: 2",
        "8 to 3 step: 3",
      ],
      [
        "8 to 4 step: 1",
        "8 to 4 step: 2",
        "8 to 4 step: 3",
      ],
      [
        "8 to 5 step: 1",
        "8 to 5 step: 2",
        "8 to 5 step: 3",
      ],
      [
        "8 to 6 step: 1",
        "8 to 6 step: 2",
        "8 to 6 step: 3",
      ],
      [
        "8 to 7 step: 1",
        "8 to 7 step: 2",
        "8 to 7 step: 3",
      ],
      [
        "8 to 8 step: 1",
        "8 to 8 step: 2",
        "8 to 8 step: 3",
      ],
      [
        "8 to 9 step: 1",
        "8 to 9 step: 2",
        "8 to 9 step: 3",
      ],
      [
        "8 to 10 step: 1",
        "8 to 10 step: 2",
        "8 to 10 step: 3",
      ],
      [
        "8 to 11 step: 1",
        "8 to 11 step: 2",
        "8 to 11 step: 3",
      ],
      [
        "8 to 12 step: 1",
        "8 to 12 step: 2",
        "8 to 12 step: 3",
      ],
      [
        "8 to 13 step: 1",
        "8 to 13 step: 2",
        "8 to 13 step: 3",
      ],
    ],
    [
      [
        "9 to 0 step: 1",
        "9 to 0 step: 2",
        "9 to 0 step: 3",
      ],
      [
        "9 to 1 step: 1",
        "9 to 1 step: 2",
        "9 to 1 step: 3",
      ],
      [
        "9 to 2 step: 1",
        "9 to 2 step: 2",
        "9 to 2 step: 3",
      ],
      [
        "9 to 3 step: 1",
        "9 to 3 step: 2",
        "9 to 3 step: 3",
      ],
      [
        "9 to 4 step: 1",
        "9 to 4 step: 2",
        "9 to 4 step: 3",
      ],
      [
        "9 to 5 step: 1",
        "9 to 5 step: 2",
        "9 to 5 step: 3",
      ],
      [
        "9 to 6 step: 1",
        "9 to 6 step: 2",
        "9 to 6 step: 3",
      ],
      [
        "9 to 7 step: 1",
        "9 to 7 step: 2",
        "9 to 7 step: 3",
      ],
      [
        "9 to 8 step: 1",
        "9 to 8 step: 2",
        "9 to 8 step: 3",
      ],
      [
        "9 to 9 step: 1",
        "9 to 9 step: 2",
        "9 to 9 step: 3",
      ],
      [
        "9 to 10 step: 1",
        "9 to 10 step: 2",
        "9 to 10 step: 3",
      ],
      [
        "9 to 11 step: 1",
        "9 to 11 step: 2",
        "9 to 11 step: 3",
      ],
      [
        "9 to 12 step: 1",
        "9 to 12 step: 2",
        "9 to 12 step: 3",
      ],
      [
        "9 to 13 step: 1",
        "9 to 13 step: 2",
        "9 to 13 step: 3",
      ],
    ],
    [
      [
        "10 to 0 step: 1",
        "10 to 0 step: 2",
        "10 to 0 step: 3",
      ],
      [
        "10 to 1 step: 1",
        "10 to 1 step: 2",
        "10 to 1 step: 3",
      ],
      [
        "10 to 2 step: 1",
        "10 to 2 step: 2",
        "10 to 2 step: 3",
      ],
      [
        "10 to 3 step: 1",
        "10 to 3 step: 2",
        "10 to 3 step: 3",
      ],
      [
        "10 to 4 step: 1",
        "10 to 4 step: 2",
        "10 to 4 step: 3",
      ],
      [
        "10 to 5 step: 1",
        "10 to 5 step: 2",
        "10 to 5 step: 3",
      ],
      [
        "10 to 6 step: 1",
        "10 to 6 step: 2",
        "10 to 6 step: 3",
      ],
      [
        "10 to 7 step: 1",
        "10 to 7 step: 2",
        "10 to 7 step: 3",
      ],
      [
        "10 to 8 step: 1",
        "10 to 8 step: 2",
        "10 to 8 step: 3",
      ],
      [
        "10 to 9 step: 1",
        "10 to 9 step: 2",
        "10 to 9 step: 3",
      ],
      [
        "10 to 10 step: 1",
        "10 to 10 step: 2",
        "10 to 10 step: 3",
      ],
      [
        "10 to 11 step: 1",
        "10 to 11 step: 2",
        "10 to 11 step: 3",
      ],
      [
        "10 to 12 step: 1",
        "10 to 12 step: 2",
        "10 to 12 step: 3",
      ],
      [
        "10 to 13 step: 1",
        "10 to 13 step: 2",
        "10 to 13 step: 3",
      ],
    ],
    [
      [
        "11 to 0 step: 1",
        "11 to 0 step: 2",
        "11 to 0 step: 3",
      ],
      [
        "11 to 1 step: 1",
        "11 to 1 step: 2",
        "11 to 1 step: 3",
      ],
      [
        "11 to 2 step: 1",
        "11 to 2 step: 2",
        "11 to 2 step: 3",
      ],
      [
        "11 to 3 step: 1",
        "11 to 3 step: 2",
        "11 to 3 step: 3",
      ],
      [
        "11 to 4 step: 1",
        "11 to 4 step: 2",
        "11 to 4 step: 3",
      ],
      [
        "11 to 5 step: 1",
        "11 to 5 step: 2",
        "11 to 5 step: 3",
      ],
      [
        "11 to 6 step: 1",
        "11 to 6 step: 2",
        "11 to 6 step: 3",
      ],
      [
        "11 to 7 step: 1",
        "11 to 7 step: 2",
        "11 to 7 step: 3",
      ],
      [
        "11 to 8 step: 1",
        "11 to 8 step: 2",
        "11 to 8 step: 3",
      ],
      [
        "11 to 9 step: 1",
        "11 to 9 step: 2",
        "11 to 9 step: 3",
      ],
      [
        "11 to 10 step: 1",
        "11 to 10 step: 2",
        "11 to 10 step: 3",
      ],
      [
        "11 to 11 step: 1",
        "11 to 11 step: 2",
        "11 to 11 step: 3",
      ],
      [
        "11 to 12 step: 1",
        "11 to 12 step: 2",
        "11 to 12 step: 3",
      ],
      [
        "11 to 13 step: 1",
        "11 to 13 step: 2",
        "11 to 13 step: 3",
      ],
    ],
    [
      [
        "12 to 0 step: 1",
        "12 to 0 step: 2",
        "12 to 0 step: 3",
      ],
      [
        "12 to 1 step: 1",
        "12 to 1 step: 2",
        "12 to 1 step: 3",
      ],
      [
        "12 to 2 step: 1",
        "12 to 2 step: 2",
        "12 to 2 step: 3",
      ],
      [
        "12 to 3 step: 1",
        "12 to 3 step: 2",
        "12 to 3 step: 3",
      ],
      [
        "12 to 4 step: 1",
        "12 to 4 step: 2",
        "12 to 4 step: 3",
      ],
      [
        "12 to 5 step: 1",
        "12 to 5 step: 2",
        "12 to 5 step: 3",
      ],
      [
        "12 to 6 step: 1",
        "12 to 6 step: 2",
        "12 to 6 step: 3",
      ],
      [
        "12 to 7 step: 1",
        "12 to 7 step: 2",
        "12 to 7 step: 3",
      ],
      [
        "12 to 8 step: 1",
        "12 to 8 step: 2",
        "12 to 8 step: 3",
      ],
      [
        "12 to 9 step: 1",
        "12 to 9 step: 2",
        "12 to 9 step: 3",
      ],
      [
        "12 to 10 step: 1",
        "12 to 10 step: 2",
        "12 to 10 step: 3",
      ],
      [
        "12 to 11 step: 1",
        "12 to 11 step: 2",
        "12 to 11 step: 3",
      ],
      [
        "12 to 12 step: 1",
        "12 to 12 step: 2",
        "12 to 12 step: 3",
      ],
      [
        "12 to 13 step: 1",
        "12 to 13 step: 2",
        "12 to 13 step: 3",
      ],
    ],
    [
      [
        "13 to 0 step: 1",
        "13 to 0 step: 2",
        "13 to 0 step: 3",
      ],
      [
        "13 to 1 step: 1",
        "13 to 1 step: 2",
        "13 to 1 step: 3",
      ],
      [
        "13 to 2 step: 1",
        "13 to 2 step: 2",
        "13 to 2 step: 3",
      ],
      [
        "13 to 3 step: 1",
        "13 to 3 step: 2",
        "13 to 3 step: 3",
      ],
      [
        "13 to 4 step: 1",
        "13 to 4 step: 2",
        "13 to 4 step: 3",
      ],
      [
        "13 to 5 step: 1",
        "13 to 5 step: 2",
        "13 to 5 step: 3",
      ],
      [
        "13 to 6 step: 1",
        "13 to 6 step: 2",
        "13 to 6 step: 3",
      ],
      [
        "13 to 7 step: 1",
        "13 to 7 step: 2",
        "13 to 7 step: 3",
      ],
      [
        "13 to 8 step: 1",
        "13 to 8 step: 2",
        "13 to 8 step: 3",
      ],
      [
        "13 to 9 step: 1",
        "13 to 9 step: 2",
        "13 to 9 step: 3",
      ],
      [
        "13 to 10 step: 1",
        "13 to 10 step: 2",
        "13 to 10 step: 3",
      ],
      [
        "13 to 11 step: 1",
        "13 to 11 step: 2",
        "13 to 11 step: 3",
      ],
      [
        "13 to 12 step: 1",
        "13 to 12 step: 2",
        "13 to 12 step: 3",
      ],
      [
        "13 to 13 step: 1",
        "13 to 13 step: 2",
        "13 to 13 step: 3",
      ],
    ],
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

class CustomTextSize {
  static const double head = 25.0;
  static const double secondHead = 20.0;
  static const double body = 15.0;
}
