import 'package:flutter/material.dart';
import 'package:ibilling/view/general_screens/filter_page.dart';
import 'package:ibilling/view/general_screens/search_screen.dart';
import 'package:ibilling/view/main_screen/main_bottom_navigation.dart';
import 'package:ibilling/view/screens/contracts/contracts_page.dart';
import 'package:ibilling/view/screens/create/create_page.dart';
import 'package:ibilling/view/screens/history/history_page.dart';
import 'package:ibilling/view/screens/profile/profile_page.dart';
import 'package:ibilling/view/screens/saved/saved_page.dart';

class RouteGenerator {
  Route? generateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case "/":
        return MaterialPageRoute(
          builder: ((context) =>  MainBottomNavigationPage()),
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

      case "/search":
        return MaterialPageRoute(
          builder: (context) => SearchPage(),
        );

      case "/filter":
        return MaterialPageRoute(
          builder: (context) => FilterPage(),
        );
    }
    return null;
  }
}
