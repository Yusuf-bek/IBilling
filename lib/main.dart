import 'package:flutter/material.dart';
import 'package:ibilling/src/main/main_bottom_navigation.dart';

void main(List<String> args) {
  runApp(const IBilling());
}

class IBilling extends StatelessWidget{
  const IBilling({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      initialRoute: "/",
      home: const MainBottomNavigationPage(),
    );
  }
}

