import 'package:flutter/material.dart';
import 'package:ibilling/core/components/size_config/size_config.dart';
import 'package:ibilling/core/constants/my_colors.dart';
import 'package:ibilling/core/constants/text_styles.dart';
import 'package:ibilling/core/widgets/range_date_widget.dart';

class FilterPage extends StatelessWidget {
  const FilterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: MyColors.darkest,
        centerTitle: true,
        title: const Text("Filters"),
      ),
      body: Stack(
        children: [
          // Filters
          Positioned(
            top: getHeight(28),
            left: getWidth(16),
            child: Container(
              color: Colors.transparent,
              width: getWidth(343),
              height: getHeight(201),
              child: Stack(
                children: [
                  // Status
                  Positioned(
                    top: 0,
                    left: 0,
                    child: Text(
                      "Status",
                      style: FilterPageTextStyles.headLineStatusDate,
                    ),
                  ),
                  // Date
                  Positioned(
                    bottom: getHeight(53),
                    left: 0,
                    child: Text(
                      "Date",
                      style: FilterPageTextStyles.headLineStatusDate,
                    ),
                  ),
                  // Range Date Widget
                  Positioned(
                    bottom: 0,
                    left: 0,
                    child: RangeDateWidget(),
                  ),

                  Positioned(
                    left: 0,
                    top: getHeight(34),
                    child: tickBoxStatusText(
                      isSelected: true,
                      text: "Paid",
                    ),
                  ),
                  Positioned(
                    left: getWidth(182),
                    top: getHeight(34),
                    child: tickBoxStatusText(
                      isSelected: false,
                      text: "Rejected by IQ",
                    ),
                  ),
                  Positioned(
                    left: 0,
                    top: getHeight(78),
                    child: tickBoxStatusText(
                      isSelected: false,
                      text: "In process",
                    ),
                  ),
                  Positioned(
                    left: getWidth(182),
                    top: getHeight(79.5),
                    child: tickBoxStatusText(
                      isSelected: false,
                      text: "Rejected by Payme",
                    ),
                  ),
                  
                ],
              ),
            ),
          ),

          // Bottom buttons (Cancel and Apply filters)
          Positioned(
            bottom: getHeight(28),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: getHeight(40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  getBottomButton(
                    buttonColor: MyColors.darkGreen.withOpacity(0.3),
                    buttonText: "Cancel",
                    buttonTextStyle: FilterPageTextStyles.cancelButton,
                    onTap: () {},
                  ),
                  getBottomButton(
                    buttonColor: MyColors.darkGreen,
                    buttonText: "Apply filters",
                    buttonTextStyle: FilterPageTextStyles.applyFiltersButton,
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  SizedBox tickBoxStatusText({
    required bool isSelected,
    required String text,
  }) {
    return SizedBox(
      width: getWidth(150),
      height: getHeight(20),
      child: Row(
        children: [
          Image.asset(
            isSelected ? "assets/white_tick.png" : "assets/black_tick.png",
          ),
          SizedBox(
            width: getWidth(10),
          ),
          Text(
            text,
            style: FilterPageTextStyles.tickBoxTypeText,
          ),
        ],
      ),
    );
  }

  InkWell getBottomButton({
    required Color buttonColor,
    required String buttonText,
    required TextStyle buttonTextStyle,
    required Function() onTap,
  }) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: getWidth(164),
        height: getHeight(40),
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(6),
        ),
        child: Center(
          child: Text(
            buttonText,
            style: buttonTextStyle,
          ),
        ),
      ),
    );
  }
}
