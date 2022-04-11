import 'package:flutter/material.dart';
import 'package:ibilling/core/components/size_config/size_config.dart';
import 'package:ibilling/core/constants/my_colors.dart';
import 'package:ibilling/core/constants/text_styles.dart';

class RangeDateWidget extends StatelessWidget {
  const RangeDateWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      width: getWidth(264),
      height: getHeight(37),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: getWidth(116),
            height: getHeight(37),
            decoration: BoxDecoration(
              color: MyColors.dark,
              borderRadius: BorderRadius.circular(
                5,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                left: 12,
                right: 12,
                top: 10,
                bottom: 11,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "16.02.2021",
                    style: FilterPageTextStyles.date,
                  ),
                  Image.asset(
                    "assets/Calendar.png",
                    color: MyColors.greyCalendarIcon,
                  ),
                ],
              ),
            ),
          ),
          Container(
            color: Colors.white,
            width: getWidth(8),
            height: getHeight(1),
          ),
          Container(
            width: getWidth(116),
            height: getHeight(37),
            decoration: BoxDecoration(
              color: MyColors.dark,
              borderRadius: BorderRadius.circular(
                5,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                left: 12,
                right: 12,
                top: 10,
                bottom: 11,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "To",
                    style: FilterPageTextStyles.date,
                  ),
                  Image.asset(
                    "assets/Calendar.png",
                    color: MyColors.greyCalendarIcon,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
