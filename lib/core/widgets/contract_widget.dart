import 'package:flutter/material.dart';
import 'package:ibilling/core/components/size_config/size_config.dart';
import 'package:ibilling/core/constants/my_colors.dart';
import 'package:ibilling/core/constants/text_styles.dart';

class ContractWidget extends StatelessWidget {
  int index = 0;
  String fish;
  String amount;
  int lastInvoice;
  int numberOfInvoices;
  ContractWidget({
    Key? key,
    required this.index,
    required this.fish,
    required this.amount,
    required this.lastInvoice,
    required this.numberOfInvoices,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: getHeight(12),
        horizontal: getWidth(16),
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: MyColors.contractContainerDark),
      width: MediaQuery.of(context).size.width,
      height: getHeight(148),
      child: Stack(
        children: [
          // Index icon
          Positioned(
            top: getHeight(12),
            left: getWidth(10),
            child: Image.asset(
              "assets/paper.png",
              color: MyColors.lightGreen,
            ),
          ),

          // Index
          Positioned(
            bottom: getHeight(116),
            left: getWidth(34),
            child: Text(
              "№ 15${index}",
              style: ContractContainerTextStyles.index,
            ),
          ),

          // Status Container
          Positioned(
            right: getWidth(12),
            top: getHeight(12),
            child: Container(
              width: getWidth(49),
              height: getHeight(21),
              decoration: BoxDecoration(
                color: MyColors.lightGreen.withOpacity(0.4),
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Center(
                child: Text(
                  "Paid",
                  style: ContractContainerTextStyles.statusPaid,
                ),
              ),
            ),
          ),

          // Date
          Positioned(
            bottom: getHeight(12),
            right: getWidth(12),
            child: const Text(
              "31.01.2021",
              style: ContractContainerTextStyles.date,
            ),
          ),

          // Information
          Positioned(
            top: getHeight(44),
            left: getWidth(12),
            child: SizedBox(
              width: getWidth(170),
              height: getHeight(92),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: getHeight(2),
                  ),
                  generateInfoRow(key: "Fish:", value: fish),
                  generateInfoRow(key: "Amount:", value: amount),
                  generateInfoRow(key: "Last invoice:", value: "№ $lastInvoice",),
                  generateInfoRow(key: "Number of invoices:", value: numberOfInvoices.toString()),
                ],
              ),
            ),
          ),
        ],
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
}
