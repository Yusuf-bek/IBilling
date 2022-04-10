import 'package:flutter/material.dart';
import 'package:ibilling/core/constants/text_styles.dart';

class MainBottomNavigationPage extends StatelessWidget {
  const MainBottomNavigationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        backgroundColor: Colors.black,
        showUnselectedLabels: true,
        selectedLabelStyle: MainBottomNavigationPageTextStyles.selectedLabelStyle,
        unselectedLabelStyle: MainBottomNavigationPageTextStyles.unselectedLabelStyle,
        
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Image.asset("assets/bottom_bar_icons/contract_selected.png"),
            label: 'Contracts',
          ),
          BottomNavigationBarItem(
            icon: Image.asset("assets/bottom_bar_icons/history_selected.png"),
            label: 'History',
          ),
          BottomNavigationBarItem(
            icon: Image.asset("assets/bottom_bar_icons/new_selected.png"),
            label: 'New',
          ),
          BottomNavigationBarItem(
            icon: Image.asset("assets/bottom_bar_icons/saved_selected.png"),
            label: 'Saved',
          ),
          BottomNavigationBarItem(
            icon: Image.asset("assets/bottom_bar_icons/profile_selected.png"),
            label: 'Profile',
          ),
        ],
        
      ),
    );
  }
}
