import 'package:flutter/material.dart';
import 'package:ibilling/core/components/size_config/size_config.dart';
import 'package:ibilling/core/constants/my_colors.dart';

class GeneralAppBar extends StatelessWidget {
  String title;
  GeneralAppBar({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      width: MediaQuery.of(context).size.width,
      height: getHeight(51),
      color: Colors.black,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: getWidth(20),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Leading circle and title
            SizedBox(
              width: getWidth(116),
              height: getHeight(24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: getWidth(24),
                    height: getWidth(24),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: LinearGradient(
                        colors: MyColors.contractPageAppbarCircleList,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: getWidth(12),
                  ),
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            // Search and filter buttons
            SizedBox(
              width: getWidth(80),
              height: getHeight(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, "/filter");
                    },
                    child: Image.asset(
                      "assets/app_bar_icons/filter.png",
                      color: Colors.white,
                    ),
                  ),
                  Image.asset("assets/app_bar_icons/line.png"),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, "/search");
                    },
                    child: Image.asset(
                      "assets/app_bar_icons/search.png",
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
