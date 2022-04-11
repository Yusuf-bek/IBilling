import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ibilling/core/constants/text_styles.dart';
import 'package:ibilling/cubit/bottom_navigation_cubit/bottom_navigation_cubit.dart';
import 'package:ibilling/cubit/bottom_navigation_cubit/bottom_navigation_states.dart';
import 'package:ibilling/view/screens/contracts/contracts_page.dart';
import 'package:ibilling/view/screens/create/create_page.dart';
import 'package:ibilling/view/screens/history/history_page.dart';
import 'package:ibilling/view/screens/profile/profile_page.dart';
import 'package:ibilling/view/screens/saved/saved_page.dart';


class MainBottomNavigationPage extends StatelessWidget {
  MainBottomNavigationPage({Key? key}) : super(key: key);

  List _pages = [
    ContractsPage(),
    HistoryPage(),
    CreatePage(),
    SavedPage(),
    ProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        return BottomNavCubit(BottomNavInitialState());
      },
      child: Builder(builder: (context) {
        return Scaffold(
          body: _pages[context.read<BottomNavCubit>().indexNav],
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: context.watch<BottomNavCubit>().indexNav,
            onTap: (int index) {
              context.read<BottomNavCubit>().changeIndex(index);
            },
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  "assets/svg/contracts_activ.svg",
                ),
                label: " ",
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  "assets/svg/history_activ.svg",
                ),
                label: " ",
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  "assets/svg/new_activ.svg",
                ),
                label: " ",
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  "assets/svg/saved_activ.svg",
                ),
                label: " ",
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  "assets/svg/profile_activ.png",
                ),
                label: " ",
              ),
            ],
          ),
        );
      }),
    );
  }
}
