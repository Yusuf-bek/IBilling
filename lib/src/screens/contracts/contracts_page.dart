import 'dart:math';

import 'package:flutter/material.dart';
import 'package:ibilling/core/components/size_config/size_config.dart';

class ContractsPage extends StatelessWidget {
  const ContractsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: SizedBox(
          width: getWidth(116),
          height: getHeight(24),
          child: Row(children: [
            Container(
              width: getWidth(24),
              height: getWidth(24),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  colors: [
                    Color(0xFF00FFC2),
                    Color(0xFF0500FF),
                    Color(0xFFFFC700),
                    Color(0xFFAD00FF),
                    Color(0xFF00FF94),
                  ],
                ),
              ),
            ),

          ]),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Image.asset(
              "assets/app_bar_icons/filter.png",
              color: Colors.white,
            ),
          ),
          Image.asset("assets/app_bar_icons/line.png"),
          IconButton(
            onPressed: () {},
            icon: Image.asset(
              "assets/app_bar_icons/search.png",
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(children: [
          Center(
            child: Text("ContractsPage"),
          )
        ]),
      ),
    );
  }

 
}
