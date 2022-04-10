import 'package:flutter/material.dart';

abstract class MyTextStyles {
  MyTextStyles();
}

class MainBottomNavigationPageTextStyles extends MyTextStyles {
  static const TextStyle selectedLabelStyle = TextStyle(
    color: Color(0xFFF2F2F2),
    fontSize: 10,
    fontWeight: FontWeight.w700,
  );

  static const TextStyle unselectedLabelStyle = TextStyle(
    color: Color(0xFFF2F2F2),
    fontSize: 10,
    fontWeight: FontWeight.w700,
  );
}
