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

class ContractContainerTextStyles extends MyTextStyles {
  static const TextStyle index = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w700,
  );

  static const TextStyle statusPaid = TextStyle(
    color: Color(0xFF49B7A5),
    fontSize: 12,
    fontWeight: FontWeight.w500,
  );

  static const TextStyle date = TextStyle(
    color: Color(0xFF999999),
    fontSize: 14,
    fontWeight: FontWeight.w700,
  );

  static const TextStyle infoKey = TextStyle(
    color: Color(0xFFE7E7E7),
    fontSize: 14,
    fontWeight: FontWeight.w500,
  );

  static const TextStyle infoValue = TextStyle(
    color: Color(0xFF999999),
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );
}
