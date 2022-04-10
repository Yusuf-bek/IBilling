import 'package:flutter/material.dart';
import 'package:ibilling/src/main_screen/main_bottom_navigation.dart';
import 'package:ibilling/src/screens/contracts/contracts_page.dart';
import 'package:ibilling/src/screens/create/create_page.dart';
import 'package:ibilling/src/screens/history/history_page.dart';
import 'package:ibilling/src/screens/profile/profile_page.dart';
import 'package:ibilling/src/screens/saved/saved_page.dart';

class RouteGenerator {
  Route? generateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case "/":
        return MaterialPageRoute(
          builder: ((context) => const MainBottomNavigationPage()),
        );

      case "/contracts":
        return MaterialPageRoute(
          builder: (context) => ContractsPage(),
        );
      
      case "/history":
        return MaterialPageRoute(
          builder: (context) => HistoryPage(),
        );
      
      case "/create":
        return MaterialPageRoute(
          builder: (context) => CreatePage(),
        );

      case "/saved":
        return MaterialPageRoute(
          builder: (context) => SavedPage(),
        );
      
      case "/profile":
        return MaterialPageRoute(
          builder: (context) => ProfilePage(),
        );
    }
    return null;
  }
}
