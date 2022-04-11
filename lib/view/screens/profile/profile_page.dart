import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ibilling/core/components/size_config/size_config.dart';
import 'package:ibilling/core/constants/my_colors.dart';
import 'package:ibilling/core/constants/text_styles.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            // App bar
            getAppBar(context),

            // Person info
            Padding(
              padding: EdgeInsets.only(
                top: getHeight(20),
                bottom: getHeight(12),
              ),
              child: Container(
                width: getWidth(343),
                height: getHeight(195),
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: MyColors.contractContainerDark,
                  borderRadius: BorderRadius.circular(6),
                ),
                child: getInsideInfo(context),
              ),
            ),

            // Change language
            InkWell(
              onTap: () {
                showMyDialog(context);
              },
              child: Container(
                width: getWidth(343),
                height: getHeight(44),
                decoration: BoxDecoration(
                  color: MyColors.contractContainerDark,
                  borderRadius: BorderRadius.circular(6),
                ),
                padding: EdgeInsets.only(
                  right: getWidth(20),
                  left: getWidth(20),
                  top: getHeight(12),
                  bottom: getHeight(12),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("English (USA)"),
                    CircleAvatar(
                      child: SvgPicture.asset("assets/svg/usa.svg"),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Column getInsideInfo(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: getHeight(50),
          padding: EdgeInsets.only(
            bottom: getHeight(10),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const CircleAvatar(
                radius: 25,
                backgroundColor: MyColors.lightGreen,
                child: Icon(
                  Icons.person,
                  color: Colors.black,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Ogabek Sherakhmatov",
                    style: TextStyle(
                      color: MyColors.lightGreen,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text("Mobile developer "),
                      Padding(
                        padding: EdgeInsets.only(left: 1, right: 1),
                        child: CircleAvatar(
                          radius: 2,
                          backgroundColor: Colors.white,
                        ),
                      ),
                      Text(" Epam systems"),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        // info
        generateInfoRow(key: "Date of birth", value: "23.07.2003"),
        generateInfoRow(key: "Phone number", value: "+998 93 123 45 67"),
        generateInfoRow(key: "E-mail", value: "ogabeksherakhmatov@gmail.com"),
      ],
    );
  }

  Container getAppBar(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: getHeight(51),
      color: MyColors.darkest,
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
                    "Profile",
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
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

  Row generateInfoRow({
    required String key,
    required String value,
  }) {
    return Row(
      children: [
        Text(
          key,
          style: ContractContainerTextStyles.infoKey,
        ),
        SizedBox(
          width: getWidth(8),
        ),
        Text(
          value,
          style: ContractContainerTextStyles.infoValue,
        ),
      ],
    );
  }

  showMyDialog(context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: MyColors.contractContainerDark,
          content: Container(
            width: getWidth(327),
            height: getHeight(279),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: MyColors.contractContainerDark,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  "Choose a language",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Expanded(
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    color: Colors.transparent,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: double.infinity,
                          height: getHeight(55),
                          color: Colors.black,
                          child: Row(children: [
                            CircleAvatar(
                              child: SvgPicture.asset("assets/svg/usa.svg", fit: BoxFit.cover,),
                            ),
                          ],),
                        ),
                        Container(
                          width: double.infinity,
                          height: getHeight(24),
                          color: Colors.blue,
                        ),
                        Container(
                          width: double.infinity,
                          height: getHeight(24),
                          color: Colors.red,
                        ),
                      ],
                    ),
                  ),
                ),
                // Tow buttons, cancel and done
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    getAlertBottomButton(
                      buttonColor: MyColors.darkGreen.withOpacity(0.3),
                      buttonText: "Cancel",
                      buttonTextStyle: FilterPageTextStyles.cancelButton,
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                    getAlertBottomButton(
                      buttonColor: MyColors.darkGreen,
                      buttonText: "Done",
                      buttonTextStyle: FilterPageTextStyles.applyFiltersButton,
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  InkWell getAlertBottomButton({
    required Color buttonColor,
    required String buttonText,
    required TextStyle buttonTextStyle,
    required Function() onTap,
  }) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: getWidth(125),
        height: getHeight(37),
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
